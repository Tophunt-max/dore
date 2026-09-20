import { useMutation, useQuery } from '@tanstack/react-query';
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
import { theme } from '@/theme';

export default function GameScreen() {
  const { t } = useI18n();
  const query = useQuery({ queryKey: ['games'], queryFn: api.games });
  const play = useMutation({
    mutationFn: api.playGame,
    onSuccess: (result) =>
      Alert.alert(
        t('game.playComplete'),
        t('game.playResult', {
          points: result.pointsAwarded,
          sequence: result.sequence,
        }),
      ),
    onError: (error) => Alert.alert(t('game.unable'), error.message),
  });
  return (
    <Screen
      header={<TopBar title={t('game.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <ImageBackground
          source={assets.gameBackground}
          resizeMode="cover"
          imageStyle={styles.image}
          style={styles.hero}
        >
          <Text style={styles.title}>{t('game.heroTitle')}</Text>
          <Text style={styles.copy}>{t('game.heroCopy')}</Text>
        </ImageBackground>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((game) => (
          <View key={game.id} style={styles.card}>
            <Text style={styles.gameTitle}>{game.title}</Text>
            <Text style={styles.description}>{game.description}</Text>
            <Text style={styles.rules}>{game.rules}</Text>
            <Text style={styles.meta}>
              {t('game.meta', {
                daily: game.dailyPlayLimit,
                points: game.pointsPerPlay,
              })}
            </Text>
            <Pressable
              disabled={play.isPending}
              onPress={() => play.mutate(game.id)}
              style={styles.button}
            >
              <Text style={styles.buttonText}>
                {play.isPending ? t('game.playing') : t('game.play')}
              </Text>
            </Pressable>
          </View>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('game.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  hero: {
    minHeight: 300,
    padding: theme.spacing.xl,
    justifyContent: 'flex-end',
  },
  image: { borderRadius: theme.radii.xl },
  title: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  copy: { marginTop: 8, color: theme.colors.surface, lineHeight: 19 },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  gameTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  description: {
    marginTop: 8,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  rules: {
    marginTop: 12,
    padding: 12,
    borderRadius: 10,
    color: theme.colors.textSecondary,
    backgroundColor: theme.colors.background,
  },
  meta: { marginTop: 10, color: theme.colors.textMuted, fontSize: 12 },
  button: {
    marginTop: 14,
    padding: 14,
    alignItems: 'center',
    borderRadius: 24,
    backgroundColor: theme.colors.primary,
  },
  buttonText: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
  },
  empty: { padding: 32, textAlign: 'center', color: theme.colors.textMuted },
});
