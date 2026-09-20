import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function PaymentMethodsScreen() {
  const { t } = useI18n();
  const query = useQuery({
    queryKey: ['payment-methods'],
    queryFn: api.paymentMethods,
  });
  return (
    <Screen
      header={<TopBar title={t('payment.methods')} />}
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
            title={t('payment.noMethods')}
            message={t('payment.noMethodsCopy')}
          />
        ) : (
          query.data?.items.map((method) => (
            <View key={method.id} style={styles.card}>
              <View style={styles.header}>
                <Text style={styles.type}>{method.type.toUpperCase()}</Text>
                <Text style={styles.title}>{method.displayName}</Text>
              </View>
              {method.upiId ? (
                <Row label={t('payment.upiId')} value={method.upiId} />
              ) : null}
              {method.accountName ? (
                <Row
                  label={t('payment.accountName')}
                  value={method.accountName}
                />
              ) : null}
              {method.accountNumber ? (
                <Row
                  label={t('payment.accountNumber')}
                  value={method.accountNumber}
                />
              ) : null}
              {method.bankName ? (
                <Row label={t('payment.bank')} value={method.bankName} />
              ) : null}
              {method.ifsc ? (
                <Row label={t('payment.ifsc')} value={method.ifsc} />
              ) : null}
              <Text style={styles.instructions}>{method.instructions}</Text>
            </View>
          ))
        )}
      </View>
    </Screen>
  );
}
function Row({ label, value }: { label: string; value: string }) {
  return (
    <View style={styles.row}>
      <Text style={styles.label}>{label}</Text>
      <Text selectable style={styles.value}>
        {value}
      </Text>
    </View>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  header: { marginBottom: 12, flexDirection: 'row', alignItems: 'center' },
  type: {
    marginRight: 12,
    paddingHorizontal: 12,
    paddingVertical: 4,
    borderRadius: 20,
    color: theme.colors.primary,
    backgroundColor: '#FFF1EA',
    fontFamily: theme.typography.family.bold,
    fontSize: 11,
  },
  title: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  row: {
    minHeight: 42,
    flexDirection: 'row',
    alignItems: 'center',
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: theme.colors.border,
  },
  label: { width: 110, color: theme.colors.textMuted },
  value: {
    flex: 1,
    textAlign: 'right',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  instructions: {
    marginTop: 12,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
});
