import { router, useLocalSearchParams } from 'expo-router';
import { Pressable, StyleSheet, Text } from 'react-native';
import { ContentPage } from '@/components/ContentPage';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function HelpDetailScreen() {
  const { t } = useI18n();
  const fallback: Record<string, { title: string; body: string }> = {
    campaigns: {
      title: t('help.campaignsTitle'),
      body: t('help.campaignsBody'),
    },
    results: { title: t('help.resultsTitle'), body: t('help.resultsBody') },
    prizes: { title: t('help.prizesTitle'), body: t('help.prizesBody') },
    account: { title: t('help.accountTitle'), body: t('help.accountBody') },
  };
  const { topic = 'campaigns' } = useLocalSearchParams<{ topic?: string }>();
  const data = fallback[topic] ?? fallback.campaigns!;
  return (
    <Screen header={<TopBar title={data.title} />}>
      <ContentPage
        slug={`help-${topic}`}
        fallbackTitle={data.title}
        fallbackBody={data.body}
      />
      <Pressable onPress={() => router.push('/support')} style={styles.contact}>
        <Text style={styles.text}>{t('help.contact')}</Text>
      </Pressable>
    </Screen>
  );
}
const styles = StyleSheet.create({
  contact: {
    marginHorizontal: 16,
    padding: 16,
    alignItems: 'center',
    borderRadius: 30,
    backgroundColor: '#FFF1EA',
  },
  text: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
});
