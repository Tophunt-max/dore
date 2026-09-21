import { useQuery } from '@tanstack/react-query';
import { Redirect, router } from 'expo-router';
import { useState } from 'react';
import { Image, Pressable, Share, StyleSheet, Text, View } from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useAuthStore } from '@/stores/auth';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/winner/myShare` (scope cc86c408): a two-tab page — "To share"
// (won items with a gold Share button) and "Shared" (the published-story feed,
// same card as pages/winner/winner).
export default function MySharesScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { formatDate, t } = useI18n();
  const [tab, setTab] = useState(0);
  const prizes = useQuery({ queryKey: ['prizes'], queryFn: api.prizes });
  const shares = useQuery({ queryKey: ['shares'], queryFn: api.shares });

  const prizeItems = prizes.data?.items ?? [];
  const shareItems = shares.data?.items ?? [];

  const bars = [
    { i: 0, label: t('shares.toShareTab') },
    { i: 1, label: t('shares.sharedTab') },
  ];

  return (
    <Screen
      header={<TopBar title={t('shares.title')} white />}
      contentStyle={styles.page}
      refreshing={prizes.isRefetching || shares.isRefetching}
      onRefresh={() =>
        void Promise.all([prizes.refetch(), shares.refetch()])
      }
    >
      {/* .share_bar */}
      <View style={styles.shareBar}>
        {bars.map((b) => (
          <Pressable
            key={b.i}
            onPress={() => setTab(b.i)}
            style={styles.shareBarItem}
          >
            <Text
              style={[styles.barTitle, tab === b.i && styles.barTitleActive]}
            >
              {b.label}
            </Text>
            {tab === b.i ? (
              <Image source={assets.select} style={styles.barUnderline} />
            ) : null}
          </Pressable>
        ))}
      </View>

      {tab === 0 ? (
        <>
          <QueryNotice
            loading={prizes.isLoading}
            error={prizes.error}
            onRetry={() => void prizes.refetch()}
          />
          {prizeItems.map((prize) => (
            <View key={prize.id} style={styles.cardItem}>
              <Text style={styles.cardItemTitle}>
                {formatDate(prize.createdAt)}
              </Text>
              <View style={styles.cardItemMain}>
                <Image source={assets.goodsOne} style={styles.cardImg} />
                <Text style={styles.cardName} numberOfLines={2}>
                  {prize.productTitle}
                </Text>
              </View>
              <Pressable
                style={styles.comment}
                onPress={() =>
                  router.push({
                    pathname: '/bask/share',
                    params: { prizeId: prize.id },
                  })
                }
              >
                <LinearGradient
                  colors={[theme.colors.accentStart, theme.colors.accentEnd]}
                  start={{ x: 0, y: 1 }}
                  end={{ x: 1, y: 0 }}
                  style={styles.commentBtn}
                >
                  <Text style={styles.commentText}>{t('shares.shareBtn')}</Text>
                </LinearGradient>
              </Pressable>
            </View>
          ))}
          {!prizes.isLoading && !prizeItems.length ? (
            <Text style={styles.empty}>{t('shares.empty')}</Text>
          ) : null}
        </>
      ) : (
        <>
          <QueryNotice
            loading={shares.isLoading}
            error={shares.error}
            onRetry={() => void shares.refetch()}
          />
          {shareItems.map((item) => (
            <View key={item.id} style={styles.main}>
              <View style={styles.header}>
                <Image source={assets.defaultAvatar} style={styles.headerAvatar} />
                <Text style={styles.headerName} numberOfLines={1}>
                  {authedUser.displayName ?? authedUser.phoneMasked}
                </Text>
                <Text style={styles.headerTime}>
                  {formatDate(item.createdAt)}
                </Text>
              </View>
              <Text style={styles.content}>{item.body}</Text>
              <View style={styles.goods}>
                <Image source={assets.goodsOne} style={styles.goodsImg} />
                <View style={styles.goodsDesc}>
                  <Text style={styles.goodsName} numberOfLines={1}>
                    {item.prizeId
                      ? t('shares.prizeStory')
                      : t('shares.orivaStory')}
                  </Text>
                  <Pressable
                    onPress={() =>
                      void Share.share({
                        message: t('shares.sharedFrom', { story: item.body }),
                      })
                    }
                  >
                    <Text style={styles.goodsIssue}>
                      {t('shares.shareBtn')}
                    </Text>
                  </Pressable>
                </View>
              </View>
            </View>
          ))}
          {!shares.isLoading && !shareItems.length ? (
            <Text style={styles.empty}>{t('shares.empty')}</Text>
          ) : null}
        </>
      )}
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: '#f9f9f9', flexGrow: 1, paddingBottom: rpx(40) },
  // .share_bar { bg #fff; space-between; padding:18 66 14 68 }
  shareBar: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingTop: rpx(18),
    paddingBottom: rpx(14),
    paddingHorizontal: rpx(120),
    backgroundColor: '#fff',
  },
  shareBarItem: { alignItems: 'center' },
  // .share_bar_item_title { 28rpx; weight 700; #b9b9b9 }
  barTitle: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.bold,
  },
  // .active { 32rpx; #17273a }
  barTitleActive: { fontSize: rpx(32), color: '#17273a' },
  barUnderline: {
    width: rpx(34),
    height: rpx(12),
    marginTop: rpx(6),
    resizeMode: 'contain',
  },
  // --- tab 0: card_list_item ---
  // .card_list_item { margin:20 28 16 30; padding:30 0 30 22; bg #fff }
  cardItem: {
    position: 'relative',
    marginTop: rpx(20),
    marginHorizontal: rpx(29),
    paddingVertical: rpx(30),
    paddingLeft: rpx(22),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  // .card_list_item_title { 28rpx; #b9b9b9 }
  cardItemTitle: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .card_list_item_main { margin-left:6rpx; margin-top:16rpx; flex }
  cardItemMain: {
    marginLeft: rpx(6),
    marginTop: rpx(16),
    flexDirection: 'row',
  },
  // .card_list_item_main_img { 154rpx }
  cardImg: { width: rpx(154), height: rpx(154), borderRadius: rpx(8) },
  // .card_list_item_main_title { margin-left:30rpx; padding-top:20rpx; weight700 }
  cardName: {
    flex: 1,
    marginLeft: rpx(30),
    paddingTop: rpx(20),
    paddingRight: rpx(180),
    fontSize: rpx(30),
    color: '#000',
    fontFamily: theme.typography.family.bold,
  },
  // .card_list_comment { absolute; bottom:30rpx; right:30rpx }
  comment: { position: 'absolute', bottom: rpx(30), right: rpx(30) },
  // .card_list_comment_btn { 172x60rpx; gradient; radius 8rpx }
  commentBtn: {
    width: rpx(172),
    height: rpx(60),
    borderRadius: rpx(8),
    alignItems: 'center',
    justifyContent: 'center',
  },
  commentText: {
    fontSize: rpx(26),
    color: '#ad6701',
    fontFamily: theme.typography.family.bold,
  },
  // --- tab 1: main feed card (same as winner) ---
  main: {
    marginTop: rpx(16),
    paddingVertical: rpx(30),
    paddingHorizontal: rpx(26),
    backgroundColor: '#fff',
  },
  header: { flexDirection: 'row', alignItems: 'center' },
  headerAvatar: {
    width: rpx(56),
    height: rpx(56),
    borderRadius: rpx(28),
    marginRight: rpx(18),
    backgroundColor: '#eee',
  },
  headerName: {
    flex: 1,
    marginRight: rpx(18),
    fontSize: rpx(26),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  headerTime: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  content: {
    marginTop: rpx(20),
    marginBottom: rpx(20),
    fontSize: rpx(28),
    lineHeight: rpx(40),
    color: '#686868',
    fontFamily: theme.typography.family.regular,
  },
  goods: { flexDirection: 'row', alignItems: 'center' },
  goodsImg: {
    width: rpx(116),
    height: rpx(116),
    borderRadius: rpx(8),
    marginRight: rpx(14),
    backgroundColor: '#f4f4f4',
  },
  goodsDesc: {
    flex: 1,
    height: rpx(134),
    paddingVertical: rpx(24),
    paddingHorizontal: rpx(32),
    backgroundColor: '#f7f8f9',
    borderRadius: rpx(24),
    justifyContent: 'space-between',
  },
  goodsName: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  goodsIssue: {
    fontSize: rpx(26),
    color: theme.colors.primary,
    fontFamily: theme.typography.family.medium,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
