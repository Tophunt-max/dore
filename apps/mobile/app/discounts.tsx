import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function DiscountsScreen() {
  const { formatMoney, formatDate, t } = useI18n();
  const query = useQuery({ queryKey: ['discounts'], queryFn: api.discounts });
  return (
    <Screen
      header={<TopBar title={t('discount.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((offer) => (
          <View key={offer.id} style={styles.card}>
            <View style={styles.amountPane}>
              <Text style={styles.amount}>
                {offer.discountType === 'percentage'
                  ? `${offer.value}%`
                  : formatMoney(offer.value)}
              </Text>
              <Text style={styles.off}>{t('discount.off')}</Text>
            </View>
            <View style={styles.copy}>
              <View style={styles.header}>
                <Text style={styles.title}>{offer.title}</Text>
                <StatusPill label={t('discount.available')} tone="success" />
              </View>
              <Text style={styles.code}>{offer.code}</Text>
              <Text style={styles.detail}>{offer.description}</Text>
              <Text style={styles.expiry}>
                {offer.endsAt
                  ? t('discount.ends', { date: formatDate(offer.endsAt) })
                  : t('discount.noEndDate')}
              </Text>
            </View>
          </View>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('discount.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    minHeight: 138,
    flexDirection: 'row',
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  amountPane: {
    width: 104,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#FFF1EA',
  },
  amount: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  off: { marginTop: 3, color: theme.colors.primary, fontSize: 11 },
  copy: { flex: 1, padding: theme.spacing.lg },
  header: { flexDirection: 'row', gap: 8 },
  title: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  code: {
    marginTop: 7,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    letterSpacing: 1,
  },
  detail: { marginTop: 6, color: theme.colors.textSecondary },
  expiry: { marginTop: 9, color: theme.colors.textMuted, fontSize: 11 },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
