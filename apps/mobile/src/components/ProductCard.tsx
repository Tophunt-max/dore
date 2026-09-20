import type { ImageSourcePropType } from 'react-native';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { GradientButton } from '@/components/GradientButton';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
interface Props {
  title: string;
  image: ImageSourcePropType;
  priceMinor: number;
  sold: number;
  total: number;
  onPress: () => void;
  width?: number | string;
  currency?: string;
}
export function ProductCard({
  title,
  image,
  priceMinor,
  sold,
  total,
  onPress,
  width = '48.5%',
  currency = 'INR',
}: Props) {
  const { t, formatMoney } = useI18n();
  const progress =
    total > 0 ? Math.min(100, Math.round((sold / total) * 100)) : 0;
  return (
    <Pressable
      onPress={onPress}
      style={[styles.card, { width: width as number }]}
    >
      <Image resizeMode="contain" source={image} style={styles.image} />
      <View style={styles.body}>
        <Text numberOfLines={2} style={styles.title}>
          {title}
        </Text>
        <Text style={styles.price}>
          {formatMoney(priceMinor, currency)} {t('catalog.entry')}
        </Text>
        <View style={styles.track}>
          <View style={[styles.fill, { width: `${progress}%` }]} />
        </View>
        <Text style={styles.remaining}>
          {t('catalog.needed', { count: Math.max(0, total - sold) })}
        </Text>
        <View style={styles.button}>
          <GradientButton compact onPress={onPress}>
            {t('catalog.join')}
          </GradientButton>
        </View>
      </View>
    </Pressable>
  );
}
const styles = StyleSheet.create({
  card: {
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
    ...theme.shadows.card,
  },
  image: { width: '100%', aspectRatio: 1.2, backgroundColor: '#FFF7F2' },
  body: { padding: theme.spacing.md },
  title: {
    minHeight: 36,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.body,
  },
  price: {
    marginTop: theme.spacing.sm,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.body,
  },
  track: {
    height: 5,
    marginTop: theme.spacing.md,
    overflow: 'hidden',
    borderRadius: theme.radii.pill,
    backgroundColor: theme.colors.border,
  },
  fill: { height: '100%', backgroundColor: theme.colors.primary },
  remaining: {
    marginVertical: theme.spacing.sm,
    color: theme.colors.textMuted,
    fontSize: 11,
  },
  button: { alignSelf: 'flex-start' },
});
