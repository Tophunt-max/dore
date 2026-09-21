import { useQuery } from '@tanstack/react-query';
import { StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export function ContentPage({
  slug,
  fallbackTitle,
  fallbackBody,
  leading,
}: {
  slug: string;
  fallbackTitle: string;
  fallbackBody: string;
  leading?: React.ReactNode;
}) {
  const { locale, t } = useI18n();
  const query = useQuery({
    queryKey: ['content', slug, locale],
    queryFn: () => api.content(slug, locale),
    retry: false,
  });
  const title = query.data?.title ?? fallbackTitle;
  const body = query.data?.body ?? fallbackBody;
  return (
    <View style={styles.page}>
      {leading}
      <View style={styles.card}>
        <Text style={styles.title}>{title}</Text>
        <Text style={styles.body}>{body}</Text>
        {query.error ? (
          <Text style={styles.fallback}>{t('content.fallback')}</Text>
        ) : null}
      </View>
    </View>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    borderRadius: theme.radii.xl,
    padding: theme.spacing.xl,
    backgroundColor: theme.colors.surface,
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  body: {
    marginTop: theme.spacing.md,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    lineHeight: 22,
  },
  fallback: {
    marginTop: theme.spacing.lg,
    color: theme.colors.warning,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.caption,
  },
});
