import type { Campaign } from '@oriva/shared';
import { useQuery } from '@tanstack/react-query';
import { LinearGradient } from 'expo-linear-gradient';
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

// ORich home palette (decompiled app-view.js, scope data-v-7f2b1428).
const C = {
  bg: '#f6f6f6',
  card: '#ffffff',
  orange: '#ee5016',
  grey: '#b9b9b9',
  ink: '#17273a',
  dash: '#e6e6e6',
  badge: '#90b9ff',
  gold1: '#ffe44b',
  gold2: '#fea326',
  goldText: '#ad6701',
  tabLabel: '#4f4f4f',
};

// ORich `.tab` is a quick-navigation strip, not a filter: five 96rpx circular
// images. Two constraints on the choice of icons:
//   - only art that ships at a true 96x96 is used, so every circle is
//     optically the same size (mixing in 38x38/54x54 made the row look ragged)
//   - the ORich set repeats itself — Category and MyOrders are the same blue
//     grid, Recharge and Winner the same gold medal, FAQ and Guide the same
//     pink bubble — so one icon per distinct glyph, otherwise the row looks
//     like the same button five times.
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
    key: 'recharge',
    labelKey: 'home.quick.recharge',
    icon: assets.quickRecharge,
    href: '/wallet/recharge',
  },
  {
    key: 'invite',
    labelKey: 'home.quick.invite',
    icon: assets.quickPromotion,
    href: '/referrals',
  },
  {
    key: 'help',
    labelKey: 'home.quick.help',
    icon: assets.quickFaq,
    href: '/help',
  },
  {
    key: 'support',
    labelKey: 'home.quick.support',
    icon: assets.quickSupport,
    href: '/support',
  },
];

