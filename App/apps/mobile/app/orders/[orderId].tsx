import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { formatMoney } from '@oriva/shared';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { EmptyState } from '@/components/EmptyState';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/order/detail` (scope 524fd9dc): a #f9f9f9 page with a white
// order block (title + label/value rows) and a fixed-bottom action button.
export default function OrderDetailScreen() {
  const { labelFor, formatDate, t } = useI18n();
  const { orderId } = useLocalSearchParams<{ orderId: string }>();
  const client = useQueryClient();
  const order = useQuery({
    queryKey: ['order', orderId],
    queryFn: () => api.order(orderId),
  });
  const pay = useMutation({
    mutationFn: () => api.payOrderWallet(orderId),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['order', orderId] });
      void client.invalidateQueries({ queryKey: ['orders'] });
    },
  });
  const data = order.data;

  return (
    <Screen
      header={<TopBar title={t('orders.details')} white />}
      contentStyle={styles.page}
    >
      {!data ? (
        <View style={styles.pad}>
          <EmptyState
            title={t('orders.loading')}
            message={order.error?.message ?? t('common.pleaseWait')}
          />
        </View>
      ) : (
        <>
          <View style={styles.block}>
            <View style={styles.titleRow}>
              <View style={styles.redIcon} />
              <Text style={styles.titleFont}>{data.title}</Text>
            </View>
            <Row label={t('payment.status')} value={labelFor(data.status)} highlight />
            <Row label={t('orders.quantity')} value={String(data.quantity)} />
            <Row
              label={t('orders.amount')}
              value={formatMoney(data.amountMinor, data.currency)}
              amount
            />
            <Row label={t('orders.id')} value={data.id} />
            <Row label={t('payment.status')} value={formatDate(data.createdAt)} />
          </View>

          {data.status === 'pending' ? (
            <View style={styles.append}>
              <GradientButton
                loading={pay.isPending}
                onPress={() => pay.mutate()}
              >
                {t('campaign.buyNow')}
              </GradientButton>
            </View>
          ) : data.status === 'fulfilled' ? (
            <View style={styles.append}>
              <GradientButton
                onPress={() =>
                  router.push({
                    pathname: '/bask/share',
                    params: { prizeId: data.id },
                  })
                }
              >
                {t('shareWin.title')}
              </GradientButton>
            </View>
          ) : null}
        </>
      )}
    </Screen>
  );
}

function Row({
  label,
  value,
  amount,
  highlight,
}: {
  label: string;
  value: string;
  amount?: boolean;
  highlight?: boolean;
}) {
  return (
    <View style={styles.item}>
      <Text style={styles.gray}>{label}</Text>
      <Text
        style={[
          styles.status,
          amount && styles.amountVal,
          highlight && styles.red,
        ]}
        numberOfLines={2}
      >
        {value}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  // .detail_main { background:#f9f9f9; padding-bottom:120rpx }
  page: { backgroundColor: '#f9f9f9', flexGrow: 1, paddingBottom: rpx(200) },
  pad: { padding: rpx(30) },
  // .detail_main_order { padding:20rpx 30rpx; background:#fff; margin-top:12rpx }
  block: {
    marginTop: rpx(12),
    paddingVertical: rpx(20),
    paddingHorizontal: rpx(30),
    backgroundColor: '#fff',
  },
  // .detail_main_title
  titleRow: {
    flexDirection: 'row',
    alignItems: 'center',
    marginBottom: rpx(20),
  },
  // .red_icon { 10rpx x 20rpx; #ee5016 }
  redIcon: {
    width: rpx(10),
    height: rpx(24),
    backgroundColor: '#ee5016',
  },
  // .detail_main_title_font { margin-left:24rpx; 32rpx; weight 700 }
  titleFont: {
    marginLeft: rpx(24),
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .detail_main_item { min-height:64rpx }
  item: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    minHeight: rpx(64),
    alignItems: 'center',
  },
  // .gray { color:#b6b6b6 }
  gray: {
    fontSize: rpx(28),
    color: '#b6b6b6',
    fontFamily: theme.typography.family.regular,
  },
  // .detail_main_status { text-align:right; width:80% }
  status: {
    flex: 1,
    textAlign: 'right',
    marginLeft: rpx(20),
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .red { color:#f47766 }
  red: { color: '#f47766' },
  amountVal: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  // .detail_append { fixed; bottom:0; height:98rpx; bg #fff; shadow }
  append: {
    position: 'absolute',
    left: 0,
    right: 0,
    bottom: 0,
    paddingVertical: rpx(10),
    paddingHorizontal: rpx(74),
    backgroundColor: '#fff',
    ...theme.shadows.card,
  },
});
