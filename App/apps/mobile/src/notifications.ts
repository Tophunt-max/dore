import Constants from 'expo-constants';
import * as Device from 'expo-device';
import * as Notifications from 'expo-notifications';
import { Platform } from 'react-native';
import { NOTIFICATION_ROUTE_MAP, type NotificationType } from '@oriva/shared';
import { router } from 'expo-router';
import { api } from '@/api/endpoints';

Notifications.setNotificationHandler({
  handleNotification: async () => ({
    shouldPlaySound: true,
    shouldSetBadge: true,
    shouldShowBanner: true,
    shouldShowList: true,
  }),
});

export async function registerForPush(deviceId: string): Promise<string> {
  if (!Device.isDevice) {
    throw new Error('Push notifications require a physical device');
  }

  if (Platform.OS === 'android') {
    await Notifications.setNotificationChannelAsync('default', {
      name: 'Oriva updates',
      importance: Notifications.AndroidImportance.HIGH,
      vibrationPattern: [0, 250, 250, 250],
      lightColor: '#EE5016',
    });
  }

  const current = await Notifications.getPermissionsAsync();
  const permission =
    current.status === 'granted'
      ? current
      : await Notifications.requestPermissionsAsync();
  if (permission.status !== 'granted') {
    throw new Error('Notification permission was not granted');
  }

  const projectId =
    process.env.EXPO_PUBLIC_EAS_PROJECT_ID ??
    Constants.expoConfig?.extra?.eas?.projectId ??
    Constants.easConfig?.projectId;
  if (!projectId) {
    throw new Error('EXPO_PUBLIC_EAS_PROJECT_ID is not configured');
  }

  const token = (await Notifications.getExpoPushTokenAsync({ projectId })).data;
  await api.registerPushToken({
    token,
    platform: Platform.OS === 'ios' ? 'ios' : 'android',
    deviceId,
  });
  return token;
}

export function installNotificationNavigation(): () => void {
  const subscription = Notifications.addNotificationResponseReceivedListener(
    (response) => {
      const data = response.notification.request.content.data;
      if (!data) return;
      const type = data.type as NotificationType | undefined;
      if (!type || !(type in NOTIFICATION_ROUTE_MAP)) return;
      const route =
        NOTIFICATION_ROUTE_MAP[type as keyof typeof NOTIFICATION_ROUTE_MAP];
      if (route) router.push(route);
    },
  );
  return () => subscription.remove();
}
