import { useQuery } from '@tanstack/react-query';
import { ImageBackground, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function MemberScreen() {
  const { formatDate, t } = useI18n();
  const plans = useQuery({
    queryKey: ['membership-plans'],
    queryFn: api.membershipPlans,
  });
  const memberships = useQuery({
    queryKey: ['memberships'],
    queryFn: api.memberships,
  });
  const active = memberships.data?.items.find(
    (item) => item.status === 'active',
  );
  return (
    <Screen
      contentStyle={styles.page}
      refreshing={plans.isRefetching || memberships.isRefetching}
      onRefresh={() => {
        void plans.refetch();
        void memberships.refetch();
      }}
    >
      <Text style={styles.heading}>{t('membership.title')}</Text>
      <ImageBackground
        imageStyle={styles.heroImage}
        resizeMode="cover"
        source={assets.memberBackground}
        style={styles.hero}
      >
        <StatusPill
          label={active ? t('membership.active') : t('membership.inactive')}
          tone={active ? 'success' : 'muted'}
        />
        <Text style={styles.heroTitle}>
          {active?.planName ?? t('membership.defaultBenefits')}
        </Text>
        <Text style={styles.heroCopy}>
          {active
            ? t('membership.validUntil', { date: formatDate(active.endsAt) })
            : t('membership.granted')}
        </Text>
      </ImageBackground>
      <QueryNotice
        loading={plans.isLoading || memberships.isLoading}
        error={plans.error ?? memberships.error}
        onRetry={() => {
          void plans.refetch();
          void memberships.refetch();
        }}
      />
      <Text style={styles.sectionTitle}>{t('membership.plans')}</Text>
      {plans.data?.items.map((plan) => (
        <View key={plan.id} style={styles.card}>
          <Text style={styles.plan}>{plan.name}</Text>
          <Text style={styles.description}>{plan.description}</Text>
          {plan.benefits.map((benefit) => (
            <Text key={benefit} style={styles.benefit}>
              ✓ {benefit}
            </Text>
          ))}
          <Text style={styles.meta}>
            {t('membership.planMeta', { days: plan.durationDays })}
          </Text>
        </View>
      ))}
      {!plans.isLoading && !plans.error && !plans.data?.items.length ? (
        <Text style={styles.empty}>{t('membership.empty')}</Text>
      ) : null}
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  heading: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  hero: { height: 250, marginTop: 16, padding: 20, justifyContent: 'flex-end' },
  heroImage: { borderRadius: theme.radii.xl },
  heroTitle: {
    marginTop: 12,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  heroCopy: { marginTop: 6, color: '#F6DEAE', lineHeight: 19 },
  sectionTitle: {
    marginTop: 22,
    marginBottom: 10,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  card: {
    marginBottom: 12,
    padding: 16,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  plan: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  description: {
    marginTop: 7,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  benefit: { marginTop: 9, color: theme.colors.success },
  meta: { marginTop: 12, color: theme.colors.textMuted, fontSize: 11 },
  empty: { padding: 32, textAlign: 'center', color: theme.colors.textMuted },
});
