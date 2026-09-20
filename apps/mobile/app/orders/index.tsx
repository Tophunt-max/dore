import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function OrdersScreen() {
  const { formatDate, labelFor, t } = useI18n();
  const orders = useQuery({ queryKey: ['orders'], queryFn: api.orders });
  return (
    <Screen
      header={<TopBar title={t('account.orders')} />}
      refreshing={orders.isRefetching}
      onRefresh={() => void orders.refetch()}
    >
      <View style={styles.page}>
        {!orders.data?.items.length ? (
          <View style={styles.empty}>
            <EmptyState
              title={t('orders.empty')}
              message={t('orders.emptyCopy')}
            />
          </View>
        ) : (
          orders.data.items.map((order) => (
            <Pressable
              key={order.id}
              onPress={() => router.push(`/orders/${order.id}`)}
              style={styles.order}
            >
              <View style={styles.copy}>
                <Text style={styles.title}>{order.title}</Text>
                <Text style={styles.date}>{formatDate(order.createdAt)}</Text>
              </View>
              <View style={styles.right}>
                <Text style={styles.amount}>
                  {formatMoney(order.amountMinor, order.currency)}
                </Text>
                <Text style={styles.status}>{labelFor(order.status)}</Text>
              </View>
            </Pressable>
          ))
        )}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  empty: {
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  order: {
    marginBottom: theme.spacing.md,
    flexDirection: 'row',
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  copy: { flex: 1 },
  right: { alignItems: 'flex-end' },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  date: {
    marginTop: 4,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: 12,
  },
  amount: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  status: {
    marginTop: 4,
    textTransform: 'capitalize',
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.medium,
    fontSize: 12,
  },
});
