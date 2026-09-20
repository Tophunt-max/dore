import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function NotificationsScreen() {
  const { formatDate, t } = useI18n();
  const client = useQueryClient();
  const query = useQuery({
    queryKey: ['notifications'],
    queryFn: api.notifications,
  });
  const read = useMutation({
    mutationFn: api.readNotification,
    onSuccess: () => client.invalidateQueries({ queryKey: ['notifications'] }),
  });
  const readAll = useMutation({
    mutationFn: api.readAllNotifications,
    onSuccess: () => client.invalidateQueries({ queryKey: ['notifications'] }),
  });
  return (
    <Screen
      header={
        <TopBar
          title={t('notifications.title')}
          actionLabel={t('notifications.readAll')}
          onAction={() => readAll.mutate()}
        />
      }
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((item) => (
          <Pressable
            key={item.id}
            onPress={() => !item.readAt && read.mutate(item.id)}
            style={[styles.card, !item.readAt && styles.unread]}
          >
            <View style={styles.icon}>
              <Text style={styles.iconText}>{item.readAt ? '✓' : '●'}</Text>
            </View>
            <View style={styles.copy}>
              <Text style={styles.title}>{item.title}</Text>
              <Text style={styles.body}>{item.body}</Text>
              <Text style={styles.date}>{formatDate(item.createdAt)}</Text>
            </View>
          </Pressable>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('notifications.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.md },
  card: {
    flexDirection: 'row',
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  unread: { borderLeftWidth: 4, borderLeftColor: theme.colors.primary },
  icon: {
    width: 38,
    height: 38,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 19,
    backgroundColor: '#FFF1EA',
  },
  iconText: { color: theme.colors.primary },
  copy: { flex: 1, marginLeft: 12 },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  body: { marginTop: 5, color: theme.colors.textSecondary, lineHeight: 19 },
  date: { marginTop: 8, color: theme.colors.textMuted, fontSize: 11 },
  empty: { padding: 40, textAlign: 'center', color: theme.colors.textMuted },
});
