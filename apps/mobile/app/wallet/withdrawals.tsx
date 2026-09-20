import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function WithdrawalRecordsScreen() {
  const { t, formatMoney, formatDate, labelFor } = useI18n();
  const query = useQuery({
    queryKey: ['withdrawals'],
    queryFn: api.withdrawals,
  });
  return (
    <Screen
      header={<TopBar title={t('wallet.withdrawals')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((item) => (
          <View key={item.id} style={styles.card}>
            <View style={styles.row}>
              <Text style={styles.amount}>
                {formatMoney(item.amountMinor, item.currency)}
              </Text>
              <StatusPill
                label={labelFor(item.status)}
                tone={
                  item.status === 'paid' || item.status === 'approved'
                    ? 'success'
                    : item.status === 'rejected'
                      ? 'danger'
                      : 'warning'
                }
              />
            </View>
            <Text style={styles.date}>{formatDate(item.createdAt)}</Text>
            {item.payoutReference ? (
              <Text style={styles.reference}>
                {t('result.reference')}: {item.payoutReference}
              </Text>
            ) : null}
            {item.rejectionReason ? (
              <Text style={styles.error}>{item.rejectionReason}</Text>
            ) : null}
          </View>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('common.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.md },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  amount: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  date: { marginTop: 8, color: theme.colors.textMuted, fontSize: 11 },
  reference: { marginTop: 8, color: theme.colors.textSecondary },
  error: { marginTop: 8, color: theme.colors.danger },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
