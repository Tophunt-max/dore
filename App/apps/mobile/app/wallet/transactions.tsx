import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/account/funding` (scope c3e1170e): a white list where each item
// is two rows — type label (bold #444) + signed amount on the first row, and
// the timestamp (grey) + entry type on the second — separated by #ececec hairs.
export default function TransactionsScreen() {
  const { formatDate, formatMoney, t } = useI18n();
  const ledger = useQuery({ queryKey: ['ledger'], queryFn: api.ledger });
  const items = ledger.data?.items ?? [];

  return (
    <Screen
      header={<TopBar title={t('wallet.funding')} white />}
      contentStyle={styles.page}
    >
      {!items.length ? (
        <EmptyState
          title={t('wallet.noTransactions')}
          message={t('wallet.noTransactionsCopy')}
        />
      ) : (
        <View style={styles.list}>
          {items.map((entry, index) => {
            const credit = entry.direction === 'credit';
            return (
              <View
                key={entry.id}
                style={[styles.item, index === items.length - 1 && styles.last]}
              >
                <View style={styles.itemMenu}>
                  <Text style={styles.itemKey} numberOfLines={1}>
                    {entry.description}
                  </Text>
                  <Text
                    style={[styles.itemValue, credit && styles.credit]}
                    numberOfLines={1}
                  >
                    {credit ? '+' : '−'}
                    {formatMoney(entry.amountMinor, entry.currency)}
                  </Text>
                </View>
                <View style={styles.itemMenu}>
                  <Text style={styles.itemText}>
                    {formatDate(entry.createdAt)}
                  </Text>
                  <Text style={styles.itemText}>{entry.entryType}</Text>
                </View>
              </View>
            );
          })}
        </View>
      )}
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: theme.colors.background, flexGrow: 1 },
  // .list { background:#fff; padding:0 30rpx }
  list: {
    backgroundColor: theme.colors.surface,
    paddingHorizontal: rpx(30),
  },
  // .item { padding:20rpx 0 } + border-bottom #ececec (not last)
  item: {
    paddingVertical: rpx(20),
    borderBottomWidth: rpx(1),
    borderBottomColor: '#ececec',
  },
  last: { borderBottomWidth: 0 },
  // .item-menu { row; space-between }
  itemMenu: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  // .item-key { width:400rpx; font-size:32rpx; weight:700; #444 }
  itemKey: {
    width: rpx(400),
    fontSize: rpx(32),
    color: '#444',
    fontFamily: theme.typography.family.bold,
  },
  // .item-value { font-size:32rpx; color:#ff5c5c }
  itemValue: {
    fontSize: rpx(32),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.regular,
  },
  credit: { color: theme.colors.success },
  // second .item-text { margin-top:10rpx; font-size:26rpx; color:#b9b9b9 }
  itemText: {
    marginTop: rpx(10),
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
});
