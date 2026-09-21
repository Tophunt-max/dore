import { useQuery } from '@tanstack/react-query';
import { useState } from 'react';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/payment/cashrecord` (scope 549d5ede): same layout as payrecord —
// status tabs over orange-bordered cards of label/value rows, for withdrawals.
const TABS = [
  { key: 'success', match: ['approved', 'paid'] },
  { key: 'fail', match: ['rejected', 'cancelled'] },
  { key: 'processing', match: ['requested', 'reviewing'] },
] as const;
const TAB_LABEL = {
  success: 'payment.tsuccess',
  fail: 'payment.tfail',
  processing: 'payment.tprocessing',
} as const;

export default function WithdrawalRecordsScreen() {
  const { t, formatMoney, formatDate, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['withdrawals'], queryFn: api.withdrawals });
  const [tab, setTab] = useState(0);

  const match = TABS[tab]?.match as readonly string[];
  const items = (query.data?.items ?? []).filter((w) =>
    match.includes(w.status),
  );

  return (
    <Screen
      header={<TopBar title={t('wallet.withdrawals')} white />}
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
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
        <Text style={styles.empty}>{t('common.empty')}</Text>
      ) : null}

      {items.map((w) => (
        <View key={w.id} style={styles.list}>
          <Row label={formatDate(w.createdAt)} value={labelFor(w.status)} border />
          <Row
            label={t('payment.orderno')}
            value={w.payoutReference ?? w.id.slice(0, 10)}
            border
          />
          <Row
            label={w.destinationSnapshot.type === 'upi' ? 'UPI' : t('payment.bank')}
            value={w.destinationSnapshot.maskedDestination}
            border
          />
          <Row
            label={t('payment.payamount')}
            value={formatMoney(w.amountMinor, w.currency)}
          />
          {w.rejectionReason ? (
            <View style={styles.item}>
              <Text style={styles.rejected}>{w.rejectionReason}</Text>
            </View>
          ) : null}
        </View>
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
  page: {
    backgroundColor: theme.colors.surface,
    flexGrow: 1,
    paddingVertical: rpx(20),
    paddingHorizontal: rpx(30),
  },
  tab: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: rpx(30),
    paddingHorizontal: rpx(40),
  },
  tabItem: { alignItems: 'center' },
  tabText: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.bold,
  },
  tabTextActive: { color: '#17273a' },
  tabUnderline: {
    width: rpx(34),
    height: rpx(12),
    marginTop: rpx(6),
    resizeMode: 'contain',
  },
  list: {
    marginBottom: rpx(30),
    paddingHorizontal: rpx(20),
    borderWidth: rpx(2),
    borderColor: '#ee5016',
    borderRadius: rpx(10),
    backgroundColor: '#fff',
    ...theme.shadows.card,
  },
  item: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: rpx(16),
    paddingHorizontal: rpx(6),
  },
  itemBorder: { borderBottomWidth: rpx(2), borderBottomColor: '#dcdcdc' },
  itemTitle: {
    fontSize: rpx(28),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  itemContent: {
    flexShrink: 1,
    marginLeft: rpx(20),
    fontSize: rpx(28),
    color: '#a9a9a9',
    fontFamily: theme.typography.family.regular,
  },
  rejected: {
    fontSize: rpx(26),
    color: theme.colors.danger,
    fontFamily: theme.typography.family.regular,
  },
  empty: { padding: rpx(60), textAlign: 'center', color: theme.colors.textMuted },
});
