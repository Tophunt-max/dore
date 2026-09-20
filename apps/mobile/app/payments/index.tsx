import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function PaymentsScreen() {
  const { t, formatMoney, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['payments'], queryFn: api.payments });
  return (
    <Screen
      header={<TopBar title={t('payment.records')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <EmptyState
            title={t('payment.none')}
            message={t('payment.noneCopy')}
          />
        ) : (
          query.data?.items.map((payment) => (
            <Pressable
              key={payment.id}
              onPress={() => router.push(`/payments/${payment.id}`)}
              style={styles.row}
            >
              <View style={styles.copy}>
                <Text style={styles.title}>
                  {payment.purpose === 'recharge'
                    ? t('payment.recharge')
                    : t('payment.order')}
                </Text>
                <Text style={styles.method}>{payment.method.displayName}</Text>
              </View>
              <View style={styles.right}>
                <Text style={styles.amount}>
                  {formatMoney(payment.amountMinor, payment.currency)}
                </Text>
                <StatusPill
                  label={labelFor(payment.status)}
                  tone={
                    payment.status === 'approved'
                      ? 'success'
                      : payment.status === 'rejected'
                        ? 'danger'
                        : 'warning'
                  }
                />
              </View>
            </Pressable>
          ))
        )}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.md },
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  copy: { flex: 1 },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  method: { marginTop: 4, color: theme.colors.textMuted, fontSize: 12 },
  right: { alignItems: 'flex-end', gap: 6 },
  amount: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
});
