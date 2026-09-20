import { router } from 'expo-router';
import { Image, StyleSheet, Text, View } from 'react-native';
import { assets } from '@/assets';
import { ListRow } from '@/components/ListRow';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

const topicIds = ['campaigns', 'results', 'prizes', 'account'] as const;

export default function HelpScreen() {
  const { t } = useI18n();
  const topics = [
    {
      id: topicIds[0],
      title: t('help.campaignsTitle'),
      subtitle: t('help.campaignsSubtitle'),
    },
    {
      id: topicIds[1],
      title: t('help.resultsTitle'),
      subtitle: t('help.resultsSubtitle'),
    },
    {
      id: topicIds[2],
      title: t('help.prizesTitle'),
      subtitle: t('help.prizesSubtitle'),
    },
    {
      id: topicIds[3],
      title: t('help.accountTitle'),
      subtitle: t('help.accountSubtitle'),
    },
  ] as const;
  return (
    <Screen header={<TopBar title={t('help.title')} />}>
      <Image
        resizeMode="cover"
        source={assets.faqBackground}
        style={styles.hero}
      />
      <View style={styles.page}>
        <Text style={styles.title}>{t('help.heading')}</Text>
        <Text style={styles.copy}>{t('help.copy')}</Text>
        <View style={styles.list}>
          {topics.map((topic) => (
            <ListRow
              key={topic.id}
              onPress={() => router.push(`/help/${topic.id}`)}
              subtitle={topic.subtitle}
              title={topic.title}
            />
          ))}
        </View>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  hero: { width: '100%', height: 190 },
  page: { padding: theme.spacing.lg },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  copy: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  list: {
    marginTop: theme.spacing.lg,
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
  },
});
