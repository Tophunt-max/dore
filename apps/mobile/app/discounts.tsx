import { useQuery } from '@tanstack/react-query';
import { Redirect } from 'expo-router';
import { ImageBackground, Image, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useAuthStore } from '@/stores/auth';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/order/discount` (scope 700f9b3f): a winner ranking on stacked
// coloured gradient cards. First place gets a crown + avatar; the rest list
// winner names. Wired to the Oriva winners feed.
export default function DiscountsScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { t } = useI18n();
  const query = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const items = query.data?.items ?? [];

  return (
    <Screen
      header={<TopBar title={t('discount.title')} white transparent />}
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
        {items.map((winner, index) => {
          const bg = assets.discountBgs[index % assets.discountBgs.length];
          const first = index === 0;
          return (
            <View key={winner.id} style={styles.item}>
              <ImageBackground
                source={bg}
                resizeMode="stretch"
                style={[styles.itemBg, { height: first ? rpx(300) : rpx(240) }]}
                imageStyle={styles.itemBgImg}
              >
                <View style={styles.ranking}>
                  <Text style={styles.rankingText}>
                    {t('discount.rankNo', { n: index + 1 })}
                  </Text>
                </View>
                <View style={styles.info}>
                  {first ? (
                    <View style={styles.avatarCol}>
                      <Image source={assets.crown} style={styles.crown} />
                      <Image
                        source={
                          winner.avatarUrl
                            ? { uri: winner.avatarUrl }
                            : assets.defaultAvatar
                        }
                        style={styles.avatar}
                      />
                    </View>
                  ) : null}
                  <View style={styles.infoCode}>
                    <Text style={styles.winner} numberOfLines={1}>
                      {winner.displayName}
                    </Text>
                    <Text style={styles.code} numberOfLines={1}>
                      {winner.productTitle}
                    </Text>
                  </View>
                </View>
              </ImageBackground>
            </View>
          );
        })}
        {!query.isLoading && !query.error && !items.length ? (
          <Text style={styles.empty}>{t('home.noWinners')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .discount { background:#fe995d }
  page: { backgroundColor: '#fe995d', flexGrow: 1, paddingBottom: rpx(30) },
  // .discount_main { margin-top:82rpx; padding:0 28 0 32 }
  main: { marginTop: rpx(40), paddingHorizontal: rpx(30) },
  // .discount_main_item { margin-bottom:58rpx }
  item: { marginBottom: rpx(58), marginTop: rpx(34) },
  itemBg: { width: '100%', justifyContent: 'flex-start' },
  itemBgImg: { borderRadius: rpx(16) },
  // .discount_main_item_ranking — pill floating at top-center
  ranking: {
    position: 'absolute',
    top: rpx(-34),
    alignSelf: 'center',
    height: rpx(66),
    paddingHorizontal: rpx(40),
    justifyContent: 'center',
    borderRadius: rpx(8),
    backgroundColor: '#fea326',
  },
  rankingText: {
    fontSize: rpx(32),
    color: '#fff',
    fontFamily: theme.typography.family.medium,
  },
  // .discount_main_item_info
  info: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: rpx(80),
    paddingHorizontal: rpx(30),
  },
  avatarCol: { alignItems: 'center', marginRight: rpx(20) },
  crown: { width: rpx(28), height: rpx(28), resizeMode: 'contain' },
  avatar: {
    width: rpx(72),
    height: rpx(72),
    borderRadius: rpx(36),
    borderWidth: rpx(4),
    borderColor: '#ffcf5c',
  },
  infoCode: { marginLeft: rpx(14), marginTop: rpx(22) },
  // .winner { 28rpx; weight 500; #ee5016 }
  winner: {
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.medium,
  },
  // .code { 24rpx; #ee5016 }
  code: {
    marginTop: rpx(10),
    fontSize: rpx(24),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
});
