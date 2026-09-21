import { useQuery } from '@tanstack/react-query';
import { Redirect } from 'expo-router';
import { ImageBackground, StyleSheet, Text, View } from 'react-native';
import { useAuthStore } from '@/stores/auth';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/finance/order` (scope 71d21e27): an income hero card (total +
// amount stats) over a white rounded order list. Wired to the Oriva finance
// orders (informational).
export default function FinanceOrderScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { t, formatMoney, formatDate, labelFor } = useI18n();
  const query = useQuery({
    queryKey: ['finance-orders'],
    queryFn: api.financeOrders,
  });
  const items = query.data?.items ?? [];
  const currency = items[0]?.currency ?? 'INR';
  const total = items.reduce((sum, o) => sum + o.principalMinor, 0);

  return (
    <Screen
      header={<TopBar title={t('finance.ordersTab')} white transparent />}
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      {/* income hero */}
      <ImageBackground
        source={assets.financeOrderBg}
        resizeMode="stretch"
        style={styles.total}
      >
        <Text style={styles.income}>{t('finance.totalIncome')}</Text>
        <Text style={styles.incomeNum}>{formatMoney(total, currency)}</Text>
        <View style={styles.amount}>
          <View style={styles.amountItem}>
            <Text style={styles.amountTitle}>{t('finance.count')}</Text>
            <Text style={styles.amountNumber}>{items.length}</Text>
          </View>
          <View style={styles.amountItem}>
            <Text style={styles.amountTitle}>{t('finance.principal')}</Text>
            <Text style={styles.amountNumber} numberOfLines={1}>
              {formatMoney(total, currency)}
            </Text>
          </View>
        </View>
      </ImageBackground>

      {/* order list */}
      <View style={styles.list}>
        <View style={styles.tab}>
          <Text style={styles.tabActive}>{t('finance.ordersTab')}</Text>
        </View>

        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />

        {items.map((order) => (
          <View key={order.id} style={styles.card}>
            <Text style={styles.cardTitle} numberOfLines={1}>
              {order.offerTitle}
            </Text>
            <View style={styles.cardTotal}>
              <View style={styles.strip}>
                <Text style={styles.stripTitle}>{t('finance.principal')}</Text>
                <Text style={styles.stripNumber}>
                  {formatMoney(order.principalMinor, order.currency)}
                </Text>
              </View>
              <View style={styles.strip}>
                <Text style={styles.stripTitle}>{t('payment.status')}</Text>
                <Text style={styles.stripNumber}>{labelFor(order.status)}</Text>
              </View>
            </View>
            {order.createdAt ? (
              <Text style={styles.pro}>{formatDate(order.createdAt)}</Text>
            ) : null}
          </View>
        ))}
        {!query.isLoading && !items.length ? (
          <Text style={styles.empty}>{t('finance.noOrders')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: '#f9f9f9', flexGrow: 1 },
  // .order_total { height:442rpx; bg; color #fff }
  total: {
    height: rpx(442),
    paddingTop: rpx(60),
    paddingHorizontal: rpx(22),
  },
  income: {
    textAlign: 'center',
    fontSize: rpx(36),
    color: '#fff',
    fontFamily: theme.typography.family.medium,
  },
  incomeNum: {
    marginTop: rpx(30),
    textAlign: 'center',
    fontSize: rpx(52),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  // .order_total_amount { margin-top:36rpx }
  amount: {
    marginTop: rpx(36),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: rpx(40),
  },
  amountItem: { alignItems: 'center' },
  amountTitle: {
    fontSize: rpx(28),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  amountNumber: {
    marginTop: rpx(14),
    fontSize: rpx(36),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
    maxWidth: rpx(240),
  },
  // .order_list { margin-top:-30rpx; bg #fff; radius top 20rpx }
  list: {
    marginTop: rpx(-30),
    paddingTop: rpx(30),
    backgroundColor: '#fff',
    borderTopLeftRadius: rpx(20),
    borderTopRightRadius: rpx(20),
    minHeight: rpx(400),
  },
  tab: { alignItems: 'center', paddingBottom: rpx(10) },
  tabActive: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .order_list_card_item { padding:30 24; borders #f9f9f9 }
  card: {
    marginTop: rpx(20),
    paddingVertical: rpx(30),
    paddingHorizontal: rpx(24),
    borderTopWidth: rpx(2),
    borderTopColor: '#f9f9f9',
    borderBottomWidth: rpx(2),
    borderBottomColor: '#f9f9f9',
  },
  cardTitle: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  cardTotal: {
    marginTop: rpx(28),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  strip: { alignItems: 'center' },
  stripTitle: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  stripNumber: {
    marginTop: rpx(16),
    fontSize: rpx(28),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
  },
  pro: {
    marginTop: rpx(24),
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
