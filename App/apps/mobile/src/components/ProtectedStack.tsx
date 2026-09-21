import { Redirect, Stack } from 'expo-router';
import type { ReactNode } from 'react';
import { useAuthStore } from '@/stores/auth';

/**
 * Layout guard for private / money screens (Option A: browsing stays open,
 * sensitive screens require login). Used as the default export of a route
 * group's `_layout.tsx`. When the user is signed out it redirects to the login
 * screen; otherwise it renders the group's stack navigator.
 *
 * The root layout only renders once auth has been initialised, so `user` is
 * reliable at render time (no flash of protected content before the redirect).
 */
export function ProtectedStack() {
  const user = useAuthStore((state) => state.user);
  if (!user) return <Redirect href="/login" />;
  return <Stack screenOptions={{ headerShown: false }} />;
}

/**
 * Guard for a single standalone screen file (one that isn't inside a guarded
 * route group). Wrap the screen's returned tree, or return it early.
 */
export function RequireAuth({ children }: { children: ReactNode }) {
  const user = useAuthStore((state) => state.user);
  if (!user) return <Redirect href="/login" />;
  return <>{children}</>;
}
