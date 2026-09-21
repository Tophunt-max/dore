import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import { formatMoney } from '@oriva/shared';
import { Pressable, ScrollView, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/order/record` (scope 68668e97): a #f9f9f9 list under a white
// navbar, with a status filter tab bar (navtabs) and order cards.
type OrderStatus = 'pending' | 'paid' | 'failed' | 'cancelled' | 'fulfilled';
const TABS: ReadonlyArray<{ status?: OrderStatus }> = [
  {},
  { status: 'pending' },
  { status: 'paid' },
  { status: 'fulfilled' },
  { status: 'cancelled' },
];

export default function OrdersScreen() {
  const { formatDate, labelFor, t } = useI18n();
  const orders = useQuery({ queryKey: ['orders'], queryFn: api.orders });
  const [tab, setTab] = useState(0);

  const active = TABS[tab]?.status;
  const items = (orders.data?.items ?? []).filter((o) =>
    active ? o.status === active : true,
  );

  return (
    <Screen
      header={<TopBar title={t('account.orders')} white />}
      contentStyle={styles.page}
      refreshing={orders.isRefetching}
      onRefresh={() => void orders.refetch()}
    >
      {/* navtabs — status filter */}
      <View style={styles.tabs}>
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.tabsRow}
        >
          {TABS.map((tabDef, index) => {
            const on = tab === index;
            const label = tabDef.status ? labelFor(tabDef.status) : t('orders.all');
            return (
              <Pressable
                key={index}
                onPress={() => setTab(index)}
                style={styles.tabItem}
              >
                <Text style={[styles.tabText, on && styles.tabTextActive]}>
                  {label}
                </Text>
                {on ? <View style={styles.tabUnderline} /> : null}
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      <View style={styles.cardMain}>
        {!items.length ? (
          <View style={styles.empty}>
            <EmptyState
              title={t('orders.empty')}
              message={t('orders.emptyCopy')}
            />
          </View>
        ) : (
          items.map((order) => (
            <Pressable
              key={order.id}
              onPress={() => router.push(`/orders/${order.id}`)}
              style={styles.order}
            >
              <View style={styles.copy}>
                <Text style={styles.title} numberOfLines={1}>
                  {order.title}
                </Text>
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
  page: { backgroundColor: '#f9f9f9', flexGrow: 1 },
  // navtabs bar (white)
  tabs: { backgroundColor: '#fff' },
  tabsRow: { paddingHorizontal: rpx(30), alignItems: 'center' },
  tabItem: {
    marginRight: rpx(50),
    paddingVertical: rpx(24),
    alignItems: 'center',
  },
  tabText: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.medium,
  },
  tabTextActive: {
    fontSize: rpx(30),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  tabUnderline: {
    marginTop: rpx(8),
    width: rpx(34),
    height: rpx(6),
    borderRadius: rpx(3),
    backgroundColor: theme.colors.primary,
  },
  // .record_main_card { padding:16rpx 30rpx }
  cardMain: { paddingVertical: rpx(16), paddingHorizontal: rpx(30) },
  empty: {
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  order: {
    marginBottom: rpx(20),
    flexDirection: 'row',
    padding: rpx(28),
    borderRadius: rpx(16),
    backgroundColor: theme.colors.surface,
  },
  copy: { flex: 1, marginRight: rpx(16) },
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
