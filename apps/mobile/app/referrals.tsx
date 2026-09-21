import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Image,
  Pressable,
  ScrollView,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/invitation/invitation` (scope 13d087ed): a full-page red
// illustration background (fixed) with a rules pill in the navbar, a white
// "invited" card, a three-step how-it-works card, and a ranked friends list
// floating over the illustration.
const RANK_COLORS = ['#F5B301', '#B8C0CC', '#D98C5F'];

export default function ReferralsScreen() {
  const { t, formatMoney, formatDate } = useI18n();
  const user = useAuthStore((s) => s.user);
  const team = useQuery({
    queryKey: ['team'],
    queryFn: api.team,
    enabled: Boolean(user),
  });
  const summary = useQuery({
    queryKey: ['team-summary'],
    queryFn: api.teamSummary,
    enabled: Boolean(user),
  });

  const link = user?.referralCode
    ? `https://oriva.app/invite/${user.referralCode}`
    : '';
  const members = team.data?.items ?? [];
  const s = summary.data;

  async function share() {
    if (!user) {
      router.push('/login');
      return;
    }
    await Share.share({
      message: t('referrals.shareMessage', { code: user.referralCode }),
    });
  }

  const steps = [
    { icon: assets.shareLink, label: t('team.step1') },
    { icon: assets.iconRegistion, label: t('team.step2') },
    { icon: assets.earnRewards, label: t('team.step3') },
  ];

  return (
    <View style={styles.root}>
      {/* fixed full-page illustration behind everything */}
      <Image
        source={assets.inviteBackground}
        style={styles.bgFixed}
        resizeMode="cover"
      />
      <SafeAreaView edges={['top']} style={styles.safe}>
        <TopBar
          title={t('referrals.inviteFriends')}
          transparent
          light
          actionLabel={t('invite.rules')}
          onAction={() =>
            router.push({ pathname: '/rules', params: { type: '3' } })
          }
        />
        <ScrollView
          showsVerticalScrollIndicator={false}
          contentContainerStyle={styles.scroll}
        >
          {/* invited card */}
          <View style={styles.invited}>
            <View style={styles.earn}>
              <View style={styles.earnCol}>
                <Text style={styles.earnLabel}>{t('invite.invited')}</Text>
                <View style={styles.earnRow}>
                  <Text style={styles.earnNum}>{s?.totalInvited ?? 0}</Text>
                  <Text style={styles.earnUnit}>{t('invite.people')}</Text>
                </View>
              </View>
              <View style={styles.earnCol}>
                <Text style={styles.earnLabel}>{t('invite.reward')}</Text>
                <Text style={styles.earnNum}>
                  {s ? formatMoney(s.rewardMinor, s.currency) : '—'}
                </Text>
              </View>
            </View>

            <View style={styles.mylink}>
              <Text style={styles.my}>{t('invite.myLink')}</Text>
              <View style={styles.linkBox}>
                <Text style={styles.msg} numberOfLines={1}>
                  {link || '—'}
                </Text>
                <Pressable onPress={() => void share()}>
                  <Text style={styles.copy}>{t('invite.copy')}</Text>
                </Pressable>
              </View>
            </View>

            <View style={styles.inviteBtn}>
              <GradientButton onPress={() => void share()}>
                {t('invite.now')}
              </GradientButton>
            </View>
          </View>

          {/* three-step card */}
          <View style={styles.reg}>
            {steps.map((step, i) => (
              <View key={step.label} style={styles.stepRow}>
                <View style={styles.stepItem}>
                  <View style={styles.stepIconWrap}>
                    <Image source={step.icon} style={styles.stepIcon} />
                  </View>
                  <Text style={styles.stepText}>{step.label}</Text>
                </View>
                {i < steps.length - 1 ? <View style={styles.stepDash} /> : null}
              </View>
            ))}
          </View>

          {/* friends list */}
          <View style={styles.bottom}>
            <View style={styles.tabItem}>
              <Text style={styles.tabRec}>{t('invite.friends')}</Text>
            </View>
            {members.map((m, index) => (
              <View key={m.id} style={styles.tabs}>
                <View style={styles.tabsRank}>
                  <View
                    style={[
                      styles.rankNum,
                      { backgroundColor: RANK_COLORS[index] ?? '#ffe6e2' },
                    ]}
                  >
                    <Text style={[styles.rankText, index < 3 && styles.rankTop]}>
                      {index + 1}
                    </Text>
                  </View>
                  <View style={styles.tabsLeft}>
                    <Text style={styles.tabsUser} numberOfLines={1}>
                      {m.displayName ?? m.phoneMasked}
                    </Text>
                    <Text style={styles.tabsTime}>{formatDate(m.createdAt)}</Text>
                  </View>
                </View>
              </View>
            ))}
            {user && !team.isLoading && !members.length ? (
              <Text style={styles.empty}>{t('team.empty')}</Text>
            ) : null}
          </View>
        </ScrollView>
      </SafeAreaView>
    </View>
  );
}

