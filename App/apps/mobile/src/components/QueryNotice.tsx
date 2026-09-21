import { Pressable, StyleSheet, Text, View } from 'react-native';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export function QueryNotice({
  loading,
  error,
  onRetry,
}: {
  loading?: boolean;
  error?: unknown;
  onRetry?: () => void;
}) {
  const { t } = useI18n();
  if (loading) return <Text style={styles.message}>{t('common.loading')}</Text>;
  if (!error) return null;
  return (
    <View style={styles.error}>
      <Text style={styles.message}>
        {error instanceof Error ? error.message : t('common.error')}
      </Text>
      {onRetry ? (
        <Pressable onPress={onRetry}>
          <Text style={styles.retry}>{t('common.retry')}</Text>
        </Pressable>
      ) : null}
    </View>
  );
}
const styles = StyleSheet.create({
  error: {
    alignItems: 'center',
    gap: 8,
    padding: 16,
    borderRadius: 12,
    backgroundColor: '#FFF0F0',
  },
  message: {
    textAlign: 'center',
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  retry: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
});
