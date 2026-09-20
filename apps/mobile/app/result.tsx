import { router, useLocalSearchParams } from 'expo-router';
import { useEffect, useRef } from 'react';
import { Animated, Pressable, StyleSheet, Text, View } from 'react-native';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function ResultScreen() {
  const { title, message, reference, next, tone } = useLocalSearchParams<{
    title?: string;
    message?: string;
    reference?: string;
    next?: string;
    tone?: string;
  }>();
  const { t } = useI18n();
  const scale = useRef(new Animated.Value(0.6)).current;
  useEffect(() => {
    Animated.spring(scale, {
      toValue: 1,
      useNativeDriver: true,
      friction: 5,
    }).start();
  }, [scale]);
  return (
    <Screen scroll={false} header={<TopBar title={t('result.done')} />}>
      <View style={styles.page}>
        <Animated.View
          style={[
            styles.icon,
            {
              transform: [{ scale }],
              backgroundColor: tone === 'danger' ? '#FFF0F0' : '#E8F5EE',
            },
          ]}
        >
          <Text style={styles.iconText}>{tone === 'danger' ? '!' : '✓'}</Text>
        </Animated.View>
        <Text style={styles.title}>{title ?? t('result.done')}</Text>
        {message ? <Text style={styles.message}>{message}</Text> : null}
        {reference ? (
          <View style={styles.reference}>
            <Text style={styles.referenceLabel}>{t('result.reference')}</Text>
            <Text selectable style={styles.referenceValue}>
              {reference}
            </Text>
          </View>
        ) : null}
        <Pressable
          onPress={() =>
            next ? router.replace(next as '/') : router.replace('/')
          }
          style={styles.button}
        >
          <Text style={styles.buttonText}>
            {next ? t('common.continue') : t('result.backHome')}
          </Text>
        </Pressable>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: theme.spacing.xl,
  },
  icon: {
    width: 100,
    height: 100,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 50,
  },
  iconText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 46,
  },
  title: {
    marginTop: 24,
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  message: {
    marginTop: 10,
    textAlign: 'center',
    color: theme.colors.textSecondary,
    lineHeight: 21,
  },
  reference: {
    width: '100%',
    marginTop: 24,
    padding: 16,
    borderRadius: 12,
    backgroundColor: theme.colors.surface,
  },
  referenceLabel: { color: theme.colors.textMuted },
  referenceValue: {
    marginTop: 5,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  button: {
    minWidth: 180,
    marginTop: 24,
    padding: 16,
    alignItems: 'center',
    borderRadius: 30,
    backgroundColor: theme.colors.primary,
  },
  buttonText: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
  },
});
