import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Alert, ImageBackground, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

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
      contentStyle={styles.page}
      refreshing={tasks.isRefetching}
      onRefresh={() => {
        void tasks.refetch();
        void coins.refetch();
      }}
    >
      <View style={styles.heading}>
        <View>
          <Text style={styles.title}>{t('tasks.title')}</Text>
          <Text style={styles.subtitle}>{t('tasks.subtitle')}</Text>
        </View>
        <View style={styles.balance}>
          <Text style={styles.balanceValue}>{coins.data?.balance ?? 0}</Text>
          <Text style={styles.balanceLabel}>{t('tasks.coins')}</Text>
        </View>
      </View>
      <ImageBackground
        imageStyle={styles.heroImage}
        resizeMode="cover"
        source={assets.taskBackground}
        style={styles.hero}
      >
        <Text style={styles.heroTitle}>{t('tasks.heroTitle')}</Text>
        <Text style={styles.heroCopy}>{t('tasks.heroCopy')}</Text>
      </ImageBackground>
      <QueryNotice
        loading={tasks.isLoading}
        error={tasks.error}
        onRetry={() => void tasks.refetch()}
      />
      {tasks.data?.items.map((task) => (
        <View key={task.id} style={styles.task}>
          <View style={styles.coin}>
            <Text style={styles.coinText}>★</Text>
          </View>
          <View style={styles.copy}>
            <Text style={styles.taskTitle}>{task.title}</Text>
            <Text style={styles.description}>{task.description}</Text>
            <Text style={styles.reward}>
              {t('tasks.rewardMeta', {
                coins: task.rewardCoins,
                amount: task.rewardMinor
                  ? ` + ${formatMoney(task.rewardMinor)}`
                  : '',
                period: labelFor(task.period),
              })}
            </Text>
          </View>
          <View style={styles.action}>
            <GradientButton
              compact
              loading={claim.isPending && claim.variables === task.id}
              onPress={() =>
                user ? claim.mutate(task.id) : router.push('/login')
              }
            >
              {user ? t('tasks.claim') : t('tasks.signIn')}
            </GradientButton>
          </View>
        </View>
      ))}
      {!tasks.isLoading && !tasks.error && !tasks.data?.items.length ? (
        <Text style={styles.empty}>{t('tasks.empty')}</Text>
      ) : null}
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  heading: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  subtitle: { marginTop: 4, color: theme.colors.textMuted },
  balance: {
    alignItems: 'center',
    paddingHorizontal: 12,
    paddingVertical: 8,
    borderRadius: 10,
    backgroundColor: '#FFF5DD',
  },
  balanceValue: {
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  balanceLabel: { color: theme.colors.warning, fontSize: 10 },
  hero: {
    height: 220,
    marginVertical: 16,
    justifyContent: 'flex-end',
    padding: 20,
  },
  heroImage: { borderRadius: theme.radii.xl },
  heroTitle: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  heroCopy: { marginTop: 5, color: theme.colors.surface },
  task: {
    marginBottom: 12,
    flexDirection: 'row',
    alignItems: 'center',
    padding: 16,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  coin: {
    width: 44,
    height: 44,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 22,
    backgroundColor: '#FFF3D1',
  },
  coinText: { color: theme.colors.warning, fontSize: 22 },
  copy: { flex: 1, marginHorizontal: 12 },
  taskTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  description: { marginTop: 3, color: theme.colors.textMuted, fontSize: 11 },
  reward: {
    marginTop: 5,
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
    fontSize: 12,
  },
  action: { maxWidth: 100 },
  empty: { padding: 32, textAlign: 'center', color: theme.colors.textMuted },
});
