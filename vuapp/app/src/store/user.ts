import { defineStore } from 'pinia';
import { api, clearTokens, setTokens } from '@/api/request';

export interface User {
  id: number;
  phone: string;
  username: string;
  avatar?: string;
  language: string;
  balance_minor: number;
  invite_code: string;
}

export const useUserStore = defineStore('user', {
  state: () => ({
    user: null as User | null,
    loaded: false,
  }),
  getters: {
    isLoggedIn: (s) => !!s.user,
    balanceMinor: (s) => s.user?.balance_minor ?? 0,
  },
  actions: {
    async loginWithOtp(phone: string, code: string, invite?: string) {
      const res = await api.post('/api/auth/login', { phone, code, invite });
      if (res.ok) {
        setTokens(res.access, res.refresh);
        this.user = res.user;
        this.loaded = true;
      }
      return res;
    },
    async sendOtp(phone: string) {
      return api.post('/api/auth/sendverify', { phone });
    },
    async fetchAccount() {
      const res = await api.get('/api/account');
      if (res.ok) {
        this.user = res.user;
      }
      this.loaded = true;
      return res;
    },
    async refreshBalance() {
      const res = await api.get('/api/wallet');
      if (res.ok && this.user) this.user.balance_minor = res.balance_minor;
    },
    logout() {
      const refresh = uni.getStorageSync('refresh_token');
      api.post('/api/auth/logout', { refresh }).catch(() => {});
      clearTokens();
      this.user = null;
      this.loaded = true;
    },
  },
});
