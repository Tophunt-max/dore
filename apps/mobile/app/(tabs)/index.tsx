import { useQuery } from '@tanstack/react-query';
import { LinearGradient } from 'expo-linear-gradient';
import { router } from 'expo-router';
import { useState } from 'react';
import {
  Image,
  ImageBackground,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { BannerCarousel } from '@/components/BannerCarousel';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich home palette (decompiled view.css, scope 7f2b1428).
const C = {
  bg: '#f6f6f6',
  card: '#ffffff',
  orange: '#ee5016',
  red: '#ff5c5c',
  grey: '#b9b9b9',
  ink: '#17273a',
  dash: '#e6e6e6',
  track: '#f1e4dc',
  gold1: '#ffe44b',
  gold2: '#fea326',
  goldText: '#ad6701',
};

const categories = [
  { key: 'all', label: 'All', icon: assets.categoryAll },
  { key: 'gifts', label: 'Gifts', icon: assets.groupBuy },
  { key: 'cash', label: 'Cash award', icon: assets.freeShipping },
  { key: 'high', label: 'High Winning', icon: assets.hotPicks },
  { key: 'soon', label: 'Upcoming', icon: assets.upcoming },
] as const;

const categorySlug: Record<string, string> = {
  gifts: 'gifts',
  cash: 'cash-award',
  high: 'high-winning',
};

function endLabel(endsAt: string): string {
  const ms = new Date(endsAt).getTime() - Date.now();
  if (ms <= 0) return '00:00:00';
  const d = Math.floor(ms / 86_400_000);
  const h = Math.floor((ms % 86_400_000) / 3_600_000);
  const m = Math.floor((ms % 3_600_000) / 60_000);
  if (d > 0) return `${d}d ${h}h ${m}m`;
  const s = Math.floor((ms % 60_000) / 1000);
  const pad = (v: number) => String(v).padStart(2, '0');
  return `${pad(h)}:${pad(m)}:${pad(s)}`;
}

export default function HomeScreen() {
  const { t, formatMoney } = useI18n();
  const [category, setCategory] = useState('all');
  const campaigns = useQuery({
    queryKey: ['campaigns'],
    queryFn: () => api.campaigns(),
  });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const banners = useQuery({ queryKey: ['banners'], queryFn: api.banners });

  const active = (campaigns.data?.items ?? [])
    .filter((item) => item.status === 'active')
    .filter((item) => {
      if (category === 'all') return true;
      if (category === 'soon')
        return new Date(item.startsAt).getTime() > Date.now();
      return item.category?.slug === categorySlug[category];
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
      {/* Orange header background + centered logo */}
      <ImageBackground
        source={assets.homeBackground}
        resizeMode="cover"
        style={styles.headerBg}
        imageStyle={styles.headerBgImg}
      >
        <View style={styles.navLogo}>
          <Text style={styles.brand}>ORICH</Text>
        </View>
        {/* Banner carousel (278rpx) */}
        <View style={styles.banner}>
          <BannerCarousel banners={banners.data?.items} />
        </View>
      </ImageBackground>

      {/* Category tabs — round icons on white */}
      <View style={styles.tab}>
        {categories.map((cat) => (
          <Pressable
            key={cat.key}
            onPress={() => setCategory(cat.key)}
            style={styles.tabItem}
          >
            <Image source={cat.icon} style={styles.tabIcon} />
            <Text
              style={[
                styles.tabText,
                category === cat.key && styles.tabTextActive,
              ]}
            >
              {cat.label}
            </Text>
          </Pressable>
        ))}
      </View>

      {/* Winner announcement toast */}
      {topWinner ? (
        <View style={styles.toast}>
          <Image source={assets.defaultAvatar} style={styles.toastAvatar} />
          <Text style={styles.toastText} numberOfLines={1}>
            <Text style={styles.toastName}>{topWinner.displayName} </Text>
            won {topWinner.productTitle}
          </Text>
          <Pressable onPress={() => router.push('/winners')}>
            <Text style={styles.toastMore}>{t('home.more')}</Text>
          </Pressable>
        </View>
      ) : null}

      {/* Section header */}
      <View style={styles.listHeader}>
        <View style={styles.listHeaderTitle}>
          <View style={styles.headerBar} />
          <Text style={styles.listHeaderText}>{t('home.hotPicks')}</Text>
        </View>
        <Pressable
          onPress={() => router.push('/products')}
          style={styles.headerRight}
        >
          <Text style={styles.headerRightText}>{t('home.all')}</Text>
          <Image source={assets.arrowGrey} style={styles.headerRightArrow} />
        </Pressable>
      </View>

      <QueryNotice
        loading={campaigns.isLoading}
        error={campaigns.error}
        onRetry={() => void campaigns.refetch()}
      />

      {/* Product list — ORich .home-list .litem rows */}
      <View style={styles.homeList}>
        {active.map((campaign, index) => {
          const sold = campaign.soldEntries;
          const total = campaign.totalEntries;
          const percent =
            total > 0 ? Math.min(100, Math.round((sold / total) * 100)) : 0;
          const last = index === active.length - 1;
          return (
            <Pressable
              key={campaign.id}
              onPress={() => router.push(`/products/${campaign.id}`)}
              style={[styles.litem, last && styles.litemLast]}
            >
              {/* Left: image + participant avatars */}
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

              {/* Right: details */}
              <View style={styles.litemRight}>
                <Text style={styles.lgoodsTitle} numberOfLines={2}>
                  {campaign.product.title}
                </Text>
                <Text style={styles.lgoodsEnd}>
                  {t('campaign.endIn', { time: '' }).trim()}{' '}
                  <Text style={styles.drawColor}>
                    {endLabel(campaign.endsAt)}
                  </Text>
                </Text>
                <View style={styles.lgoodsPrecent}>
                  <View style={styles.track}>
                    <View style={[styles.fill, { width: `${percent}%` }]} />
                  </View>
                  <Text style={styles.progressText}>{percent}%</Text>
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
                    {formatMoney(
                      campaign.entryPriceMinor,
                      campaign.product.currency,
                    )}
                  </Text>
                </View>
                <Text style={styles.people}>
                  {t('campaign.peopleParticipating', { count: sold })}
                </Text>
              </View>

              {/* Gold "Go" button */}
              <LinearGradient
                colors={[C.gold1, C.gold2]}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 1 }}
                style={styles.goBtn}
              >
                <Text style={styles.goText}>{t('home.go')}</Text>
                <Image source={assets.arrowRight} style={styles.goArrow} />
              </LinearGradient>
            </Pressable>
          );
        })}
        {!campaigns.isLoading && !campaigns.error && !active.length ? (
          <Text style={styles.empty}>{t('home.noCampaigns')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: C.bg, paddingBottom: rpx(40) },
  // .home-background (orange header art) + .nav-logo (88rpx) + .banner (278rpx).
  // An explicit height + overflow:hidden is required: on web the background
  // image layer is sized to the PNG's intrinsic height (473px) and would bleed
  // past the header, tinting the sections below it orange.
  headerBg: {
    height: rpx(418),
    overflow: 'hidden',
    paddingTop: rpx(20),
    paddingBottom: rpx(24),
  },
  headerBgImg: { resizeMode: 'cover' },
  navLogo: {
    height: rpx(88),
    alignItems: 'center',
    justifyContent: 'center',
  },
  brand: {
    fontSize: rpx(44),
    letterSpacing: 2,
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  banner: { height: rpx(278), marginTop: rpx(8) },
  // .tab — white bar, round 96rpx icons
  tab: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: rpx(26),
    paddingHorizontal: rpx(30),
    backgroundColor: C.card,
  },
  tabItem: { flex: 1, alignItems: 'center' },
  tabIcon: { width: rpx(96), height: rpx(96), borderRadius: rpx(48) },
  tabText: {
    marginTop: rpx(6),
    fontSize: rpx(24),
    textAlign: 'center',
    color: '#4f4f4f',
    fontFamily: theme.typography.family.medium,
  },
  tabTextActive: {
    color: C.orange,
    fontFamily: theme.typography.family.bold,
  },
  // .toast — winner announcement
  toast: {
    flexDirection: 'row',
    alignItems: 'center',
    borderTopWidth: rpx(2),
    borderTopColor: C.bg,
    paddingVertical: rpx(16),
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
    marginLeft: rpx(24),
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
  // .glist .header
  listHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    height: rpx(90),
    paddingHorizontal: rpx(28),
    marginTop: rpx(10),
  },
  listHeaderTitle: { flexDirection: 'row', alignItems: 'center' },
  headerBar: {
    width: rpx(10),
    height: rpx(30),
    borderRadius: rpx(4),
    marginRight: rpx(16),
    backgroundColor: C.orange,
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
  // .home-list
  homeList: { backgroundColor: C.card },
  // .litem — product row
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
  litemLast: { borderBottomWidth: 0 },
  litemLeft: { width: rpx(184), marginRight: rpx(42) },
  // .litem-img — max 184x184rpx, contained on white (ORich shows the product
  // photo fitted, not cropped).
  litemImg: {
    width: rpx(184),
    height: rpx(184),
    borderRadius: rpx(8),
    backgroundColor: '#fff',
  },
  litemImgPlaceholder: { alignItems: 'center', justifyContent: 'center' },
  placeholderIcon: { width: rpx(96), height: rpx(96), opacity: 0.85 },
  // .item-prize — blue label pinned to the bottom of the product image.
  itemPrize: {
    width: rpx(184),
    height: rpx(42),
    marginTop: rpx(-42),
    justifyContent: 'center',
    backgroundColor: '#90b9ff',
    borderTopLeftRadius: rpx(20),
    borderTopRightRadius: rpx(20),
  },
  itemPrizeText: {
    fontSize: rpx(24),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.medium,
  },
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
  lgoodsTitle: {
    fontSize: rpx(32),
    lineHeight: rpx(42),
    color: '#000',
    fontFamily: theme.typography.family.bold,
  },
  lgoodsEnd: {
    marginTop: rpx(14),
    fontSize: rpx(26),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
  drawColor: { color: C.orange, fontFamily: theme.typography.family.bold },
  lgoodsPrecent: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: rpx(8),
    marginBottom: rpx(3),
    paddingRight: rpx(24),
  },
  track: {
    flex: 1,
    height: rpx(14),
    borderRadius: rpx(7),
    overflow: 'hidden',
    backgroundColor: C.track,
  },
  fill: { height: '100%', borderRadius: rpx(7), backgroundColor: C.orange },
  progressText: {
    marginLeft: rpx(12),
    fontSize: rpx(28),
    color: C.grey,
    fontFamily: theme.typography.family.bold,
  },
  lgoodsPrice: {
    flexDirection: 'row',
    alignItems: 'center',
    marginTop: rpx(6),
  },
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
  people: {
    marginTop: rpx(18),
    fontSize: rpx(24),
    color: C.grey,
    fontFamily: theme.typography.family.bold,
  },
  // .lgoods-btn — gold "Go" pill, bottom-right
  goBtn: {
    position: 'absolute',
    right: rpx(32),
    bottom: rpx(18),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    width: rpx(150),
    height: rpx(60),
    borderRadius: rpx(8),
  },
  goText: {
    fontSize: rpx(28),
    color: C.goldText,
    fontFamily: theme.typography.family.bold,
  },
  goArrow: {
    width: rpx(28),
    height: rpx(28),
    marginLeft: rpx(6),
    tintColor: C.goldText,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
});
