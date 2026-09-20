import { useQuery } from '@tanstack/react-query';
import { Linking, StyleSheet, Text, View } from 'react-native';
import { useLocalSearchParams } from 'expo-router';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function FinanceDetailScreen() {
  const { t } = useI18n();
  const { financeId } = useLocalSearchParams<{ financeId: string }>();
  const query = useQuery({
    queryKey: ['finance-offers'],
    queryFn: api.financeOffers,
  });
  const offer = query.data?.items.find((item) => item.id === financeId);
  return (
    <Screen header={<TopBar title={offer?.title ?? t('finance.title')} />}>
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {offer ? (
          <>
            <View style={styles.hero}>
              <StatusPill label={t('finance.informationOnly')} tone="warning" />
              <Text style={styles.title}>{offer.title}</Text>
              <Text style={styles.provider}>{offer.providerName}</Text>
              <Text style={styles.copy}>{offer.description}</Text>
            </View>
            <View style={styles.notice}>
              <Text style={styles.noticeTitle}>
                {t('finance.providerDisclosure')}
              </Text>
              <Text style={styles.noticeText}>{offer.disclaimer}</Text>
            </View>
            {offer.externalUrl ? (
              <GradientButton
                onPress={() => void Linking.openURL(offer.externalUrl!)}
              >
                {t('finance.openWebsite')}
              </GradientButton>
            ) : null}
          </>
        ) : !query.isLoading ? (
          <Text style={styles.empty}>{t('finance.offerUnavailable')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  hero: {
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  title: {
    marginTop: 16,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  provider: {
    marginTop: 6,
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.medium,
  },
  copy: { marginTop: 12, color: '#D8DEE5', lineHeight: 21 },
  notice: {
    padding: theme.spacing.lg,
    borderLeftWidth: 4,
    borderLeftColor: theme.colors.warning,
    backgroundColor: '#FFF5DD',
  },
  noticeTitle: {
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
  },
  noticeText: {
    marginTop: 8,
    color: theme.colors.textSecondary,
    lineHeight: 19,
  },
  empty: { textAlign: 'center', color: theme.colors.textMuted },
});
