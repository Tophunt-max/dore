import { useState } from 'react';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { ManualPaymentForm } from '@/components/ManualPaymentForm';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

const amounts = [10000, 25000, 50000, 100000];
export default function RechargeScreen() {
  const { formatMoney, t } = useI18n();
  const [amountMinor, setAmountMinor] = useState(amounts[0] ?? 10000);
  return (
    <Screen header={<TopBar title={t('wallet.manualRecharge')} />}>
      <View style={styles.page}>
        <Text style={styles.title}>{t('wallet.selectRecharge')}</Text>
        <View style={styles.grid}>
          {amounts.map((amount) => (
            <Pressable
              key={amount}
              onPress={() => setAmountMinor(amount)}
              style={[styles.amount, amountMinor === amount && styles.selected]}
            >
              <Text
                style={[
                  styles.amountText,
                  amountMinor === amount && styles.selectedText,
                ]}
              >
                {formatMoney(amount)}
              </Text>
            </Pressable>
          ))}
        </View>
        <ManualPaymentForm amountMinor={amountMinor} />
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  grid: { flexDirection: 'row', flexWrap: 'wrap', gap: theme.spacing.md },
  amount: {
    width: '47%',
    minHeight: 64,
    alignItems: 'center',
    justifyContent: 'center',
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  selected: { borderColor: theme.colors.primary, backgroundColor: '#FFF3D1' },
  amountText: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  selectedText: { color: theme.colors.primary },
});