// Category filtering lives in ORich's `.ltab` bar above the list.
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
  const [filter, setFilter] = useState('all');
  // One shared clock drives every row (ORich runs an interval per row and
  // increments that row's server `nowtime`; a single tick is equivalent).
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

  const active = (campaigns.data?.items ?? [])
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

  const topWinner = winners.data?.items[0];

  return (
    <Screen
      contentStyle={styles.root}
      refreshing={campaigns.isRefetching || winners.isRefetching}
      onRefresh={() => void refresh()}
    >
      {/* .home-background — 330rpx of header art behind the navbar + banner.
          An explicit height and overflow:hidden are required: on web the
          background layer is otherwise sized to the PNG's intrinsic height and
          bleeds past the header, tinting the sections below it orange. */}
      <View style={styles.header}>
        <ImageBackground
          source={assets.homeBackground}
          resizeMode="stretch"
          style={styles.headerBg}
        />
        {/* ORich renders the wordmark as navbar text at 32rpx — its `.nav-logo`
            image rule is dead CSS in this build. */}
        <View style={styles.navLogo}>
          <Text style={styles.brand}>ORich</Text>
        </View>
        {/* .toTop { padding: 0 14rpx } > .banner */}
        <View style={styles.toTop}>
          <BannerCarousel banners={banners.data?.items} />
        </View>
      </View>

      {/* .tab — 96rpx circular quick links */}
      <View style={styles.tab}>
        {quickLinks.map((link) => (
          <Pressable
            key={link.key}
            onPress={() => router.push(link.href as never)}
            style={styles.tabItem}
          >
            <Image source={link.icon} style={styles.tabIcon} />
            <Text style={styles.tabText} numberOfLines={1}>
              {t(link.labelKey)}
            </Text>
          </Pressable>
        ))}
      </View>

      {/* .toast — latest winner ticker */}
      {topWinner ? (
        <View style={styles.toast}>
          <Image source={assets.defaultAvatar} style={styles.toastAvatar} />
          <Text style={styles.toastText} numberOfLines={1}>
            <Text style={styles.toastName}>{topWinner.displayName} </Text>
            {t('home.won')} {topWinner.productTitle}
          </Text>
          <Pressable onPress={() => router.push('/winners')}>
            <Text style={styles.toastMore}>{t('home.more')}</Text>
          </Pressable>
        </View>
      ) : null}

      {/* .glist .header — icon_HotPicks + 36rpx title (ORich has no accent bar) */}
      <View style={styles.listHeader}>
        <View style={styles.listHeaderTitle}>
          <Image source={assets.hotPicks} style={styles.headerIcon} />
          <Text style={styles.listHeaderText}>{t('home.hotPicks')}</Text>
        </View>
        <Pressable
          onPress={() => router.push('/products')}
          style={styles.headerRight}
        >
          <Text style={styles.headerRightText}>{t('home.all')}</Text>
          <Image source={assets.arrowRight} style={styles.headerRightArrow} />
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
            const on = filter === f.key;
            return (
              <Pressable
                key={f.key}
                onPress={() => setFilter(f.key)}
                style={styles.ltabItem}
              >
                <Text style={[styles.ltabText, on && styles.ltabTextActive]}>
                  {t(f.labelKey)}
                </Text>
                {on ? (
                  <Image source={assets.select} style={styles.ltabUnderline} />
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
      <View style={styles.homeList}>
        {active.map((campaign, index) => (
          <GoodsRow
            key={campaign.id}
            campaign={campaign}
            index={index}
            last={index === active.length - 1}
            now={now}
            formatMoney={formatMoney}
            t={t}
          />
        ))}
        {!campaigns.isLoading && !campaigns.error && !active.length ? (
          <Text style={styles.empty}>{t('home.noCampaigns')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}

function GoodsRow({
  campaign,
  index,
  last,
  now,
  formatMoney,
  t,
}: {
  campaign: Campaign;
  index: number;
  last: boolean;
  now: number;
  formatMoney: (minor: number, currency: string) => string;
  t: (key: TranslationKey, values?: Record<string, string | number>) => string;
}) {
  const sold = campaign.soldEntries;
  const total = campaign.totalEntries;
  const percent = total > 0 ? Math.min(100, Math.round((sold / total) * 100)) : 0;
  const remaining = countDown(new Date(campaign.endsAt).getTime(), now);
  const counting = remaining !== COUNTDOWN_ZERO;

  return (
    <Pressable
      onPress={() => router.push(`/products/${campaign.id}`)}
      style={[styles.litem, last && styles.litemLast]}
    >
      {/* .litem-left — thumbnail, category badge, participant avatars */}
      <View style={styles.litemLeft}>
        {campaign.product.imageUrl ? (
          <Image
            source={{ uri: campaign.product.imageUrl }}
            style={styles.litemImg}
            resizeMode="contain"
          />
        ) : (
          <View style={[styles.litemImg, styles.litemImgPlaceholder]}>
            <Image
              source={assets.groupBuy}
              style={styles.placeholderIcon}
              resizeMode="contain"
            />
          </View>
        )}
        {campaign.category?.name ? (
          <View style={styles.itemPrize}>
            <Text style={styles.itemPrizeText} numberOfLines={1}>
              {campaign.category.name}
            </Text>
          </View>
        ) : null}
        {sold > 0 ? (
          <View style={styles.avatarRow}>
            {[0, 1, 2].map((i) => (
              <Image
                key={i}
                source={assets.avatars[(index + i) % assets.avatars.length]}
                style={[styles.avatar, i === 0 && styles.avatarFirst]}
              />
            ))}
          </View>
        ) : null}
      </View>

      {/* .litem-right */}
      <View style={styles.litemRight}>
        <Text style={styles.lgoodsTitle} numberOfLines={1}>
          {campaign.product.title}
        </Text>

        {/* ORich `.lgoods-end`: while counting the WHOLE line is `.draw-color`
            (orange) and the label is just "End" + the H:MM:SS timer (days
            folded into hours); otherwise a grey "Draw when full". */}
        {counting ? (
          <Text style={[styles.lgoodsEnd, styles.drawColor]}>
            {t('home.end')} {remaining}
          </Text>
        ) : (
          <Text style={styles.lgoodsEnd}>{t('home.fulltime')}</Text>
        )}

        {/* .lgoods-precent — bar + sold/total (ORich prints counts, not a %) */}
        <View style={styles.lgoodsPrecent}>
          <View style={styles.lgoodsProgress}>
            <LineProgress percent={percent} />
          </View>
          <Text style={styles.progressText}>
            {sold}/{total}
          </Text>
        </View>

        <View style={styles.lgoodsPrice}>
          {campaign.product.retailPriceMinor ? (
            <Text style={styles.priceOld}>
              {formatMoney(
                campaign.product.retailPriceMinor,
                campaign.product.currency,
              )}
            </Text>
          ) : null}
          <Text style={styles.priceNew}>
            {formatMoney(campaign.entryPriceMinor, campaign.product.currency)}
          </Text>
        </View>

        <Text style={styles.people} numberOfLines={1}>
          {t('campaign.peopleParticipating', { count: sold })}
        </Text>
      </View>

      {/* .lgoods-btn — gold pill pinned bottom-right */}
      <LinearGradient
        colors={[C.gold1, C.gold2]}
        start={{ x: 0, y: 1 }}
        end={{ x: 1, y: 0 }}
        style={styles.goBtn}
      >
        <Text style={styles.goText}>{t('home.snatch')}</Text>
        <Image source={assets.rightArrow} style={styles.goArrow} />
      </LinearGradient>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  // .home { background-color:#f6f6f6 }
  root: { backgroundColor: C.bg, paddingBottom: rpx(40) },
  // .home-background is 330rpx tall; the navbar (88rpx) + banner (278rpx)
  // overflow it onto the page background exactly as they do in ORich.
  header: { position: 'relative', paddingBottom: rpx(20) },
  headerBg: {
    position: 'absolute',
    top: 0,
    left: 0,
    right: 0,
    height: rpx(330),
    overflow: 'hidden',
  },
  navLogo: { height: rpx(88), alignItems: 'center', justifyContent: 'center' },
  // navbar title: 32rpx, white over the hero art.
  brand: {
    fontSize: rpx(32),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  toTop: { paddingHorizontal: rpx(14) },
  // .tab { padding:26rpx 30rpx; background-color:#fff }
  tab: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: rpx(26),
    paddingHorizontal: rpx(30),
    backgroundColor: C.card,
  },
  tabItem: { flex: 1, alignItems: 'center' },
  // .tab-item uni-image { width:96rpx; height:96rpx; border-radius:50% }
  tabIcon: { width: rpx(96), height: rpx(96), borderRadius: rpx(48) },
  // .tab-item-text { margin-top:4rpx; font-size:26rpx; color:#4f4f4f }
  tabText: {
    marginTop: rpx(4),
    fontSize: rpx(26),
    textAlign: 'center',
    color: C.tabLabel,
    fontFamily: theme.typography.family.bold,
  },
  // .toast { border-top:2rpx solid #f6f6f6; padding:22rpx 0 12rpx }
  toast: {
    flexDirection: 'row',
    alignItems: 'center',
    borderTopWidth: rpx(2),
    borderTopColor: C.bg,
    paddingTop: rpx(22),
    paddingBottom: rpx(12),
    paddingHorizontal: rpx(28),
    backgroundColor: C.card,
  },
  toastAvatar: {
    width: rpx(60),
    height: rpx(60),
    borderRadius: rpx(30),
    backgroundColor: '#eee',
  },
  toastText: {
    flex: 1,
    marginLeft: rpx(36),
    marginRight: rpx(18),
    fontSize: rpx(26),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
  toastName: { color: C.orange, fontFamily: theme.typography.family.bold },
  toastMore: {
    fontSize: rpx(26),
    color: C.orange,
    fontFamily: theme.typography.family.bold,
  },
  // .glist .header { height:90rpx; padding:0 28rpx; margin:10rpx }
  listHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    height: rpx(90),
    paddingHorizontal: rpx(28),
    marginTop: rpx(10),
  },
  listHeaderTitle: { flexDirection: 'row', alignItems: 'center' },
  // .header-title uni-image { width:40rpx; height:40rpx; margin-right:17rpx }
  headerIcon: {
    width: rpx(40),
    height: rpx(40),
    marginRight: rpx(17),
    resizeMode: 'contain',
  },
  listHeaderText: {
    fontSize: rpx(36),
    color: C.ink,
    fontFamily: theme.typography.family.bold,
  },
  headerRight: { flexDirection: 'row', alignItems: 'center' },
  headerRightText: { fontSize: rpx(26), color: C.grey },
  headerRightArrow: {
    width: rpx(28),
    height: rpx(28),
    marginLeft: rpx(6),
    tintColor: C.grey,
  },
  // .ltab { padding:22rpx 26rpx 10rpx 26rpx; background:#fff }
  ltab: {
    paddingTop: rpx(22),
    paddingBottom: rpx(10),
    backgroundColor: C.card,
  },
  ltabTab: { paddingHorizontal: rpx(26), alignItems: 'center' },
  // .ltab-item { margin-right:50rpx }
  ltabItem: {
    alignItems: 'center',
    justifyContent: 'center',
    marginRight: rpx(50),
  },
  // .ltab-item-text { font-size:28rpx; color:#b9b9b9 }
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
  homeList: { backgroundColor: C.card },
  // .litem { padding:24rpx 26rpx; border-bottom:1rpx dashed #e6e6e6 }
  litem: {
    position: 'relative',
    flexDirection: 'row',
    alignItems: 'flex-start',
    paddingVertical: rpx(24),
    paddingHorizontal: rpx(26),
    borderBottomWidth: rpx(1),
    borderBottomColor: C.dash,
    borderStyle: 'dashed',
    backgroundColor: C.card,
  },
  // .lgoods-noborder
  litemLast: { borderBottomWidth: 0 },
  // .litem-left { width:184rpx; margin-right:42rpx }
  litemLeft: { width: rpx(184), marginRight: rpx(42) },
  litemImg: {
    width: rpx(184),
    height: rpx(184),
    borderRadius: rpx(8),
    backgroundColor: '#fff',
  },
  litemImgPlaceholder: { alignItems: 'center', justifyContent: 'center' },
  placeholderIcon: { width: rpx(96), height: rpx(96), opacity: 0.85 },
  // .item-prize — blue label overlapping the bottom of the thumbnail
  itemPrize: {
    width: rpx(184),
    height: rpx(42),
    marginTop: rpx(-42),
    justifyContent: 'center',
    backgroundColor: C.badge,
    borderTopLeftRadius: rpx(20),
    borderTopRightRadius: rpx(20),
  },
  itemPrizeText: {
    fontSize: rpx(24),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.medium,
  },
  // .litem-avatar { padding-top:10rpx; margin-left:14rpx }
  avatarRow: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingTop: rpx(10),
    marginLeft: rpx(14),
  },
  avatar: {
    width: rpx(44),
    height: rpx(44),
    borderRadius: rpx(22),
    borderWidth: rpx(2),
    borderColor: '#fff',
    marginLeft: rpx(-14),
    backgroundColor: '#eee',
  },
  avatarFirst: { marginLeft: 0 },
  litemRight: { flex: 1 },
  // .lgoods-title { font-size:32rpx; color:#000 } (.otw = single line)
  lgoodsTitle: {
    fontSize: rpx(32),
    lineHeight: rpx(42),
    color: '#000',
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-end { margin-top:14rpx; font-size:26rpx; color:#b9b9b9 }
  lgoodsEnd: {
    marginTop: rpx(14),
    fontSize: rpx(26),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
  // .draw-color { color:#ee5016 }
  drawColor: { color: C.orange, fontFamily: theme.typography.family.bold },
  // .lgoods-precent { margin-top:8rpx; margin-bottom:3rpx }
  lgoodsPrecent: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: rpx(8),
    marginBottom: rpx(3),
  },
  // .lgoods-progress { padding-right:24rpx }
  lgoodsProgress: { flex: 1, paddingRight: rpx(24) },
  // .lgoods-progress-text { font-size:28rpx; color:#b9b9b9 }
  progressText: {
    fontSize: rpx(28),
    color: C.grey,
    textAlign: 'right',
    fontFamily: theme.typography.family.bold,
  },
  lgoodsPrice: { flexDirection: 'row', alignItems: 'center' },
  priceOld: {
    marginRight: rpx(20),
    fontSize: rpx(28),
    color: C.grey,
    textDecorationLine: 'line-through',
    fontFamily: theme.typography.family.bold,
  },
  priceNew: {
    fontSize: rpx(32),
    color: C.orange,
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-people { width:300rpx; margin-top:18rpx; font-size:24rpx }
  people: {
    width: rpx(300),
    marginTop: rpx(18),
    fontSize: rpx(24),
    color: C.grey,
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-btn { right:32rpx; bottom:18rpx; 150x60rpx; radius 8rpx }
  goBtn: {
    position: 'absolute',
    right: rpx(32),
    bottom: rpx(18),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    width: rpx(150),
    height: rpx(60),
    borderRadius: rpx(8),
    paddingLeft: rpx(30),
    paddingRight: rpx(10),
  },
  goText: {
    fontSize: rpx(28),
    color: C.goldText,
    fontFamily: theme.typography.family.bold,
  },
  goArrow: {
    width: rpx(28),
    height: rpx(28),
    resizeMode: 'contain',
    tintColor: C.goldText,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
});
