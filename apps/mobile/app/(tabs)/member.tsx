import { useQuery } from '@tanstack/react-query';
import { ImageBackground, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

const privileges = [
  { title: 'Not Win Full Refund', desc: 'Refund when you do not win' },
  { title: 'Invite Rebate', desc: 'Earn rebate from invitations' },
  { title: 'Reduced withdrawal fee', desc: 'Lower fee on every withdrawal' },
] as const;

export default function MemberScreen() {
  const { formatDate } = useI18n();
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
      contentStyle={styles.root}
      refreshing={plans.isRefetching || memberships.isRefetching}
      onRefresh={() => {
        void plans.refetch();
        void memberships.refetch();
      }}
    >
      {/* VIP hero */}
      <ImageBackground
        source={assets.memberBackground}
        resizeMode="cover"
        style={styles.hero}
        imageStyle={styles.heroImage}
      >
        <View style={styles.vipRow}>
          <Text style={styles.vipName}>VIP</Text>
          <View style={styles.vipBadge}>
            <Text style={styles.vipBadgeText}>
              {active ? active.planName : 'No active membership'}
            </Text>
          </View>
        </View>
        <Text style={styles.heroTitle}>VIP Privileges</Text>
        <Text style={styles.heroCopy}>
          {active
            ? `Valid until ${formatDate(active.endsAt)}`
            : 'Memberships are granted by approved promotions or administrators.'}
        </Text>
      </ImageBackground>

      {/* Invite counts */}
      <View style={styles.stats}>
        <View style={styles.statItem}>
          <Text style={styles.statValue}>0</Text>
          <Text style={styles.statLabel}>Number of VIP invited</Text>
        </View>
        <View style={styles.statDivider} />
        <View style={styles.statItem}>
          <Text style={styles.statValue}>0</Text>
          <Text style={styles.statLabel}>Direct invitation</Text>
        </View>
        <View style={styles.statDivider} />
        <View style={styles.statItem}>
          <Text style={styles.statValue}>0</Text>
          <Text style={styles.statLabel}>Indirect invitation</Text>
        </View>
      </View>

      {/* Privileges */}
      <Text style={styles.sectionTitle}>VIP Privileges</Text>
      <View style={styles.privileges}>
        {privileges.map((item, index) => (
          <View
            key={item.title}
            style={[styles.privItem, index > 0 && styles.privBorder]}
          >
            <View style={styles.privDot}>
              <Text style={styles.privDotText}>★</Text>
            </View>
            <View style={styles.privCopy}>
              <Text style={styles.privTitle}>{item.title}</Text>
              <Text style={styles.privDesc}>{item.desc}</Text>
            </View>
          </View>
        ))}
      </View>

      {/* Plans */}
      <QueryNotice
        loading={plans.isLoading || memberships.isLoading}
        error={plans.error ?? memberships.error}
        onRetry={() => {
          void plans.refetch();
          void memberships.refetch();
        }}
      />
      {plans.data?.items.length ? (
        <>
          <Text style={styles.sectionTitle}>Available plans</Text>
          {plans.data.items.map((plan) => (
            <View key={plan.id} style={styles.planCard}>
              <Text style={styles.planName}>{plan.name}</Text>
              <Text style={styles.planDesc}>{plan.description}</Text>
              {plan.benefits.map((benefit) => (
                <Text key={benefit} style={styles.planBenefit}>
                  ✓ {benefit}
                </Text>
              ))}
            </View>
          ))}
        </>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: theme.colors.background, paddingBottom: rpx(40) },
  hero: {
    height: rpx(380),
    paddingTop: rpx(40),
    paddingHorizontal: rpx(40),
    justifyContent: 'center',
  },
  heroImage: { resizeMode: 'cover' },
  vipRow: { flexDirection: 'row', alignItems: 'center' },
  vipName: {
    fontSize: rpx(56),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.accentStart,
  },
  vipBadge: {
    marginLeft: rpx(20),
    paddingHorizontal: rpx(20),
    paddingVertical: rpx(6),
    borderRadius: rpx(24),
    backgroundColor: 'rgba(255,255,255,.2)',
  },
  vipBadgeText: { fontSize: rpx(22), color: '#fff' },
  heroTitle: {
    marginTop: rpx(24),
    fontSize: rpx(44),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  heroCopy: {
    marginTop: rpx(12),
    fontSize: rpx(24),
    color: '#F6DEAE',
    lineHeight: rpx(34),
  },
  stats: {
    marginTop: rpx(-40),
    marginHorizontal: rpx(24),
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    paddingVertical: rpx(30),
    flexDirection: 'row',
    alignItems: 'center',
    ...theme.shadows.card,
  },
  statItem: { flex: 1, alignItems: 'center' },
  statValue: {
    fontSize: rpx(40),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.primary,
  },
  statLabel: {
    marginTop: rpx(8),
    fontSize: rpx(20),
    color: theme.colors.textMuted,
    textAlign: 'center',
    paddingHorizontal: rpx(8),
  },
  statDivider: { width: StyleSheet.hairlineWidth, height: rpx(60), backgroundColor: '#eee' },
  sectionTitle: {
    marginTop: rpx(36),
    marginHorizontal: rpx(24),
    marginBottom: rpx(16),
    fontSize: rpx(34),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  privileges: {
    marginHorizontal: rpx(24),
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    paddingHorizontal: rpx(28),
  },
  privItem: {
    paddingVertical: rpx(28),
    flexDirection: 'row',
    alignItems: 'center',
  },
  privBorder: {
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: '#f0f0f0',
  },
  privDot: {
    width: rpx(64),
    height: rpx(64),
    borderRadius: rpx(32),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#FFF3E9',
  },
  privDotText: { fontSize: rpx(30), color: theme.colors.primary },
  privCopy: { flex: 1, marginLeft: rpx(20) },
  privTitle: {
    fontSize: rpx(28),
    fontFamily: theme.typography.family.medium,
    color: theme.colors.ink,
  },
  privDesc: {
    marginTop: rpx(6),
    fontSize: rpx(22),
    color: theme.colors.textMuted,
  },
  planCard: {
    marginHorizontal: rpx(24),
    marginBottom: rpx(20),
    padding: rpx(28),
    borderRadius: rpx(20),
    backgroundColor: '#fff',
  },
  planName: {
    fontSize: rpx(32),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  planDesc: {
    marginTop: rpx(10),
    fontSize: rpx(24),
    color: theme.colors.textSecondary,
    lineHeight: rpx(34),
  },
  planBenefit: {
    marginTop: rpx(12),
    fontSize: rpx(24),
    color: theme.colors.success,
  },
});
