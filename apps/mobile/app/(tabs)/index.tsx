import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Image,
  ImageBackground,
  Pressable,
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { ProductCard } from '@/components/ProductCard';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

const quickAssets = [
  assets.quickOrders,
  assets.quickRecharge,
  assets.quickWinner,
  assets.quickSupport,
] as const;
export default function HomeScreen() {
  const { width } = useWindowDimensions();
  const { t, formatMoney, formatDate } = useI18n();
  const user = useAuthStore((state) => state.user);
  const campaigns = useQuery({
    queryKey: ['campaigns'],
    queryFn: api.campaigns,
  });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const banners = useQuery({
    queryKey: ['banners'],
    queryFn: api.banners,
    enabled: Boolean(user),
  });
  const wallet = useQuery({
    queryKey: ['wallet'],
    queryFn: api.wallet,
    enabled: Boolean(user),
  });
  const active = (campaigns.data?.items ?? []).filter(
    (item) => item.status === 'active',
  );
  const pool = active.reduce(
    (sum, campaign) => sum + campaign.entryPriceMinor * campaign.totalEntries,
    0,
  );
  const cardWidth =
    width < 360
      ? '100%'
      : width > 700
        ? Math.min(260, (width - 64) / 3)
        : (width - 44) / 2;
  const actions = [
    [t('account.orders'), '/orders'],
    [t('account.recharge'), '/wallet/recharge'],
    [t('nav.winners'), '/winners'],
    [t('account.support'), '/support'],
  ] as const;
  const refresh = () =>
    Promise.all([
      campaigns.refetch(),
      winners.refetch(),
      banners.refetch(),
      user ? wallet.refetch() : Promise.resolve(),
    ]).then(() => undefined);
  return (
    <Screen
      refreshing={campaigns.isRefetching || winners.isRefetching}
      onRefresh={() => void refresh()}
    >
      <ImageBackground
        source={assets.homeBackground}
        resizeMode="cover"
        style={[
          styles.hero,
          { minHeight: Math.max(218, Math.min(280, width * 0.63)) },
        ]}
        imageStyle={styles.heroImage}
      >
        <View>
          <Text style={styles.welcome}>{t('home.welcome')}</Text>
          <Text style={styles.brand}>Oriva</Text>
        </View>
        <Pressable
          onPress={() => router.push('/notifications')}
          style={styles.bell}
        >
          <Text style={styles.bellText}>●</Text>
        </Pressable>
        <Pressable
          onPress={() => router.push('/prize-pool')}
          style={styles.pool}
        >
          <Text style={styles.poolLabel}>{t('home.activePool')}</Text>
          <Text style={styles.poolValue}>{formatMoney(pool)}</Text>
          <Text style={styles.poolCopy}>{t('home.poolInfo')}</Text>
        </Pressable>
      </ImageBackground>
      <View style={styles.page}>
        <View style={styles.actions}>
          {actions.map(([label, route], index) => (
            <Pressable
              key={route}
              onPress={() => router.push(route)}
              style={styles.action}
            >
              <Image source={quickAssets[index]} style={styles.actionImage} />
              <Text style={styles.actionLabel}>{label}</Text>
            </Pressable>
          ))}
        </View>
        {banners.data?.items[0] ? (
          <Pressable style={styles.banner}>
            <Text style={styles.bannerTitle}>
              {banners.data.items[0].title}
            </Text>
            <Text style={styles.bannerBody}>{banners.data.items[0].body}</Text>
          </Pressable>
        ) : null}
        {user && wallet.data ? (
          <Pressable
            onPress={() => router.push('/wallet')}
            style={styles.wallet}
          >
            <Text style={styles.walletLabel}>{t('account.wallet')}</Text>
            <Text style={styles.walletValue}>
              {formatMoney(wallet.data.availableMinor, wallet.data.currency)}
            </Text>
          </Pressable>
        ) : null}
        <View style={styles.heading}>
          <Text style={styles.title}>{t('home.latestWinners')}</Text>
          <Pressable onPress={() => router.push('/winners')}>
            <Text style={styles.link}>{t('home.seeAll')}</Text>
          </Pressable>
        </View>
        <QueryNotice
          loading={winners.isLoading}
          error={winners.error}
          onRetry={() => void winners.refetch()}
        />
        {winners.data?.items[0] ? (
          <Pressable
            onPress={() =>
              router.push(`/products/${winners.data!.items[0]!.campaignId}`)
            }
            style={styles.winner}
          >
            <Image source={assets.quickWinner} style={styles.winnerIcon} />
            <View style={styles.flex}>
              <Text style={styles.winnerName}>
                {winners.data.items[0].displayName}
              </Text>
              <Text style={styles.muted}>
                {winners.data.items[0].productTitle}
              </Text>
            </View>
            <Text style={styles.muted}>
              {formatDate(winners.data.items[0].announcedAt)}
            </Text>
          </Pressable>
        ) : !winners.isLoading && !winners.error ? (
          <Text style={styles.empty}>{t('home.noWinners')}</Text>
        ) : null}
        <View style={styles.heading}>
          <Text style={styles.title}>{t('home.campaigns')}</Text>
          <Pressable onPress={() => router.push('/products')}>
            <Text style={styles.link}>{t('home.seeAll')}</Text>
          </Pressable>
        </View>
        <QueryNotice
          loading={campaigns.isLoading}
          error={campaigns.error}
          onRetry={() => void campaigns.refetch()}
        />
        <View style={styles.products}>
          {active.slice(0, width > 700 ? 3 : 2).map((campaign) => (
            <ProductCard
              key={campaign.id}
              width={cardWidth}
              image={
                campaign.product.imageUrl
                  ? { uri: campaign.product.imageUrl }
                  : assets.goodsOne
              }
              onPress={() => router.push(`/products/${campaign.id}`)}
              priceMinor={campaign.entryPriceMinor}
              sold={campaign.soldEntries}
              title={campaign.product.title}
              total={campaign.totalEntries}
              currency={campaign.product.currency}
            />
          ))}
        </View>
        {!campaigns.isLoading && !campaigns.error && !active.length ? (
          <Text style={styles.empty}>{t('home.noCampaigns')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  hero: {
    margin: theme.spacing.lg,
    padding: theme.spacing.xl,
    overflow: 'hidden',
  },
  heroImage: { borderRadius: theme.radii.xl },
  welcome: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.regular,
  },
  brand: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: 30,
  },
  bell: {
    position: 'absolute',
    right: 20,
    top: 20,
    width: 40,
    height: 40,
    borderRadius: 20,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'rgba(255,255,255,.18)',
  },
  bellText: { color: theme.colors.accentStart },
  pool: {
    marginTop: 'auto',
    padding: 16,
    borderRadius: 14,
    backgroundColor: 'rgba(255,255,255,.92)',
  },
  poolLabel: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  poolValue: {
    marginTop: 4,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: 25,
  },
  poolCopy: { marginTop: 3, color: theme.colors.textMuted, fontSize: 11 },
  page: { paddingHorizontal: theme.spacing.lg },
  actions: {
    marginTop: -34,
    flexDirection: 'row',
    padding: 14,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
    ...theme.shadows.card,
  },
  action: { width: '25%', alignItems: 'center' },
  actionImage: { width: 48, height: 48 },
  actionLabel: {
    marginTop: 6,
    textAlign: 'center',
    color: theme.colors.ink,
    fontSize: 11,
  },
  banner: {
    marginTop: 16,
    padding: 16,
    borderRadius: theme.radii.xl,
    backgroundColor: '#FFF3D1',
  },
  bannerTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  bannerBody: { marginTop: 5, color: theme.colors.textSecondary },
  wallet: {
    marginTop: 16,
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  walletLabel: { color: '#D8DEE5' },
  walletValue: {
    marginTop: 4,
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    fontSize: 22,
  },
  heading: {
    marginTop: theme.spacing.xl,
    marginBottom: theme.spacing.md,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  link: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  winner: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.md,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  winnerIcon: { width: 44, height: 44 },
  flex: { flex: 1, marginHorizontal: 12 },
  winnerName: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  muted: { color: theme.colors.textMuted, fontSize: 11 },
  products: { flexDirection: 'row', flexWrap: 'wrap', gap: theme.spacing.md },
  empty: {
    padding: theme.spacing.lg,
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