const styles = StyleSheet.create({
  root: { flex: 1, backgroundColor: '#fe5541' },
  // fixed full-screen illustration behind the scrolling content
  bgFixed: { position: 'absolute', top: 0, left: 0, width: '100%', height: '100%' },
  safe: { flex: 1 },
  // leave the top region showing the illustration hero, then the cards
  scroll: { paddingTop: rpx(300), paddingBottom: rpx(40) },
  // .middle_invited { bg #fff; radius 16rpx }
  invited: {
    marginHorizontal: rpx(20),
    paddingBottom: rpx(30),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  earn: { flexDirection: 'row', paddingTop: rpx(40) },
  earnCol: { flex: 1, alignItems: 'center' },
  earnLabel: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  earnRow: { flexDirection: 'row', alignItems: 'baseline', marginTop: rpx(16) },
  earnNum: {
    fontSize: rpx(40),
    color: '#ee5016',
    fontFamily: theme.typography.family.medium,
  },
  earnUnit: {
    marginLeft: rpx(8),
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  mylink: {
    marginTop: rpx(44),
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: rpx(36),
  },
  my: {
    marginRight: rpx(18),
    fontSize: rpx(30),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  linkBox: {
    flex: 1,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    height: rpx(76),
    paddingHorizontal: rpx(26),
    backgroundColor: '#f5f5f5',
    borderRadius: rpx(16),
  },
  msg: {
    flex: 1,
    paddingRight: rpx(14),
    fontSize: rpx(28),
    color: '#7d7d7d',
    fontFamily: theme.typography.family.regular,
  },
  copy: {
    fontSize: rpx(28),
    color: '#649dff',
    fontFamily: theme.typography.family.regular,
  },
  inviteBtn: { marginTop: rpx(38), marginHorizontal: rpx(40) },
  // .middle_reg
  reg: {
    marginTop: rpx(18),
    marginHorizontal: rpx(20),
    paddingVertical: rpx(36),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  stepRow: { flexDirection: 'row', alignItems: 'center', flex: 1 },
  stepItem: { flex: 1, alignItems: 'center' },
  stepIconWrap: {
    width: rpx(80),
    height: rpx(80),
    borderRadius: rpx(40),
    backgroundColor: '#ffe6e2',
    alignItems: 'center',
    justifyContent: 'center',
  },
  stepIcon: { width: rpx(48), height: rpx(48), resizeMode: 'contain' },
  stepText: {
    marginTop: rpx(14),
    fontSize: rpx(26),
    color: '#566c82',
    fontFamily: theme.typography.family.regular,
  },
  stepDash: {
    width: rpx(40),
    height: rpx(2),
    marginBottom: rpx(30),
    borderTopWidth: rpx(1),
    borderStyle: 'dashed',
    borderColor: '#de6436',
    opacity: 0.3,
  },
  // .bottom
  bottom: {
    marginTop: rpx(16),
    marginHorizontal: rpx(20),
    paddingBottom: rpx(26),
    backgroundColor: '#fff',
    borderRadius: rpx(16),
  },
  tabItem: { alignItems: 'center', paddingVertical: rpx(28) },
  tabRec: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  tabs: {
    marginHorizontal: rpx(26),
    paddingBottom: rpx(22),
    marginTop: rpx(14),
    borderBottomWidth: rpx(1),
    borderBottomColor: '#ececec',
  },
  tabsRank: { flexDirection: 'row', alignItems: 'center' },
  rankNum: {
    width: rpx(42),
    height: rpx(42),
    borderRadius: rpx(21),
    marginRight: rpx(24),
    alignItems: 'center',
    justifyContent: 'center',
  },
  rankText: {
    fontSize: rpx(28),
    color: '#fc573b',
    fontFamily: theme.typography.family.medium,
  },
  rankTop: { color: '#fff' },
  tabsLeft: { flex: 1 },
  tabsUser: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  tabsTime: {
    marginTop: rpx(16),
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(40),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
