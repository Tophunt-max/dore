import { router } from 'expo-router';
import { Alert, Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { GradientButton } from '@/components/GradientButton';
import { OrList, OrRow } from '@/components/orich/OrRow';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { assets } from '@/assets';
import { useI18n, useLocaleStore, type Locale } from '@/i18n';
import { registerForPush } from '@/notifications';
import { useAuthStore } from '@/stores/auth';
import { chooseAndUploadAvatar } from '@/uploads';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

const locales: Locale[] = ['en', 'hi', 'zh'];

// ORich `pages/account/setting` (scope 5ede36b2): a white block of rows —
// Avatar (circular thumb + chevron), Name (value + chevron), Phone (masked
// value), Address, Bank — with a fixed-bottom logout button. A compact
// preferences block (language + notifications) is retained below in the same
// visual language since the Oriva app is multi-language.
export default function SettingsScreen() {
  const { t } = useI18n();
  const locale = useLocaleStore((s) => s.locale);
  const setLocale = useLocaleStore((s) => s.setLocale);
  const { deviceId, logout, user } = useAuthStore();

  async function enablePush() {
    if (!deviceId || !user) {
      router.push('/login');
      return;
    }
    try {
      await registerForPush(deviceId);
      Alert.alert(t('settings.notificationsEnabled'));
    } catch (e) {
      Alert.alert(e instanceof Error ? e.message : t('common.error'));
    }
  }

  async function uploadAvatar() {
    if (!user) {
      router.push('/login');
      return;
    }
    try {
      await chooseAndUploadAvatar();
    } catch (e) {
      Alert.alert(e instanceof Error ? e.message : t('common.error'));
    }
  }

  return (
    <Screen
      header={<TopBar title={t('settings.title')} white />}
      contentStyle={styles.page}
    >
      <View style={styles.middle}>
        <OrList>
          <OrRow
            label={t('settings.profilePhoto')}
            onPress={() => void uploadAvatar()}
            trailing={
              <Image
                source={
                  user?.avatarUrl
                    ? { uri: user.avatarUrl }
                    : assets.defaultAvatar
                }
                style={styles.avatar}
              />
            }
            chevron
          />
          <OrRow
            label={t('settings.displayName')}
            value={user?.displayName ?? ''}
            onPress={() => router.push('/profile/username')}
            chevron
          />
          <OrRow label={t('auth.mobile')} value={user?.phoneMasked ?? ''} />
          <OrRow
            label={t('account.addresses')}
            onPress={() => router.push('/addresses')}
            chevron
          />
          <OrRow
            label={t('account.methods')}
            onPress={() => router.push('/payment-methods')}
            chevron
            last
          />
        </OrList>
      </View>

      {/* Preferences (app-specific), same white-row styling. */}
      <View style={styles.block}>
        <OrList>
          <OrRow
            label={t('settings.notifications')}
            onPress={() => void enablePush()}
            chevron
          />
        </OrList>
        <View style={styles.language}>
          <Text style={styles.languageTitle}>{t('settings.language')}</Text>
          <View style={styles.options}>
            {locales.map((item) => (
              <Pressable
                key={item}
                onPress={() => void setLocale(item)}
                style={[styles.option, item === locale && styles.selected]}
              >
                <Text
                  style={[
                    styles.optionText,
                    item === locale && styles.selectedText,
                  ]}
                >
                  {t(
                    `language.${item}` as
                      | 'language.en'
                      | 'language.hi'
                      | 'language.zh',
                  )}
                </Text>
              </Pressable>
            ))}
          </View>
        </View>
      </View>

      {/* .logout { bottom:38rpx; left:74rpx; width:600rpx } */}
      <View style={styles.logout}>
        <GradientButton
          onPress={() => (user ? void logout() : router.push('/login'))}
        >
          {user ? t('settings.logout') : t('settings.signin')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: {
    backgroundColor: theme.colors.background,
    flexGrow: 1,
    paddingBottom: rpx(180),
  },
  middle: { marginTop: rpx(2) },
  block: { marginTop: rpx(20) },
  // .avatar_img { width:90rpx; height:90rpx; border-radius:50% }
  avatar: {
    width: rpx(90),
    height: rpx(90),
    borderRadius: rpx(45),
    backgroundColor: '#eee',
  },
  language: {
    paddingVertical: rpx(28),
    paddingHorizontal: rpx(30),
    backgroundColor: theme.colors.surface,
    borderTopWidth: rpx(2),
    borderTopColor: '#ececec',
  },
  languageTitle: {
    fontSize: rpx(32),
    color: '#444',
    fontFamily: theme.typography.family.regular,
  },
  options: {
    marginTop: rpx(20),
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 8,
  },
  option: {
    paddingHorizontal: 14,
    paddingVertical: 10,
    borderRadius: 20,
    backgroundColor: theme.colors.background,
  },
  selected: { backgroundColor: theme.colors.primary },
  optionText: { color: theme.colors.ink },
  selectedText: { color: theme.colors.surface },
  logout: {
    position: 'absolute',
    left: rpx(74),
    right: rpx(74),
    bottom: rpx(38),
  },
});
