import { Image, StyleSheet, Text, View } from 'react-native';
import { assets } from '@/assets';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

interface EmptyStateProps {
  title?: string;
  message?: string;
}

export function EmptyState({ title, message }: EmptyStateProps) {
  const { t } = useI18n();
  const resolvedTitle = title ?? t('common.empty');
  const resolvedMessage = message ?? t('common.emptyCopy');
  return (
    <View style={styles.container}>
      <Image resizeMode="contain" source={assets.noData} style={styles.image} />
      <Text style={styles.title}>{resolvedTitle}</Text>
      <Text style={styles.message}>{resolvedMessage}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    alignItems: 'center',
    justifyContent: 'center',
    padding: theme.spacing.xxxl,
  },
  image: {
    width: 180,
    height: 147,
  },
  title: {
    marginTop: theme.spacing.lg,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  message: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.body,
    textAlign: 'center',
  },
});
