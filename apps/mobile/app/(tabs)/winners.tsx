import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/winner/winner` (scope 034dd157): a #f9f9f9 feed of white cards.
// Each card = header (avatar 56rpx + name + time), optional content text +
// image gallery, then a goods row (116rpx thumb + grey rounded desc box).
export default function WinnersScreen() {
  const { formatDate, t } = useI18n();
  const query = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const items = query.data?.items ?? [];

  return (
    <Screen
      header={<TopBar title={t('winners.title')} white canGoBack={false} />}
      contentStyle={styles.root}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />

      {items.map((winner) => (
        <Pressable
          key={winner.id}
          onPress={() =>
            router.push({
              pathname: '/calculation',
              params: { campaignId: winner.campaignId },
            })
          }
          style={styles.main}
        >
          {/* .header */}
          <View style={styles.header}>
            <Image
              source={
                winner.avatarUrl
                  ? { uri: winner.avatarUrl }
                  : assets.defaultAvatar
              }
              style={styles.headerAvatar}
            />
            <Text style={styles.headerName} numberOfLines={1}>
              {winner.displayName}
            </Text>
            <Text style={styles.headerTime}>
              {formatDate(winner.announcedAt)}
            </Text>
          </View>

          {/* .content */}
          <Text style={styles.content}>
            {t('winners.result')}: {winner.productTitle}
          </Text>

          {/* .goods */}
          <View style={styles.goods}>
            <Image source={assets.goodsOne} style={styles.goodsImg} />
            <View style={styles.goodsDesc}>
              <Text style={styles.goodsName} numberOfLines={1}>
                {winner.productTitle}
              </Text>
              <Text style={styles.goodsIssue}>
                {t('winners.announced', {
                  date: formatDate(winner.announcedAt),
                })}
              </Text>
            </View>
          </View>
        </Pressable>
      ))}

      {!query.isLoading && !query.error && !items.length ? (
        <Text style={styles.empty}>{t('home.noWinners')}</Text>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .winner { background:#f9f9f9; padding-bottom:98rpx }
  root: { backgroundColor: '#f9f9f9', paddingBottom: rpx(98) },
  // .main { margin-top:16rpx; padding:30rpx 26rpx; background:#fff }
  main: {
    marginTop: rpx(16),
    paddingVertical: rpx(30),
    paddingHorizontal: rpx(26),
    backgroundColor: '#fff',
  },
  // .header { row; center }
  header: { flexDirection: 'row', alignItems: 'center' },
  // header uni-image { 56rpx; radius 50% }
  headerAvatar: {
    width: rpx(56),
    height: rpx(56),
    borderRadius: rpx(28),
    marginRight: rpx(18),
    backgroundColor: '#eee',
  },
  // .header-name { flex:1; 26rpx; weight 600; #17273a }
  headerName: {
    flex: 1,
    marginRight: rpx(18),
    fontSize: rpx(26),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .header-time { 26rpx; #b9b9b9 }
  headerTime: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .content { margin:20rpx 0; 28rpx; #686868 }
  content: {
    marginTop: rpx(20),
    marginBottom: rpx(20),
    fontSize: rpx(28),
    lineHeight: rpx(40),
    color: '#686868',
    fontFamily: theme.typography.family.regular,
  },
  // .goods { row; center }
  goods: { flexDirection: 'row', alignItems: 'center' },
  // .goods uni-image { 116rpx; radius 8px }
  goodsImg: {
    width: rpx(116),
    height: rpx(116),
    borderRadius: rpx(8),
    marginRight: rpx(14),
    backgroundColor: '#f4f4f4',
  },
  // .goods-desc { flex:1; height:134rpx; padding:24 32 26 32; bg #f7f8f9; radius 24rpx }
  goodsDesc: {
    flex: 1,
    height: rpx(134),
    paddingVertical: rpx(24),
    paddingHorizontal: rpx(32),
    backgroundColor: '#f7f8f9',
    borderRadius: rpx(24),
    justifyContent: 'space-between',
  },
  // .goods-name { 28rpx; weight 700; #17273a }
  goodsName: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .goods-issue { 26rpx; #b9b9b9 }
  goodsIssue: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
