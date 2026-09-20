import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

export default function WinnersScreen() {
  const { formatDate } = useI18n();
  const query = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  return (
    <Screen
      contentStyle={styles.root}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.headerBar}>
        <Text style={styles.headerTitle}>Latest winners</Text>
      </View>

      <View style={styles.banner}>
        <Image source={assets.winnerDrawn} style={styles.bannerIcon} />
        <Text style={styles.bannerText}>Published campaign results</Text>
      </View>

      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />

      <View style={styles.list}>
        {query.data?.items.map((winner) => (
          <Pressable
            key={winner.id}
            onPress={() =>
              router.push({
                pathname: '/calculation',
                params: { campaignId: winner.campaignId },
              })
            }
            style={styles.card}
          >
            <View style={styles.cardHeader}>
              {winner.avatarUrl ? (
                <Image
                  source={{ uri: winner.avatarUrl }}
                  style={styles.avatar}
                />
              ) : (
                <Image source={assets.defaultAvatar} style={styles.avatar} />
              )}
              <View style={styles.cardHeaderInfo}>
                <Text style={styles.name}>{winner.displayName}</Text>
                <Text style={styles.time}>
                  {formatDate(winner.announcedAt)}
                </Text>
              </View>
              <View style={styles.wonBadge}>
                <Text style={styles.wonBadgeText}>Winner</Text>
              </View>
            </View>
            <View style={styles.cardBody}>
              <Image source={assets.goodsOne} style={styles.goodsImg} />
              <View style={styles.goodsInfo}>
                <Text style={styles.goodsName} numberOfLines={2}>
                  {winner.productTitle}
                </Text>
                <Text style={styles.goodsIssue}>You won this prize</Text>
              </View>
            </View>
          </Pressable>
        ))}
      </View>

      {!query.isLoading && !query.error && !query.data?.items.length ? (
        <Text style={styles.empty}>No winner announcements yet.</Text>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: theme.colors.background, paddingBottom: rpx(40) },
  headerBar: {
    paddingTop: rpx(24),
    paddingHorizontal: rpx(32),
    paddingBottom: rpx(16),
  },
  headerTitle: {
    fontSize: rpx(40),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  banner: {
    marginHorizontal: rpx(24),
    height: rpx(200),
    borderRadius: rpx(20),
    backgroundColor: theme.colors.primary,
    alignItems: 'center',
    justifyContent: 'center',
  },
  bannerIcon: { width: rpx(90), height: rpx(90) },
  bannerText: {
    marginTop: rpx(16),
    fontSize: rpx(30),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  list: { marginTop: rpx(24), marginHorizontal: rpx(24) },
  card: {
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    padding: rpx(24),
    marginBottom: rpx(20),
    ...theme.shadows.card,
  },
  cardHeader: { flexDirection: 'row', alignItems: 'center' },
  avatar: {
    width: rpx(72),
    height: rpx(72),
    borderRadius: rpx(36),
    backgroundColor: '#FFF1EA',
  },
  cardHeaderInfo: { flex: 1, marginLeft: rpx(20) },
  name: {
    fontSize: rpx(30),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  time: { marginTop: rpx(6), fontSize: rpx(22), color: theme.colors.textMuted },
  wonBadge: {
    paddingHorizontal: rpx(20),
    paddingVertical: rpx(8),
    borderRadius: rpx(24),
    backgroundColor: '#FFF3E9',
  },
  wonBadgeText: {
    fontSize: rpx(22),
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  cardBody: {
    marginTop: rpx(20),
    flexDirection: 'row',
    alignItems: 'center',
    paddingTop: rpx(20),
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: '#f0f0f0',
  },
  goodsImg: {
    width: rpx(120),
    height: rpx(120),
    borderRadius: rpx(12),
    backgroundColor: '#f4f4f4',
  },
  goodsInfo: { flex: 1, marginLeft: rpx(20) },
  goodsName: {
    fontSize: rpx(28),
    color: theme.colors.ink,
    lineHeight: rpx(38),
  },
  goodsIssue: {
    marginTop: rpx(8),
    fontSize: rpx(24),
    color: theme.colors.primary,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
