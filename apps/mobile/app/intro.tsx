import { router } from 'expo-router';
import { useState } from 'react';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function IntroScreen() {
  const { t } = useI18n();
  const slides = [
    {
      eyebrow: t('intro.discover'),
      title: t('intro.discoverTitle'),
      copy: t('intro.discoverCopy'),
      image: assets.goodsOne,
    },
    {
      eyebrow: t('intro.understand'),
      title: t('intro.understandTitle'),
      copy: t('intro.understandCopy'),
      image: assets.quickWinner,
    },
    {
      eyebrow: t('intro.celebrate'),
      title: t('intro.celebrateTitle'),
      copy: t('intro.celebrateCopy'),
      image: assets.success,
    },
  ] as const;
  const [index, setIndex] = useState(0);
  const slide = slides[index] ?? slides[0];
  const last = index === slides.length - 1;
  return (
    <Screen scroll={false} contentStyle={styles.page}>
      <Pressable onPress={() => router.replace('/(tabs)')} style={styles.skip}>
        <Text style={styles.skipText}>{t('intro.skip')}</Text>
      </Pressable>
      <View style={styles.visual}>
        <Image resizeMode="contain" source={slide.image} style={styles.image} />
      </View>
      <View style={styles.content}>
        <Text style={styles.eyebrow}>{slide.eyebrow}</Text>
        <Text style={styles.title}>{slide.title}</Text>
        <Text style={styles.copy}>{slide.copy}</Text>
        <View style={styles.dots}>
          {slides.map((item, dotIndex) => (
            <View
              key={item.eyebrow}
              style={[styles.dot, dotIndex === index && styles.dotActive]}
            />
          ))}
        </View>
        <GradientButton
          onPress={() =>
            last
              ? router.replace('/(tabs)')
              : setIndex((value) => Math.min(value + 1, slides.length - 1))
          }
        >
          {last ? t('intro.explore') : t('common.continue')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { flex: 1, paddingBottom: 0, backgroundColor: theme.colors.surface },
  skip: {
    position: 'absolute',
    zIndex: 1,
    top: theme.spacing.lg,
    right: theme.spacing.xl,
    padding: theme.spacing.sm,
  },
  skipText: {
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.medium,
  },
  visual: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    padding: theme.spacing.xxxl,
    backgroundColor: '#FFF7F2',
  },
  image: { width: '86%', height: '86%' },
  content: {
    borderTopLeftRadius: 28,
    borderTopRightRadius: 28,
    padding: theme.spacing.xxl,
    paddingBottom: theme.spacing.xxxl,
    backgroundColor: theme.colors.surface,
  },
  eyebrow: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.caption,
    letterSpacing: 1.5,
  },
  title: {
    marginTop: theme.spacing.sm,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: 28,
    lineHeight: 34,
  },
  copy: {
    marginTop: theme.spacing.md,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    lineHeight: 21,
  },
  dots: { marginVertical: theme.spacing.xl, flexDirection: 'row' },
  dot: {
    width: 8,
    height: 8,
    marginRight: theme.spacing.sm,
    borderRadius: 4,
    backgroundColor: theme.colors.border,
  },
  dotActive: { width: 24, backgroundColor: theme.colors.primary },
});
