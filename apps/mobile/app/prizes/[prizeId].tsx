import { useQuery, useQueryClient } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function PrizeDetailScreen() {
  const { prizeId } = useLocalSearchParams<{ prizeId: string }>();
  const { t, formatDate, labelFor } = useI18n();
  const client = useQueryClient();
  const prizes = useQuery({ queryKey: ['prizes'], queryFn: api.prizes });
  const addresses = useQuery({
    queryKey: ['addresses'],
    queryFn: api.addresses,
  });
  const prize = prizes.data?.items.find((p) => p.id === prizeId);
  const [addressId, setAddressId] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const selected =
    addressId ?? addresses.data?.items.find((a) => a.isDefault)?.id ?? null;
  async function claim() {
    if (!prize || !selected) return;
    setBusy(true);
    setError(null);
    try {
      await api.claimPrize(prize.id, selected);
      await client.invalidateQueries({ queryKey: ['prizes'] });
      router.replace({
        pathname: '/result',
        params: {
          tone: 'success',
          title: t('prizes.claimReceived'),
          message: t('prizes.claimMessage'),
          reference: prize.id,
          next: '/prizes',
        },
      });
    } catch (e) {
      setError(e instanceof Error ? e.message : t('common.error'));
    } finally {
      setBusy(false);
    }
  }
  return (
    <Screen header={<TopBar title={t('prizes.details')} />}>
      <View style={styles.page}>
        <QueryNotice
          loading={prizes.isLoading || addresses.isLoading}
          error={prizes.error ?? addresses.error}
          onRetry={() => {
            void prizes.refetch();
            void addresses.refetch();
          }}
        />
        {prize ? (
          <>
            <View style={styles.hero}>
              <Text style={styles.star}>★</Text>
              <Text style={styles.title}>{prize.productTitle}</Text>
              <StatusPill
                label={labelFor(prize.status)}
                tone={prize.status === 'unclaimed' ? 'warning' : 'success'}
              />
              <Text style={styles.date}>{formatDate(prize.createdAt)}</Text>
            </View>
            {prize.trackingReference ? (
              <View style={styles.card}>
                <Text style={styles.label}>{t('prizes.tracking')}</Text>
                <Text selectable style={styles.value}>
                  {prize.trackingReference}
                </Text>
              </View>
            ) : null}
            {prize.status === 'unclaimed' ? (
              <View style={styles.card}>
                <Text style={styles.cardTitle}>
                  {t('prizes.selectAddress')}
                </Text>
                {addresses.data?.items.map((a) => (
                  <Pressable
                    key={a.id}
                    onPress={() => setAddressId(a.id)}
                    style={[
                      styles.address,
                      selected === a.id && styles.selected,
                    ]}
                  >
                    <Text style={styles.addressName}>{a.recipientName}</Text>
                    <Text style={styles.addressLine}>
                      {a.line1}, {a.city}
                    </Text>
                    <Text style={styles.radio}>
                      {selected === a.id ? '●' : '○'}
                    </Text>
                  </Pressable>
                ))}
                {!addresses.data?.items.length ? (
                  <Pressable onPress={() => router.push('/addresses/add')}>
                    <Text style={styles.link}>{t('prizes.addAddress')}</Text>
                  </Pressable>
                ) : null}
              </View>
            ) : null}
            {error ? <Text style={styles.error}>{error}</Text> : null}
            {prize.status === 'unclaimed' ? (
              <GradientButton
                disabled={!selected}
                loading={busy}
                onPress={() => void claim()}
              >
                {t('prizes.claim')}
              </GradientButton>
            ) : null}
          </>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  hero: {
    alignItems: 'center',
    padding: 24,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.primary,
  },
  star: { color: theme.colors.accentStart, fontSize: 42 },
  title: {
    marginVertical: 10,
    textAlign: 'center',
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  date: { marginTop: 10, color: '#FFF3D1' },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  label: { color: theme.colors.textMuted },
  value: {
    marginTop: 6,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  cardTitle: {
    marginBottom: 12,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  address: {
    marginTop: 8,
    padding: 14,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: 12,
  },
  selected: { borderColor: theme.colors.primary, backgroundColor: '#FFF7F2' },
  addressName: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  addressLine: {
    marginTop: 4,
    paddingRight: 24,
    color: theme.colors.textMuted,
  },
  radio: {
    position: 'absolute',
    right: 12,
    top: 20,
    color: theme.colors.primary,
    fontSize: 20,
  },
  link: {
    padding: 16,
    textAlign: 'center',
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  error: { textAlign: 'center', color: theme.colors.danger },
});
