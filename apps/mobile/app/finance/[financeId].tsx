import { useQuery } from '@tanstack/react-query';
import { Image, ImageBackground, Linking, StyleSheet, Text, View } from 'react-native';
import { Redirect, useLocalSearchParams } from 'expo-router';
import { useAuthStore } from '@/stores/auth';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/finance/fdetail` (scope f5dac870): a top hero bg, an info row
// (product image + title + strip), a white detail card of label/value rows,
// and an HTML content part.
export default function FinanceDetailScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { t } = useI18n();
  const { financeId } = useLocalSearchParams<{ financeId: string }>();
  const query = useQuery({
    queryKey: ['finance-offers'],
    queryFn: api.financeOffers,
  });
  const offer = query.data?.items.find((item) => item.id === financeId);

  return (
    <ImageBackground
      source={assets.financeDetailBg}
      resizeMode="stretch"
      style={styles.bg}
      imageStyle={styles.bgImg}
    >
      <Screen
        header={<TopBar title={t('finance.title')} white transparent />}
        contentStyle={styles.page}
      >
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {offer ? (
          <>
            {/* info row */}
            <View style={styles.info}>
              <View style={styles.infoImg}>
                <Image source={assets.financeIcon} style={styles.infoImgInner} />
              </View>
              <View style={styles.infoDd}>
                <Text style={styles.infoTitle} numberOfLines={2}>
                  {offer.title}
                </Text>
                <Text style={styles.infoStrip}>{offer.providerName}</Text>
              </View>
            </View>

            {/* detail card */}
            <View style={styles.card}>
              <Row label={t('finance.providerDisclosure')} value={offer.providerName} />
              <Row label={t('finance.information')} value={t('finance.informationOnly')} />
              <View style={styles.cardBody}>
                <Text style={styles.cardText}>{offer.description}</Text>
              </View>
            </View>

            {/* disclaimer part */}
            <View style={styles.part}>
              <Text style={styles.partText}>{offer.disclaimer}</Text>
            </View>

            {offer.externalUrl ? (
              <View style={styles.btnWrap}>
                <GradientButton
                  onPress={() => void Linking.openURL(offer.externalUrl!)}
                >
                  {t('finance.openWebsite')}
                </GradientButton>
              </View>
            ) : null}
          </>
        ) : !query.isLoading ? (
          <Text style={styles.empty}>{t('finance.offerUnavailable')}</Text>
        ) : null}
      </Screen>
    </ImageBackground>
  );
}

function Row({ label, value }: { label: string; value: string }) {
  return (
    <View style={styles.item}>
      <Text style={styles.itemTitle}>{label}</Text>
      <Text style={styles.itemMain} numberOfLines={1}>
        {value}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  bg: { flex: 1, backgroundColor: '#f9f9f9' },
  bgImg: { height: rpx(400) },
  page: { paddingBottom: rpx(60) },
  // .fdetail_info { padding:0 22rpx }
  info: {
    flexDirection: 'row',
    alignItems: 'flex-start',
    paddingHorizontal: rpx(22),
    marginTop: rpx(20),
  },
  // .fdetail_info_img { 198rpx }
  infoImg: {
    width: rpx(198),
    height: rpx(198),
    borderRadius: rpx(10),
    backgroundColor: 'rgba(255,255,255,0.3)',
    alignItems: 'center',
    justifyContent: 'center',
  },
  infoImgInner: { width: '60%', height: '60%', resizeMode: 'contain' },
  infoDd: { flex: 1, paddingLeft: rpx(28), paddingTop: rpx(20) },
  // .fdetail_info_dd_title { 32rpx; weight 700; #fff }
  infoTitle: {
    fontSize: rpx(32),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
    marginBottom: rpx(14),
  },
  // .fdetail_info_dd_strip { 28rpx; #ffe2db }
  infoStrip: {
    fontSize: rpx(28),
    color: '#ffe2db',
    fontFamily: theme.typography.family.bold,
  },
  // .fdetail_card { bg #fff; radius 10rpx; margin-top:60rpx; padding:38 36 }
  card: {
    marginTop: rpx(60),
    marginHorizontal: rpx(22),
    padding: rpx(36),
    backgroundColor: '#fff',
    borderRadius: rpx(10),
  },
  // .fdetail_card_item
  item: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: rpx(30),
  },
  itemTitle: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  itemMain: {
    flexShrink: 1,
    marginLeft: rpx(20),
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  cardBody: { marginTop: rpx(6) },
  cardText: {
    fontSize: rpx(28),
    lineHeight: rpx(44),
    color: '#686868',
    fontFamily: theme.typography.family.regular,
  },
  // .fdetail_part { margin-top:20rpx; bg #fff }
  part: {
    marginTop: rpx(20),
    marginHorizontal: rpx(22),
    padding: rpx(30),
    backgroundColor: '#fff',
    borderRadius: rpx(10),
  },
  partText: {
    fontSize: rpx(26),
    lineHeight: rpx(40),
    color: '#8f8f8f',
    fontFamily: theme.typography.family.regular,
  },
  btnWrap: { marginTop: rpx(40), marginHorizontal: rpx(30) },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
