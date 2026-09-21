import * as Crypto from 'expo-crypto';
import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/payment/cashOut` (scope dc9e8b92): a white card with a
// destination selector, a big orange amount input over a hairline, a balance
// row, then a wide submit button and a tips block.
export default function WithdrawScreen() {
  const { t, formatMoney } = useI18n();
  const wallet = useQuery({ queryKey: ['wallet'], queryFn: api.wallet });
  const beneficiaries = useQuery({
    queryKey: ['beneficiaries'],
    queryFn: api.beneficiaries,
  });
  const verified =
    beneficiaries.data?.items.filter((i) => i.verificationStatus === 'verified') ??
    [];
  const [beneficiaryId, setBeneficiaryId] = useState<string | null>(null);
  const selected =
    beneficiaryId ??
    verified.find((i) => i.isDefault)?.id ??
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
          title={t('withdraw.title')}
          white
          actionLabel={t('withdraw.records')}
          onAction={() => router.push('/wallet/withdrawals')}
        />
      }
      contentStyle={styles.page}
    >
      <QueryNotice
        loading={wallet.isLoading || beneficiaries.isLoading}
        error={wallet.error ?? beneficiaries.error}
        onRetry={() => {
          void wallet.refetch();
          void beneficiaries.refetch();
        }}
      />

      <View style={styles.main}>
        {/* destination selector */}
        <View style={styles.titleRow}>
          <Text style={styles.title}>{t('withdraw.destination')}</Text>
          <View style={styles.titleRight}>
            {verified.length ? (
              verified.map((item) => (
                <Pressable
                  key={item.id}
                  onPress={() => setBeneficiaryId(item.id)}
                  style={styles.destOption}
                >
                  <Text
                    style={[
                      styles.destName,
                      selected === item.id && styles.destNameActive,
                    ]}
                    numberOfLines={1}
                  >
                    {item.label} · {item.maskedDestination}
                  </Text>
                </Pressable>
              ))
            ) : (
              <Pressable onPress={() => router.push('/wallet/beneficiaries')}>
                <Text style={styles.destNameActive}>
                  {t('withdraw.addBeneficiary')}
                </Text>
              </Pressable>
            )}
          </View>
        </View>

        {/* amount */}
        <Text style={styles.amountLabel}>{t('withdraw.amount')}</Text>
        <View style={styles.money}>
          <Text style={styles.currency}>₹</Text>
          <TextInput
            value={amount}
            onChangeText={setAmount}
            keyboardType="decimal-pad"
            placeholder="0"
            placeholderTextColor="#f0c3b1"
            style={styles.moneyInput}
          />
        </View>

        {/* balance */}
        <View style={styles.balance}>
          <Text style={styles.balanceLeft}>
            {t('withdraw.available', { amount: '' }).replace(/[:：]?\s*$/, '')}
          </Text>
          <Text style={styles.balanceRight}>
            {wallet.data
              ? formatMoney(wallet.data.availableMinor, wallet.data.currency)
              : '—'}
          </Text>
        </View>
      </View>

      {error ? <Text style={styles.error}>{error}</Text> : null}

      <View style={styles.btn}>
        <GradientButton
          disabled={!wallet.data || !selected}
          loading={loading}
          onPress={() => void submit()}
        >
          {t('withdraw.submit')}
        </GradientButton>
      </View>

      <View style={styles.tip}>
        <Text style={styles.tipText}>{t('withdraw.info')}</Text>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .cashout { background:#f8f8f8 }
  page: { backgroundColor: '#f8f8f8', flexGrow: 1, paddingBottom: rpx(30) },
  // .cashout_main { margin:24 30; padding:38 18 38 26; bg #fff; radius 16rpx }
  main: {
    marginTop: rpx(24),
    marginHorizontal: rpx(30),
    paddingVertical: rpx(38),
    paddingLeft: rpx(26),
    paddingRight: rpx(18),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  // .cashout_main_title
  titleRow: { flexDirection: 'row', alignItems: 'center' },
  title: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  titleRight: { flex: 1, marginLeft: rpx(40) },
  destOption: { alignItems: 'flex-end' },
  destName: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  destNameActive: {
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.medium,
  },
  // .cashout_main_amount { margin-top:28rpx }
  amountLabel: {
    marginTop: rpx(28),
    marginBottom: rpx(20),
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  // .cashout_main_money { 64rpx #ee5016; border-bottom }
  money: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingBottom: rpx(28),
    borderBottomWidth: rpx(1),
    borderBottomColor: '#ececec',
  },
  currency: {
    fontSize: rpx(64),
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
  },
  moneyInput: {
    flex: 1,
    marginLeft: rpx(10),
    fontSize: rpx(64),
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
  },
  // .cashout_main_balance { margin-top:34rpx }
  balance: {
    marginTop: rpx(34),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  balanceLeft: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  balanceRight: {
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  error: {
    marginTop: rpx(20),
    textAlign: 'center',
    color: theme.colors.danger,
  },
  // .cashout_btn { width:600rpx; margin-top:100rpx; margin-left:74rpx }
  btn: { marginTop: rpx(80), marginHorizontal: rpx(74) },
  // .cashout_tip { margin:50rpx 30rpx 0 }
  tip: { marginTop: rpx(50), marginHorizontal: rpx(30) },
  tipText: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    lineHeight: rpx(40),
    fontFamily: theme.typography.family.regular,
  },
});
