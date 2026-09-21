import { useQuery } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { ActivityIndicator, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/help/help_detail`: a white rich-text card (same metrics as the
// richtext/rule page) showing the answer, with a contact affordance.
export default function HelpDetailScreen() {
  const { t, locale } = useI18n();
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

  const query = useQuery({
    queryKey: ['content', `help-${topic}`, locale],
    queryFn: () => api.content(`help-${topic}`, locale),
    retry: false,
  });
  const body = query.data?.body ?? data.body;

  return (
    <Screen
      header={<TopBar title={data.title} white />}
      contentStyle={styles.detail}
    >
      {query.isLoading ? (
        <View style={styles.loading}>
          <ActivityIndicator color={theme.colors.info} />
        </View>
      ) : (
        <View style={styles.text}>
          <Text style={styles.bodyText}>{body}</Text>
        </View>
      )}
      <Pressable onPress={() => router.push('/support')} style={styles.contact}>
        <Text style={styles.contactText}>{t('help.contact')}</Text>
      </Pressable>
    </Screen>
  );
}

const styles = StyleSheet.create({
  detail: {
    backgroundColor: theme.colors.background,
    paddingVertical: rpx(16),
    paddingHorizontal: rpx(30),
    flexGrow: 1,
  },
  loading: { paddingVertical: rpx(60), alignItems: 'center' },
  text: {
    backgroundColor: theme.colors.surface,
    paddingVertical: rpx(40),
    paddingHorizontal: rpx(58),
  },
  bodyText: {
    fontSize: rpx(28),
    lineHeight: rpx(44),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  contact: {
    marginTop: rpx(40),
    padding: rpx(28),
    alignItems: 'center',
    borderRadius: theme.radii.pill,
    backgroundColor: '#FFF1EA',
  },
  contactText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: rpx(30),
  },
});
