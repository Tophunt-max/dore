import { useQuery } from '@tanstack/react-query';
import { useLocalSearchParams } from 'expo-router';
import { Image, StyleSheet, Text, View } from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { EmptyState } from '@/components/EmptyState';
import { ManualPaymentForm } from '@/components/ManualPaymentForm';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function CheckoutScreen() {
  const { labelFor, t } = useI18n();
  const { orderId } = useLocalSearchParams<{ orderId: string }>();
  const order = useQuery({
    queryKey: ['order', orderId],
    queryFn: () => api.order(orderId),
  });
  return (
    <Screen header={<TopBar title={t('orders.confirm')} />}>
      <View style={styles.page}>
        {!order.data ? (
          <EmptyState
            title={
              order.isLoading ? t('orders.loading') : t('orders.unavailable')
            }
            message={order.error?.message ?? t('common.pleaseTryAgain')}
          />
        ) : (
          <>
            <View style={styles.product}>
              <Image source={assets.goodsOne} style={styles.image} />
              <View style={styles.copy}>
                <Text style={styles.title}>{order.data.title}</Text>
                <Text style={styles.muted}>
                  {t(
                    order.data.quantity === 1
                      ? 'orders.entry'
                      : 'orders.entries',
                    {
                      count: order.data.quantity,
                    },
                  )}
                </Text>
              </View>
              <Text style={styles.amount}>
                {formatMoney(order.data.amountMinor, order.data.currency)}
              </Text>
            </View>
            {order.data.status === 'pending' ? (
              <ManualPaymentForm
                amountMinor={order.data.amountMinor}
                orderId={order.data.id}
              />
            ) : (
              <View style={styles.done}>
                <Text style={styles.doneTitle}>
                  {t('orders.status', { status: labelFor(order.data.status) })}
                </Text>
                <Text style={styles.doneCopy}>{t('orders.noPayment')}</Text>
              </View>
            )}
          </>
        )}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  product: {
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  image: { width: 72, height: 72, borderRadius: theme.radii.md },
  copy: { flex: 1, marginLeft: theme.spacing.md },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  muted: {
    marginTop: 4,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  amount: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  done: {
    borderRadius: theme.radii.xl,
    padding: theme.spacing.xl,
    backgroundColor: theme.colors.surface,
  },
  doneTitle: {
    color: theme.colors.success,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  doneCopy: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
  },
});
