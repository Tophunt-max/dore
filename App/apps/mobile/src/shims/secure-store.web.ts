// Web-only shim for expo-secure-store.
// On native platforms the real expo-secure-store module is used (Keychain /
// Keystore backed). The browser has no secure hardware store, so on web we fall
// back to localStorage. This keeps the web build functional for development and
// testing. It is NOT a hardware-backed secure store — treat web sessions
// accordingly.

const memoryStore = new Map<string, string>();

function getStorage(): Storage | null {
  try {
    if (typeof window !== 'undefined' && window.localStorage) {
      return window.localStorage;
    }
  } catch {
    // Access to localStorage can throw in some sandboxed contexts.
  }
  return null;
}

export async function getItemAsync(key: string): Promise<string | null> {
  const storage = getStorage();
  if (storage) return storage.getItem(key);
  return memoryStore.has(key) ? (memoryStore.get(key) as string) : null;
}

export async function setItemAsync(key: string, value: string): Promise<void> {
  if (typeof value !== 'string') {
    throw new Error(
      'Invalid value provided to SecureStore. Values must be strings.',
    );
  }
  const storage = getStorage();
  if (storage) storage.setItem(key, value);
  else memoryStore.set(key, value);
}

export async function deleteItemAsync(key: string): Promise<void> {
  const storage = getStorage();
  if (storage) storage.removeItem(key);
  else memoryStore.delete(key);
}

export async function isAvailableAsync(): Promise<boolean> {
  return true;
}

// Accessibility constants referenced by callers/options. Values are irrelevant
// on web but must exist so imports resolve.
export const WHEN_UNLOCKED = 'WHEN_UNLOCKED';
export const WHEN_UNLOCKED_THIS_DEVICE_ONLY = 'WHEN_UNLOCKED_THIS_DEVICE_ONLY';
export const AFTER_FIRST_UNLOCK = 'AFTER_FIRST_UNLOCK';
export const AFTER_FIRST_UNLOCK_THIS_DEVICE_ONLY =
  'AFTER_FIRST_UNLOCK_THIS_DEVICE_ONLY';
export const ALWAYS = 'ALWAYS';
export const ALWAYS_THIS_DEVICE_ONLY = 'ALWAYS_THIS_DEVICE_ONLY';
export const WHEN_PASSCODE_SET_THIS_DEVICE_ONLY =
  'WHEN_PASSCODE_SET_THIS_DEVICE_ONLY';

export default {
  getItemAsync,
  setItemAsync,
  deleteItemAsync,
  isAvailableAsync,
  WHEN_UNLOCKED,
  WHEN_UNLOCKED_THIS_DEVICE_ONLY,
  AFTER_FIRST_UNLOCK,
  AFTER_FIRST_UNLOCK_THIS_DEVICE_ONLY,
  ALWAYS,
  ALWAYS_THIS_DEVICE_ONLY,
  WHEN_PASSCODE_SET_THIS_DEVICE_ONLY,
};
