import { useQuery } from '@tanstack/react-query';
import { useLocalSearchParams } from 'expo-router';
import { StyleSheet, Text, View } from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function OrderDetailScreen() {
  const { labelFor, t } = useI18n();
  const { orderId } = useLocalSearchParams<{ orderId: string }>();
  const order = useQuery({
    queryKey: ['order', orderId],
    queryFn: () => api.order(orderId),
  });
  return (
    <Screen header={<TopBar title={t('orders.details')} />}>
      <View style={styles.page}>
        {!order.data ? (
          <EmptyState
            title={t('orders.loading')}
            message={order.error?.message ?? t('common.pleaseWait')}
          />
        ) : (
          <View style={styles.card}>
            <Text style={styles.status}>{labelFor(order.data.status)}</Text>
            <Text style={styles.title}>{order.data.title}</Text>
            <View style={styles.row}>
              <Text style={styles.label}>{t('orders.quantity')}</Text>
              <Text style={styles.value}>{order.data.quantity}</Text>
            </View>
            <View style={styles.row}>
              <Text style={styles.label}>{t('orders.amount')}</Text>
              <Text style={styles.amount}>
                {formatMoney(order.data.amountMinor, order.data.currency)}
              </Text>
            </View>
            <View style={styles.row}>
              <Text style={styles.label}>{t('orders.id')}</Text>
              <Text numberOfLines={1} style={styles.value}>
                {order.data.id}
              </Text>
            </View>
          </View>
        )}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  card: {
    borderRadius: theme.radii.xl,
    padding: theme.spacing.xl,
    backgroundColor: theme.colors.surface,
  },
  status: {
    alignSelf: 'flex-start',
    borderRadius: theme.radii.pill,
    paddingHorizontal: theme.spacing.md,
    paddingVertical: theme.spacing.xs,
    textTransform: 'capitalize',
    color: theme.colors.primary,
    backgroundColor: '#FFF3D1',
    fontFamily: theme.typography.family.bold,
  },
  title: {
    marginVertical: theme.spacing.xl,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  row: {
    minHeight: 48,
    flexDirection: 'row',
    alignItems: 'center',
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: theme.colors.border,
  },
  label: {
    width: 90,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  value: {
    flex: 1,
    textAlign: 'right',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  amount: {
    flex: 1,
    textAlign: 'right',
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
});
