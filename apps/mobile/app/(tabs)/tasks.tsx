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
import { useI18n } from '@/i18n';
import { rpx, ICON, ARROW } from '@/rpx';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

const welfare = [
  {
    icon: assets.shareLink,
    title: 'Invite friends to earn rewards',
    tip: 'Invitation rewards up to Rs 1,250',
    route: '/referrals',
  },
  {
    icon: assets.vipGold,
    title: 'Become vip to get more rewards',
    tip: 'Unlimited rewards',
    route: '/(tabs)/member',
  },
  {
    icon: assets.earnRewards,
    title: 'Participate in finance to get more rewards',
    tip: 'Get fixed income every day',
    route: '/finance',
  },
] as const;

export default function TasksScreen() {
  const { t, formatMoney, labelFor } = useI18n();
  const user = useAuthStore((state) => state.user);
  const client = useQueryClient();
  const tasks = useQuery({ queryKey: ['tasks'], queryFn: api.tasks });
  const coins = useQuery({
    queryKey: ['coins'],
    queryFn: api.coins,
    enabled: Boolean(user),
  });
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
        void coins.refetch();
      }}
    >
      {/* Hero */}
      <ImageBackground
        source={assets.taskBackground}
        resizeMode="cover"
        style={styles.hero}
        imageStyle={styles.heroImage}
      >
        <View style={styles.heroTop}>
          <Text style={styles.heroTitle}>Mission Rewards</Text>
          <View style={styles.balance}>
            <Text style={styles.balanceValue}>{coins.data?.balance ?? 0}</Text>
            <Text style={styles.balanceLabel}>coins</Text>
          </View>
        </View>
        <Text style={styles.heroCopy}>More Rewards</Text>
      </ImageBackground>

      {/* Welfare cards */}
      <View style={styles.welfare}>
        {welfare.map((item, index) => (
          <Pressable
            key={item.title}
            onPress={() => router.push(item.route)}
            style={[styles.welfareItem, index > 0 && styles.welfareBorder]}
          >
            <Image source={item.icon} style={styles.welfareIcon} />
            <View style={styles.welfareCopy}>
              <Text style={styles.welfareTitle}>{item.title}</Text>
              <Text style={styles.welfareTip}>{item.tip}</Text>
            </View>
            <Image source={assets.arrowGrey} style={styles.welfareArrow} />
          </Pressable>
        ))}
      </View>

      <Text style={styles.sectionTitle}>Mission Rewards</Text>

      <QueryNotice
        loading={tasks.isLoading}
        error={tasks.error}
        onRetry={() => void tasks.refetch()}
      />

      <View style={styles.list}>
        {tasks.data?.items.map((task) => (
          <View key={task.id} style={styles.task}>
            <View style={styles.coin}>
              <Text style={styles.coinText}>★</Text>
            </View>
            <View style={styles.taskCopy}>
              <Text style={styles.taskTitle}>{task.title}</Text>
              <Text style={styles.taskDesc}>{task.description}</Text>
              <Text style={styles.taskReward}>
                {t('tasks.rewardMeta', {
                  coins: task.rewardCoins,
                  amount: task.rewardMinor
                    ? ` + ${formatMoney(task.rewardMinor)}`
                    : '',
                  period: labelFor(task.period),
                })}
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
                    ? 'Finish'
                    : 'Sign in'}
              </Text>
            </Pressable>
          </View>
        ))}
      </View>
      {!tasks.isLoading && !tasks.error && !tasks.data?.items.length ? (
        <Text style={styles.empty}>No missions available right now.</Text>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: theme.colors.background, paddingBottom: rpx(40) },
  hero: { height: rpx(340), paddingTop: rpx(24), paddingHorizontal: rpx(32) },
  heroImage: { resizeMode: 'cover' },
  heroTop: {
    marginTop: rpx(20),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  heroTitle: {
    fontSize: rpx(40),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  balance: {
    alignItems: 'center',
    paddingHorizontal: rpx(20),
    paddingVertical: rpx(8),
    borderRadius: rpx(16),
    backgroundColor: 'rgba(255,255,255,.25)',
  },
  balanceValue: {
    fontSize: rpx(32),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  balanceLabel: { fontSize: rpx(20), color: '#fff' },
  heroCopy: { marginTop: rpx(12), fontSize: rpx(26), color: '#fff', opacity: 0.9 },
  welfare: {
    marginTop: rpx(-90),
    marginHorizontal: rpx(24),
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    paddingHorizontal: rpx(28),
    ...theme.shadows.card,
  },
  welfareItem: {
    height: rpx(130),
    flexDirection: 'row',
    alignItems: 'center',
  },
  welfareBorder: {
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: '#f0f0f0',
  },
  welfareIcon: { width: ICON, height: ICON },
  welfareCopy: { flex: 1, marginLeft: rpx(22) },
  welfareTitle: {
    fontSize: rpx(28),
    fontFamily: theme.typography.family.medium,
    color: theme.colors.ink,
  },
  welfareTip: {
    marginTop: rpx(6),
    fontSize: rpx(22),
    color: theme.colors.primary,
  },
  welfareArrow: { width: ARROW, height: ARROW, tintColor: '#c9c9c9' },
  sectionTitle: {
    marginTop: rpx(36),
    marginHorizontal: rpx(24),
    fontSize: rpx(34),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  list: { marginTop: rpx(20), marginHorizontal: rpx(24) },
  task: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: '#fff',
    borderRadius: rpx(20),
    padding: rpx(24),
    marginBottom: rpx(20),
  },
  coin: {
    width: rpx(72),
    height: rpx(72),
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: rpx(36),
    backgroundColor: '#FFF3D1',
  },
  coinText: { fontSize: rpx(34), color: theme.colors.warning },
  taskCopy: { flex: 1, marginHorizontal: rpx(20) },
  taskTitle: {
    fontSize: rpx(28),
    fontFamily: theme.typography.family.medium,
    color: theme.colors.ink,
  },
  taskDesc: {
    marginTop: rpx(6),
    fontSize: rpx(22),
    color: theme.colors.textMuted,
  },
  taskReward: {
    marginTop: rpx(8),
    fontSize: rpx(22),
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
  },
  claimBtn: {
    paddingHorizontal: rpx(30),
    height: rpx(64),
    borderRadius: rpx(32),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: theme.colors.accentEnd,
  },
  claimText: {
    fontSize: rpx(24),
    fontFamily: theme.typography.family.bold,
    color: '#7a3d00',
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
