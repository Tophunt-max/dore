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
// machine illustration (750x1891). Content is absolutely positioned over it
// using PERCENTAGE offsets so it tracks the machine's frames at any width —
// amount over the marquee display, avatars/button on the body, participants on
// the white screen slip.
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
            {/* full-width prize machine illustration (fills the stage) */}
            <Image source={assets.prizeBackground} style={styles.bgImg} />

            {activity ? (
              <>
                {/* people pill — over the gift banner */}
                <View style={styles.people}>
                  <Text style={styles.peopleText}>
                    {activity.participantCount} {t('prize.people')}
                  </Text>
                </View>

                {/* amount — inside the marquee display */}
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

                {/* invite — on the machine body */}
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
                    <Text style={styles.inviteBtnText}>
                      {t('prize.inviteBtn')}
                    </Text>
                  </Pressable>
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
                          style={[
                            styles.tabText,
                            tab === i && styles.tabTextActive,
                          ]}
                        >
                          {label}
                        </Text>
                        {tab === i ? <View style={styles.tabBar} /> : null}
                      </Pressable>
                    ),
                  )}
                </View>

                {/* participants / rules — on the white screen slip */}
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
  root: { flex: 1, backgroundColor: '#35a2ff' },
  safe: { flex: 1 },
  scroll: { paddingBottom: rpx(40) },
  // stage sized to the illustration's exact aspect (750x1891) so % offsets track
  stage: { width: '100%', aspectRatio: 750 / 1891, position: 'relative' },
  bgImg: { position: 'absolute', top: 0, left: 0, width: '100%', height: '100%' },
  // people pill over the gift banner
  people: {
    position: 'absolute',
    top: '14%',
    alignSelf: 'center',
    paddingHorizontal: rpx(40),
    height: rpx(52),
    borderRadius: rpx(200),
    backgroundColor: 'rgba(0,0,0,0.2)',
    alignItems: 'center',
    justifyContent: 'center',
  },
  peopleText: {
    fontSize: rpx(26),
    color: '#fff',
    fontFamily: theme.typography.family.regular,
  },
  // amount centered in the marquee display (money lands ~38%)
  amount: {
    position: 'absolute',
    top: '31%',
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  amountTitle: {
    fontSize: rpx(30),
    color: '#bb451e',
    fontFamily: theme.typography.family.medium,
  },
  amountMoney: {
    marginTop: rpx(6),
    fontSize: rpx(76),
    lineHeight: rpx(90),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.bold,
    paddingHorizontal: rpx(40),
  },
  amountTime: {
    marginTop: rpx(2),
    fontSize: rpx(26),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  // invite block on the machine body
  invite: {
    position: 'absolute',
    top: '50%',
    left: 0,
    right: 0,
    alignItems: 'center',
  },
  avatars: { flexDirection: 'row', justifyContent: 'center' },
  avatar: {
    width: rpx(90),
    height: rpx(90),
    borderRadius: rpx(45),
    borderWidth: rpx(2),
    borderColor: '#fff',
    marginHorizontal: rpx(18),
    backgroundColor: '#eee',
  },
  inviteTip: {
    marginTop: rpx(26),
    fontSize: rpx(28),
    color: '#ffdc93',
    textAlign: 'center',
    fontFamily: theme.typography.family.regular,
  },
  // invite button aligns over the yellow bar
  inviteBtn: {
    marginTop: rpx(30),
    width: rpx(540),
    height: rpx(84),
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
  // tabs just below the yellow bar
  tabs: {
    position: 'absolute',
    top: '71%',
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'center',
  },
  tabItem: { alignItems: 'center', marginHorizontal: rpx(63) },
  // tabs sit on the white screen slip → dark/orange for readability
  tabText: {
    fontSize: rpx(30),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.medium,
  },
  tabTextActive: {
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
  },
  tabBar: {
    marginTop: rpx(10),
    width: rpx(76),
    height: rpx(8),
    borderRadius: rpx(200),
    backgroundColor: '#ee5016',
  },
  // participants / rules on the white screen slip
  main: { position: 'absolute', top: '79%', left: '8%', width: '84%' },
  winnersLine: {
    fontSize: rpx(30),
    color: '#ee5016',
    fontFamily: theme.typography.family.bold,
    marginBottom: rpx(14),
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
