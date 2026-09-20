import * as Crypto from 'expo-crypto';
import { useQuery } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { useState } from 'react';
import {
  Image,
  Pressable,
  Share,
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
export default function ProductDetailScreen() {
  const { productId } = useLocalSearchParams<{ productId: string }>();
  const { width } = useWindowDimensions();
  const { t, formatMoney, formatDate } = useI18n();
  const user = useAuthStore((s) => s.user);
  const query = useQuery({
    queryKey: ['campaign', productId],
    queryFn: () => api.campaign(productId),
    enabled: Boolean(productId),
  });
  const [quantity, setQuantity] = useState(1);
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const campaign = query.data;
  async function share() {
    if (campaign)
      await Share.share({
        message: `${campaign.product.title} — ${formatMoney(campaign.entryPriceMinor, campaign.product.currency)}`,
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
  const progress =
    campaign && campaign.totalEntries
      ? Math.min(100, (campaign.soldEntries / campaign.totalEntries) * 100)
      : 0;
  return (
    <Screen
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
          <Image
            resizeMode="contain"
            source={
              campaign.product.imageUrl
                ? { uri: campaign.product.imageUrl }
                : assets.goodsOne
            }
            style={[
              styles.image,
              { height: Math.max(220, Math.min(380, width * 0.78)) },
            ]}
          />
          <View style={styles.page}>
            <View style={styles.card}>
              <Text style={styles.title}>{campaign.product.title}</Text>
              <Text style={styles.price}>
                {formatMoney(
                  campaign.entryPriceMinor,
                  campaign.product.currency,
                )}{' '}
                {t('catalog.entry')}
              </Text>
              <Text style={styles.description}>
                {campaign.product.description}
              </Text>
              <View style={styles.track}>
                <View style={[styles.fill, { width: `${progress}%` }]} />
              </View>
              <View style={styles.meta}>
                <Text style={styles.metaText}>
                  {t('campaign.entries', { count: campaign.soldEntries })}
                </Text>
                <Text style={styles.metaText}>
                  {t('campaign.remaining', {
                    count: Math.max(
                      0,
                      campaign.totalEntries - campaign.soldEntries,
                    ),
                  })}
                </Text>
              </View>
              <Text style={styles.dates}>
                {formatDate(campaign.startsAt)} – {formatDate(campaign.endsAt)}
              </Text>
            </View>
            <View style={styles.card}>
              <Text style={styles.cardTitle}>{t('campaign.select')}</Text>
              <View style={styles.quantity}>
                <Pressable
                  onPress={() => setQuantity((v) => Math.max(1, v - 1))}
                  style={styles.quantityButton}
                >
                  <Text style={styles.quantityText}>−</Text>
                </Pressable>
                <Text style={styles.quantityValue}>{quantity}</Text>
                <Pressable
                  onPress={() =>
                    setQuantity((v) =>
                      Math.min(
                        100,
                        Math.max(
                          1,
                          campaign.totalEntries - campaign.soldEntries,
                        ),
                        v + 1,
                      ),
                    )
                  }
                  style={styles.quantityButton}
                >
                  <Text style={styles.quantityText}>+</Text>
                </Pressable>
              </View>
            </View>
            {campaign.status !== 'active' ? (
              <Text style={styles.warning}>{t('campaign.unavailable')}</Text>
            ) : null}
            {error ? <Text style={styles.error}>{error}</Text> : null}
            <GradientButton
              disabled={campaign.status !== 'active'}
              loading={submitting}
              onPress={join}
            >
              {t('campaign.join', {
                amount: formatMoney(
                  quantity * campaign.entryPriceMinor,
                  campaign.product.currency,
                ),
              })}
            </GradientButton>
          </View>
        </>
      ) : null}
    </Screen>
  );
}
const styles = StyleSheet.create({
  image: { width: '100%', backgroundColor: '#FFF7F2' },
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  price: {
    marginTop: 8,
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  description: {
    marginTop: 8,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  track: {
    height: 7,
    marginTop: 16,
    borderRadius: 4,
    overflow: 'hidden',
    backgroundColor: theme.colors.border,
  },
  fill: { height: '100%', backgroundColor: theme.colors.primary },
  meta: { marginTop: 8, flexDirection: 'row', justifyContent: 'space-between' },
  metaText: { color: theme.colors.textMuted, fontSize: 11 },
  dates: { marginTop: 10, color: theme.colors.textMuted, fontSize: 11 },
  cardTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  quantity: { marginTop: 16, flexDirection: 'row', alignItems: 'center' },
  quantityButton: {
    width: 44,
    height: 40,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 10,
    backgroundColor: '#FFF3D1',
  },
  quantityText: { color: theme.colors.primary, fontSize: 22 },
  quantityValue: {
    minWidth: 64,
    textAlign: 'center',
    fontFamily: theme.typography.family.bold,
    fontSize: 20,
  },
  warning: { color: theme.colors.warning, textAlign: 'center' },
  error: { color: theme.colors.danger, textAlign: 'center' },
});
