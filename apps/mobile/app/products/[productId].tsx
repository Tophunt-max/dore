import * as Crypto from 'expo-crypto';
import { LinearGradient } from 'expo-linear-gradient';
import { useQuery } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { useEffect, useState } from 'react';
import {
  Image,
  Pressable,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

// ORich goods-page palette (from the decompiled view.css, scope d54eb856).
const C = {
  bg: '#f9f9f9',
  card: '#ffffff',
  orange: '#ee5016',
  red: '#ff5c5c',
  grey: '#b9b9b9',
  ink: '#17273a',
  track: '#f1e4dc',
  numberBg: '#f7f8f9',
};

function pad(value: number): string {
  return String(value).padStart(2, '0');
}

export default function ProductDetailScreen() {
  const { productId } = useLocalSearchParams<{ productId: string }>();
  const { t, formatMoney } = useI18n();
  const user = useAuthStore((s) => s.user);
  const query = useQuery({
    queryKey: ['campaign', productId],
    queryFn: () => api.campaign(productId),
    enabled: Boolean(productId),
  });
  const participants = useQuery({
    queryKey: ['participants', productId],
    queryFn: () => api.campaignParticipants(productId),
    enabled: Boolean(productId),
  });
  const [quantity, setQuantity] = useState(1);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [remaining, setRemaining] = useState(0);
  const campaign = query.data;

  // Live countdown to the campaign end (ORich shows "End in HH:MM:SS").
  useEffect(() => {
    if (!campaign?.endsAt) return;
    const end = new Date(campaign.endsAt).getTime();
    const tick = () => setRemaining(Math.max(0, end - Date.now()));
    tick();
    const id = setInterval(tick, 1000);
    return () => clearInterval(id);
  }, [campaign?.endsAt]);

  async function share() {
    if (campaign)
      await Share.share({
        message: `${campaign.product.title} — ${formatMoney(
          campaign.entryPriceMinor,
          campaign.product.currency,
        )}`,
      });
  }

  async function join() {
    if (!user) {
      router.push('/login');
      return;
    }
    if (!campaign || campaign.status !== 'active') return;
    setSubmitting(true);
    setError(null);
    try {
      const order = await api.createOrder({
        campaignId: campaign.id,
        quantity,
        idempotencyKey: Crypto.randomUUID(),
      });
      router.push(`/checkout/${order.id}`);
    } catch (e) {
      setError(e instanceof Error ? e.message : t('common.error'));
    } finally {
      setSubmitting(false);
    }
  }

  const totalSeconds = Math.floor(remaining / 1000);
  const hours = Math.floor(totalSeconds / 3600);
  const minutes = Math.floor((totalSeconds % 3600) / 60);
  const seconds = totalSeconds % 60;
  const countdown = `${pad(hours)}:${pad(minutes)}:${pad(seconds)}`;

  const sold = campaign?.soldEntries ?? 0;
  const total = campaign?.totalEntries ?? 0;
  const needed = Math.max(0, total - sold);
  const progress = total > 0 ? Math.min(100, (sold / total) * 100) : 0;
  const people = participants.data?.items.length ?? 0;
  const avatars = (participants.data?.items ?? []).slice(0, 6);
  const maxQty = Math.max(1, Math.min(100, needed || 100));

  return (
    <Screen
      contentStyle={styles.root}
      header={
        <TopBar
          actionLabel={t('common.share')}
          onAction={() => void share()}
          title={t('campaign.title')}
        />
      }
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />
      {campaign ? (
        <>
          {/* Banner image with countdown badge */}
          <View style={styles.banner}>
            {campaign.product.imageUrl ? (
              <Image
                resizeMode="cover"
                source={{ uri: campaign.product.imageUrl }}
                style={styles.bannerImage}
              />
            ) : (
              <View style={[styles.bannerImage, styles.bannerPlaceholder]}>
                <Image
                  resizeMode="contain"
                  source={assets.groupBuy}
                  style={styles.placeholderIcon}
                />
              </View>
            )}
            {remaining > 0 ? (
              <LinearGradient
                colors={['#ee5016', 'rgba(238,80,22,0.17)']}
                start={{ x: 1, y: 0 }}
                end={{ x: 0, y: 1 }}
                style={styles.countdown}
              >
                <Text style={styles.countdownText}>
                  {t('campaign.endIn', { time: countdown })}
                </Text>
              </LinearGradient>
            ) : null}
          </View>

          {/* Intro card: price + title + issue, share on the right */}
          <View style={styles.card}>
            <View style={styles.introRow}>
              <View style={styles.introHeader}>
                <View style={styles.priceRow}>
                  <Text style={styles.priceAll} numberOfLines={1}>
                    {formatMoney(
                      campaign.entryPriceMinor,
                      campaign.product.currency,
                    )}
                    {campaign.product.retailPriceMinor ? (
                      <Text style={styles.priceOld}>
                        {'  '}
                        {formatMoney(
                          campaign.product.retailPriceMinor,
                          campaign.product.currency,
                        )}
                      </Text>
                    ) : null}
                  </Text>
                </View>
                <Text style={styles.introTitle}>{campaign.product.title}</Text>
                {campaign.product.description ? (
                  <Text style={styles.introText} numberOfLines={2}>
                    {campaign.product.description}
                  </Text>
                ) : null}
              </View>
              <Pressable onPress={() => void share()} style={styles.shareBtn}>
                <Image source={assets.goodsShare} style={styles.shareIcon} />
              </Pressable>
            </View>
          </View>

          {/* People / progress card */}
          <View style={styles.card}>
            <Text style={styles.peopleText}>
              {t('campaign.peopleParticipating', { count: people })}
            </Text>
            <View style={styles.peopleView}>
              <View style={styles.avatarRow}>
                {avatars.map((p, index) => (
                  <Image
                    key={p.userId}
                    source={assets.defaultAvatar}
                    style={[styles.avatar, index === 0 && styles.avatarFirst]}
                  />
                ))}
              </View>
            </View>
            <View style={styles.track}>
              <View style={[styles.fill, { width: `${progress}%` }]} />
            </View>
            <View style={styles.needRow}>
              <Text style={styles.needText}>
                {t('campaign.total')}: {total}
              </Text>
              <Text style={styles.needText}>
                {t('campaign.needed')}: {needed}
              </Text>
            </View>
          </View>

          {campaign.status !== 'active' ? (
            <Text style={styles.warning}>{t('campaign.unavailable')}</Text>
          ) : null}
          {error ? <Text style={styles.error}>{error}</Text> : null}

          {/* Bottom buy bar (ORich .btn): price + quantity + buy */}
          <View style={styles.buyBar}>
            <View style={styles.buyPrice}>
              <Text style={styles.buyPriceNew}>
                {formatMoney(
                  quantity * campaign.entryPriceMinor,
                  campaign.product.currency,
                )}
              </Text>
              {campaign.product.retailPriceMinor ? (
                <Text style={styles.buyPriceOld}>
                  {formatMoney(
                    campaign.product.retailPriceMinor,
                    campaign.product.currency,
                  )}
                </Text>
              ) : null}
            </View>
            <View style={styles.stepper}>
              <Pressable
                onPress={() => setQuantity((v) => Math.max(1, v - 1))}
                style={styles.stepBtn}
              >
                <Text style={styles.stepText}>−</Text>
              </Pressable>
              <Text style={styles.stepValue}>{quantity}</Text>
              <Pressable
                onPress={() => setQuantity((v) => Math.min(maxQty, v + 1))}
                style={styles.stepBtn}
              >
                <Text style={styles.stepText}>+</Text>
              </Pressable>
            </View>
            <Pressable
              disabled={campaign.status !== 'active' || submitting}
              onPress={join}
              style={({ pressed }) => [pressed && styles.pressed]}
            >
              <LinearGradient
                colors={
                  campaign.status !== 'active'
                    ? [theme.colors.border, theme.colors.disabled]
                    : [theme.colors.accentStart, theme.colors.accentEnd]
                }
                start={{ x: 0, y: 0.5 }}
                end={{ x: 1, y: 0.5 }}
                style={styles.buyBtn}
              >
                <Text style={styles.buyBtnText}>{t('campaign.buyNow')}</Text>
              </LinearGradient>
            </Pressable>
          </View>
        </>
      ) : null}
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: C.bg, paddingBottom: rpx(40) },
  banner: { position: 'relative', backgroundColor: '#fff' },
  bannerImage: { width: '100%', height: rpx(520), backgroundColor: '#FFF7F2' },
  bannerPlaceholder: { alignItems: 'center', justifyContent: 'center' },
  placeholderIcon: { width: rpx(180), height: rpx(180), opacity: 0.85 },
  countdown: {
    position: 'absolute',
    bottom: rpx(18),
    left: rpx(10),
    width: rpx(280),
    paddingVertical: rpx(12),
    borderTopLeftRadius: rpx(200),
    borderTopRightRadius: rpx(200),
    borderBottomRightRadius: rpx(200),
    borderBottomLeftRadius: 0,
  },
  countdownText: {
    fontSize: rpx(30),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  card: {
    padding: rpx(30),
    marginBottom: rpx(16),
    backgroundColor: C.card,
  },
  introRow: { flexDirection: 'row', alignItems: 'flex-start' },
  introHeader: { flex: 1 },
  priceRow: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  priceAll: {
    fontSize: rpx(48),
    color: C.red,
    fontFamily: theme.typography.family.bold,
  },
  priceOld: {
    fontSize: rpx(30),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
    textDecorationLine: 'line-through',
  },
  introTitle: {
    marginTop: rpx(10),
    fontSize: rpx(32),
    lineHeight: rpx(44),
    color: C.ink,
    fontFamily: theme.typography.family.bold,
  },
  introText: {
    marginTop: rpx(18),
    fontSize: rpx(28),
    lineHeight: rpx(38),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
  shareBtn: {
    marginLeft: rpx(16),
    width: rpx(72),
    height: rpx(72),
    alignItems: 'center',
    justifyContent: 'center',
  },
  shareIcon: { width: rpx(44), height: rpx(44), resizeMode: 'contain' },
  peopleText: {
    fontSize: rpx(28),
    color: C.grey,
    fontFamily: theme.typography.family.regular,
  },
  peopleView: {
    marginTop: rpx(16),
    flexDirection: 'row',
    alignItems: 'center',
  },
  avatarRow: { flexDirection: 'row', alignItems: 'center' },
  avatar: {
    width: rpx(44),
    height: rpx(44),
    borderRadius: rpx(22),
    borderWidth: rpx(2),
    borderColor: '#fff',
    marginLeft: rpx(-14),
    backgroundColor: '#eee',
  },
  avatarFirst: { marginLeft: 0 },
  track: {
    marginTop: rpx(20),
    height: rpx(14),
    borderRadius: rpx(7),
    overflow: 'hidden',
    backgroundColor: C.track,
  },
  fill: { height: '100%', borderRadius: rpx(7), backgroundColor: C.orange },
  needRow: {
    marginTop: rpx(14),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  needText: {
    fontSize: rpx(28),
    color: C.orange,
    fontFamily: theme.typography.family.medium,
  },
  warning: {
    color: theme.colors.warning,
    textAlign: 'center',
    paddingVertical: rpx(16),
  },
  error: {
    color: theme.colors.danger,
    textAlign: 'center',
    paddingVertical: rpx(8),
  },
  buyBar: {
    marginTop: rpx(4),
    flexDirection: 'row',
    alignItems: 'center',
    height: rpx(120),
    paddingHorizontal: rpx(24),
    backgroundColor: '#fff',
  },
  buyPrice: { flex: 1, justifyContent: 'center' },
  buyPriceNew: {
    fontSize: rpx(34),
    color: C.orange,
    fontFamily: theme.typography.family.bold,
  },
  buyPriceOld: {
    marginTop: rpx(2),
    fontSize: rpx(26),
    color: C.grey,
    textDecorationLine: 'line-through',
    fontFamily: theme.typography.family.regular,
  },
  stepper: {
    flexDirection: 'row',
    alignItems: 'center',
    marginHorizontal: rpx(20),
    backgroundColor: C.numberBg,
    borderRadius: rpx(10),
  },
  stepBtn: {
    width: rpx(56),
    height: rpx(60),
    alignItems: 'center',
    justifyContent: 'center',
  },
  stepText: { fontSize: rpx(36), color: C.ink },
  stepValue: {
    minWidth: rpx(60),
    textAlign: 'center',
    fontSize: rpx(30),
    color: C.ink,
    fontFamily: theme.typography.family.bold,
  },
  buyBtn: {
    width: rpx(240),
    height: rpx(84),
    borderRadius: rpx(42),
    alignItems: 'center',
    justifyContent: 'center',
  },
  buyBtnText: {
    fontSize: rpx(30),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  pressed: { opacity: 0.85 },
});
