import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Alert,
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
import { useI18n, type TranslationKey } from '@/i18n';
import { rpx } from '@/rpx';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

// ORich `pages/task/task` (scope 04b9e9ca): a 480rpx hero (`task_bj`) with a
// recent-winner notice bar, then a white "welfare" card and a white "task" card
// — each with a centered title + yellow underline strip (title_stp). Welfare
// rows have a right-side outline pill; task rows have a gradient claim pill.
const welfare: ReadonlyArray<{
  titleKey: TranslationKey;
  tipKey: TranslationKey;
  route: string;
}> = [
  {
    titleKey: 'tasks.heroTitle',
    tipKey: 'tasks.heroCopy',
    route: '/referrals',
  },
];

export default function TasksScreen() {
  const { t, formatMoney, labelFor } = useI18n();
  const user = useAuthStore((state) => state.user);
  const client = useQueryClient();
  const tasks = useQuery({ queryKey: ['tasks'], queryFn: api.tasks });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const topWinner = winners.data?.items[0];

  const claim = useMutation({
    mutationFn: api.claimTask,
    onSuccess: (result) => {
      void client.invalidateQueries({ queryKey: ['coins'] });
      void client.invalidateQueries({ queryKey: ['wallet'] });
      Alert.alert(
        t('tasks.rewardCredited'),
        result.rewardMinor
          ? t('tasks.rewardCoinsCash', {
              coins: result.rewardCoins,
              amount: formatMoney(result.rewardMinor),
            })
          : t('tasks.rewardCoins', { coins: result.rewardCoins }),
      );
    },
    onError: (error) => Alert.alert(t('tasks.unavailable'), error.message),
  });

  return (
    <Screen
      contentStyle={styles.root}
      refreshing={tasks.isRefetching}
      onRefresh={() => {
        void tasks.refetch();
        void winners.refetch();
      }}
    >
      {/* .task_bj hero with a recent-winner notice bar */}
      <ImageBackground
        source={assets.taskBackground}
        resizeMode="cover"
        style={styles.hero}
        imageStyle={styles.heroImage}
      >
        {topWinner ? (
          <View style={styles.notice}>
            <Image source={assets.defaultAvatar} style={styles.noticeAvatar} />
            <Text style={styles.noticeText} numberOfLines={1}>
              {t('tasks.recentWin', { name: topWinner.displayName })}
            </Text>
          </View>
        ) : null}
      </ImageBackground>

      {/* .task_main pulled up over the hero */}
      <View style={styles.main}>
        {/* welfare card */}
        <View style={styles.card}>
          <Text style={styles.cardTitle}>{t('tasks.welfare')}</Text>
          <View style={styles.strip} />
          {welfare.map((item, index) => (
            <View
              key={item.titleKey}
              style={[styles.welfareRow, index > 0 && styles.rowBorder]}
            >
              <View style={styles.welfareCopy}>
                <Text style={styles.rowName}>{t(item.titleKey)}</Text>
                <Text style={styles.rowTip}>{t(item.tipKey)}</Text>
              </View>
              <Pressable
                onPress={() => router.push(item.route as never)}
                style={styles.outlineBtn}
              >
                <Text style={styles.outlineBtnText}>{t('tasks.go')}</Text>
              </Pressable>
            </View>
          ))}
        </View>

        {/* task card */}
        <View style={styles.card}>
          <Text style={styles.cardTitle}>{t('tasks.title')}</Text>
          <View style={styles.strip} />

          <QueryNotice
            loading={tasks.isLoading}
            error={tasks.error}
            onRetry={() => void tasks.refetch()}
          />

          {tasks.data?.items.map((task, index) => (
            <View
              key={task.id}
              style={[styles.taskRow, index > 0 && styles.rowBorder]}
            >
              <View style={styles.taskIcon}>
                <Image source={assets.earnRewards} style={styles.taskIconImg} />
              </View>
              <View style={styles.taskCopy}>
                <Text style={styles.rowName} numberOfLines={1}>
                  {task.title}
                </Text>
                <View style={styles.rewardRow}>
                  <Image source={assets.vipGold} style={styles.coinIcon} />
                  <Text style={styles.rewardText}>
                    {task.rewardMinor
                      ? formatMoney(task.rewardMinor)
                      : t('tasks.rewardCoins', { coins: task.rewardCoins })}
                  </Text>
                </View>
                <Text style={styles.taskDetail} numberOfLines={2}>
                  {task.description}
                </Text>
              </View>
              <Pressable
                onPress={() =>
                  user ? claim.mutate(task.id) : router.push('/login')
                }
                style={styles.claimBtn}
              >
                <Text style={styles.claimText}>
                  {claim.isPending && claim.variables === task.id
                    ? '…'
                    : user
                      ? t('tasks.claim')
                      : t('tasks.signIn')}
                </Text>
              </Pressable>
            </View>
          ))}
          {!tasks.isLoading && !tasks.error && !tasks.data?.items.length ? (
            <Text style={styles.empty}>{t('tasks.empty')}</Text>
          ) : null}
        </View>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: '#f9f9f9', paddingBottom: rpx(40) },
  // .task_bj { height:480rpx; padding-top:88rpx }
  hero: { height: rpx(480), paddingTop: rpx(88), justifyContent: 'flex-start' },
  heroImage: { resizeMode: 'cover' },
  // recent-winner notice bar
  notice: {
    marginTop: rpx(30),
    marginHorizontal: rpx(30),
    height: rpx(70),
    paddingHorizontal: rpx(24),
    borderRadius: rpx(35),
    backgroundColor: 'rgba(0,0,0,0.15)',
    flexDirection: 'row',
    alignItems: 'center',
  },
  noticeAvatar: {
    width: rpx(48),
    height: rpx(48),
    borderRadius: rpx(24),
    marginRight: rpx(16),
    backgroundColor: '#eee',
  },
  noticeText: {
    flex: 1,
    fontSize: rpx(24),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  // .task_main { margin-top:-200rpx; padding 0 14/16 }
  main: { marginTop: rpx(-200), paddingHorizontal: rpx(16) },
  // .task_main_welfare / _order { bg #fff; radius 10rpx }
  card: {
    marginBottom: rpx(16),
    paddingVertical: rpx(26),
    paddingHorizontal: rpx(26),
    backgroundColor: '#fff',
    borderRadius: rpx(10),
  },
  // .title { 33rpx; center }
  cardTitle: {
    fontSize: rpx(33),
    textAlign: 'center',
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .title_stp { 156x23rpx; #ffcb00; centered }
  strip: {
    width: rpx(156),
    height: rpx(16),
    borderRadius: rpx(8),
    alignSelf: 'center',
    marginTop: rpx(-14),
    marginBottom: rpx(20),
    backgroundColor: '#ffcb00',
    opacity: 0.85,
  },
  // welfare row
  welfareRow: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: rpx(22),
  },
  rowBorder: {
    borderTopWidth: rpx(1),
    borderTopColor: '#f9f9f9',
  },
  welfareCopy: { flex: 1, marginRight: rpx(16) },
  rowName: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  rowTip: {
    marginTop: rpx(12),
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  // .task_main_welfare_strip_btn { 164x62rpx; white; orange border/text; radius 205 }
  outlineBtn: {
    width: rpx(164),
    height: rpx(62),
    borderRadius: rpx(205),
    borderWidth: rpx(2),
    borderColor: '#ee5016',
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  outlineBtnText: {
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.medium,
  },
  // task row
  taskRow: {
    flexDirection: 'row',
    alignItems: 'flex-start',
    paddingVertical: rpx(24),
  },
  // .timg { 148x148rpx; radius 10rpx }
  taskIcon: {
    width: rpx(148),
    height: rpx(148),
    borderRadius: rpx(10),
    backgroundColor: '#fff7ec',
    alignItems: 'center',
    justifyContent: 'center',
  },
  taskIconImg: { width: rpx(88), height: rpx(88), resizeMode: 'contain' },
  taskCopy: { flex: 1, marginLeft: rpx(24), paddingRight: rpx(150) },
  rewardRow: { flexDirection: 'row', alignItems: 'center', marginTop: rpx(14) },
  coinIcon: { width: rpx(34), height: rpx(34), marginRight: rpx(6) },
  // .content_balances { 33rpx; #ff5c5c }
  rewardText: {
    fontSize: rpx(33),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.medium,
  },
  // .content_detail { 27rpx; #b9b9b9 }
  taskDetail: {
    marginTop: rpx(14),
    fontSize: rpx(27),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .taskbtn { 164x62rpx; gradient; absolute bottom-right }
  claimBtn: {
    position: 'absolute',
    right: rpx(6),
    bottom: rpx(24),
    width: rpx(164),
    height: rpx(62),
    borderRadius: rpx(205),
    backgroundColor: '#ee5016',
    alignItems: 'center',
    justifyContent: 'center',
  },
  claimText: {
    fontSize: rpx(26),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  empty: {
    padding: rpx(40),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
