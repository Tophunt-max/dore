import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Redirect } from 'expo-router';
import { Share, StyleSheet, Text, View } from 'react-native';
import { useAuthStore } from '@/stores/auth';
import { api } from '@/api/endpoints';
import { ListRow } from '@/components/ListRow';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function MySharesScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { formatDate, t } = useI18n();
  const client = useQueryClient();
  const query = useQuery({ queryKey: ['shares'], queryFn: api.shares });
  const remove = useMutation({
    mutationFn: api.deleteShare,
    onSuccess: () => client.invalidateQueries({ queryKey: ['shares'] }),
  });
  return (
    <Screen
      header={<TopBar title={t('shares.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <View style={styles.summary}>
          <Text style={styles.summaryValue}>
            {query.data?.items.length ?? 0}
          </Text>
          <View style={styles.flex}>
            <Text style={styles.summaryTitle}>{t('shares.published')}</Text>
            <Text style={styles.summaryCopy}>{t('shares.summary')}</Text>
          </View>
        </View>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        <View style={styles.list}>
          {query.data?.items.map((item) => (
            <ListRow
              key={item.id}
              onPress={() =>
                void Share.share({
                  message: t('shares.sharedFrom', { story: item.body }),
                })
              }
              subtitle={`${item.body}\n${formatDate(item.createdAt)}`}
              title={
                item.prizeId ? t('shares.prizeStory') : t('shares.orivaStory')
              }
              trailing={
                <Text onPress={() => remove.mutate(item.id)}>
                  <StatusPill label={t('common.remove')} tone="danger" />
                </Text>
              }
            />
          ))}
        </View>
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('shares.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  summary: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: '#FFF1EA',
  },
  summaryValue: {
    marginRight: 16,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 38,
  },
  flex: { flex: 1 },
  summaryTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  summaryCopy: {
    marginTop: 4,
    color: theme.colors.textSecondary,
    fontSize: 12,
  },
  list: { overflow: 'hidden', borderRadius: theme.radii.xl },
  empty: { padding: 32, textAlign: 'center', color: theme.colors.textMuted },
});
