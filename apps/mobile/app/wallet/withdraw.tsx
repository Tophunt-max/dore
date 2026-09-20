import * as Crypto from 'expo-crypto';
import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function WithdrawScreen() {
  const { t, formatMoney, labelFor } = useI18n();
  const wallet = useQuery({ queryKey: ['wallet'], queryFn: api.wallet });
  const beneficiaries = useQuery({
    queryKey: ['beneficiaries'],
    queryFn: api.beneficiaries,
  });
  const verified =
    beneficiaries.data?.items.filter(
      (item) => item.verificationStatus === 'verified',
    ) ?? [];
  const [beneficiaryId, setBeneficiaryId] = useState<string | null>(null);
  const selected =
    beneficiaryId ??
    verified.find((item) => item.isDefault)?.id ??
    verified[0]?.id ??
    null;
  const [amount, setAmount] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  async function submit() {
    const minor = Math.round(Number(amount) * 100);
    if (!selected) {
      setError(t('withdraw.beneficiaryRequired'));
      return;
    }
    if (
      !Number.isSafeInteger(minor) ||
      minor <= 0 ||
      minor > (wallet.data?.availableMinor ?? 0)
    ) {
      setError(t('withdraw.invalidAmount'));
      return;
    }
    setLoading(true);
    setError(null);
    try {
      const result = await api.requestWithdrawal(
        minor,
        selected,
        Crypto.randomUUID(),
      );
      router.replace({
        pathname: '/result',
        params: {
          title: t('withdraw.requested'),
          message: t('withdraw.requestedCopy'),
          reference: result.id,
          next: '/wallet/withdrawals',
        },
      });
    } catch (reason) {
      setError(reason instanceof Error ? reason.message : t('common.error'));
    } finally {
      setLoading(false);
    }
  }
  return (
    <Screen
      header={
        <TopBar
          actionLabel={t('withdraw.records')}
          onAction={() => router.push('/wallet/withdrawals')}
          title={t('withdraw.title')}
        />
      }
    >
      <View style={styles.page}>
        <QueryNotice
          loading={wallet.isLoading || beneficiaries.isLoading}
          error={wallet.error ?? beneficiaries.error}
          onRetry={() => {
            void wallet.refetch();
            void beneficiaries.refetch();
          }}
        />
        <View style={styles.card}>
          <Text style={styles.label}>{t('withdraw.amount')}</Text>
          <Text style={styles.available}>
            {t('withdraw.available', {
              amount: wallet.data
                ? formatMoney(wallet.data.availableMinor, wallet.data.currency)
                : '—',
            })}
          </Text>
          <View style={styles.inputRow}>
            <Text style={styles.currency}>₹</Text>
            <TextInput
              value={amount}
              onChangeText={setAmount}
              keyboardType="decimal-pad"
              placeholder="0.00"
              placeholderTextColor={theme.colors.textMuted}
              style={styles.input}
            />
          </View>
        </View>
        <View style={styles.card}>
          <Text style={styles.label}>{t('withdraw.destination')}</Text>
          {verified.map((item) => (
            <Pressable
              key={item.id}
              onPress={() => setBeneficiaryId(item.id)}
              style={[
                styles.destination,
                selected === item.id && styles.selected,
              ]}
            >
              <View style={styles.destinationCopy}>
                <Text style={styles.destinationTitle}>{item.label}</Text>
                <Text style={styles.destinationDetail}>
                  {item.maskedDestination}
                </Text>
              </View>
              <StatusPill
                label={
                  selected === item.id
                    ? t('common.selected')
                    : t('common.verified')
                }
                tone="success"
              />
            </Pressable>
          ))}
          {!beneficiaries.isLoading && !verified.length ? (
            <Pressable onPress={() => router.push('/wallet/beneficiaries')}>
              <Text style={styles.add}>{t('withdraw.addBeneficiary')}</Text>
            </Pressable>
          ) : null}
        </View>
        <Text style={styles.hint}>{t('withdraw.info')}</Text>
        {error ? <Text style={styles.error}>{error}</Text> : null}
        <GradientButton
          disabled={!wallet.data || !selected}
          loading={loading}
          onPress={() => void submit()}
        >
          {t('withdraw.submit')}
        </GradientButton>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.xl,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  label: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  available: { marginTop: 6, color: theme.colors.textMuted },
  inputRow: {
    marginTop: 16,
    flexDirection: 'row',
    alignItems: 'center',
    borderBottomWidth: 1,
    borderBottomColor: theme.colors.border,
  },
  currency: {
    color: theme.colors.primary,
    fontSize: 28,
    fontFamily: theme.typography.family.bold,
  },
  input: {
    flex: 1,
    minHeight: 64,
    marginLeft: 8,
    color: theme.colors.ink,
    fontSize: 32,
    fontFamily: theme.typography.family.bold,
  },
  destination: {
    marginTop: 12,
    flexDirection: 'row',
    alignItems: 'center',
    padding: 12,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: 12,
  },
  selected: { borderColor: theme.colors.primary, backgroundColor: '#FFF7F2' },
  destinationCopy: { flex: 1 },
  destinationTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  destinationDetail: { marginTop: 4, color: theme.colors.textMuted },
  add: {
    paddingVertical: 18,
    textAlign: 'center',
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  hint: { color: theme.colors.textMuted, fontSize: 12, lineHeight: 18 },
  error: { textAlign: 'center', color: theme.colors.danger },
});
