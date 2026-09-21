import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import {
  Alert,
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
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/game/game` (scope 522b74ee): a lucky-draw game over the
// `bg_game` art with a points balance, round label and green/violet/red colour
// buttons. Kept strictly NON-MONETARY per the app's compliance model — picking
// a colour and playing only awards non-monetary points (no wager, no payout).
const COLORS = [
  { key: 'green', bg: '#55e273', labelKey: 'game.green' as const },
  { key: 'violet', bg: '#ff62ff', labelKey: 'game.violet' as const },
  { key: 'red', bg: '#ff4343', labelKey: 'game.red' as const },
];

export default function GameScreen() {
  const { t } = useI18n();
  const client = useQueryClient();
  const games = useQuery({ queryKey: ['games'], queryFn: api.games });
  const coins = useQuery({ queryKey: ['coins'], queryFn: api.coins });
  const [picked, setPicked] = useState<string | null>(null);

  const game = games.data?.items[0];
  const play = useMutation({
    mutationFn: () => api.playGame(game!.id),
    onSuccess: (result) => {
      void client.invalidateQueries({ queryKey: ['coins'] });
      Alert.alert(
        t('game.playComplete'),
        t('game.playResult', {
          points: result.pointsAwarded,
          sequence: result.sequence,
        }),
      );
    },
    onError: (error) => Alert.alert(t('game.unable'), error.message),
  });

  return (
    <Screen
      header={
        <TopBar
          title={t('game.title')}
          white
          canGoBack={false}
          actionLabel={t('game.rulesNav')}
          onAction={() => router.push('/rules')}
        />
      }
      contentStyle={styles.page}
      refreshing={games.isRefetching}
      onRefresh={() => void games.refetch()}
    >
      {/* game_lucky — bg_game art */}
      <ImageBackground
        source={assets.gameBackground}
        resizeMode="stretch"
        style={styles.lucky}
      >
        {/* balance + recharge */}
        <View style={styles.info}>
          <View>
            <Text style={styles.balanceTitle}>{t('game.balance')}</Text>
            <Text style={styles.balancePrice}>
              <Text style={styles.font64}>{coins.data?.balance ?? 0}</Text>
            </Text>
          </View>
          <Pressable
            style={styles.recharge}
            onPress={() => router.push('/wallet/recharge')}
          >
            <Text style={styles.rechargeText}>{t('game.recharge')}</Text>
          </Pressable>
        </View>

        {/* round + pick prompt */}
        <View style={styles.join}>
          <Text style={styles.period}>
            {t('game.period')} #{(coins.data?.balance ?? 0) + 1000}
          </Text>
          <Text style={styles.pick}>{t('game.pick')}</Text>

          {/* colour buttons */}
          <View style={styles.colors}>
            {COLORS.map((c) => (
              <Pressable
                key={c.key}
                onPress={() => setPicked(c.key)}
                style={[
                  styles.colorBtn,
                  { backgroundColor: c.bg },
                  picked === c.key && styles.colorPicked,
                ]}
              >
                <Text style={styles.colorText}>{t(c.labelKey)}</Text>
              </Pressable>
            ))}
          </View>
        </View>
      </ImageBackground>

      <QueryNotice
        loading={games.isLoading}
        error={games.error}
        onRetry={() => void games.refetch()}
      />

      {game ? (
        <View style={styles.playRow}>
          <Text style={styles.meta}>
            {t('game.meta', {
              daily: game.dailyPlayLimit,
              points: game.pointsPerPlay,
            })}
          </Text>
          <Pressable
            disabled={play.isPending || !picked}
            onPress={() => play.mutate()}
            style={[styles.playBtn, !picked && styles.playDisabled]}
          >
            <Text style={styles.playText}>
              {play.isPending ? t('game.playing') : t('game.play')}
            </Text>
          </Pressable>
        </View>
      ) : !games.isLoading ? (
        <Text style={styles.empty}>{t('game.empty')}</Text>
      ) : null}

      <Text style={styles.disclaimer}>{t('game.nonMonetary')}</Text>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .game { background:#f9f9f9; padding-bottom:160rpx }
  page: { backgroundColor: '#f9f9f9', flexGrow: 1, paddingBottom: rpx(60) },
  // .game_lucky { margin-top:34rpx; height:918rpx; bg art }
  lucky: {
    marginTop: rpx(34),
    marginHorizontal: rpx(20),
    minHeight: rpx(560),
    paddingBottom: rpx(40),
  },
  // .game_lucky_info { height:160rpx; padding:32 36 0 42 }
  info: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingTop: rpx(40),
    paddingHorizontal: rpx(42),
  },
  balanceTitle: {
    fontSize: rpx(32),
    color: '#ec991f',
    fontFamily: theme.typography.family.medium,
  },
  balancePrice: {
    marginTop: rpx(14),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
  },
  font64: { fontSize: rpx(64) },
  // .game_lucky_info_recharge { 166x54rpx; #fa5b21; pill }
  recharge: {
    height: rpx(54),
    paddingHorizontal: rpx(28),
    borderRadius: rpx(199),
    backgroundColor: '#fa5b21',
    alignItems: 'center',
    justifyContent: 'center',
  },
  rechargeText: {
    color: '#fff',
    fontSize: rpx(26),
    fontFamily: theme.typography.family.regular,
  },
  // .game_lucky_join { margin-top:40rpx; padding:58 58 0 68 }
  join: { marginTop: rpx(40), paddingHorizontal: rpx(58) },
  period: {
    fontSize: rpx(30),
    color: '#fcedcf',
    fontFamily: theme.typography.family.medium,
  },
  pick: {
    marginTop: rpx(20),
    fontSize: rpx(28),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  colors: {
    marginTop: rpx(40),
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  colorBtn: {
    flex: 1,
    marginHorizontal: rpx(10),
    height: rpx(96),
    borderRadius: rpx(12),
    alignItems: 'center',
    justifyContent: 'center',
  },
  colorPicked: { borderWidth: rpx(6), borderColor: '#fff' },
  colorText: {
    color: '#fff',
    fontSize: rpx(30),
    fontFamily: theme.typography.family.bold,
  },
  playRow: {
    marginTop: rpx(30),
    marginHorizontal: rpx(30),
    padding: rpx(24),
    borderRadius: rpx(16),
    backgroundColor: '#fff',
  },
  meta: {
    fontSize: rpx(24),
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  playBtn: {
    marginTop: rpx(16),
    height: rpx(88),
    borderRadius: rpx(44),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: theme.colors.primary,
  },
  playDisabled: { backgroundColor: '#b9b9b9' },
  playText: {
    color: '#fff',
    fontSize: rpx(30),
    fontFamily: theme.typography.family.bold,
  },
  empty: { padding: rpx(60), textAlign: 'center', color: theme.colors.textMuted },
  disclaimer: {
    marginTop: rpx(30),
    paddingHorizontal: rpx(40),
    textAlign: 'center',
    fontSize: rpx(24),
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
});
