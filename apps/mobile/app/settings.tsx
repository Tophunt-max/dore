import { router } from 'expo-router';
import { Alert, Pressable, StyleSheet, Text, View } from 'react-native';
import { ListRow } from '@/components/ListRow';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n, useLocaleStore, type Locale } from '@/i18n';
import { registerForPush } from '@/notifications';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
import { chooseAndUploadAvatar } from '@/uploads';
const locales: Locale[] = ['en', 'hi', 'zh'];
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
    <Screen header={<TopBar title={t('settings.title')} />}>
      <View style={styles.page}>
        <Text style={styles.section}>{t('settings.profile')}</Text>
        <View style={styles.group}>
          <ListRow
            onPress={() => router.push('/profile/username')}
            subtitle={user?.displayName ?? ''}
            title={t('settings.displayName')}
          />
          <ListRow
            onPress={() => void uploadAvatar()}
            title={t('settings.profilePhoto')}
          />
          <ListRow
            onPress={() => router.push('/addresses')}
            title={t('account.addresses')}
          />
        </View>
        <Text style={styles.section}>{t('settings.preferences')}</Text>
        <View style={styles.group}>
          <ListRow
            onPress={() => void enablePush()}
            title={t('settings.notifications')}
          />
          <View style={styles.language}>
            <Text style={styles.languageTitle}>{t('settings.language')}</Text>
            <Text style={styles.hint}>{t('settings.languageHint')}</Text>
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
                        'language.en' | 'language.hi' | 'language.zh',
                    )}
                  </Text>
                </Pressable>
              ))}
            </View>
          </View>
        </View>
        <Text style={styles.section}>{t('settings.information')}</Text>
        <View style={styles.group}>
          <ListRow
            onPress={() => router.push('/rules')}
            title={t('settings.campaignRules')}
          />
          <ListRow
            onPress={() => router.push('/help')}
            title={t('settings.helpCentre')}
          />
          <ListRow
            onPress={() => router.push('/about')}
            title={t('account.about')}
          />
        </View>
        <Pressable
          onPress={() => (user ? void logout() : router.push('/login'))}
          style={styles.logout}
        >
          <Text style={styles.logoutText}>
            {user ? t('settings.logout') : t('settings.signin')}
          </Text>
        </Pressable>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  section: {
    marginTop: theme.spacing.lg,
    marginBottom: theme.spacing.sm,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.caption,
    textTransform: 'uppercase',
    letterSpacing: 1,
  },
  group: {
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  language: { padding: theme.spacing.lg },
  languageTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  hint: { marginTop: 4, color: theme.colors.textMuted },
  options: {
    marginTop: theme.spacing.md,
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
    minHeight: 54,
    marginTop: theme.spacing.xl,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: theme.radii.pill,
    backgroundColor: '#FFF0F0',
  },
  logoutText: {
    color: theme.colors.danger,
    fontFamily: theme.typography.family.bold,
  },
});
