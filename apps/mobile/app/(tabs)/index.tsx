import { useQuery } from '@tanstack/react-query';
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
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

const categories = [
  { key: 'all', label: 'All', icon: assets.categoryAll },
  { key: 'gifts', label: 'Gifts', icon: assets.groupBuy },
  { key: 'cash', label: 'Cash award', icon: assets.freeShipping },
  { key: 'high', label: 'High Winning', icon: assets.hotPicks },
  { key: 'soon', label: 'Upcoming', icon: assets.upcoming },
] as const;

export default function HomeScreen() {
  const { t, formatMoney } = useI18n();
  const user = useAuthStore((state) => state.user);
  const [category, setCategory] = useState('all');
  const campaigns = useQuery({ queryKey: ['campaigns'], queryFn: api.campaigns });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const active = (campaigns.data?.items ?? []).filter(
    (item) => item.status === 'active',
  );
  const pool = active.reduce(
    (sum, campaign) => sum + campaign.entryPriceMinor * campaign.totalEntries,
    0,
  );
  const refresh = () =>
    Promise.all([campaigns.refetch(), winners.refetch()]).then(() => undefined);

  return (
    <Screen
      contentStyle={styles.root}
      refreshing={campaigns.isRefetching || winners.isRefetching}
      onRefresh={() => void refresh()}
    >
      {/* Hero */}
      <ImageBackground
        source={assets.homeBackground}
        resizeMode="cover"
        style={styles.hero}
        imageStyle={styles.heroImage}
      >
        <View style={styles.navbar}>
          <Text style={styles.brand}>ORich</Text>
          <Pressable
            onPress={() => router.push('/notifications')}
            style={styles.bell}
          >
            <Text style={styles.bellText}>♪</Text>
          </Pressable>
        </View>
        <Pressable
          onPress={() => router.push('/prize-pool')}
          style={styles.pool}
        >
          <Text style={styles.poolLabel}>Active prize pool</Text>
          <Text style={styles.poolValue}>{formatMoney(pool)}</Text>
          <Text style={styles.poolCopy}>
            Informational total from active campaign entries
          </Text>
        </Pressable>
      </ImageBackground>

      {/* Category tabs */}
      <View style={styles.tabs}>
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

      {/* Latest winners strip */}
      {winners.data?.items.length ? (
        <View style={styles.toast}>
          <Image source={assets.winnerDrawn} style={styles.toastIcon} />
          <Text style={styles.toastText} numberOfLines={1}>
            {winners.data.items[0].displayName} won{' '}
            {winners.data.items[0].productTitle}
          </Text>
          <Pressable onPress={() => router.push('/winners')}>
            <Text style={styles.toastMore}>More</Text>
          </Pressable>
        </View>
      ) : null}

      {/* Section heading */}
      <View style={styles.heading}>
        <Text style={styles.headingTitle}>Hot Picks</Text>
        <Pressable
          onPress={() => router.push('/products')}
          style={styles.headingMore}
        >
          <Text style={styles.headingMoreText}>All</Text>
          <Image source={assets.arrowGrey} style={styles.headingMoreArrow} />
        </Pressable>
      </View>

      <QueryNotice
        loading={campaigns.isLoading}
        error={campaigns.error}
        onRetry={() => void campaigns.refetch()}
      />

      {/* Campaign (nshop) cards */}
      <View style={styles.list}>
        {active.map((campaign) => {
          const remaining = Math.max(
            0,
            campaign.totalEntries - campaign.soldEntries,
          );
          const percent =
            campaign.totalEntries > 0
              ? Math.min(
                  100,
                  Math.round(
                    (campaign.soldEntries / campaign.totalEntries) * 100,
                  ),
                )
              : 0;
          return (
            <Pressable
              key={campaign.id}
              onPress={() => router.push(`/products/${campaign.id}`)}
              style={styles.card}
            >
              <Image
                source={
                  campaign.product.imageUrl
                    ? { uri: campaign.product.imageUrl }
                    : assets.goodsOne
                }
                style={styles.cardImage}
                resizeMode="cover"
              />
              <View style={styles.cardDetail}>
                <Text style={styles.cardTitle} numberOfLines={2}>
                  {campaign.product.title}
                </Text>
                <View style={styles.progressRow}>
                  <View style={styles.progressTrack}>
                    <View
                      style={[styles.progressFill, { width: `${percent}%` }]}
                    />
                  </View>
                  <Text style={styles.progressText}>{percent}%</Text>
                </View>
                <Text style={styles.remaining}>Needed: {remaining}</Text>
                <View style={styles.priceRow}>
                  <View>
                    {campaign.product.retailPriceMinor ? (
                      <Text style={styles.priceOld}>
                        M.R.P{' '}
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
                      <Text style={styles.priceUnit}> / entry</Text>
                    </Text>
                  </View>
                  <View style={styles.joinBtn}>
                    <Text style={styles.joinText}>Join</Text>
                  </View>
                </View>
              </View>
            </Pressable>
          );
        })}
      </View>
      {!campaigns.isLoading && !campaigns.error && !active.length ? (
        <Text style={styles.empty}>{t('home.noCampaigns')}</Text>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: theme.colors.background, paddingBottom: rpx(40) },
  hero: { height: rpx(480), paddingTop: rpx(20) },
  heroImage: { resizeMode: 'cover' },
  navbar: {
    height: rpx(88),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: rpx(32),
  },
  brand: {
    fontSize: rpx(40),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  bell: {
    width: rpx(56),
    height: rpx(56),
    borderRadius: rpx(28),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(255,255,255,.2)',
  },
  bellText: { color: '#fff', fontSize: rpx(28) },
  pool: {
    marginTop: rpx(30),
    marginHorizontal: rpx(32),
    padding: rpx(32),
    borderRadius: rpx(20),
    backgroundColor: 'rgba(255,255,255,.94)',
  },
  poolLabel: {
    fontSize: rpx(28),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.primary,
  },
  poolValue: {
    marginTop: rpx(8),
    fontSize: rpx(56),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  poolCopy: { marginTop: rpx(6), fontSize: rpx(22), color: theme.colors.textMuted },
  tabs: {
    marginTop: rpx(-70),
    marginHorizontal: rpx(24),
    paddingVertical: rpx(28),
    borderRadius: rpx(20),
    backgroundColor: '#fff',
    flexDirection: 'row',
    justifyContent: 'space-between',
    ...theme.shadows.card,
  },
  tabItem: { flex: 1, alignItems: 'center' },
  tabIcon: { width: rpx(64), height: rpx(64) },
  tabText: {
    marginTop: rpx(10),
    fontSize: rpx(22),
    color: theme.colors.ink,
  },
  tabTextActive: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  toast: {
    marginTop: rpx(24),
    marginHorizontal: rpx(24),
    height: rpx(72),
    borderRadius: rpx(36),
    backgroundColor: '#FFF3E9',
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: rpx(24),
  },
  toastIcon: { width: rpx(40), height: rpx(40) },
  toastText: {
    flex: 1,
    marginLeft: rpx(16),
    fontSize: rpx(24),
    color: theme.colors.ink,
  },
  toastMore: {
    fontSize: rpx(24),
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  heading: {
    marginTop: rpx(36),
    marginHorizontal: rpx(24),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  headingTitle: {
    fontSize: rpx(34),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  headingMore: { flexDirection: 'row', alignItems: 'center' },
  headingMoreText: { fontSize: rpx(24), color: theme.colors.textMuted },
  headingMoreArrow: {
    width: rpx(24),
    height: rpx(24),
    marginLeft: rpx(4),
    tintColor: theme.colors.textMuted,
  },
  list: { marginTop: rpx(20), marginHorizontal: rpx(24) },
  card: {
    flexDirection: 'row',
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    padding: rpx(20),
    marginBottom: rpx(20),
    ...theme.shadows.card,
  },
  cardImage: {
    width: rpx(220),
    height: rpx(220),
    borderRadius: rpx(16),
    backgroundColor: '#f4f4f4',
  },
  cardDetail: { flex: 1, marginLeft: rpx(20), justifyContent: 'space-between' },
  cardTitle: {
    fontSize: rpx(28),
    fontFamily: theme.typography.family.medium,
    color: theme.colors.ink,
    lineHeight: rpx(38),
  },
  progressRow: {
    marginTop: rpx(12),
    flexDirection: 'row',
    alignItems: 'center',
  },
  progressTrack: {
    flex: 1,
    height: rpx(14),
    borderRadius: rpx(7),
    backgroundColor: '#F1E4DC',
    overflow: 'hidden',
  },
  progressFill: {
    height: '100%',
    borderRadius: rpx(7),
    backgroundColor: theme.colors.primary,
  },
  progressText: {
    marginLeft: rpx(12),
    fontSize: rpx(22),
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  remaining: {
    marginTop: rpx(8),
    fontSize: rpx(22),
    color: theme.colors.textMuted,
  },
  priceRow: {
    marginTop: rpx(12),
    flexDirection: 'row',
    alignItems: 'flex-end',
    justifyContent: 'space-between',
  },
  priceOld: {
    fontSize: rpx(20),
    color: theme.colors.textMuted,
    textDecorationLine: 'line-through',
  },
  priceNew: {
    fontSize: rpx(32),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.primary,
  },
  priceUnit: {
    fontSize: rpx(20),
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  joinBtn: {
    paddingHorizontal: rpx(36),
    height: rpx(64),
    borderRadius: rpx(32),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: theme.colors.accentEnd,
  },
  joinText: {
    fontSize: rpx(26),
    fontFamily: theme.typography.family.bold,
    color: '#7a3d00',
  },
  empty: {
    padding: rpx(48),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
