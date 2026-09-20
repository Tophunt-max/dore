import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { ListRow } from '@/components/ListRow';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function TeamScreen() {
  const { t, formatDate, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['team'], queryFn: api.team });
  return (
    <Screen
      header={
        <TopBar
          actionLabel={t('common.invite')}
          onAction={() => router.push('/referrals')}
          title={t('team.title')}
        />
      }
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <View style={styles.stats}>
          <Text style={styles.count}>{query.data?.items.length ?? 0}</Text>
          <Text style={styles.label}>{t('team.members')}</Text>
        </View>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        <View style={styles.list}>
          {query.data?.items.map((m) => (
            <ListRow
              key={m.id}
              leading={
                <View style={styles.avatar}>
                  <Text style={styles.avatarText}>
                    {(m.displayName ?? '?').slice(0, 1)}
                  </Text>
                </View>
              }
              onPress={() => router.push(`/team/${m.id}`)}
              subtitle={`${m.phoneMasked} · ${t('team.joined', { date: formatDate(m.createdAt) })}`}
              title={m.displayName ?? m.phoneMasked}
              trailing={
                <StatusPill
                  label={labelFor(m.status)}
                  tone={
                    m.status === 'qualified' || m.status === 'rewarded'
                      ? 'success'
                      : 'brand'
                  }
                />
              }
            />
          ))}
        </View>
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('team.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  stats: {
    alignItems: 'center',
    padding: 20,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  count: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    fontSize: 32,
  },
  label: { color: theme.colors.surface },
  list: { overflow: 'hidden', borderRadius: theme.radii.xl },
  avatar: {
    width: 42,
    height: 42,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 21,
    backgroundColor: '#FFF1EA',
  },
  avatarText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
