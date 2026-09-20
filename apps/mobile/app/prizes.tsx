import { useQuery } from '@tanstack/react-query';
import { Redirect, router } from 'expo-router';
import { useAuthStore } from '@/stores/auth';
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
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function PrizesScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { width } = useWindowDimensions();
  const { t, formatDate, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['prizes'], queryFn: api.prizes });
  return (
    <Screen
      header={<TopBar title={t('prizes.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View
        style={[
          styles.hero,
          { minHeight: Math.max(150, Math.min(220, width * 0.42)) },
        ]}
      >
        <Text style={styles.heroStar}>★</Text>
        <Text style={styles.heroTitle}>{t('prizes.title')}</Text>
      </View>
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((p) => (
          <Pressable
            key={p.id}
            onPress={() => router.push(`/prizes/${p.id}`)}
            style={styles.card}
          >
            <View style={styles.icon}>
              <Text style={styles.iconText}>★</Text>
            </View>
            <View style={styles.copy}>
              <Text style={styles.title}>{p.productTitle}</Text>
              <Text style={styles.date}>{formatDate(p.createdAt)}</Text>
              <View style={styles.pill}>
                <StatusPill
                  label={labelFor(p.status)}
                  tone={
                    p.status === 'delivered'
                      ? 'success'
                      : p.status === 'unclaimed'
                        ? 'warning'
                        : 'brand'
                  }
                />
              </View>
            </View>
            <Text style={styles.arrow}>›</Text>
          </Pressable>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('prizes.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  hero: {
    margin: theme.spacing.lg,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.primary,
  },
  heroStar: { color: theme.colors.accentStart, fontSize: 40 },
  heroTitle: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  page: { paddingHorizontal: theme.spacing.lg, gap: theme.spacing.md },
  card: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
    ...theme.shadows.card,
  },
  icon: {
    width: 58,
    height: 58,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 29,
    backgroundColor: '#FFF5DD',
  },
  iconText: { color: theme.colors.warning, fontSize: 26 },
  copy: { flex: 1, marginLeft: 12 },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  date: { marginTop: 4, color: theme.colors.textMuted, fontSize: 11 },
  pill: { marginTop: 8 },
  arrow: { color: theme.colors.textMuted, fontSize: 24 },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
