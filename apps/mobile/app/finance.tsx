import { useQuery } from '@tanstack/react-query';
import { Redirect, router } from 'expo-router';
import { useAuthStore } from '@/stores/auth';
import {
  ImageBackground,
  Linking,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function FinanceScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { t } = useI18n();
  const query = useQuery({
    queryKey: ['finance-offers'],
    queryFn: api.financeOffers,
  });
  return (
    <Screen
      header={<TopBar title={t('finance.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <ImageBackground
        imageStyle={styles.heroImage}
        resizeMode="cover"
        source={assets.financeBackground}
        style={styles.hero}
      >
        <Text style={styles.heroKicker}>{t('finance.kicker')}</Text>
        <Text style={styles.heroTitle}>{t('finance.heroTitle')}</Text>
        <Text style={styles.heroCopy}>{t('finance.heroCopy')}</Text>
      </ImageBackground>
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((offer) => (
          <Pressable
            key={offer.id}
            onPress={() => router.push(`/finance/${offer.id}`)}
            style={styles.card}
          >
            <View style={styles.cardHeader}>
              <Text style={styles.title}>{offer.title}</Text>
              <StatusPill label={t('finance.information')} tone="warning" />
            </View>
            <Text style={styles.provider}>{offer.providerName}</Text>
            <Text style={styles.description}>{offer.description}</Text>
            {offer.externalUrl ? (
              <Text
                onPress={() => void Linking.openURL(offer.externalUrl!)}
                style={styles.link}
              >
                {t('finance.visitProvider')}
              </Text>
            ) : null}
          </Pressable>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('finance.empty')}</Text>
        ) : null}
        <View style={styles.disclaimer}>
          <Text style={styles.disclaimerTitle}>{t('finance.important')}</Text>
          <Text style={styles.disclaimerCopy}>{t('finance.disclaimer')}</Text>
        </View>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  hero: {
    minHeight: 230,
    justifyContent: 'flex-end',
    padding: theme.spacing.xl,
  },
  heroImage: {
    borderBottomLeftRadius: theme.radii.xl,
    borderBottomRightRadius: theme.radii.xl,
  },
  heroKicker: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    letterSpacing: 1.4,
  },
  heroTitle: {
    marginTop: 8,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  heroCopy: { marginTop: 8, color: theme.colors.surface, lineHeight: 20 },
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  cardHeader: { flexDirection: 'row', alignItems: 'center', gap: 10 },
  title: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  provider: {
    marginTop: 6,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.medium,
  },
  description: {
    marginTop: 10,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  link: {
    marginTop: 14,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  disclaimer: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.lg,
    backgroundColor: '#FFF5DD',
  },
  disclaimerTitle: {
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
  },
  disclaimerCopy: {
    marginTop: 8,
    color: theme.colors.textSecondary,
    lineHeight: 18,
  },
  empty: { padding: 32, textAlign: 'center', color: theme.colors.textMuted },
});
