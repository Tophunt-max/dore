import * as Crypto from 'expo-crypto';
import { useQuery } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { useRef, useState } from 'react';
import {
  Alert,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { chooseAndUploadPaymentProof } from '@/uploads';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function PaymentStatusScreen() {
  const { labelFor, t } = useI18n();
  const { paymentId } = useLocalSearchParams<{ paymentId: string }>();
  const payment = useQuery({
    queryKey: ['payment', paymentId],
    queryFn: () => api.payment(paymentId),
    refetchInterval: (query) =>
      query.state.data?.status === 'under_review' ? 15000 : false,
  });
  const [reference, setReference] = useState('');
  const [proof, setProof] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const key = useRef(Crypto.randomUUID());
  const data = payment.data;
  async function upload() {
    setBusy(true);
    try {
      setProof(await chooseAndUploadPaymentProof());
    } catch (e) {
      Alert.alert(
        t('payment.uploadFailed'),
        e instanceof Error ? e.message : t('payment.unableUploadProof'),
      );
    } finally {
      setBusy(false);
    }
  }
  async function resubmit() {
    if (reference.trim().length < 6) {
      Alert.alert(t('payment.invalidReference'));
      return;
    }
    setBusy(true);
    try {
      await api.submitPayment(paymentId, {
        transactionReference: reference.trim(),
        proofUploadId: proof,
        idempotencyKey: key.current,
      });
      await payment.refetch();
    } catch (e) {
      Alert.alert(
        t('payment.submissionFailed'),
        e instanceof Error ? e.message : t('payment.unableSubmit'),
      );
    } finally {
      setBusy(false);
    }
  }
  return (
    <Screen
      header={<TopBar title={t('payment.status')} />}
      onRefresh={() => void payment.refetch()}
      refreshing={payment.isRefetching}
    >
      <View style={styles.page}>
        {!data ? (
          <QueryNotice
            loading={payment.isLoading}
            error={payment.error}
            onRetry={() => void payment.refetch()}
          />
        ) : (
          <>
            <View style={styles.card}>
              <View style={styles.header}>
                <Text style={styles.amount}>
                  {formatMoney(data.amountMinor, data.currency)}
                </Text>
                <StatusPill
                  label={labelFor(data.status)}
                  tone={
                    data.status === 'approved'
                      ? 'success'
                      : data.status === 'rejected'
                        ? 'danger'
                        : 'warning'
                  }
                />
              </View>
              <Text style={styles.method}>{data.method.displayName}</Text>
              {data.latestSubmission ? (
                <View style={styles.row}>
                  <Text style={styles.label}>{t('payment.reference')}</Text>
                  <Text style={styles.value}>
                    {data.latestSubmission.transactionReference}
                  </Text>
                </View>
              ) : null}
              {data.latestSubmission?.rejectionReason ? (
                <Text style={styles.rejection}>
                  {data.latestSubmission.rejectionReason}
                </Text>
              ) : null}
            </View>
            {data.status === 'under_review' ? (
              <View style={styles.notice}>
                <Text style={styles.noticeTitle}>{t('payment.pending')}</Text>
                <Text style={styles.noticeCopy}>
                  {t('payment.pendingCopy')}
                </Text>
              </View>
            ) : null}
            {data.status === 'approved' ? (
              <GradientButton
                onPress={() =>
                  router.replace(
                    data.purpose === 'recharge' ? '/wallet' : '/orders',
                  )
                }
              >
                {t('common.continue')}
              </GradientButton>
            ) : null}
            {data.status === 'rejected' ||
            data.status === 'awaiting_submission' ? (
              <View style={styles.form}>
                <Text style={styles.formTitle}>
                  {t(
                    data.status === 'rejected'
                      ? 'payment.submitNewReference'
                      : 'payment.submitYourReference',
                  )}
                </Text>
                <TextInput
                  value={reference}
                  onChangeText={setReference}
                  autoCapitalize="characters"
                  placeholder={t('payment.bankReference')}
                  placeholderTextColor={theme.colors.textMuted}
                  style={styles.input}
                />
                <Pressable onPress={upload} style={styles.proof}>
                  <Text style={styles.proofText}>
                    {proof
                      ? t('payment.shortProofAttached')
                      : t('payment.attachScreenshot')}
                  </Text>
                </Pressable>
                <GradientButton loading={busy} onPress={resubmit}>
                  {t('payment.submitVerification')}
                </GradientButton>
              </View>
            ) : null}
          </>
        )}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  loading: { textAlign: 'center', color: theme.colors.textMuted },
  card: {
    borderRadius: theme.radii.xl,
    padding: theme.spacing.xl,
    backgroundColor: theme.colors.surface,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  amount: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: 28,
  },
  method: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.medium,
  },
  row: {
    marginTop: theme.spacing.lg,
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  label: {
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  value: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  rejection: {
    marginTop: theme.spacing.lg,
    color: theme.colors.danger,
    fontFamily: theme.typography.family.medium,
  },
  notice: {
    borderRadius: theme.radii.lg,
    padding: theme.spacing.lg,
    backgroundColor: '#FFF5DD',
  },
  noticeTitle: {
    color: theme.colors.warning,
    fontFamily: theme.typography.family.bold,
  },
  noticeCopy: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    lineHeight: 20,
  },
  form: {
    gap: theme.spacing.md,
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  formTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  input: {
    minHeight: 52,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: theme.radii.lg,
    paddingHorizontal: theme.spacing.lg,
    color: theme.colors.ink,
  },
  proof: {
    alignItems: 'center',
    borderWidth: 1,
    borderStyle: 'dashed',
    borderColor: theme.colors.primary,
    borderRadius: theme.radii.lg,
    padding: theme.spacing.lg,
  },
  proofText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
});
