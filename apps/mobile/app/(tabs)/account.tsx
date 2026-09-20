import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Pressable,
  StyleSheet,
  Text,
  useWindowDimensions,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { BrandMark } from '@/components/BrandMark';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
const items = [
  ['account.orders', '/orders'],
  ['account.prizes', '/prizes'],
  ['account.shares', '/my-shares'],
  ['account.team', '/team'],
  ['account.addresses', '/addresses'],
  ['account.payments', '/payments'],
  ['account.methods', '/payment-methods'],
  ['account.funding', '/wallet/transactions'],
  ['wallet.withdrawals', '/wallet/withdrawals'],
  ['account.support', '/support'],
  ['account.settings', '/settings'],
] as const;
export default function AccountScreen() {
  const { width } = useWindowDimensions();
  const { t, formatMoney } = useI18n();
  const user = useAuthStore((s) => s.user);
  const wallet = useQuery({
    queryKey: ['wallet'],
    queryFn: api.wallet,
    enabled: Boolean(user),
  });
  return (
    <Screen>
      <View
        style={[
          styles.hero,
          { minHeight: Math.max(180, Math.min(230, width * 0.48)) },
        ]}
      >
        <Pressable
          onPress={() => router.push(user ? '/profile/username' : '/login')}
          style={styles.profile}
        >
          <BrandMark size={68} />
          <View style={styles.profileCopy}>
            <Text style={styles.name}>
              {user?.displayName ?? t('account.welcome')}
            </Text>
            <Text style={styles.login}>
              {user?.phoneMasked ?? t('account.signInPrompt')} ›
            </Text>
          </View>
        </Pressable>
      </View>
      <View style={styles.page}>
        <Pressable onPress={() => router.push('/wallet')} style={styles.wallet}>
          <Text style={styles.walletLabel}>{t('account.wallet')}</Text>
          <Text style={styles.balance}>
            {wallet.data
              ? formatMoney(wallet.data.availableMinor, wallet.data.currency)
              : user
                ? t('common.loading')
                : '—'}
          </Text>
          <View style={styles.walletActions}>
            <Pressable onPress={() => router.push('/wallet/recharge')}>
              <Text style={styles.walletAction}>{t('account.recharge')}</Text>
            </Pressable>
            <Pressable onPress={() => router.push('/wallet/withdraw')}>
              <Text style={styles.walletAction}>{t('account.withdraw')}</Text>
            </Pressable>
          </View>
        </Pressable>
        <Text style={styles.sectionTitle}>{t('account.title')}</Text>
        <View style={styles.menu}>
          {items.map(([key, route]) => (
            <Pressable
              key={route}
              onPress={() => router.push(route)}
              style={styles.row}
            >
              <Text style={styles.rowLabel}>{t(key)}</Text>
              <Text style={styles.arrow}>›</Text>
            </Pressable>
          ))}
        </View>
        <Pressable onPress={() => router.push('/about')} style={styles.about}>
          <Text style={styles.aboutText}>{t('account.about')}</Text>
        </Pressable>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  hero: {
    padding: theme.spacing.xl,
    justifyContent: 'center',
    backgroundColor: theme.colors.primary,
  },
  profile: { flexDirection: 'row', alignItems: 'center' },
  profileCopy: { flex: 1, marginLeft: 16 },
  name: {
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  login: { marginTop: 8, color: '#FFF3D1' },
  page: { marginTop: -24, paddingHorizontal: theme.spacing.lg },
  wallet: {
    minHeight: 120,
    padding: theme.spacing.lg,
    justifyContent: 'center',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  walletLabel: { color: '#D8DEE5' },
  balance: {
    marginTop: 4,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.hero,
  },
  walletActions: {
    position: 'absolute',
    right: 16,
    bottom: 16,
    flexDirection: 'row',
    gap: 16,
  },
  walletAction: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
  },
  sectionTitle: {
    marginTop: 24,
    marginBottom: 8,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.bold,
    textTransform: 'uppercase',
  },
  menu: {
    overflow: 'hidden',
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  row: {
    minHeight: 58,
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: 16,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: theme.colors.border,
  },
  rowLabel: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
  },
  arrow: { color: theme.colors.textMuted, fontSize: 24 },
  about: { marginVertical: 24, alignItems: 'center' },
  aboutText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.medium,
  },
});
