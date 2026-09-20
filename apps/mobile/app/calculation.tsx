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

export default function CalculationScreen() {
  const { campaignId } = useLocalSearchParams<{ campaignId?: string }>();
  const { labelFor, t } = useI18n();
  const query = useQuery({
    queryKey: ['campaign-draw', campaignId],
    queryFn: () => api.campaignDraw(campaignId!),
    enabled: Boolean(campaignId),
    retry: false,
  });
  const draw = query.data;
  return (
    <Screen header={<TopBar title={t('draw.title')} />}>
      <View style={styles.page}>
        <View style={styles.hero}>
          <Text style={styles.kicker}>{t('draw.kicker')}</Text>
          <Text style={styles.title}>{t('draw.heroTitle')}</Text>
          <Text style={styles.copy}>{t('draw.heroCopy')}</Text>
        </View>
        {!campaignId ? (
          <Text style={styles.empty}>{t('draw.openFromWinner')}</Text>
        ) : (
          <>
            <QueryNotice
              loading={query.isLoading}
              error={query.error}
              onRetry={() => void query.refetch()}
            />
            {draw ? (
              <View style={styles.card}>
                <View style={styles.header}>
                  <Text style={styles.cardTitle}>{t('draw.proof')}</Text>
                  <StatusPill
                    label={labelFor(draw.status)}
                    tone={draw.status === 'executed' ? 'success' : 'warning'}
                  />
                </View>
                <Detail
                  label={t('draw.algorithm')}
                  value={draw.algorithmVersion}
                />
                <Detail
                  label={t('draw.eligibleEntries')}
                  value={String(draw.eligibleEntryCount)}
                />
                <Detail
                  label={t('draw.seedCommitment')}
                  value={draw.seedCommitment}
                />
                <Detail
                  label={t('draw.entrySnapshot')}
                  value={draw.entrySnapshotHash}
                />
                {draw.winningIndex !== null ? (
                  <Detail
                    label={t('draw.winningIndex')}
                    value={String(draw.winningIndex)}
                  />
                ) : null}
                {draw.winningEntryId ? (
                  <Detail
                    label={t('draw.winningEntry')}
                    value={draw.winningEntryId}
                  />
                ) : null}
                {draw.revealedSeed ? (
                  <Detail
                    label={t('draw.revealedSeed')}
                    value={draw.revealedSeed}
                  />
                ) : (
                  <Text style={styles.pending}>{t('draw.seedHidden')}</Text>
                )}
              </View>
            ) : null}
          </>
        )}
      </View>
    </Screen>
  );
}
function Detail({ label, value }: { label: string; value: string }) {
  return (
    <View style={styles.detail}>
      <Text style={styles.label}>{label}</Text>
      <Text selectable style={styles.value}>
        {value}
      </Text>
    </View>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  hero: {
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  kicker: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    letterSpacing: 1.4,
  },
  title: {
    marginTop: 8,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  copy: { marginTop: 12, color: '#D8DEE5', lineHeight: 21 },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  header: {
    marginBottom: 10,
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
  },
  cardTitle: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  detail: {
    paddingVertical: 12,
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: theme.colors.border,
  },
  label: { color: theme.colors.textMuted, fontSize: 11 },
  value: {
    marginTop: 5,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
    fontSize: 12,
  },
  pending: { marginTop: 14, color: theme.colors.warning },
  empty: { padding: 30, textAlign: 'center', color: theme.colors.textMuted },
});
