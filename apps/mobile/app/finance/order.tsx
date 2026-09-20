import { useQuery } from '@tanstack/react-query';
import { Linking, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function FinanceOrderScreen() {
  const { t } = useI18n();
  const query = useQuery({
    queryKey: ['finance-offers'],
    queryFn: api.financeOffers,
  });
  const offer = query.data?.items[0];
  return (
    <Screen header={<TopBar title={t('finance.handoff')} />}>
      <View style={styles.page}>
        <StatusPill label={t('finance.informationOnly')} tone="warning" />
        <Text style={styles.title}>{t('finance.handoffTitle')}</Text>
        <Text style={styles.copy}>{t('finance.handoffCopy')}</Text>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {offer ? (
          <View style={styles.card}>
            <Text style={styles.offer}>{offer.title}</Text>
            <Text style={styles.provider}>{offer.providerName}</Text>
            <Text style={styles.description}>{offer.disclaimer}</Text>
            {offer.externalUrl ? (
              <GradientButton
                onPress={() => void Linking.openURL(offer.externalUrl!)}
              >
                {t('finance.openAuthorized')}
              </GradientButton>
            ) : (
              <Text style={styles.unavailable}>{t('finance.noLink')}</Text>
            )}
          </View>
        ) : !query.isLoading ? (
          <Text style={styles.unavailable}>{t('finance.noHandoff')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.xl, gap: theme.spacing.lg },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  copy: { color: theme.colors.textSecondary, lineHeight: 21 },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  offer: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  provider: {
    marginTop: 5,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.medium,
  },
  description: {
    marginVertical: 16,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  unavailable: {
    padding: 20,
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
