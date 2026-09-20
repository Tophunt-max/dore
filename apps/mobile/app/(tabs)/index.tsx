import type { Campaign } from '@oriva/shared';
import { LinearGradient } from 'expo-linear-gradient';
import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useEffect, useState } from 'react';
import {
  Image,
  ImageBackground,
  type ImageSourcePropType,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { BannerCarousel } from '@/components/BannerCarousel';
import { LineProgress } from '@/components/LineProgress';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { countDown, COUNTDOWN_ZERO } from '@/countdown';
import { useI18n, type TranslationKey } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich home palette (app-view.js, scope data-v-7f2b1428).
const C = {
  page: '#f6f6f6',
  card: '#ffffff',
  orange: '#ee5016',
  ink: '#17273a',
  black: '#000000',
  grey: '#b9b9b9',
  tabLabel: '#4f4f4f',
  divider: '#e6e6e6',
  badge: '#90b9ff',
  btnText: '#ad6701',
  btnDisabled: '#959595',
};

// ORich `.tab` row: a quick-navigation strip of 96rpx circular icons. The real
// app fills it from the API (`tabList`); we map it to the equivalent Oriva
// destinations using the same ORich artwork.
const quickLinks: ReadonlyArray<{
  key: string;
  labelKey: TranslationKey;
  icon: ImageSourcePropType;
  href: string;
}> = [
  {
    key: 'draws',
    labelKey: 'home.quick.draws',
    icon: assets.categoryAll,
    href: '/products',
  },
  {
    key: 'orders',
    labelKey: 'home.quick.orders',
    icon: assets.quickOrders,
    href: '/orders',
  },
  {
    key: 'recharge',
    labelKey: 'home.quick.recharge',
    icon: assets.quickRecharge,
    href: '/wallet/recharge',
  },
  {
    key: 'winners',
    labelKey: 'home.quick.winners',
    icon: assets.quickWinner,
    href: '/winners',
  },
  {
    key: 'support',
    labelKey: 'home.quick.support',
    icon: assets.quickSupport,
    href: '/support',
  },
];

// ORich `.ltab` sticky filter above the goods list.
const filters: ReadonlyArray<{
  key: string;
  labelKey: TranslationKey;
  slug?: string;
}> = [
  { key: 'all', labelKey: 'home.all' },
  { key: 'gifts', labelKey: 'home.lnew', slug: 'gifts' },
  { key: 'cash', labelKey: 'home.lhot', slug: 'cash-award' },
  { key: 'high', labelKey: 'home.lsoon', slug: 'high-winning' },
  { key: 'soon', labelKey: 'home.upcoming' },
];

export default function HomeScreen() {
  const { t, formatMoney } = useI18n();
  const [filter, setFilter] = useState<string>('all');
  // One shared clock drives every row's countdown (ORich runs one interval per
  // item and increments its server `nowtime`; a single tick is equivalent).
  const [now, setNow] = useState(() => Date.now());

  const campaigns = useQuery({
    queryKey: ['campaigns'],
    queryFn: () => api.campaigns(),
  });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const banners = useQuery({ queryKey: ['banners'], queryFn: api.banners });

  useEffect(() => {
    const id = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(id);
  }, []);

  const items = (campaigns.data?.items ?? [])
    .filter((item) => item.status === 'active')
    .filter((item) => {
      if (filter === 'all') return true;
      if (filter === 'soon') return new Date(item.startsAt).getTime() > now;
      const slug = filters.find((f) => f.key === filter)?.slug;
      return slug ? item.category?.slug === slug : true;
    });

  const refresh = () =>
    Promise.all([
      campaigns.refetch(),
      winners.refetch(),
      banners.refetch(),
    ]).then(() => undefined);

  const latestWinner = winners.data?.items[0];

  return (
    <Screen
      contentStyle={styles.root}
      refreshing={campaigns.isRefetching || winners.isRefetching}
      onRefresh={() => void refresh()}
    >
      {/* .home-background — 330rpx hero artwork sitting behind navbar + banner */}
      <ImageBackground
        source={assets.homeBackground}
        resizeMode="stretch"
        style={styles.heroBackground}
      />

      {/* navbar — ORich renders the wordmark as text, not an image */}
      <View style={styles.navbar}>
        <Text style={styles.navTitle}>ORich</Text>
      </View>

      {/* .toTop > .banner */}
      <View style={styles.toTop}>
        <BannerCarousel banners={banners.data?.items} />
      </View>

      {/* .tab — 96rpx circular quick-nav icons */}
      <View style={styles.tab}>
        {quickLinks.map((link) => (
          <Pressable
            key={link.key}
            onPress={() => router.push(link.href as never)}
            style={styles.tabItem}
          >
            <Image source={link.icon} style={styles.tabIcon} />
            <Text style={styles.tabItemText} numberOfLines={1}>
              {t(link.labelKey)}
            </Text>
          </Pressable>
        ))}
      </View>

      {/* .toast — latest winners ticker */}
      {latestWinner ? (
        <Pressable onPress={() => router.push('/winners')} style={styles.toast}>
          <View style={styles.toastImg}>
            <Image
              source={
                latestWinner.avatarUrl
                  ? { uri: latestWinner.avatarUrl }
                  : assets.defaultAvatar
              }
              style={styles.toastAvatar}
            />
          </View>
          <Text style={styles.toastMain} numberOfLines={1}>
            {latestWinner.displayName} {t('home.won')}{' '}
            <Text style={styles.toastName}>{latestWinner.productTitle}</Text>
          </Text>
        </Pressable>
      ) : null}

      {/* .glist .header — "Hot Picks" */}
      <View style={styles.sectionHeader}>
        <View style={styles.sectionTitleWrap}>
          <Image source={assets.hotPicks} style={styles.sectionIcon} />
          <Text style={styles.sectionTitle}>{t('home.high')}</Text>
        </View>
        <Pressable
          onPress={() => router.push('/products')}
          style={styles.sectionMore}
        >
          <Text style={styles.sectionMoreText}>{t('home.all')}</Text>
          <Image source={assets.arrowRight} style={styles.sectionMoreArrow} />
        </Pressable>
      </View>

      {/* .ltab — category filter */}
      <View style={styles.ltab}>
        <ScrollView
          horizontal
          showsHorizontalScrollIndicator={false}
          contentContainerStyle={styles.ltabTab}
        >
          {filters.map((f) => {
            const active = filter === f.key;
            return (
              <Pressable
                key={f.key}
                onPress={() => setFilter(f.key)}
                style={styles.ltabItem}
              >
                <Text
                  style={[styles.ltabText, active && styles.ltabTextActive]}
                >
                  {t(f.labelKey)}
                </Text>
                {active ? (
                  <Image
                    source={assets.select}
                    style={styles.ltabUnderline}
                  />
                ) : null}
              </Pressable>
            );
          })}
        </ScrollView>
      </View>

      <QueryNotice
        loading={campaigns.isLoading}
        error={campaigns.error}
        onRetry={() => void campaigns.refetch()}
      />

      {/* .home-list — .litem rows */}
      <View style={styles.list}>
        {items.map((campaign, index) => (
          <GoodsRow
            key={campaign.id}
            campaign={campaign}
            last={index === items.length - 1}
            now={now}
            formatMoney={formatMoney}
            t={t}
          />
        ))}
      </View>

      {!campaigns.isLoading && !campaigns.error && !items.length ? (
        <Text style={styles.empty}>{t('home.noCampaigns')}</Text>
      ) : null}
    </Screen>
  );
}

function GoodsRow({
  campaign,
  last,
  now,
  formatMoney,
  t,
}: {
  campaign: Campaign;
  last: boolean;
  now: number;
  formatMoney: (minor: number, currency: string) => string;
  t: (key: TranslationKey, values?: Record<string, string | number>) => string;
}) {
  const sold = campaign.soldEntries;
  const total = campaign.totalEntries;
  const percent = total > 0 ? Math.round((sold / total) * 100) : 0;
  const endMs = new Date(campaign.endsAt).getTime();
  const remaining = countDown(endMs, now);
  const counting = remaining !== COUNTDOWN_ZERO;

  return (
    <Pressable
      onPress={() => router.push(`/products/${campaign.id}`)}
      style={[styles.litem, last && styles.litemNoBorder]}
    >
      {/* .litem-left — thumbnail, category badge, participant avatars */}
      <View style={styles.litemLeft}>
        {campaign.product.imageUrl ? (
          <Image
            resizeMode="contain"
            source={{ uri: campaign.product.imageUrl }}
            style={styles.litemImg}
          />
        ) : (
          <View style={[styles.litemImg, styles.litemImgEmpty]}>
            <Image
              resizeMode="contain"
              source={assets.groupBuy}
              style={styles.litemImgEmptyIcon}
            />
          </View>
        )}
        {campaign.category?.name ? (
          <Text style={styles.itemPrize} numberOfLines={1}>
            {campaign.category.name}
          </Text>
        ) : null}
      </View>

      {/* .litem-right */}
      <View style={styles.litemRight}>
        <Text style={styles.lgoodsTitle} numberOfLines={1}>
          {campaign.product.title}
        </Text>

        <Text style={[styles.lgoodsEnd, counting && styles.drawColor]}>
          {counting
            ? t('campaign.endIn', { time: remaining })
            : t('home.fulltime')}
        </Text>

        {/* .lgoods-precent — bar + "sold/total" (ORich shows counts, not %) */}
        <View style={styles.lgoodsPrecent}>
          <View style={styles.lgoodsProgress}>
            <LineProgress percent={percent} />
          </View>
          <Text style={styles.lgoodsProgressText}>
            {sold}/{total}
          </Text>
        </View>

        {/* .lgoods-price */}
        <View style={styles.lgoodsPrice}>
          {campaign.product.retailPriceMinor ? (
            <Text style={styles.lgoodsPriceOld}>
              {formatMoney(
                campaign.product.retailPriceMinor,
                campaign.product.currency,
              )}
            </Text>
          ) : null}
          <Text style={styles.lgoodsPriceNew}>
            {formatMoney(campaign.entryPriceMinor, campaign.product.currency)}
          </Text>
        </View>

        {/* .lgoods-bottom */}
        <View style={styles.lgoodsBottom}>
          <Text style={styles.lgoodsPeople} numberOfLines={1}>
            {t('campaign.peopleParticipating', { count: sold })}
          </Text>
        </View>
      </View>

      {/* .lgoods-btn — absolute "Join" pill */}
      <LinearGradient
        colors={['#ffe44b', '#fea326']}
        start={{ x: 0, y: 1 }}
        end={{ x: 1, y: 0 }}
        style={styles.lgoodsBtn}
      >
        <Text style={styles.lgoodsBtnText}>{t('home.snatch')}</Text>
        <Image source={assets.rightArrow} style={styles.lgoodsBtnIcon} />
      </LinearGradient>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  // .home { background-color:#f6f6f6; padding-bottom:98rpx }
  root: { backgroundColor: C.page, paddingBottom: rpx(98) },
  // .home-background { height:330rpx; position:absolute; top:0; left:0 }
  heroBackground: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    height: rpx(330),
  },
  // navbar (custom navigationStyle): 88rpx tall, centred text wordmark.
  navbar: {
    height: rpx(88),
    alignItems: 'center',
    justifyContent: 'center',
  },
  navTitle: {
    fontSize: rpx(32),
    color: '#ffffff',
    fontFamily: theme.typography.family.bold,
  },
  // .toTop { padding:0 14rpx }
  toTop: { paddingHorizontal: rpx(14) },
  // .tab { padding:26rpx 30rpx; background-color:#fff }
  tab: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: rpx(26),
    paddingHorizontal: rpx(30),
    backgroundColor: C.card,
  },
  tabItem: { flex: 1, alignItems: 'center' },
  // .tab-item uni-image { width:96rpx; height:96rpx; border-radius:50% }
  tabIcon: { width: rpx(96), height: rpx(96), borderRadius: rpx(48) },
  // .tab-item-text { margin-top:4rpx; font-size:26rpx; color:#4f4f4f }
  tabItemText: {
    marginTop: rpx(4),
    fontSize: rpx(26),
    textAlign: 'center',
    color: C.tabLabel,
    fontFamily: theme.typography.family.bold,
  },
  // .toast { border-top:2rpx solid #f6f6f6; padding:22rpx 0 12rpx; background:#fff }
  toast: {
    flexDirection: 'row',
    alignItems: 'center',
    borderTopWidth: rpx(2),
    borderTopColor: C.page,
    paddingTop: rpx(22),
    paddingBottom: rpx(12),
    paddingHorizontal: rpx(26),
    backgroundColor: C.card,
  },
  // .toast-swiper-item-img { width:60rpx; height:60rpx; border-radius:50% }
  toastImg: {
    width: rpx(60),
    height: rpx(60),
    borderRadius: rpx(30),
    overflow: 'hidden',
    backgroundColor: '#eee',
  },
  toastAvatar: { width: '100%', height: '100%' },
  // .toast-swiper-item-main { margin-left:36rpx; margin-right:18rpx }
  toastMain: {
    flex: 1,
    marginLeft: rpx(36),
    marginRight: rpx(18),
    fontSize: rpx(26),
    color: C.ink,
  },
  toastName: { color: C.orange },
  // .glist .header { height:90rpx; padding:0 28rpx; margin:10rpx; radius 10rpx 10rpx 0 0 }
  sectionHeader: {
    height: rpx(90),
    marginTop: rpx(16),
    marginHorizontal: rpx(10),
    paddingHorizontal: rpx(28),
    borderTopLeftRadius: rpx(10),
    borderTopRightRadius: rpx(10),
    backgroundColor: C.card,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  sectionTitleWrap: { flexDirection: 'row', alignItems: 'center' },
  // .header-title uni-image { width:40rpx; height:40rpx; margin-right:17rpx }
  sectionIcon: {
    width: rpx(40),
    height: rpx(40),
    marginRight: rpx(17),
    resizeMode: 'contain',
  },
  // .header-title { font-size:36rpx; font-weight:700 }
  sectionTitle: {
    fontSize: rpx(36),
    color: C.ink,
    fontFamily: theme.typography.family.bold,
  },
  sectionMore: { flexDirection: 'row', alignItems: 'center' },
  sectionMoreText: { fontSize: rpx(28), color: C.grey },
  sectionMoreArrow: {
    width: rpx(20),
    height: rpx(20),
    marginLeft: rpx(12),
    resizeMode: 'contain',
  },
  // .ltab { padding:22rpx 26rpx 10rpx 26rpx; background:#fff }
  ltab: {
    paddingTop: rpx(22),
    paddingBottom: rpx(10),
    backgroundColor: C.card,
  },
  ltabTab: { paddingLeft: rpx(26), paddingRight: rpx(26), alignItems: 'center' },
  // .ltab-item { margin-right:50rpx; column; align-items:center }
  ltabItem: {
    alignItems: 'center',
    justifyContent: 'center',
    marginRight: rpx(50),
  },
  // .ltab-item-text { font-size:28rpx; font-weight:700; color:#b9b9b9 }
  ltabText: {
    fontSize: rpx(28),
    color: C.grey,
    fontFamily: theme.typography.family.bold,
  },
  // .ltab-item-active .ltab-item-text { font-size:32rpx; color:#17273a }
  ltabTextActive: { fontSize: rpx(32), color: C.ink },
  // .ltab-item-active uni-image { width:34rpx; height:12rpx; margin-top:4rpx }
  ltabUnderline: {
    width: rpx(34),
    height: rpx(12),
    marginTop: rpx(4),
    resizeMode: 'contain',
  },
  list: { backgroundColor: C.card },
  // .litem { padding:24rpx 26rpx; border-bottom:1rpx dashed #e6e6e6 }
  litem: {
    position: 'relative',
    flexDirection: 'row',
    alignItems: 'flex-start',
    paddingVertical: rpx(24),
    paddingHorizontal: rpx(26),
    borderBottomWidth: rpx(1),
    borderBottomColor: C.divider,
    borderStyle: 'dashed',
    backgroundColor: C.card,
  },
  // .lgoods-noborder { border-bottom:none }
  litemNoBorder: { borderBottomWidth: 0 },
  // .litem-left { width:184rpx; margin-right:42rpx }
  litemLeft: {
    width: rpx(184),
    marginRight: rpx(42),
    position: 'relative',
  },
  // .litem-img { max-width/height:184rpx; border-radius:8rpx; margin-bottom:-6rpx }
  litemImg: {
    width: rpx(184),
    height: rpx(184),
    borderRadius: rpx(8),
    marginBottom: rpx(-6),
  },
  litemImgEmpty: {
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#f7f8f9',
  },
  litemImgEmptyIcon: { width: rpx(80), height: rpx(80), opacity: 0.85 },
  // .item-prize { 184x42rpx; #90b9ff; radius 20rpx 20rpx 0 0; absolute top:146rpx }
  itemPrize: {
    position: 'absolute',
    top: rpx(146),
    width: rpx(184),
    height: rpx(42),
    lineHeight: rpx(42),
    backgroundColor: C.badge,
    borderTopLeftRadius: rpx(20),
    borderTopRightRadius: rpx(20),
    fontSize: rpx(24),
    color: '#fff',
    textAlign: 'center',
    fontFamily: theme.typography.family.medium,
  },
  litemRight: { flex: 1 },
  // .lgoods-title { font-size:32rpx; font-weight:700; color:#000 }
  lgoodsTitle: {
    fontSize: rpx(32),
    color: C.black,
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-end { margin-top:14rpx; font-size:26rpx; color:#b9b9b9 }
  lgoodsEnd: {
    marginTop: rpx(14),
    fontSize: rpx(26),
    color: C.grey,
    fontFamily: theme.typography.family.medium,
  },
  // .draw-color { color:#ee5016 }
  drawColor: { color: C.orange },
  // .lgoods-precent { margin-top:8rpx; margin-bottom:3rpx }
  lgoodsPrecent: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: rpx(8),
    marginBottom: rpx(3),
  },
  // .lgoods-progress { width:100%; padding-right:24rpx }
  lgoodsProgress: { flex: 1, paddingRight: rpx(24) },
  // .lgoods-progress-text { font-size:28rpx; font-weight:700; color:#b9b9b9 }
  lgoodsProgressText: {
    fontSize: rpx(28),
    color: C.grey,
    textAlign: 'right',
    fontFamily: theme.typography.family.bold,
  },
  lgoodsPrice: { flexDirection: 'row', alignItems: 'center' },
  // .lgoods-price-old { margin-right:20rpx; 28rpx; #b9b9b9; line-through }
  lgoodsPriceOld: {
    marginRight: rpx(20),
    fontSize: rpx(28),
    color: C.grey,
    textDecorationLine: 'line-through',
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-price-new { font-size:32rpx; color:#ee5016 }
  lgoodsPriceNew: {
    fontSize: rpx(32),
    color: C.orange,
    fontFamily: theme.typography.family.bold,
  },
  lgoodsBottom: { flexDirection: 'row', alignItems: 'center' },
  // .lgoods-people { width:300rpx; margin-top:18rpx; 24rpx; #b9b9b9 }
  lgoodsPeople: {
    width: rpx(300),
    marginTop: rpx(18),
    fontSize: rpx(24),
    color: C.grey,
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-btn { absolute right:32rpx bottom:18rpx; 150x60rpx; gradient; radius 8rpx }
  lgoodsBtn: {
    position: 'absolute',
    right: rpx(32),
    bottom: rpx(18),
    width: rpx(150),
    height: rpx(60),
    borderRadius: rpx(8),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingLeft: rpx(30),
    paddingRight: rpx(10),
  },
  lgoodsBtnText: {
    fontSize: rpx(28),
    color: C.btnText,
    fontFamily: theme.typography.family.bold,
  },
  lgoodsBtnIcon: { width: rpx(28), height: rpx(28), resizeMode: 'contain' },
  empty: {
    padding: rpx(48),
    textAlign: 'center',
    color: C.grey,
    backgroundColor: C.card,
  },
});
