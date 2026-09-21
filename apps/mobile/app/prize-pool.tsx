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
import { QueryNotice } from '@/components/QueryNotice';
import { TopBar } from '@/components/TopBar';
import { countDown, COUNTDOWN_ZERO } from '@/countdown';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/prize/prize` (scope 27458cd0): the whole page is the prize
// machine illustration (750x1891) and content is absolutely positioned over it
// at the exact ORich offsets — people 120rpx, amount 636rpx (marquee display),
// invite 940rpx (machine body), tabs 1367rpx, participants 1490rpx (screen).
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
      <SafeAreaView edges={['top']} style={styles.safe}>
        <TopBar title={t('account.prizes')} transparent light />
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.scroll}
        >
          <View style={styles.stage}>
            {/* full-width prize machine illustration */}
            <Image source={assets.prizeBackground} style={styles.bgImg} />

            {activity ? (
              <>
                {/* people pill (top:120rpx) */}
                <View style={styles.people}>
                  <Text style={styles.peopleText}>
                    {activity.participantCount} {t('prize.people')}
                  </Text>
                </View>

                {/* amount over the marquee display (top:636rpx) */}
                <View style={styles.amount}>
                  <Text style={styles.amountTitle}>
                    {t('prize.amountTitle')}
                  </Text>
                  <Text
                    style={styles.amountMoney}
                    numberOfLines={1}
                    adjustsFontSizeToFit
                  >
                    {formatMoney(activity.prizePoolMinor, activity.currency)}
                  </Text>
                  {remaining !== COUNTDOWN_ZERO ? (
                    <Text style={styles.amountTime}>
                      {t('prize.drawin')} {remaining}
                    </Text>
                  ) : null}
                </View>

                {/* invite (top:940rpx) */}
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
                  <Pressable
                    style={styles.inviteBtn}
                    onPress={() =>
                      activity.joined ? router.push('/referrals') : join.mutate()
                    }
                  >
                    <Text style={styles.inviteBtnText}>{t('prize.inviteBtn')}</Text>
                  </Pressable>
                </View>

                {/* tabs (top:1367rpx) */}
                <View style={styles.tabs}>
                  {[t('prize.participants'), t('prize.rulesTab')].map(
                    (label, i) => (
                      <Pressable
                        key={label}
                        onPress={() => setTab(i)}
                        style={styles.tabItem}
                      >
                        <Text style={styles.tabText}>{label}</Text>
                        {tab === i ? <View style={styles.tabBar} /> : null}
                      </Pressable>
                    ),
                  )}
                </View>

                {/* participants / rules over the screen (top:1490rpx) */}
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
            ) : null}
          </View>

          <QueryNotice
            loading={activities.isLoading}
            error={activities.error}
            onRetry={() => void activities.refetch()}
          />
          {!activities.isLoading && !activity ? (
            <Text style={styles.empty}>{t('finance.empty')}</Text>
          ) : null}
        </ScrollView>
      </SafeAreaView>
    </View>
  );
}

const styles = StyleSheet.create({
  // .prize { background:#35a2ff }
  root: { flex: 1, backgroundColor: '#35a2ff' },
  safe: { flex: 1 },
  scroll: { paddingBottom: rpx(40) },
  // stage holds the 1891rpx-tall illustration + absolute content
  stage: { width: '100%', height: rpx(2060) },
  // .prize_bg uni-image { width:100% } — 750x1891 → full width, exact aspect
  bgImg: { position: 'absolute', top: 0, left: 0, width: '100%', height: rpx(1891) },
  // .prize_people { top:120rpx; 472x56rpx; rgba(0,0,0,.2) pill }
  people: {
    position: 'absolute',
    top: rpx(120),
    alignSelf: 'center',
    width: rpx(472),
    height: rpx(56),
    borderRadius: rpx(200),
    backgroundColor: 'rgba(0,0,0,0.2)',
    alignItems: 'center',
    justifyContent: 'center',
  },
  peopleText: {
    fontSize: rpx(28),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  // .prize_amount { top:636rpx; column center }
  amount: {
    position: 'absolute',
    top: rpx(636),
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  // .prize_amount_title { 32rpx #bb451e }
  amountTitle: {
    fontSize: rpx(32),
    color: '#bb451e',
    fontFamily: theme.typography.family.medium,
  },
  // .prize_amount_money { 92rpx #ff5c5c }
  amountMoney: {
    marginTop: rpx(8),
    fontSize: rpx(88),
    lineHeight: rpx(120),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
    paddingHorizontal: rpx(40),
  },
  // .prize_amount_time { 28rpx #ee5016 }
  amountTime: {
    marginTop: rpx(6),
    fontSize: rpx(28),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  // .prize_invite { top:940rpx; column center }
  invite: {
    position: 'absolute',
    top: rpx(940),
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  avatars: { flexDirection: 'row', justifyContent: 'center' },
  // .prize_invite_avatar_item { 96rpx; 2rpx #fff border; margin 0 22rpx }
  avatar: {
    width: rpx(96),
    height: rpx(96),
    borderRadius: rpx(48),
    borderWidth: rpx(2),
    borderColor: '#fff',
    marginHorizontal: rpx(22),
    backgroundColor: '#eee',
  },
  // .prize_invite_tips { 28rpx #ffdc93; margin-top:40rpx }
  inviteTip: {
    marginTop: rpx(40),
    fontSize: rpx(28),
    color: '#ffdc93',
    textAlign: 'center',
    fontFamily: theme.typography.family.regular,
  },
  // .prize_invite_btn { width:100%; height:80rpx; 32rpx #c86904 }
  inviteBtn: {
    marginTop: rpx(40),
    width: rpx(560),
    height: rpx(88),
    borderRadius: rpx(44),
    backgroundColor: '#ffce3d',
    alignItems: 'center',
    justifyContent: 'center',
  },
  inviteBtnText: {
    fontSize: rpx(32),
    color: '#c86904',
    fontFamily: theme.typography.family.bold,
  },
  // .prize_tabs { top:1367rpx; center }
  tabs: {
    position: 'absolute',
    top: rpx(1367),
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'center',
  },
  // .prize_tabs_item { 32rpx #ffc84e } nth-child(1) margin-right:126rpx
  tabItem: { alignItems: 'center', marginHorizontal: rpx(63) },
  tabText: {
    fontSize: rpx(32),
    color: '#ffc84e',
    fontFamily: theme.typography.family.medium,
  },
  // .prize_tabs_item_icon { 76x8rpx #ffc84e }
  tabBar: {
    marginTop: rpx(12),
    width: rpx(76),
    height: rpx(8),
    borderRadius: rpx(200),
    backgroundColor: '#ffc84e',
  },
  // .prize_main { top:1490rpx; users 85% width } over the machine screen
  main: {
    position: 'absolute',
    top: rpx(1490),
    left: '7.5%',
    width: '85%',
  },
  winnersLine: {
    fontSize: rpx(30),
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
    marginBottom: rpx(16),
  },
  rulesText: {
    fontSize: rpx(26),
    lineHeight: rpx(40),
    color: '#c86904',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(80),
    textAlign: 'center',
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
});
