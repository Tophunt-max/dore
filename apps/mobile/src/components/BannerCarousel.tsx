import type { Banner } from '@oriva/shared';
import { LinearGradient } from 'expo-linear-gradient';
import { router } from 'expo-router';
import { useEffect, useMemo, useRef, useState } from 'react';
import {
  Image,
  type ImageSourcePropType,
  type NativeScrollEvent,
  type NativeSyntheticEvent,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { assets } from '@/assets';
import { contentWidth, rpx } from '@/rpx';
import { theme } from '@/theme';

type ImageSlide = { kind: 'image'; key: string; source: ImageSourcePropType; actionUrl?: string | null };
type PromoSlide = {
  kind: 'promo';
  key: string;
  title: string;
  subtitle: string;
  graphic: ImageSourcePropType;
  colors: [string, string];
};
type Slide = ImageSlide | PromoSlide;

// Branded ORich promo slides shown before an administrator publishes banners.
const fallbackSlides: PromoSlide[] = [
  {
    kind: 'promo',
    key: 'lottery',
    title: 'Join from ₹1',
    subtitle: 'Enter a lucky draw for a chance to win big prizes',
    graphic: assets.bannerLottery,
    colors: ['#FF7A3D', '#EE5016'],
  },
  {
    kind: 'promo',
    key: 'winning',
    title: 'Winners every day',
    subtitle: 'See the latest winners and grab your lucky code',
    graphic: assets.bannerWinning,
    colors: ['#FEA326', '#EE5016'],
  },
];

export function BannerCarousel({ banners }: { banners?: Banner[] }) {
  const width = contentWidth();
  const pageWidth = width - rpx(48); // horizontal margins (rpx(24) each side)
  const scrollRef = useRef<ScrollView>(null);
  const [index, setIndex] = useState(0);

  const slides: Slide[] = useMemo(() => {
    const withImage = (banners ?? []).filter((b) => b.imageUrl);
    if (withImage.length) {
      return withImage.map<ImageSlide>((b) => ({
        kind: 'image',
        key: b.id,
        source: { uri: b.imageUrl as string },
        actionUrl: b.actionUrl,
      }));
    }
    return fallbackSlides;
  }, [banners]);

  useEffect(() => {
    if (slides.length <= 1) return;
    const timer = setInterval(() => {
      setIndex((current) => {
        const next = (current + 1) % slides.length;
        scrollRef.current?.scrollTo({ x: next * pageWidth, animated: true });
        return next;
      });
    }, 4000);
    return () => clearInterval(timer);
  }, [slides.length, pageWidth]);

  const onScroll = (event: NativeSyntheticEvent<NativeScrollEvent>) => {
    const next = Math.round(event.nativeEvent.contentOffset.x / pageWidth);
    if (next !== index) setIndex(next);
  };

  const onPressSlide = (slide: Slide) => {
    if (slide.kind === 'image' && slide.actionUrl?.startsWith('/'))
      router.push(slide.actionUrl as never);
  };

  return (
    <View style={styles.wrap}>
      <ScrollView
        ref={scrollRef}
        horizontal
        pagingEnabled
        showsHorizontalScrollIndicator={false}
        onMomentumScrollEnd={onScroll}
        scrollEventThrottle={16}
      >
        {slides.map((slide) => (
          <Pressable
            key={slide.key}
            onPress={() => onPressSlide(slide)}
            style={[styles.slide, { width: pageWidth }]}
          >
            {slide.kind === 'image' ? (
              <Image
                source={slide.source}
                style={styles.image}
                resizeMode="cover"
              />
            ) : (
              <LinearGradient
                colors={slide.colors}
                start={{ x: 0, y: 0 }}
                end={{ x: 1, y: 1 }}
                style={styles.promo}
              >
                <View style={styles.promoCopy}>
                  <Text style={styles.promoTitle}>{slide.title}</Text>
                  <Text style={styles.promoSubtitle}>{slide.subtitle}</Text>
                </View>
                <Image
                  source={slide.graphic}
                  style={styles.promoGraphic}
                  resizeMode="contain"
                />
              </LinearGradient>
            )}
          </Pressable>
        ))}
      </ScrollView>
      {slides.length > 1 ? (
        <View style={styles.dots}>
          {slides.map((slide, i) => (
            <View
              key={slide.key}
              style={[styles.dot, i === index && styles.dotActive]}
            />
          ))}
        </View>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  wrap: { marginTop: rpx(8) },
  slide: {
    height: rpx(280),
    borderRadius: rpx(20),
    overflow: 'hidden',
    backgroundColor: 'rgba(255,255,255,.18)',
  },
  image: { width: '100%', height: '100%', borderRadius: rpx(20) },
  promo: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    paddingLeft: rpx(40),
    paddingRight: rpx(20),
  },
  promoCopy: { flex: 1, paddingRight: rpx(12) },
  promoTitle: {
    fontSize: rpx(48),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  promoSubtitle: {
    marginTop: rpx(12),
    fontSize: rpx(24),
    color: 'rgba(255,255,255,.92)',
    lineHeight: rpx(34),
  },
  promoGraphic: { width: rpx(180), height: rpx(240) },
  dots: {
    marginTop: rpx(16),
    flexDirection: 'row',
    justifyContent: 'center',
  },
  dot: {
    width: rpx(12),
    height: rpx(12),
    borderRadius: rpx(6),
    marginHorizontal: rpx(6),
    backgroundColor: 'rgba(255,255,255,.5)',
  },
  dotActive: { backgroundColor: '#fff', width: rpx(28) },
});
