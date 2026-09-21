import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import {
  Alert,
  Image,
  ImageBackground,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/task/member` (scope 051635b0): a VIP hero with a gold member
// card, horizontal plan cards, a row of privilege icon tiles and a fixed-bottom
// gold buy bar.
const privileges = [
  { icon: assets.memberIcons.benefits, label: 'Refund' },
  { icon: assets.memberIcons.cash, label: 'Cash reward' },
  { icon: assets.memberIcons.coins, label: 'Coins' },
  { icon: assets.memberIcons.redpacket, label: 'Red packet' },
  { icon: assets.memberIcons.winning, label: 'High win' },
  { icon: assets.memberIcons.withdrawal, label: 'Low fee' },
] as const;

export default function MemberScreen() {
  const { formatMoney } = useI18n();
  const user = useAuthStore((s) => s.user);
  const client = useQueryClient();
  const plans = useQuery({
    queryKey: ['membership-plans'],
    queryFn: api.membershipPlans,
  });
  const memberships = useQuery({
    queryKey: ['memberships'],
    queryFn: api.memberships,
  });
  const active = memberships.data?.items.find((i) => i.status === 'active');
  const items = plans.data?.items ?? [];
  const [selected, setSelected] = useState<string | null>(null);
  const current = items.find((p) => p.id === selected) ?? items[0];

  const buy = useMutation({
    mutationFn: (id: string) => api.buyMembership(id),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['memberships'] });
      Alert.alert('✓');
    },
    onError: (e) => Alert.alert('', e.message),
  });

  return (
    <View style={styles.rootWrap}>
      <Screen
        contentStyle={styles.root}
        refreshing={plans.isRefetching || memberships.isRefetching}
        onRefresh={() => {
          void plans.refetch();
          void memberships.refetch();
        }}
      >
        {/* VIP hero with gold member card */}
        <ImageBackground
          source={assets.memberBackground}
          resizeMode="cover"
          style={styles.hero}
        >
          <LinearGradient
            colors={['#e7be76', '#f6deae']}
            start={{ x: 0, y: 0 }}
            end={{ x: 1, y: 0 }}
            style={styles.userCard}
          >
            <Image
              source={
                user?.avatarUrl ? { uri: user.avatarUrl } : assets.defaultAvatar
              }
              style={styles.userAvatar}
            />
            <View style={styles.userInfo}>
              <Text style={styles.userName} numberOfLines={1}>
                {user?.displayName ?? 'Guest'}
              </Text>
              <Text style={styles.userSub}>
                {active ? active.planName : user?.phoneMasked ?? '—'}
              </Text>
            </View>
            <View style={styles.levelBadge}>
              <Image source={assets.vipLevel} style={styles.levelIcon} />
              <Text style={styles.levelText}>VIP</Text>
            </View>
          </LinearGradient>
        </ImageBackground>

        {/* horizontal plan cards */}
        <QueryNotice
          loading={plans.isLoading || memberships.isLoading}
          error={plans.error ?? memberships.error}
          onRetry={() => {
            void plans.refetch();
            void memberships.refetch();
          }}
        />
        {items.length ? (
          <ScrollView
            horizontal
            showsHorizontalScrollIndicator={false}
            contentContainerStyle={styles.plans}
          >
            {items.map((plan) => {
              const on = current?.id === plan.id;
              return (
                <Pressable
                  key={plan.id}
                  onPress={() => setSelected(plan.id)}
                  style={[styles.planCard, on && styles.planCardActive]}
                >
                  <Text style={styles.planName}>{plan.name}</Text>
                  <Text style={styles.planPrice}>
                    {formatMoney(plan.priceMinor, plan.currency)}
                  </Text>
                  <Text style={styles.planDuration}>{plan.durationDays}d</Text>
                </Pressable>
              );
            })}
          </ScrollView>
        ) : null}

        {/* privilege icon tiles */}
        <View style={styles.detailCard}>
          <Text style={styles.detailTitle}>VIP Privileges</Text>
          <View style={styles.tiles}>
            {privileges.map((p) => (
              <View key={p.label} style={styles.tile}>
                <Image source={p.icon} style={styles.tileIcon} />
                <Text style={styles.tileLabel}>{p.label}</Text>
              </View>
            ))}
          </View>
        </View>
      </Screen>

      {/* fixed bottom buy bar */}
      {current ? (
        <View style={styles.buyBar}>
          <Text style={styles.buyTotal}>
            {formatMoney(current.priceMinor, current.currency)}
          </Text>
          <Pressable
            onPress={() =>
              user ? buy.mutate(current.id) : router.push('/login')
            }
          >
            <LinearGradient
              colors={['#f4c788', '#f2a94a']}
              start={{ x: 0, y: 0 }}
              end={{ x: 1, y: 0 }}
              style={styles.buyBtn}
            >
              <Text style={styles.buyBtnText}>
                {buy.isPending ? '…' : 'Open now'}
              </Text>
            </LinearGradient>
          </Pressable>
        </View>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  rootWrap: { flex: 1, backgroundColor: '#f9f9f9' },
  root: { backgroundColor: '#f9f9f9', paddingBottom: rpx(140) },
  // .member_bg { height:400rpx }
  hero: { height: rpx(400), justifyContent: 'flex-end', paddingBottom: rpx(20) },
  // .member_user { gradient; radius 30/30/0/0; height 272rpx }
  userCard: {
    marginHorizontal: rpx(34),
    height: rpx(200),
    borderTopLeftRadius: rpx(30),
    borderTopRightRadius: rpx(30),
    borderBottomLeftRadius: rpx(30),
    borderBottomRightRadius: rpx(30),
    paddingTop: rpx(32),
    paddingHorizontal: rpx(40),
    flexDirection: 'row',
    alignItems: 'center',
  },
  userAvatar: {
    width: rpx(120),
    height: rpx(120),
    borderRadius: rpx(60),
    borderWidth: rpx(4),
    borderColor: '#fff',
    backgroundColor: '#fff',
  },
  userInfo: { flex: 1, marginLeft: rpx(24) },
  userName: {
    fontSize: rpx(34),
    color: '#9c4d08',
    fontFamily: theme.typography.family.bold,
  },
  userSub: {
    marginTop: rpx(10),
    fontSize: rpx(26),
    color: '#a0743c',
    fontFamily: theme.typography.family.regular,
  },
  // .level badge
  levelBadge: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: rpx(18),
    height: rpx(54),
    borderRadius: rpx(27),
    backgroundColor: 'rgba(255,255,255,0.6)',
  },
  levelIcon: { width: rpx(30), height: rpx(30), marginRight: rpx(6), resizeMode: 'contain' },
  levelText: {
    fontSize: rpx(26),
    color: '#9c4d08',
    fontFamily: theme.typography.family.bold,
  },
  // horizontal plan cards
  plans: { paddingHorizontal: rpx(24), paddingTop: rpx(24) },
  planCard: {
    width: rpx(240),
    marginRight: rpx(20),
    paddingVertical: rpx(30),
    borderRadius: rpx(20),
    backgroundColor: '#fff',
    borderWidth: rpx(2),
    borderColor: '#f0e2c4',
    alignItems: 'center',
  },
  planCardActive: { borderColor: '#f2a94a', backgroundColor: '#fff9ee' },
  planName: {
    fontSize: rpx(30),
    color: '#9c4d08',
    fontFamily: theme.typography.family.bold,
  },
  planPrice: {
    marginTop: rpx(16),
    fontSize: rpx(52),
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
  },
  planDuration: {
    marginTop: rpx(10),
    fontSize: rpx(24),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // privilege tiles card
  detailCard: {
    marginTop: rpx(24),
    marginHorizontal: rpx(16),
    paddingVertical: rpx(30),
    paddingHorizontal: rpx(20),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  detailTitle: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
    marginBottom: rpx(20),
    marginLeft: rpx(8),
  },
  tiles: { flexDirection: 'row', flexWrap: 'wrap' },
  tile: { width: '33.33%', alignItems: 'center', marginVertical: rpx(20) },
  tileIcon: { width: rpx(88), height: rpx(88), resizeMode: 'contain' },
  tileLabel: {
    marginTop: rpx(12),
    fontSize: rpx(24),
    color: '#a0743c',
    fontFamily: theme.typography.family.regular,
  },
  // .member_buy fixed bottom bar
  buyBar: {
    position: 'absolute',
    left: 0,
    right: 0,
    bottom: 0,
    height: rpx(110),
    backgroundColor: '#fff',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingLeft: rpx(30),
    paddingRight: rpx(24),
    ...theme.shadows.card,
  },
  buyTotal: {
    fontSize: rpx(40),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
  },
  // .member_buy_btn { 252x78rpx; gradient; radius 200 }
  buyBtn: {
    width: rpx(252),
    height: rpx(78),
    borderRadius: rpx(200),
    alignItems: 'center',
    justifyContent: 'center',
  },
  buyBtnText: {
    fontSize: rpx(30),
    color: '#7a3d00',
    fontFamily: theme.typography.family.bold,
  },
});
