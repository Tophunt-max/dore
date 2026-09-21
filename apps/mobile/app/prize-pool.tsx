import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import {
  Alert,
  Image,
  Pressable,
  ScrollView,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { TopBar } from '@/components/TopBar';
import { countDown, COUNTDOWN_ZERO } from '@/countdown';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/prize/prize` (scope 27458cd0): a full-page blue illustration
// background (fixed) with the prize pool amount, invited avatars, invite
// button and participants/rules tabs floating over it.
export default function PrizePoolScreen() {
  const { t, formatMoney } = useI18n();
  const client = useQueryClient();
  const activities = useQuery({
    queryKey: ['prize-activities'],
    queryFn: api.prizeActivities,
  });
  const [tab, setTab] = useState(0);
  const now = Date.now();

  const activity =
    activities.data?.items.find((a) => a.status === 'active') ??
    activities.data?.items[0];

  const join = useMutation({
    mutationFn: () => api.joinPrizeActivity(activity!.id),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['prize-activities'] });
      router.push('/referrals');
    },
    onError: (e) => Alert.alert(t('game.unable'), e.message),
  });

  const remaining = activity?.endsAt
    ? countDown(new Date(activity.endsAt).getTime(), now)
    : COUNTDOWN_ZERO;

  return (
    <View style={styles.root}>
      <Image
        source={assets.prizeBackground}
        style={styles.bgFixed}
        resizeMode="cover"
      />
      <SafeAreaView edges={['top']} style={styles.safe}>
        <TopBar title={t('account.prizes')} transparent light />
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.scroll}
        >
          <QueryNotice
            loading={activities.isLoading}
            error={activities.error}
            onRetry={() => void activities.refetch()}
          />

          {activity ? (
            <>
              {/* people pill */}
              <View style={styles.peoplePill}>
                <Text style={styles.peopleText}>
                  {activity.participantCount} {t('prize.people')}
                </Text>
              </View>

              {/* amount */}
              <View style={styles.amount}>
                <Text style={styles.amountTitle}>{t('prize.amountTitle')}</Text>
                <Text style={styles.amountMoney}>
                  {formatMoney(activity.prizePoolMinor, activity.currency)}
                </Text>
                {remaining !== COUNTDOWN_ZERO ? (
                  <Text style={styles.amountTime}>
                    {t('prize.drawin')} {remaining}
                  </Text>
                ) : null}
              </View>

              {/* invite */}
              <View style={styles.invite}>
                <View style={styles.avatars}>
                  {[0, 1, 2, 3].map((i) => (
                    <Image
                      key={i}
                      source={assets.avatars[i % assets.avatars.length]}
                      style={styles.avatar}
                    />
                  ))}
                </View>
                <Text style={styles.inviteTip}>{t('prize.inviteTip')}</Text>
                <View style={styles.inviteBtn}>
                  <GradientButton
                    loading={join.isPending}
                    onPress={() =>
                      activity.joined ? router.push('/referrals') : join.mutate()
                    }
                  >
                    {t('prize.inviteBtn')}
                  </GradientButton>
                </View>
              </View>

              {/* tabs */}
              <View style={styles.tabs}>
                {[t('prize.participants'), t('prize.rulesTab')].map(
                  (label, i) => (
                    <Pressable
                      key={label}
                      onPress={() => setTab(i)}
                      style={styles.tabItem}
                    >
                      <Text
                        style={[styles.tabText, tab === i && styles.tabActive]}
                      >
                        {label}
                      </Text>
                      {tab === i ? <View style={styles.tabBar} /> : null}
                    </Pressable>
                  ),
                )}
              </View>

              {/* main */}
              <View style={styles.main}>
                {tab === 0 ? (
                  <>
                    <Text style={styles.winnersLine}>
                      {t('prize.winners', { count: activity.winnersCount })}
                    </Text>
                    <Text style={styles.rulesText}>{activity.description}</Text>
                  </>
                ) : (
                  <Text style={styles.rulesText}>{activity.rules}</Text>
                )}
              </View>
            </>
          ) : !activities.isLoading ? (
            <Text style={styles.empty}>{t('finance.empty')}</Text>
          ) : null}
        </ScrollView>
      </SafeAreaView>
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: '#35a2ff' },
  bgFixed: { position: 'absolute', top: 0, left: 0, width: '100%', height: '100%' },
  safe: { flex: 1 },
  scroll: { paddingBottom: rpx(40) },
  // .prize_people pill
  peoplePill: {
    alignSelf: 'center',
    marginTop: rpx(24),
    height: rpx(56),
    paddingHorizontal: rpx(40),
    borderRadius: rpx(200),
    backgroundColor: 'rgba(0,0,0,0.2)',
    justifyContent: 'center',
  },
  peopleText: {
    fontSize: rpx(28),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  // .prize_amount
  amount: { alignItems: 'center', marginTop: rpx(40) },
  amountTitle: {
    fontSize: rpx(32),
    color: '#bb451e',
    fontFamily: theme.typography.family.medium,
  },
  amountMoney: {
    marginTop: rpx(10),
    fontSize: rpx(84),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
  },
  amountTime: {
    marginTop: rpx(6),
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  // .prize_invite
  invite: { alignItems: 'center', marginTop: rpx(40) },
  avatars: { flexDirection: 'row' },
  avatar: {
    width: rpx(96),
    height: rpx(96),
    borderRadius: rpx(48),
    borderWidth: rpx(2),
    borderColor: '#fff',
    marginHorizontal: rpx(22),
    backgroundColor: '#eee',
  },
  inviteTip: {
    marginTop: rpx(40),
    fontSize: rpx(28),
    color: '#ffdc93',
    textAlign: 'center',
    fontFamily: theme.typography.family.regular,
  },
  inviteBtn: { marginTop: rpx(48), width: rpx(600) },
  // .prize_tabs
  tabs: { flexDirection: 'row', justifyContent: 'center', marginTop: rpx(50) },
  tabItem: { alignItems: 'center', marginHorizontal: rpx(63) },
  tabText: {
    fontSize: rpx(32),
    color: '#ffc84e',
    fontFamily: theme.typography.family.medium,
  },
  tabActive: { fontFamily: theme.typography.family.bold },
  tabBar: {
    marginTop: rpx(12),
    width: rpx(76),
    height: rpx(8),
    borderRadius: rpx(200),
    backgroundColor: '#ffc84e',
  },
  // .prize_main
  main: {
    marginTop: rpx(30),
    marginHorizontal: rpx(30),
    padding: rpx(28),
    borderRadius: rpx(20),
    backgroundColor: 'rgba(255,200,78,0.2)',
  },
  winnersLine: {
    fontSize: rpx(30),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
    marginBottom: rpx(16),
  },
  rulesText: {
    fontSize: rpx(26),
    lineHeight: rpx(42),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(80),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
});
