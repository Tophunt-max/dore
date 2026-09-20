import { router } from 'expo-router';
import { useState } from 'react';
import { Alert, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { FormField } from '@/components/FormField';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
export default function UsernameScreen() {
  const { t } = useI18n();
  const user = useAuthStore((s) => s.user);
  const updateUser = useAuthStore((s) => s.updateUser);
  const [name, setName] = useState(user?.displayName ?? '');
  const [busy, setBusy] = useState(false);
  const normalized = name.trim();
  const error =
    normalized.length > 0 && normalized.length < 2
      ? t('profile.nameError')
      : undefined;
  async function save() {
    if (!user) {
      router.push('/login');
      return;
    }
    if (!normalized || error) return;
    setBusy(true);
    try {
      const result = await api.updateMe({ displayName: normalized });
      if (result) updateUser(result);
      Alert.alert(t('profile.nameUpdated'));
      router.back();
    } catch (e) {
      Alert.alert(e instanceof Error ? e.message : t('common.error'));
    } finally {
      setBusy(false);
    }
  }
  return (
    <Screen header={<TopBar title={t('settings.displayName')} />}>
      <View style={styles.page}>
        <View style={styles.preview}>
          <Text style={styles.initial}>
            {normalized.slice(0, 1).toUpperCase() || 'O'}
          </Text>
        </View>
        <Text style={styles.title}>{t('profile.greeting')}</Text>
        <Text style={styles.copy}>{t('profile.copy')}</Text>
        <FormField
          autoCapitalize="words"
          error={error}
          label={t('settings.displayName')}
          maxLength={40}
          onChangeText={setName}
          placeholder={t('profile.namePlaceholder')}
          value={name}
        />
        <GradientButton
          disabled={!normalized || Boolean(error)}
          loading={busy}
          onPress={() => void save()}
        >
          {t('profile.saveName')}
        </GradientButton>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.xl },
  preview: {
    width: 82,
    height: 82,
    alignSelf: 'center',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 41,
    backgroundColor: '#FFF1EA',
  },
  initial: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 32,
  },
  title: {
    marginTop: 24,
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  copy: {
    marginTop: 8,
    marginBottom: 24,
    textAlign: 'center',
    color: theme.colors.textMuted,
    lineHeight: 20,
  },
});
