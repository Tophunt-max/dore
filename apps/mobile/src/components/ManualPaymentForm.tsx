import * as Crypto from 'expo-crypto';
import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useRef, useState } from 'react';
import {
  Alert,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import {
  formatMoney,
  type ManualPayment,
  type PaymentMethod,
} from '@oriva/shared';
import { api } from '@/api/endpoints';
import { chooseAndUploadPaymentProof } from '@/uploads';
import { GradientButton } from './GradientButton';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

interface ManualPaymentFormProps {
  amountMinor: number;
  orderId?: string;
}

export function ManualPaymentForm({
  amountMinor,
  orderId,
}: ManualPaymentFormProps) {
  const { t } = useI18n();
  const methods = useQuery({
    queryKey: ['payment-methods'],
    queryFn: api.paymentMethods,
  });
  const [selected, setSelected] = useState<PaymentMethod | null>(null);
  const [payment, setPayment] = useState<ManualPayment | null>(null);
  const [reference, setReference] = useState('');
  const [proofUploadId, setProofUploadId] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const intentKey = useRef(Crypto.randomUUID());
  const submissionKey = useRef(Crypto.randomUUID());

  async function createIntent() {
    if (!selected) return;
    setBusy(true);
    setError(null);
    try {
      const result = orderId
        ? await api.createPayment({
            orderId,
            paymentMethodId: selected.id,
            idempotencyKey: intentKey.current,
          })
        : await api.createRecharge({
            amountMinor,
            paymentMethodId: selected.id,
            idempotencyKey: intentKey.current,
          });
      setPayment(result);
    } catch (caught) {
      setError(
        caught instanceof Error ? caught.message : t('payment.unableCreate'),
      );
    } finally {
      setBusy(false);
    }
  }

  async function attachProof() {
    setBusy(true);
    setError(null);
    try {
      const uploadId = await chooseAndUploadPaymentProof();
      if (uploadId) setProofUploadId(uploadId);
    } catch (caught) {
      Alert.alert(
        t('payment.uploadFailed'),
        caught instanceof Error
          ? caught.message
          : t('payment.unableUploadProof'),
      );
    } finally {
      setBusy(false);
    }
  }

  async function submit() {
    if (!payment || reference.trim().length < 6) {
      setError(t('payment.invalidUtr'));
      return;
    }
    setBusy(true);
    setError(null);
    try {
      await api.submitPayment(payment.id, {
        transactionReference: reference.trim(),
        proofUploadId,
        idempotencyKey: submissionKey.current,
      });
      router.replace(`/payments/${payment.id}`);
    } catch (caught) {
      setError(
        caught instanceof Error
          ? caught.message
          : t('payment.unableSubmitPayment'),
      );
    } finally {
      setBusy(false);
    }
  }

  if (!payment) {
    return (
      <View style={styles.section}>
        <Text style={styles.title}>{t('payment.chooseMethod')}</Text>
        <Text style={styles.copy}>{t('payment.transferInstructions')}</Text>
        {methods.data?.items.map((method) => (
          <Pressable
            key={method.id}
            onPress={() => setSelected(method)}
            style={[
              styles.method,
              selected?.id === method.id && styles.methodSelected,
            ]}
          >
            <View style={styles.methodBadge}>
              <Text style={styles.methodBadgeText}>
                {method.type === 'upi' ? 'UPI' : 'BANK'}
              </Text>
            </View>
            <View style={styles.methodCopy}>
              <Text style={styles.methodTitle}>{method.displayName}</Text>
              <Text style={styles.methodDetail}>
                {method.type === 'upi'
                  ? method.upiId
                  : `${method.bankName} • ${method.ifsc}`}
              </Text>
            </View>
            <Text style={styles.radio}>
              {selected?.id === method.id ? '●' : '○'}
            </Text>
          </Pressable>
        ))}
        {!methods.isLoading && !methods.data?.items.length ? (
          <Text style={styles.error}>{t('payment.noMethodsCopy')}</Text>
        ) : null}
        {error ? <Text style={styles.error}>{error}</Text> : null}
        <GradientButton
          disabled={!selected}
          loading={busy}
          onPress={createIntent}
        >
          {t('payment.showDetails')}
        </GradientButton>
      </View>
    );
  }

  const method = payment.method;
  return (
    <View style={styles.section}>
      <View style={styles.amountCard}>
        <Text style={styles.amountLabel}>{t('payment.transferExact')}</Text>
        <Text style={styles.amount}>
          {formatMoney(payment.amountMinor, payment.currency)}
        </Text>
      </View>
      <View style={styles.instructions}>
        <Text style={styles.title}>{method.displayName}</Text>
        {method.upiId ? (
          <Detail label={t('payment.upiId')} value={method.upiId} />
        ) : null}
        {method.accountName ? (
          <Detail label={t('payment.accountName')} value={method.accountName} />
        ) : null}
        {method.accountNumber ? (
          <Detail
            label={t('payment.accountNumber')}
            value={method.accountNumber}
          />
        ) : null}
        {method.bankName ? (
          <Detail label={t('payment.bank')} value={method.bankName} />
        ) : null}
        {method.ifsc ? (
          <Detail label={t('payment.ifsc')} value={method.ifsc} />
        ) : null}
        <Text style={styles.instructionText}>{method.instructions}</Text>
      </View>
      <Text style={styles.label}>{t('payment.transactionReference')}</Text>
      <TextInput
        autoCapitalize="characters"
        onChangeText={setReference}
        placeholder={t('payment.enterReference')}
        placeholderTextColor={theme.colors.textMuted}
        style={styles.input}
        value={reference}
      />
      <Pressable onPress={attachProof} style={styles.proof}>
        <Text style={styles.proofText}>
          {proofUploadId
            ? t('payment.proofAttached')
            : t('payment.attachProof')}
        </Text>
      </Pressable>
      <View style={styles.notice}>
        <Text style={styles.noticeText}>{t('payment.verificationNotice')}</Text>
      </View>
      {error ? <Text style={styles.error}>{error}</Text> : null}
      <GradientButton loading={busy} onPress={submit}>
        {t('payment.submit')}
      </GradientButton>
    </View>
  );
}

function Detail({ label, value }: { label: string; value: string }) {
  return (
    <View style={styles.detail}>
      <Text style={styles.detailLabel}>{label}</Text>
      <Text selectable style={styles.detailValue}>
        {value}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  section: { gap: theme.spacing.md },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  copy: {
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    lineHeight: 20,
  },
  method: {
    flexDirection: 'row',
    alignItems: 'center',
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  methodSelected: {
    borderColor: theme.colors.primary,
    backgroundColor: '#FFF7F2',
  },
  methodBadge: {
    width: 48,
    height: 48,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 24,
    backgroundColor: '#FFF1EA',
  },
  methodBadgeText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 11,
  },
  methodCopy: { flex: 1, marginLeft: theme.spacing.md },
  methodTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  methodDetail: {
    marginTop: 4,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: 12,
  },
  radio: { color: theme.colors.primary, fontSize: 23 },
  amountCard: {
    alignItems: 'center',
    borderRadius: theme.radii.xl,
    padding: theme.spacing.xl,
    backgroundColor: theme.colors.ink,
  },
  amountLabel: {
    color: '#D8DEE5',
    fontFamily: theme.typography.family.regular,
  },
  amount: {
    marginTop: theme.spacing.sm,
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    fontSize: 30,
  },
  instructions: {
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  detail: {
    minHeight: 42,
    flexDirection: 'row',
    alignItems: 'center',
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: theme.colors.border,
  },
  detailLabel: {
    width: 110,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  detailValue: {
    flex: 1,
    textAlign: 'right',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  instructionText: {
    marginTop: theme.spacing.md,
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    lineHeight: 20,
  },
  label: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  input: {
    minHeight: 52,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: theme.radii.lg,
    paddingHorizontal: theme.spacing.lg,
    color: theme.colors.ink,
    backgroundColor: theme.colors.surface,
    fontFamily: theme.typography.family.medium,
  },
  proof: {
    alignItems: 'center',
    borderWidth: 1,
    borderStyle: 'dashed',
    borderColor: theme.colors.primary,
    borderRadius: theme.radii.lg,
    padding: theme.spacing.lg,
    backgroundColor: '#FFF7F2',
  },
  proofText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  notice: {
    borderRadius: theme.radii.md,
    padding: theme.spacing.md,
    backgroundColor: '#FFF5DD',
  },
  noticeText: {
    color: theme.colors.textSecondary,
    fontFamily: theme.typography.family.regular,
    fontSize: 12,
    lineHeight: 18,
  },
  error: {
    color: theme.colors.danger,
    fontFamily: theme.typography.family.regular,
    textAlign: 'center',
  },
});
