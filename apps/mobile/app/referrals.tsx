import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Share, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
export default function ReferralsScreen() {
  const { t } = useI18n();
  const user = useAuthStore((s) => s.user);
  const team = useQuery({
    queryKey: ['team'],
    queryFn: api.team,
    enabled: Boolean(user),
  });
  async function share() {
    if (!user) {
      router.push('/login');
      return;
    }
    await Share.share({
      message: t('referrals.shareMessage', { code: user.referralCode }),
    });
  }
  return (
    <Screen
      header={
        <TopBar
          actionLabel={t('team.title')}
          onAction={() => router.push('/team')}
          title={t('referrals.inviteFriends')}
        />
      }
    >
      <View style={styles.page}>
        <View style={styles.card}>
          <Text style={styles.title}>{t('referrals.yourCode')}</Text>
          <Text style={styles.copy}>{t('referrals.copy')}</Text>
          <View style={styles.codeBox}>
            <Text selectable style={styles.code}>
              {user?.referralCode ?? '—'}
            </Text>
          </View>
          <GradientButton onPress={() => void share()}>
            {user ? t('referrals.share') : t('referrals.signIn')}
          </GradientButton>
        </View>
        {user ? (
          <View style={styles.summary}>
            <Text style={styles.summaryValue}>
              {team.data?.items.length ?? 0}
            </Text>
            <Text style={styles.summaryLabel}>{t('referrals.summary')}</Text>
          </View>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.xl, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  title: {
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  copy: {
    marginTop: 8,
    textAlign: 'center',
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  codeBox: {
    marginVertical: 24,
    alignItems: 'center',
    padding: 18,
    borderWidth: 1,
    borderStyle: 'dashed',
    borderColor: theme.colors.primary,
    borderRadius: theme.radii.lg,
  },
  code: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 26,
    letterSpacing: 4,
  },
  summary: {
    alignItems: 'center',
    padding: 20,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  summaryValue: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    fontSize: 28,
  },
  summaryLabel: { marginTop: 4, color: theme.colors.surface },
});
