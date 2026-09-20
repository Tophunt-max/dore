import 'react-native-gesture-handler';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { Stack } from 'expo-router';
import * as SplashScreen from 'expo-splash-screen';
import { StatusBar } from 'expo-status-bar';
import { useEffect, useState } from 'react';
import { StyleSheet } from 'react-native';
import { GestureHandlerRootView } from 'react-native-gesture-handler';
import { SafeAreaProvider } from 'react-native-safe-area-context';
import { useFonts } from 'expo-font';
import { assets } from '@/assets';
import { useInitializeLocale, useLocaleStore } from '@/i18n';
import { installNotificationNavigation } from '@/notifications';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

void SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
  const initializeAuth = useAuthStore((state) => state.initialize);
  const authInitialized = useAuthStore((state) => state.initialized);
  const localeInitialized = useLocaleStore((state) => state.initialized);
  useInitializeLocale();
  const [queryClient] = useState(
    () =>
      new QueryClient({
        defaultOptions: {
          queries: {
            retry: 1,
            staleTime: 30_000,
          },
        },
      }),
  );
  const [fontsLoaded, fontError] = useFonts({
    RobotoRegular: assets.fonts.regular,
    RobotoMedium: assets.fonts.medium,
    RobotoBold: assets.fonts.bold,
  });

  useEffect(() => {
    void initializeAuth();
    return installNotificationNavigation();
  }, [initializeAuth]);

  useEffect(() => {
    if ((fontsLoaded || fontError) && authInitialized && localeInitialized) {
      void SplashScreen.hideAsync();
    }
  }, [authInitialized, fontError, fontsLoaded, localeInitialized]);

  if ((!fontsLoaded && !fontError) || !authInitialized || !localeInitialized) {
    return null;
  }

  return (
    <GestureHandlerRootView style={styles.root}>
      <SafeAreaProvider>
        <QueryClientProvider client={queryClient}>
          <StatusBar style="dark" />
          <Stack
            screenOptions={{
              headerShown: false,
              contentStyle: { backgroundColor: theme.colors.background },
              animation: 'slide_from_right',
            }}
          />
        </QueryClientProvider>
      </SafeAreaProvider>
    </GestureHandlerRootView>
  );
}

const styles = StyleSheet.create({
  root: {
    flex: 1,
    // Keep the mobile artboard proportions on wide (desktop web) viewports by
    // centering the app in a phone-width column. No effect on real devices
    // whose width is already below this cap.
    width: '100%',
    maxWidth: 540,
    alignSelf: 'center',
  },
});
