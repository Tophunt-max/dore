import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Image,
  ImageBackground,
  Pressable,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { assets } from '@/assets';
import { rpx } from '@/rpx';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';

const orderStatuses = [
  { icon: assets.statusWaiting, label: 'Waiting' },
  { icon: assets.statusToConfirm, label: 'Pending' },
  { icon: assets.statusInDelivery, label: 'To Be Collected' },
  { icon: assets.statusReceived, label: 'Received' },
] as const;

const menu = [
  { icon: assets.menuMyshare, title: 'My Shares', route: '/my-shares' },
  {
    icon: assets.menuFunding,
    title: 'Fund Records',
    route: '/wallet/transactions',
  },
  {
    icon: assets.menuInvitation,
    title: 'Invitation Records',
    route: '/referrals',
  },
  { icon: assets.menuTeam, title: 'My team', route: '/team' },
] as const;

const settingsMenu = [
  { icon: assets.menuService, title: 'Customer Support', route: '/support' },
  { icon: assets.menuAbout, title: 'About Us', route: '/about' },
] as const;

export default function AccountScreen() {
  const { formatMoney } = useI18n();
  const user = useAuthStore((s) => s.user);
  const wallet = useQuery({
    queryKey: ['wallet'],
    queryFn: api.wallet,
    enabled: Boolean(user),
  });
  const balance = wallet.data
    ? formatMoney(wallet.data.availableMinor, wallet.data.currency)
    : user
      ? '—'
      : '₹0.00';
  return (
    <Screen contentStyle={styles.root}>
      {/* Profile header */}
      <ImageBackground
        source={assets.accountBackground}
        resizeMode="cover"
        style={styles.header}
        imageStyle={styles.headerImage}
      >
        <Pressable
          onPress={() => router.push('/settings')}
          style={styles.setting}
        >
          <Image source={assets.iconSetup} style={styles.settingIcon} />
        </Pressable>
        <Pressable
          onPress={() => router.push(user ? '/profile/username' : '/login')}
          style={styles.userMain}
        >
          <Image
            source={
              user?.avatarUrl ? { uri: user.avatarUrl } : assets.defaultAvatar
            }
            style={styles.avatar}
          />
          <View style={styles.userInfo}>
            <Text style={styles.userName}>
              {user?.displayName ?? 'Sign in / Register'}
            </Text>
            <Text style={styles.userNumber}>{user?.phoneMasked ?? '—'}</Text>
          </View>
        </Pressable>
        <Pressable
          onPress={() => router.push('/(tabs)/member')}
          style={styles.vip}
        >
          <Image source={assets.vipGold} style={styles.vipCoin} />
          <Text style={styles.vipText}>VIP Privileges</Text>
          <Image source={assets.arrowRight} style={styles.vipArrow} />
        </Pressable>
      </ImageBackground>

      {/* Order status card */}
      <View style={styles.orderCard}>
        <Pressable
          onPress={() => router.push('/orders')}
          style={styles.orderMenu}
        >
          <Text style={styles.orderMenuLeft}>My orders</Text>
          <View style={styles.orderMenuRight}>
            <Text style={styles.orderMenuRightText}>All</Text>
            <Image source={assets.arrowGrey} style={styles.orderMenuArrow} />
          </View>
        </Pressable>
        <View style={styles.orderNav}>
          {orderStatuses.map((status) => (
            <Pressable
              key={status.label}
              onPress={() => router.push('/orders')}
              style={styles.orderNavItem}
            >
              <Image source={status.icon} style={styles.orderNavIcon} />
              <Text style={styles.orderNavTitle}>{status.label}</Text>
            </Pressable>
          ))}
        </View>
      </View>

      {/* Wallet card */}
      <ImageBackground
        source={assets.walletBackground}
        resizeMode="stretch"
        style={styles.walletCard}
        imageStyle={styles.walletImage}
      >
        <Text style={styles.walletTitle}>Wallet</Text>
        <View style={styles.walletMain}>
          <Text style={styles.walletCount} numberOfLines={1}>
            {balance}
          </Text>
          <Pressable
            onPress={() => router.push('/wallet/withdraw')}
            style={styles.walletBtnDraw}
          >
            <Text style={styles.walletBtnDrawText}>Withdraw</Text>
          </Pressable>
          <Pressable
            onPress={() => router.push('/wallet/recharge')}
            style={styles.walletBtnRecharge}
          >
            <Text style={styles.walletBtnRechargeText}>Recharge</Text>
          </Pressable>
        </View>
        <Text style={styles.walletTip}>Balances</Text>
      </ImageBackground>

      {/* Menu list */}
      <View style={styles.menuList}>
        {menu.map((item, index) => (
          <Pressable
            key={item.title}
            onPress={() => router.push(item.route)}
            style={[styles.menuItem, index > 0 && styles.menuItemBorder]}
          >
            <View style={styles.menuItemLeft}>
              <Image source={item.icon} style={styles.menuIcon} />
              <Text style={styles.menuTitle}>{item.title}</Text>
            </View>
            <Image source={assets.arrowGrey} style={styles.menuArrow} />
          </Pressable>
        ))}
      </View>

      {/* Settings list */}
      <View style={styles.menuList}>
        {settingsMenu.map((item, index) => (
          <Pressable
            key={item.title}
            onPress={() => router.push(item.route)}
            style={[styles.menuItem, index > 0 && styles.menuItemBorder]}
          >
            <View style={styles.menuItemLeft}>
              <Image source={item.icon} style={styles.menuIcon} />
              <Text style={styles.menuTitle}>{item.title}</Text>
            </View>
            <Image source={assets.arrowGrey} style={styles.menuArrow} />
          </Pressable>
        ))}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  root: { backgroundColor: '#f9f9f9', paddingBottom: rpx(60) },
  header: {
    height: rpx(500),
    paddingTop: rpx(40),
  },
  headerImage: { resizeMode: 'cover' },
  setting: {
    position: 'absolute',
    top: rpx(28),
    right: rpx(24),
  },
  settingIcon: { width: rpx(40), height: rpx(40) },
  userMain: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingTop: rpx(40),
  },
  avatar: {
    width: rpx(120),
    height: rpx(120),
    borderRadius: rpx(60),
    marginLeft: rpx(32),
    backgroundColor: 'rgba(255,255,255,.3)',
  },
  userInfo: { marginLeft: rpx(34) },
  userName: {
    fontSize: rpx(34),
    fontFamily: theme.typography.family.bold,
    color: '#fff',
  },
  userNumber: {
    marginTop: rpx(12),
    fontSize: rpx(26),
    color: '#fff',
    opacity: 0.92,
  },
  vip: {
    marginTop: rpx(30),
    marginHorizontal: rpx(16),
    height: rpx(96),
    borderRadius: rpx(14),
    backgroundColor: 'rgba(255,255,255,.9)',
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: rpx(28),
  },
  vipCoin: { width: rpx(48), height: rpx(48) },
  vipText: {
    flex: 1,
    marginLeft: rpx(18),
    fontSize: rpx(28),
    fontFamily: theme.typography.family.medium,
    color: theme.colors.primary,
  },
  vipArrow: { width: rpx(28), height: rpx(28) },
  orderCard: {
    marginTop: rpx(-120),
    marginLeft: rpx(16),
    marginRight: rpx(12),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
    paddingBottom: rpx(26),
    ...theme.shadows.card,
  },
  orderMenu: {
    paddingTop: rpx(36),
    paddingHorizontal: rpx(28),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  orderMenuLeft: { fontSize: rpx(32), fontFamily: theme.typography.family.bold },
  orderMenuRight: { flexDirection: 'row', alignItems: 'center' },
  orderMenuRightText: { fontSize: rpx(26), color: '#b9b9b9' },
  orderMenuArrow: {
    width: rpx(24),
    height: rpx(24),
    marginLeft: rpx(4),
    tintColor: '#b9b9b9',
  },
  orderNav: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingHorizontal: rpx(44),
    paddingTop: rpx(40),
  },
  orderNavItem: { alignItems: 'center' },
  orderNavIcon: { width: rpx(64), height: rpx(64) },
  orderNavTitle: {
    marginTop: rpx(10),
    fontSize: rpx(24),
    color: theme.colors.ink,
  },
  walletCard: {
    marginTop: rpx(24),
    marginLeft: rpx(16),
    marginRight: rpx(12),
    height: rpx(226),
    borderRadius: rpx(16),
    overflow: 'hidden',
  },
  walletImage: { borderRadius: rpx(16) },
  walletTitle: {
    paddingTop: rpx(30),
    paddingLeft: rpx(46),
    fontSize: rpx(30),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.ink,
  },
  walletMain: {
    marginTop: rpx(26),
    marginLeft: rpx(46),
    flexDirection: 'row',
    alignItems: 'center',
  },
  walletCount: {
    width: rpx(266),
    fontSize: rpx(46),
    fontFamily: theme.typography.family.bold,
    color: theme.colors.primary,
  },
  walletBtnDraw: {
    width: rpx(150),
    height: rpx(64),
    borderRadius: rpx(8),
    borderWidth: 1,
    borderColor: theme.colors.primary,
    alignItems: 'center',
    justifyContent: 'center',
  },
  walletBtnDrawText: { fontSize: rpx(24), color: theme.colors.primary },
  walletBtnRecharge: {
    width: rpx(160),
    height: rpx(64),
    marginLeft: rpx(10),
    borderRadius: rpx(8),
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: theme.colors.accentEnd,
  },
  walletBtnRechargeText: { fontSize: rpx(24), color: '#ad6701' },
  walletTip: {
    marginTop: rpx(14),
    marginLeft: rpx(48),
    fontSize: rpx(24),
    color: '#a6a5a5',
  },
  menuList: {
    backgroundColor: '#fff',
    marginTop: rpx(24),
    marginHorizontal: rpx(16),
    borderRadius: rpx(16),
    paddingHorizontal: rpx(28),
  },
  menuItem: {
    height: rpx(104),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  menuItemBorder: {
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: '#f0f0f0',
  },
  menuItemLeft: { flexDirection: 'row', alignItems: 'center' },
  menuIcon: { width: rpx(44), height: rpx(44), marginRight: rpx(22) },
  menuTitle: {
    fontSize: rpx(32),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  menuArrow: { width: rpx(24), height: rpx(24), tintColor: '#c9c9c9' },
});
