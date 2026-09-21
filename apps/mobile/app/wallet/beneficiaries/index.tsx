import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Alert, Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/payment/payment` (scope 3c7234d5): the saved payout accounts as
// gradient cards (blue / orange alternating) with an avatar, name and a masked
// number rendered as dot groups, plus a fixed-bottom add button.
const GRADIENTS: [string, string][] = [
  ['#8cdcff', '#10c7ff'],
  ['#f76955', '#ffb44e'],
];

export default function BeneficiariesScreen() {
  const { t } = useI18n();
  const client = useQueryClient();
  const query = useQuery({
    queryKey: ['beneficiaries'],
    queryFn: api.beneficiaries,
  });
  const remove = useMutation({
    mutationFn: api.deleteBeneficiary,
    onSuccess: () => client.invalidateQueries({ queryKey: ['beneficiaries'] }),
  });

  const items = query.data?.items ?? [];

  return (
    <Screen
      header={<TopBar title={t('beneficiaries.title')} white />}
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />

      <View style={styles.main}>
        {items.map((item, index) => (
          <Pressable
            key={item.id}
            onLongPress={() =>
              Alert.alert(
                t('beneficiaries.removeTitle'),
                t('beneficiaries.removeCopy'),
                [
                  { text: t('common.cancel'), style: 'cancel' },
                  {
                    text: t('common.remove'),
                    style: 'destructive',
                    onPress: () => remove.mutate(item.id),
                  },
                ],
              )
            }
          >
            <LinearGradient
              colors={GRADIENTS[index % 2] ?? GRADIENTS[0]!}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0.4 }}
              style={styles.card}
            >
              <View style={styles.cardTop}>
                <View style={styles.cardImg}>
                  <Image
                    source={item.type === 'upi' ? assets.paytm : assets.xpay}
                    style={styles.cardImgInner}
                  />
                </View>
                <Text style={styles.cardName}>{item.label}</Text>
              </View>
              <View style={styles.cardNumber}>
                {Array.from({ length: 12 }).map((_, i) => (
                  <View
                    key={i}
                    style={[styles.dot, (i + 1) % 4 === 0 && styles.dotGap]}
                  />
                ))}
                <Text style={styles.numberItem}>
                  {item.maskedDestination.slice(-4)}
                </Text>
              </View>
            </LinearGradient>
          </Pressable>
        ))}
        {!query.isLoading && !query.error && !items.length ? (
          <Text style={styles.empty}>{t('beneficiaries.empty')}</Text>
        ) : null}
      </View>

      <View style={styles.addBtn}>
        <GradientButton onPress={() => router.push('/wallet/beneficiaries/add')}>
          {t('beneficiaries.add')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: {
    backgroundColor: '#f8f8f8',
    flexGrow: 1,
    paddingBottom: rpx(180),
  },
  // .payment_main { padding:30rpx 25rpx 0 34rpx }
  main: { paddingTop: rpx(30), paddingHorizontal: rpx(30) },
  // .payment_card { height:220rpx; radius 16rpx; margin-bottom:16rpx }
  card: {
    height: rpx(220),
    marginBottom: rpx(16),
    borderRadius: rpx(16),
  },
  // .payment_card_top { padding:30rpx 0 0 40rpx }
  cardTop: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingTop: rpx(30),
    paddingLeft: rpx(40),
  },
  // .payment_card_top_img { 74rpx; radius 50% }
  cardImg: {
    width: rpx(74),
    height: rpx(74),
    borderRadius: rpx(37),
    overflow: 'hidden',
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  cardImgInner: { width: '86%', height: '86%', resizeMode: 'contain' },
  // .payment_card_top_name { #fff; margin-left:20rpx; 40rpx }
  cardName: {
    marginLeft: rpx(20),
    fontSize: rpx(40),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  // .payment_card_number { margin-left:69rpx; margin-top:38rpx }
  cardNumber: {
    flexDirection: 'row',
    alignItems: 'center',
    marginLeft: rpx(69),
    marginTop: rpx(38),
  },
  // .payment_card_number_circular { 18rpx; opacity .5; #fff }
  dot: {
    width: rpx(18),
    height: rpx(18),
    borderRadius: rpx(9),
    marginRight: rpx(12),
    opacity: 0.5,
    backgroundColor: '#fff',
  },
  dotGap: { marginRight: rpx(40) },
  // .payment_card_number_item { 40rpx; weight 700; #fff }
  numberItem: {
    fontSize: rpx(40),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
  // .payment_add { fixed; left:74rpx; bottom:40rpx; width:600rpx }
  addBtn: {
    position: 'absolute',
    left: rpx(74),
    right: rpx(74),
    bottom: rpx(40),
  },
});
