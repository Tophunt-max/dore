import { useQuery } from '@tanstack/react-query';
import { useLocalSearchParams } from 'expo-router';
import { ActivityIndicator, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/richtext/rule` (scope 9995e62a): a white text card on the grey
// page. The `type` query param selects which document is shown (1 = user
// agreement, 2 = help centre, 3 = invitation rules), mirroring the original.
const SLUG_BY_TYPE: Record<string, string> = {
  '1': 'agreement',
  '2': 'help',
  '3': 'invite-rules',
};

export default function RulesScreen() {
  const { t, locale } = useI18n();
  const { type } = useLocalSearchParams<{ type?: string }>();
  const slug = SLUG_BY_TYPE[type ?? ''] ?? 'rules';

  const title =
    type === '1'
      ? t('about.agreement')
      : type === '2'
        ? t('settings.helpCentre')
        : type === '3'
          ? t('rules.title')
          : t('rules.title');

  const query = useQuery({
    queryKey: ['content', slug, locale],
    queryFn: () => api.content(slug, locale),
    retry: false,
  });

  const body = query.data?.body ?? t('rules.fallbackBody');

  return (
    <Screen
      header={<TopBar title={title} white />}
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
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .detail { padding:16rpx 30rpx; background:#f8f8f8 }
  detail: {
    backgroundColor: theme.colors.background,
    paddingVertical: rpx(16),
    paddingHorizontal: rpx(30),
    flexGrow: 1,
  },
  // .loading { display:flex; justify-content:center }
  loading: { paddingVertical: rpx(60), alignItems: 'center' },
  // .text { background:#fff; padding:40rpx 58rpx }
  text: {
    backgroundColor: theme.colors.surface,
    paddingVertical: rpx(40),
    paddingHorizontal: rpx(58),
  },
  // font-size:28rpx; color:#17273a
  bodyText: {
    fontSize: rpx(28),
    lineHeight: rpx(44),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
});
