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
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/goods/comfirm` (scope 362edd81): white page with a red-tick
// section title, a goods detail row (180rpx image + title/qty + price), a
// divider, and the pay section. The Oriva app keeps its secure manual-payment
// form for the actual submission.
export default function CheckoutScreen() {
  const { labelFor, t } = useI18n();
  const { orderId } = useLocalSearchParams<{ orderId: string }>();
  const order = useQuery({
    queryKey: ['order', orderId],
    queryFn: () => api.order(orderId),
  });
  const data = order.data;

  return (
    <Screen
      header={<TopBar title={t('orders.confirm')} white />}
      contentStyle={styles.page}
    >
      {!data ? (
        <View style={styles.pad}>
          <EmptyState
            title={order.isLoading ? t('orders.loading') : t('orders.unavailable')}
            message={order.error?.message ?? t('common.pleaseTryAgain')}
          />
        </View>
      ) : (
        <>
          {/* comfirm-title */}
          <View style={styles.sectionTitle}>
            <View style={styles.op} />
            <Text style={styles.sectionText}>{t('orders.details')}</Text>
          </View>

          {/* detail goods */}
          <View style={styles.detail}>
            <View style={styles.goods}>
              <Image source={assets.goodsOne} style={styles.goodsImg} />
              <View style={styles.goodsDesc}>
                <View style={styles.goodsTitle}>
                  <Text style={styles.goodsTitleText} numberOfLines={2}>
                    {data.title}
                  </Text>
                  <Text style={styles.goodsNum}>x{data.quantity}</Text>
                </View>
                <View style={styles.goodsPrice}>
                  <Text style={styles.priceNew}>
                    {formatMoney(data.amountMinor, data.currency)}
                  </Text>
                </View>
              </View>
            </View>
          </View>

          <View style={styles.divider} />

          {data.status === 'pending' ? (
            <ManualPaymentForm
              amountMinor={data.amountMinor}
              orderId={data.id}
            />
          ) : (
            <View style={styles.done}>
              <Text style={styles.doneTitle}>
                {t('orders.status', { status: labelFor(data.status) })}
              </Text>
              <Text style={styles.doneCopy}>{t('orders.noPayment')}</Text>
            </View>
          )}
        </>
      )}
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .comfirm { background:#fff; padding-bottom:100rpx }
  page: {
    backgroundColor: '#fff',
    flexGrow: 1,
    paddingBottom: rpx(100),
  },
  pad: { padding: rpx(30) },
  // .comfirm-title { margin:30rpx 0 }
  sectionTitle: {
    flexDirection: 'row',
    alignItems: 'center',
    marginVertical: rpx(30),
    paddingHorizontal: rpx(30),
  },
  // .comfirm-op { 10rpx x 20rpx; #ee5016 }
  op: { width: rpx(10), height: rpx(24), marginRight: rpx(10), backgroundColor: '#ee5016' },
  sectionText: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .detail { padding:0 30rpx }
  detail: { paddingHorizontal: rpx(30) },
  goods: { flexDirection: 'row', alignItems: 'flex-start' },
  // .goods uni-image { 180rpx }
  goodsImg: {
    width: rpx(180),
    height: rpx(180),
    marginRight: rpx(30),
    borderRadius: rpx(8),
    backgroundColor: '#f5f5f5',
  },
  goodsDesc: { flex: 1 },
  goodsTitle: { flexDirection: 'row', alignItems: 'flex-start' },
  // .goods-title-text { width:400rpx; weight 700 }
  goodsTitleText: {
    flex: 1,
    fontSize: rpx(30),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .goods-num { margin-left:30rpx; 28rpx; #b9b9b9 }
  goodsNum: {
    marginLeft: rpx(30),
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .goods-price { margin-top:20rpx }
  goodsPrice: { flexDirection: 'row', alignItems: 'center', marginTop: rpx(20) },
  // .goods-price-new { 32rpx; weight 700; #ff5c5c }
  priceNew: {
    fontSize: rpx(32),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
  },
  // .c-divider { margin-top:46rpx }
  divider: {
    height: rpx(1),
    marginHorizontal: rpx(30),
    marginTop: rpx(46),
    marginBottom: rpx(10),
    backgroundColor: '#ececec',
  },
  done: {
    margin: rpx(30),
    borderRadius: rpx(16),
    padding: rpx(30),
    backgroundColor: '#f9f9f9',
  },
  doneTitle: {
    color: theme.colors.success,
    fontFamily: theme.typography.family.bold,
    fontSize: rpx(32),
  },
  doneCopy: {
    marginTop: rpx(12),
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
  },
});
