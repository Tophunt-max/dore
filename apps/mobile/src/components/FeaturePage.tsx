import type { ImageSourcePropType } from 'react-native';
import { Image, StyleSheet, Text, View } from 'react-native';
import { EmptyState } from './EmptyState';
import { Screen } from './Screen';
import { TopBar } from './TopBar';
import { theme } from '@/theme';

interface FeaturePageProps {
  title: string;
  subtitle: string;
  hero?: ImageSourcePropType;
  emptyTitle?: string;
  emptyMessage?: string;
}

export function FeaturePage({
  title,
  subtitle,
  hero,
  emptyTitle,
  emptyMessage,
}: FeaturePageProps) {
  return (
    <Screen header={<TopBar title={title} />}>
      <View style={styles.page}>
        <Text style={styles.subtitle}>{subtitle}</Text>
        {hero ? (
          <Image resizeMode="cover" source={hero} style={styles.hero} />
        ) : null}
        <View style={styles.card}>
          <EmptyState title={emptyTitle} message={emptyMessage} />
        </View>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  subtitle: {
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.body,
  },
  hero: {
    width: '100%',
    height: 180,
    marginTop: theme.spacing.lg,
    borderRadius: theme.radii.xl,
  },
  card: {
    marginTop: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
});
