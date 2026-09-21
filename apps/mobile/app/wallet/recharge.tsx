import { router } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { ManualPaymentForm } from '@/components/ManualPaymentForm';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/payment/recharge` (scope 05d5374a): a wrap of preset amount
// chips (208rpx, orange when active) plus a custom-amount input, then the pay
// action. The Oriva app keeps its secure manual-transfer form below the picker
// instead of the original gateway hand-off.
const presets = [10000, 50000, 100000, 500000, 1000000]; // ₹100…₹10,000

export default function RechargeScreen() {
  const { formatMoney, t } = useI18n();
  const [amountMinor, setAmountMinor] = useState(presets[0] ?? 10000);
  const [custom, setCustom] = useState('');
  const customActive = custom.trim().length > 0;

  function pickCustom(text: string) {
    setCustom(text);
    const value = Math.round(Number(text) * 100);
    if (Number.isFinite(value) && value > 0) setAmountMinor(value);
  }

  return (
    <Screen
      header={
        <TopBar
          title={t('wallet.manualRecharge')}
          white
          actionLabel={t('payment.records')}
          onAction={() => router.push('/payments')}
        />
      }
      contentStyle={styles.page}
    >
      <Text style={styles.tips}>{t('wallet.selectRecharge')}</Text>

      {/* .comfirm_pay — amount chips + custom input */}
      <View style={styles.pay}>
        {presets.map((amount) => {
          const on = !customActive && amountMinor === amount;
          return (
            <Pressable
              key={amount}
              onPress={() => {
                setCustom('');
                setAmountMinor(amount);
              }}
              style={[styles.payItem, on && styles.payItemActive]}
            >
              <Text style={[styles.payText, on && styles.payTextActive]}>
                {formatMoney(amount)}
              </Text>
            </Pressable>
          );
        })}
        <TextInput
          value={custom}
          onChangeText={pickCustom}
          keyboardType="numeric"
          placeholder={t('wallet.enterAmount')}
          placeholderTextColor={theme.colors.disabled}
          style={[styles.customInput, customActive && styles.payItemActive]}
        />
      </View>

      <ManualPaymentForm amountMinor={amountMinor} />
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .comfirm { background:#fff; padding-bottom:100rpx }
  page: {
    backgroundColor: theme.colors.surface,
    flexGrow: 1,
    paddingHorizontal: rpx(30),
    paddingBottom: rpx(100),
  },
  // .comfirm-tips { 26rpx; #17273a }
  tips: {
    marginTop: rpx(24),
    fontSize: rpx(26),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  // .comfirm_pay { margin-top:24rpx; wrap }
  pay: {
    marginTop: rpx(24),
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: rpx(24),
  },
  // .comfirm_pay_item { 208rpx x 78rpx; border; radius 9rpx }
  payItem: {
    width: rpx(208),
    height: rpx(78),
    alignItems: 'center',
    justifyContent: 'center',
    borderWidth: rpx(1),
    borderColor: 'rgba(185,185,185,0.6)',
    borderRadius: rpx(9),
  },
  // .active { bg #ee5016; border #ee5016; color #fff }
  payItemActive: { backgroundColor: '#ee5016', borderColor: '#ee5016' },
  payText: {
    fontSize: rpx(28),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  payTextActive: { color: '#fff' },
  // full-width custom input chip
  customInput: {
    width: '100%',
    height: rpx(78),
    textAlign: 'center',
    borderWidth: rpx(1),
    borderColor: 'rgba(185,185,185,0.6)',
    borderRadius: rpx(9),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
    fontSize: rpx(28),
  },
});
