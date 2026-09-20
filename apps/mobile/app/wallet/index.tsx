import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  ImageBackground,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { formatMoney } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function WalletScreen() {
  const { formatMoney, t } = useI18n();
  const wallet = useQuery({ queryKey: ['wallet'], queryFn: api.wallet });
  const data = wallet.data ?? {
    availableMinor: 0,
    lockedMinor: 0,
    currency: 'INR' as const,
  };
  return (
    <Screen
      header={<TopBar title={t('wallet.title')} />}
      refreshing={wallet.isRefetching}
      onRefresh={() => void wallet.refetch()}
    >
      <View style={styles.page}>
        <ImageBackground
          source={assets.walletBackground}
          resizeMode="cover"
          imageStyle={styles.image}
          style={styles.wallet}
        >
          <Text style={styles.label}>{t('wallet.available')}</Text>
          <Text style={styles.balance}>
            {formatMoney(data.availableMinor, data.currency)}
          </Text>
          <Text style={styles.locked}>
            {t('wallet.locked', {
              amount: formatMoney(data.lockedMinor, data.currency),
            })}
          </Text>
        </ImageBackground>
        <View style={styles.actions}>
          <Pressable
            onPress={() => router.push('/wallet/recharge')}
            style={styles.action}
          >
            <Text style={styles.actionTitle}>{t('wallet.recharge')}</Text>
            <Text style={styles.actionCopy}>{t('wallet.rechargeCopy')}</Text>
          </Pressable>
          <Pressable
            onPress={() => router.push('/wallet/withdraw')}
            style={styles.action}
          >
            <Text style={styles.actionTitle}>{t('wallet.withdraw')}</Text>
            <Text style={styles.actionCopy}>{t('wallet.withdrawCopy')}</Text>
          </Pressable>
        </View>
        <Pressable
          onPress={() => router.push('/wallet/transactions')}
          style={styles.row}
        >
          <Text style={styles.rowText}>{t('wallet.funding')}</Text>
          <Text style={styles.arrow}>›</Text>
        </Pressable>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  wallet: {
    minHeight: 150,
    padding: theme.spacing.xl,
    justifyContent: 'center',
  },
  image: { borderRadius: theme.radii.xl },
  label: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.regular,
  },
  balance: {
    marginTop: theme.spacing.sm,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: 30,
  },
  locked: {
    marginTop: theme.spacing.sm,
    color: '#FFF3D1',
    fontFamily: theme.typography.family.regular,
  },
  actions: {
    marginTop: theme.spacing.lg,
    flexDirection: 'row',
    gap: theme.spacing.md,
  },
  action: {
    flex: 1,
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  actionTitle: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  actionCopy: {
    marginTop: theme.spacing.sm,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: 12,
  },
  row: {
    marginTop: theme.spacing.lg,
    minHeight: 58,
    flexDirection: 'row',
    alignItems: 'center',
    borderRadius: theme.radii.xl,
    padding: theme.spacing.lg,
    backgroundColor: theme.colors.surface,
  },
  rowText: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  arrow: { color: theme.colors.textMuted, fontSize: 24 },
});
