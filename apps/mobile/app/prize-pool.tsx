import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Pressable,
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function PrizePoolScreen() {
  const { width } = useWindowDimensions();
  const { t, formatMoney } = useI18n();
  const campaigns = useQuery({
    queryKey: ['campaigns'],
    queryFn: () => api.campaigns(),
  });
  const winners = useQuery({ queryKey: ['winners'], queryFn: api.winners });
  const items = (campaigns.data?.items ?? []).filter(
    (c) => c.status === 'active',
  );
  const total = items.reduce(
    (sum, c) => sum + c.entryPriceMinor * c.totalEntries,
    0,
  );
  return (
    <Screen
      header={<TopBar title={t('home.activePool')} />}
      refreshing={campaigns.isRefetching}
      onRefresh={() => void campaigns.refetch()}
    >
      <View style={styles.page}>
        <View
          style={[
            styles.hero,
            { minHeight: Math.max(170, Math.min(240, width * 0.5)) },
          ]}
        >
          <Text style={styles.label}>{t('home.activePool')}</Text>
          <Text style={styles.value}>{formatMoney(total)}</Text>
          <Text style={styles.note}>
            {t('home.poolInfo')}.{' '}
            {t('pool.winnersPublished', {
              count: winners.data?.items.length ?? 0,
            })}
          </Text>
        </View>
        <QueryNotice
          loading={campaigns.isLoading}
          error={campaigns.error}
          onRetry={() => void campaigns.refetch()}
        />
        {items.map((c) => {
          const progress = c.totalEntries
            ? Math.round((c.soldEntries / c.totalEntries) * 100)
            : 0;
          return (
            <Pressable
              key={c.id}
              onPress={() => router.push(`/products/${c.id}`)}
              style={styles.card}
            >
              <View style={styles.row}>
                <Text style={styles.title}>{c.product.title}</Text>
                <Text style={styles.amount}>
                  {formatMoney(
                    c.entryPriceMinor * c.totalEntries,
                    c.product.currency,
                  )}
                </Text>
              </View>
              <View style={styles.track}>
                <View
                  style={[
                    styles.fill,
                    { width: `${Math.min(100, progress)}%` },
                  ]}
                />
              </View>
              <Text style={styles.meta}>
                {t('pool.entriesProgress', {
                  sold: c.soldEntries,
                  total: c.totalEntries,
                  progress,
                })}
              </Text>
            </Pressable>
          );
        })}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  hero: {
    justifyContent: 'flex-end',
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.primary,
  },
  label: { color: '#FFF3D1' },
  value: {
    marginTop: 6,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: 34,
  },
  note: { marginTop: 8, color: '#FFF3D1', lineHeight: 19 },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  row: { flexDirection: 'row', gap: 10 },
  title: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  amount: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  track: {
    height: 7,
    marginTop: 16,
    borderRadius: 4,
    overflow: 'hidden',
    backgroundColor: theme.colors.border,
  },
  fill: { height: '100%', backgroundColor: theme.colors.primary },
  meta: { marginTop: 8, color: theme.colors.textMuted, fontSize: 11 },
});
