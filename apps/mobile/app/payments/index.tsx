import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { EmptyState } from '@/components/EmptyState';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/payment/payrecord` (scope 6d56c383): status tabs (Success/Fail/
// Processing) over orange-bordered cards, each a stack of label/value rows.
const TABS = [
  { key: 'success', match: ['approved'] },
  { key: 'fail', match: ['rejected', 'cancelled', 'refunded'] },
  { key: 'processing', match: ['awaiting_submission', 'under_review'] },
] as const;
const TAB_LABEL = {
  success: 'payment.tsuccess',
  fail: 'payment.tfail',
  processing: 'payment.tprocessing',
} as const;

export default function PaymentsScreen() {
  const { t, formatMoney, formatDate, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['payments'], queryFn: api.payments });
  const [tab, setTab] = useState(0);

  const match = TABS[tab]?.match as readonly string[];
  const items = (query.data?.items ?? []).filter((p) =>
    match.includes(p.status),
  );

  return (
    <Screen
      header={<TopBar title={t('payment.records')} white />}
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      {/* .payrecord_tab */}
      <View style={styles.tab}>
        {TABS.map((tabDef, index) => {
          const on = tab === index;
          return (
            <Pressable
              key={tabDef.key}
              onPress={() => setTab(index)}
              style={styles.tabItem}
            >
              <Text style={[styles.tabText, on && styles.tabTextActive]}>
                {t(TAB_LABEL[tabDef.key])}
              </Text>
              {on ? (
                <Image source={assets.select} style={styles.tabUnderline} />
              ) : null}
            </Pressable>
          );
        })}
      </View>

      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />
      {!query.isLoading && !query.error && !items.length ? (
        <EmptyState title={t('payment.none')} message={t('payment.noneCopy')} />
      ) : null}

      {items.map((payment) => (
        <Pressable
          key={payment.id}
          onPress={() => router.push(`/payments/${payment.id}`)}
          style={styles.list}
        >
          <Row
            label={formatDate(payment.createdAt)}
            value={labelFor(payment.status)}
            border
          />
          <Row
            label={
              payment.purpose === 'recharge'
                ? t('payment.recharge')
                : t('payment.orderno')
            }
            value={payment.orderId ?? payment.id.slice(0, 10)}
            border
          />
          <Row
            label={t('payment.payamount')}
            value={formatMoney(payment.amountMinor, payment.currency)}
          />
        </Pressable>
      ))}
    </Screen>
  );
}

function Row({
  label,
  value,
  border,
}: {
  label: string;
  value: string;
  border?: boolean;
}) {
  return (
    <View style={[styles.item, border && styles.itemBorder]}>
      <Text style={styles.itemTitle}>{label}</Text>
      <Text style={styles.itemContent} numberOfLines={1}>
        {value}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  // .payrecord { padding:20rpx 30rpx }
  page: {
    backgroundColor: theme.colors.surface,
    flexGrow: 1,
    paddingVertical: rpx(20),
    paddingHorizontal: rpx(30),
  },
  // .payrecord_tab { space-between; margin-bottom:30rpx }
  tab: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: rpx(30),
    paddingHorizontal: rpx(40),
  },
  tabItem: { alignItems: 'center' },
  // .payrecord_tab_item { 28rpx; weight 700; #b9b9b9 }
  tabText: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.bold,
  },
  // .active { #17273a }
  tabTextActive: { color: '#17273a' },
  tabUnderline: {
    width: rpx(34),
    height: rpx(12),
    marginTop: rpx(6),
    resizeMode: 'contain',
  },
  // .payrecord_list { border:2rpx #ee5016; radius 10rpx; shadow }
  list: {
    marginBottom: rpx(30),
    paddingHorizontal: rpx(20),
    borderWidth: rpx(2),
    borderColor: '#ee5016',
    borderRadius: rpx(10),
    backgroundColor: '#fff',
    ...theme.shadows.card,
  },
  // .payrecord_list_item { space-between; padding:16rpx 6rpx }
  item: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: rpx(16),
    paddingHorizontal: rpx(6),
  },
  // .border { border-bottom:2rpx #dcdcdc }
  itemBorder: { borderBottomWidth: rpx(2), borderBottomColor: '#dcdcdc' },
  itemTitle: {
    fontSize: rpx(28),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  // .payrecord_list_item_content { color:#a9a9a9 }
  itemContent: {
    flexShrink: 1,
    marginLeft: rpx(20),
    fontSize: rpx(28),
    color: '#a9a9a9',
    fontFamily: theme.typography.family.regular,
  },
});
