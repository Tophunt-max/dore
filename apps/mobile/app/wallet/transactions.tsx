import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function TransactionsScreen() {
  const { formatDate, formatMoney, t } = useI18n();
  const ledger = useQuery({ queryKey: ['ledger'], queryFn: api.ledger });
  return (
    <Screen header={<TopBar title={t('wallet.funding')} />}>
      <View style={styles.page}>
        {!ledger.data?.items.length ? (
          <EmptyState
            title={t('wallet.noTransactions')}
            message={t('wallet.noTransactionsCopy')}
          />
        ) : (
          ledger.data.items.map((entry) => (
            <View key={entry.id} style={styles.row}>
              <View style={styles.copy}>
                <Text style={styles.title}>{entry.description}</Text>
                <Text style={styles.date}>{formatDate(entry.createdAt)}</Text>
              </View>
              <Text
                style={[
                  styles.amount,
                  entry.direction === 'credit' ? styles.credit : styles.debit,
                ]}
              >
                {entry.direction === 'credit' ? '+' : '−'}
                {formatMoney(entry.amountMinor, entry.currency)}
              </Text>
            </View>
          ))
        )}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  row: {
    marginBottom: theme.spacing.md,
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  copy: { flex: 1 },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  date: {
    marginTop: 4,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: 11,
  },
  amount: { fontFamily: theme.typography.family.bold },
  credit: { color: theme.colors.success },
  debit: { color: theme.colors.danger },
});
