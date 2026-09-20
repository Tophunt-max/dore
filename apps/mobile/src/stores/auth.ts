import * as Crypto from 'expo-crypto';
import * as SecureStore from 'expo-secure-store';
import { create } from 'zustand';
import type { User } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { registerSessionHandlers, setApiAccessToken } from '@/api/client';

const REFRESH_TOKEN_KEY = 'oriva_refresh_token';
const DEVICE_ID_KEY = 'oriva_device_id';

interface AuthState {
  user: User | null;
  accessToken: string | null;
  deviceId: string | null;
  initialized: boolean;
  initialize: () => Promise<void>;
  verifyOtp: (
    phone: string,
    code: string,
    inviteCode?: string,
  ) => Promise<void>;
  refresh: () => Promise<string | null>;
  updateUser: (user: User) => void;
  logout: () => Promise<void>;
}

async function getOrCreateDeviceId(): Promise<string> {
  const existing = await SecureStore.getItemAsync(DEVICE_ID_KEY);
  if (existing) return existing;
  const id = Crypto.randomUUID();
  await SecureStore.setItemAsync(DEVICE_ID_KEY, id);
  return id;
}

export const useAuthStore = create<AuthState>((set, get) => ({
  user: null,
  accessToken: null,
  deviceId: null,
  initialized: false,

  initialize: async () => {
    const deviceId = await getOrCreateDeviceId();
    set({ deviceId });
    registerSessionHandlers({
      refresh: get().refresh,
      unauthorized: async () => {
        setApiAccessToken(null);
        await SecureStore.deleteItemAsync(REFRESH_TOKEN_KEY);
        set({ accessToken: null, user: null });
      },
    });
    const token = await get().refresh();
    if (token) {
      try {
        const user = await api.me();
        set({ user });
      } catch {
        setApiAccessToken(null);
      }
    }
    set({ initialized: true });
  },

  verifyOtp: async (phone, code, inviteCode) => {
    const deviceId = get().deviceId ?? (await getOrCreateDeviceId());
    const session = await api.verifyOtp({ phone, code, deviceId, inviteCode });
    await SecureStore.setItemAsync(REFRESH_TOKEN_KEY, session.refreshToken);
    setApiAccessToken(session.accessToken);
    set({
      accessToken: session.accessToken,
      user: session.user,
      deviceId,
      initialized: true,
    });
  },

  refresh: async () => {
    const refreshToken = await SecureStore.getItemAsync(REFRESH_TOKEN_KEY);
    if (!refreshToken) return null;
    const deviceId = get().deviceId ?? (await getOrCreateDeviceId());
    try {
      const session = await api.refresh(refreshToken, deviceId);
      await SecureStore.setItemAsync(REFRESH_TOKEN_KEY, session.refreshToken);
      setApiAccessToken(session.accessToken);
      set({ accessToken: session.accessToken, user: session.user, deviceId });
      return session.accessToken;
    } catch {
      await SecureStore.deleteItemAsync(REFRESH_TOKEN_KEY);
      setApiAccessToken(null);
      set({ accessToken: null, user: null, deviceId });
      return null;
    }
  },

  updateUser: (user) => set({ user }),

  logout: async () => {
    const refreshToken = await SecureStore.getItemAsync(REFRESH_TOKEN_KEY);
    if (refreshToken) {
      await api.logout(refreshToken).catch(() => undefined);
    }
    await SecureStore.deleteItemAsync(REFRESH_TOKEN_KEY);
    setApiAccessToken(null);
    set({ accessToken: null, user: null });
  },
}));
