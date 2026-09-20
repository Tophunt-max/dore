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

type ImageSlide = {
  kind: 'image';
  key: string;
  source: ImageSourcePropType;
  actionUrl?: string | null;
};
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
// (ORich banners are server/admin-fed; the APK bundles no banner images.)
const fallbackSlides: PromoSlide[] = [
  {
    kind: 'promo',
    key: 'lottery',
    title: 'Join from ₹1',
    subtitle: 'Enter a lucky draw and win big prizes',
    graphic: assets.bannerLottery,
    colors: ['#FF7A3D', '#EE5016'],
  },
  {
    kind: 'promo',
    key: 'winning',
    title: 'Winners every day',
    subtitle: 'Grab your lucky code and win',
    graphic: assets.bannerWinning,
    colors: ['#FEA326', '#EE5016'],
  },
];

// ORich `.banner`: width 100%, height 278rpx, sitting inside `.toTop`
// (14rpx side padding). Full-bleed image swiper with bottom indicator dots.
export function BannerCarousel({ banners }: { banners?: Banner[] }) {
  const pageWidth = contentWidth() - rpx(28); // toTop padding: 14rpx each side
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
    }, 3000); // u-swiper default interval
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
    <View style={[styles.banner, { width: pageWidth }]}>
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

// u-swiper default `borderRadius` is 8rpx (ORich passes only height + list).
const RADIUS = rpx(8);
const styles = StyleSheet.create({
  banner: {
    height: rpx(278),
    borderRadius: RADIUS,
    overflow: 'hidden',
  },
  slide: { height: rpx(278) },
  image: { width: '100%', height: '100%' },
  promo: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    paddingLeft: rpx(40),
    paddingRight: rpx(20),
  },
  promoCopy: { flex: 1, paddingRight: rpx(12) },
  promoTitle: {
    fontSize: rpx(46),
    fontWeight: '700',
    color: '#fff',
  },
  promoSubtitle: {
    marginTop: rpx(12),
    fontSize: rpx(24),
    color: 'rgba(255,255,255,.92)',
    lineHeight: rpx(34),
  },
  promoGraphic: { width: rpx(170), height: rpx(220) },
  // u-swiper `mode:"round"` indicator, bottom-centre, container padded 0 24rpx:
  //   .u-indicator-item-round        { 14x14rpx; radius 20rpx; rgba(0,0,0,.3) }
  //   .u-indicator-item-round-active { width 34rpx; rgba(255,255,255,.8) }
  dots: {
    position: 'absolute',
    bottom: rpx(16),
    left: 0,
    right: 0,
    paddingHorizontal: rpx(24),
    flexDirection: 'row',
    justifyContent: 'center',
  },
  dot: {
    width: rpx(14),
    height: rpx(14),
    borderRadius: rpx(20),
    marginHorizontal: rpx(6),
    backgroundColor: 'rgba(0,0,0,.3)',
  },
  dotActive: { width: rpx(34), backgroundColor: 'rgba(255,255,255,.8)' },
});
