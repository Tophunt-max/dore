import { useQuery } from '@tanstack/react-query';
import { useLocalSearchParams } from 'expo-router';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function TeamDetailScreen() {
  const { memberId } = useLocalSearchParams<{ memberId: string }>();
  const { t, formatDate, labelFor } = useI18n();
  const query = useQuery({ queryKey: ['team'], queryFn: api.team });
  const member = query.data?.items.find((m) => m.id === memberId);
  return (
    <Screen header={<TopBar title={t('team.title')} />}>
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {member ? (
          <View style={styles.profile}>
            <View style={styles.avatar}>
              <Text style={styles.avatarText}>
                {(member.displayName ?? '?').slice(0, 1)}
              </Text>
            </View>
            <Text style={styles.name}>
              {member.displayName ?? member.phoneMasked}
            </Text>
            <Text style={styles.reference}>{member.phoneMasked}</Text>
            <StatusPill
              label={labelFor(member.status)}
              tone={
                member.status === 'qualified' || member.status === 'rewarded'
                  ? 'success'
                  : 'brand'
              }
            />
            <Text style={styles.joined}>
              {t('team.joined', { date: formatDate(member.createdAt) })}
            </Text>
          </View>
        ) : null}
        <View style={styles.notice}>
          <Text style={styles.noticeText}>{t('team.detailUnavailable')}</Text>
        </View>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  profile: {
    alignItems: 'center',
    padding: 24,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  avatar: {
    width: 76,
    height: 76,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 38,
    backgroundColor: '#FFF1EA',
  },
  avatarText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 28,
  },
  name: {
    marginTop: 12,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  reference: { marginVertical: 6, color: theme.colors.textMuted },
  joined: { marginTop: 12, color: theme.colors.textMuted },
  notice: {
    padding: 18,
    borderRadius: theme.radii.lg,
    backgroundColor: '#FFF5DD',
  },
  noticeText: {
    textAlign: 'center',
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
});
