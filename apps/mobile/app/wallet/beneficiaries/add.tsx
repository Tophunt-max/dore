import { router } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { FormField } from '@/components/FormField';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

type Type = 'upi' | 'bank';
export default function AddBeneficiaryScreen() {
  const { t } = useI18n();
  const [type, setType] = useState<Type>('upi');
  const [label, setLabel] = useState('');
  const [holder, setHolder] = useState('');
  const [upi, setUpi] = useState('');
  const [account, setAccount] = useState('');
  const [bank, setBank] = useState('');
  const [ifsc, setIfsc] = useState('');
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);
  async function save() {
    setBusy(true);
    setError(null);
    try {
      await api.createBeneficiary(
        type === 'upi'
          ? {
              type,
              label: label.trim(),
              accountHolderName: holder.trim() || null,
              upiId: upi.trim(),
              isDefault: true,
            }
          : {
              type,
              label: label.trim(),
              accountHolderName: holder.trim(),
              accountNumber: account.trim(),
              bankName: bank.trim(),
              ifsc: ifsc.trim(),
              isDefault: true,
            },
      );
      router.back();
    } catch (reason) {
      setError(reason instanceof Error ? reason.message : t('common.error'));
    } finally {
      setBusy(false);
    }
  }
  const valid =
    label.trim().length >= 2 &&
    (type === 'upi'
      ? upi.includes('@')
      : holder.trim().length >= 2 &&
        account.length >= 6 &&
        ifsc.length === 11 &&
        bank.trim().length >= 2);
  return (
    <Screen header={<TopBar title={t('beneficiaries.add')} />}>
      <View style={styles.page}>
        <View style={styles.tabs}>
          {(['upi', 'bank'] as const).map((item) => (
            <Pressable
              key={item}
              onPress={() => setType(item)}
              style={[styles.tab, type === item && styles.activeTab]}
            >
              <Text
                style={[styles.tabText, type === item && styles.activeText]}
              >
                {item.toUpperCase()}
              </Text>
            </Pressable>
          ))}
        </View>
        <Text style={styles.info}>{t('beneficiaries.info')}</Text>
        <FormField
          label={t('beneficiaries.label')}
          placeholder={t('beneficiaries.primary')}
          onChangeText={setLabel}
          value={label}
        />
        <FormField
          label={t('beneficiaries.holder')}
          onChangeText={setHolder}
          value={holder}
        />
        {type === 'upi' ? (
          <FormField
            autoCapitalize="none"
            label={t('payment.upiId')}
            placeholder="name@bank"
            onChangeText={setUpi}
            value={upi}
          />
        ) : (
          <>
            <FormField
              keyboardType="number-pad"
              label={t('payment.accountNumber')}
              onChangeText={setAccount}
              value={account}
            />
            <FormField
              label={t('payment.bankName')}
              onChangeText={setBank}
              value={bank}
            />
            <FormField
              autoCapitalize="characters"
              label={t('payment.ifsc')}
              maxLength={11}
              onChangeText={setIfsc}
              value={ifsc}
            />
          </>
        )}
        {error ? <Text style={styles.error}>{error}</Text> : null}
        <GradientButton
          disabled={!valid}
          loading={busy}
          onPress={() => void save()}
        >
          {t('beneficiaries.add')}
        </GradientButton>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  tabs: {
    flexDirection: 'row',
    marginBottom: 16,
    padding: 4,
    borderRadius: 24,
    backgroundColor: theme.colors.surface,
  },
  tab: { flex: 1, padding: 11, alignItems: 'center', borderRadius: 20 },
  activeTab: { backgroundColor: '#FFF1EA' },
  tabText: {
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.bold,
  },
  activeText: { color: theme.colors.primary },
  info: {
    marginBottom: 18,
    padding: 16,
    borderRadius: 12,
    color: theme.colors.textSecondary,
    backgroundColor: '#FFF5DD',
    lineHeight: 20,
  },
  error: { marginBottom: 16, textAlign: 'center', color: theme.colors.danger },
});
