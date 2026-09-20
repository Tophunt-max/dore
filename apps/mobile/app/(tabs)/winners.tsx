import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Image,
  Pressable,
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function WinnersScreen() {
  const { width } = useWindowDimensions();
  const { t, formatDate } = useI18n();
  const query = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  return (
    <Screen
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.heading}>
        <View>
          <Text style={styles.title}>{t('winners.title')}</Text>
          <Text style={styles.subtitle}>{t('winners.subtitle')}</Text>
        </View>
        <Pressable
          onPress={() => router.push('/prize-pool')}
          style={styles.pool}
        >
          <Text style={styles.poolText}>{t('home.activePool')}</Text>
        </Pressable>
      </View>
      <View
        style={[
          styles.hero,
          { minHeight: Math.max(130, Math.min(200, width * 0.38)) },
        ]}
      >
        <Text style={styles.heroStar}>★</Text>
        <Text style={styles.heroTitle}>{t('winners.subtitle')}</Text>
      </View>
      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />
      <View style={styles.list}>
        {query.data?.items.map((winner, index) => (
          <Pressable
            key={winner.id}
            onPress={() =>
              router.push({
                pathname: '/calculation',
                params: { campaignId: winner.campaignId },
              })
            }
            style={styles.row}
          >
            <View style={styles.rank}>
              <Text style={styles.rankText}>{index + 1}</Text>
            </View>
            {winner.avatarUrl ? (
              <Image source={{ uri: winner.avatarUrl }} style={styles.avatar} />
            ) : (
              <View style={styles.avatar}>
                <Text style={styles.avatarText}>
                  {winner.displayName.slice(0, 1).toUpperCase()}
                </Text>
              </View>
            )}
            <View style={styles.copy}>
              <Text style={styles.name}>{winner.displayName}</Text>
              <Text style={styles.prize}>{winner.productTitle}</Text>
              <Text style={styles.time}>
                {t('winners.announced', {
                  date: formatDate(winner.announcedAt),
                })}
              </Text>
            </View>
            <Text style={styles.arrow}>›</Text>
          </Pressable>
        ))}
      </View>
      {!query.isLoading && !query.error && !query.data?.items.length ? (
        <Text style={styles.empty}>{t('home.noWinners')}</Text>
      ) : null}
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  heading: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  subtitle: { marginTop: 4, color: theme.colors.textMuted },
  pool: { padding: 10, borderRadius: 20, backgroundColor: '#E8F5EE' },
  poolText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 11,
  },
  hero: {
    marginTop: theme.spacing.lg,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.primary,
  },
  heroStar: { fontSize: 38, color: theme.colors.accentStart },
  heroTitle: {
    marginTop: 8,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
  },
  list: {
    marginTop: theme.spacing.lg,
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
  },
  row: {
    minHeight: 86,
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.md,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: theme.colors.border,
    backgroundColor: theme.colors.surface,
  },
  rank: {
    width: 28,
    height: 28,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 14,
    backgroundColor: '#FFF5DD',
  },
  rankText: {
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
  },
  avatar: {
    width: 44,
    height: 44,
    marginLeft: 12,
    borderRadius: 22,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: '#FFF1EA',
  },
  avatarText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  copy: { flex: 1, marginLeft: 12 },
  name: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  prize: { marginTop: 3, color: theme.colors.primary },
  time: { marginTop: 3, color: theme.colors.textMuted, fontSize: 10 },
  arrow: { fontSize: 24, color: theme.colors.textMuted },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
