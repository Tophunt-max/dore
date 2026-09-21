import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import {
  Image,
  ImageBackground,
  Pressable,
  Share,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/account/team` (scope 0f147e90): a hero (`bg_myteam`) with team
// stats, a three-step invite card, the invite link + copy, an invite button,
// then a ranked member list (gold/silver/bronze badges for the top three).
const RANK_COLORS = ['#F5B301', '#B8C0CC', '#D98C5F'];

export default function TeamScreen() {
  const { t, formatDate } = useI18n();
  const user = useAuthStore((s) => s.user);
  const team = useQuery({ queryKey: ['team'], queryFn: api.team });
  const summary = useQuery({
    queryKey: ['team-summary'],
    queryFn: api.teamSummary,
  });

  const members = team.data?.items ?? [];
  const link = user?.referralCode
    ? `https://oriva.app/invite/${user.referralCode}`
    : '';

  async function copyLink() {
    if (!link) return;
    await Share.share({ message: link });
  }

  const steps = [
    { icon: assets.shareLink, label: t('team.step1') },
    { icon: assets.iconRegistion, label: t('team.step2') },
    { icon: assets.earnRewards, label: t('team.step3') },
  ];

  return (
    <Screen
      header={<TopBar title={t('team.title')} white transparent />}
      contentStyle={styles.page}
    >
      {/* .team_top hero with the myteam art + stats */}
      <ImageBackground
        source={assets.teamBackground}
        resizeMode="cover"
        style={styles.teamTop}
      >
        <View style={styles.teamMain}>
          <View style={styles.mainItem}>
            <Text style={styles.mainTitle}>{t('team.members')}</Text>
            <Text style={styles.mainNum}>
              {summary.data?.totalInvited ?? members.length}
              <Text style={styles.mainUnit}> {t('team.people')}</Text>
            </Text>
          </View>
          <View style={[styles.mainItem, styles.mainItemGap]}>
            <Text style={styles.mainTitle}>{t('team.qualified')}</Text>
            <Text style={styles.mainNum}>{summary.data?.qualified ?? 0}</Text>
          </View>
        </View>
      </ImageBackground>

      {/* .team_invite — 3-step + link + button */}
      <View style={styles.invite}>
        <View style={styles.step}>
          {steps.map((s, i) => (
            <View key={s.label} style={styles.stepRow}>
              <View style={styles.stepItem}>
                <Image source={s.icon} style={styles.stepIcon} />
                <Text style={styles.stepTitle}>{s.label}</Text>
              </View>
              {i < steps.length - 1 ? <View style={styles.stepDash} /> : null}
            </View>
          ))}
        </View>

        <View style={styles.urlRow}>
          <Text style={styles.urlTitle}>{t('team.inviteLink')}</Text>
          <View style={styles.urlMain}>
            <Text style={styles.urlLink} numberOfLines={1}>
              {link || '—'}
            </Text>
            <Pressable onPress={() => void copyLink()}>
              <Text style={styles.urlBtn}>{t('team.copy')}</Text>
            </Pressable>
          </View>
        </View>

        <View style={styles.inviteButton}>
          <GradientButton onPress={() => router.push('/referrals')}>
            {t('team.inviteNow')}
          </GradientButton>
        </View>
      </View>

      {/* .team_list — ranked members */}
      <View style={styles.list}>
        <View style={styles.listTab}>
          <Text style={styles.tabActive}>{t('team.membersTab')}</Text>
        </View>
        <View style={styles.listContent}>
          {members.map((m, index) => (
            <Pressable
              key={m.id}
              onPress={() => router.push(`/team/${m.id}`)}
              style={styles.contentItem}
            >
              <View style={styles.itemLeft}>
                <View
                  style={[
                    styles.rankBadge,
                    { backgroundColor: RANK_COLORS[index] ?? '#ffe6e2' },
                  ]}
                >
                  <Text
                    style={[
                      styles.rankText,
                      index < 3 && styles.rankTextTop,
                    ]}
                  >
                    {index + 1}
                  </Text>
                </View>
                <View style={styles.rankUser}>
                  <Text style={styles.userTitle}>
                    {m.displayName ?? m.phoneMasked}
                  </Text>
                  <Text style={styles.userTime}>
                    {t('team.joined', { date: formatDate(m.createdAt) })}
                  </Text>
                </View>
              </View>
              <Text style={styles.itemRight}>{m.phoneMasked}</Text>
            </Pressable>
          ))}
          {!team.isLoading && !members.length ? (
            <Text style={styles.empty}>{t('team.empty')}</Text>
          ) : null}
        </View>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: '#f9f9f9', paddingBottom: rpx(20) },
  // .team_top { height:440rpx }
  teamTop: { height: rpx(440), justifyContent: 'flex-start' },
  // .team_main { margin-top:44rpx; padding-left:82rpx; color:#fff }
  teamMain: {
    marginTop: rpx(120),
    paddingLeft: rpx(82),
    flexDirection: 'row',
    alignItems: 'center',
  },
  mainItem: { alignItems: 'flex-start' },
  mainItemGap: { marginLeft: rpx(48) },
  // .team_main_item_title { font-size:36rpx }
  mainTitle: {
    fontSize: rpx(36),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  // .team_main_item_num { margin-top:12rpx; font-size:40rpx }
  mainNum: {
    marginTop: rpx(12),
    fontSize: rpx(40),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  mainUnit: { fontSize: rpx(28), opacity: 0.8 },
  // .team_invite { padding:16 30 42; background:#fff }
  invite: {
    paddingTop: rpx(40),
    paddingHorizontal: rpx(30),
    paddingBottom: rpx(42),
    backgroundColor: '#fff',
  },
  // .team_invite_step { space-between }
  step: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  stepRow: { flexDirection: 'row', alignItems: 'center', flex: 1 },
  stepItem: { alignItems: 'center', flex: 1 },
  // .team_invite_step_item_icon { 80rpx }
  stepIcon: { width: rpx(80), height: rpx(80), resizeMode: 'contain' },
  // .team_invite_step_item_title { margin-top:14rpx; 26rpx; #566c82 }
  stepTitle: {
    marginTop: rpx(14),
    fontSize: rpx(26),
    color: '#566c82',
    fontFamily: theme.typography.family.regular,
  },
  // dashed connector (.point)
  stepDash: {
    width: rpx(40),
    height: rpx(2),
    marginBottom: rpx(30),
    borderTopWidth: rpx(1),
    borderStyle: 'dashed',
    borderColor: '#de6436',
    opacity: 0.3,
  },
  // .team_invite_url { margin-top:42rpx }
  urlRow: { marginTop: rpx(42), flexDirection: 'row', alignItems: 'center' },
  urlTitle: {
    fontSize: rpx(28),
    color: '#566c82',
    opacity: 0.9,
    fontFamily: theme.typography.family.medium,
  },
  // .team_invite_url_main { margin-left:62rpx; height:68rpx; bg rgba }
  urlMain: {
    marginLeft: rpx(30),
    flex: 1,
    height: rpx(68),
    borderRadius: rpx(8),
    paddingLeft: rpx(16),
    paddingRight: rpx(18),
    backgroundColor: 'rgba(143,148,180,0.1)',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  urlLink: {
    flex: 1,
    fontSize: rpx(28),
    color: '#8f94b4',
    fontFamily: theme.typography.family.medium,
  },
  urlBtn: {
    marginLeft: rpx(12),
    fontSize: rpx(28),
    color: '#58a5ff',
    fontFamily: theme.typography.family.medium,
  },
  inviteButton: { marginTop: rpx(34) },
  // .team_list { margin-top:16rpx }
  list: { marginTop: rpx(16) },
  // .team_list_tab { height:98rpx; bg #fff }
  listTab: {
    height: rpx(98),
    backgroundColor: '#fff',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-around',
  },
  tabActive: {
    fontSize: rpx(30),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .team_list_content { margin-top:8rpx; bg #fff }
  listContent: { marginTop: rpx(8), backgroundColor: '#fff' },
  // .team_list_content_item { margin:0 28rpx; padding:28rpx 0; border-bottom }
  contentItem: {
    marginHorizontal: rpx(28),
    paddingVertical: rpx(28),
    borderBottomWidth: rpx(1),
    borderBottomColor: '#f0f0f0',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  itemLeft: { flexDirection: 'row', alignItems: 'center' },
  rankBadge: {
    width: rpx(42),
    height: rpx(42),
    borderRadius: rpx(21),
    alignItems: 'center',
    justifyContent: 'center',
  },
  rankText: {
    fontSize: rpx(28),
    color: '#fc573b',
    fontFamily: theme.typography.family.medium,
  },
  rankTextTop: { color: '#fff' },
  rankUser: { marginLeft: rpx(24) },
  userTitle: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  userTime: {
    marginTop: rpx(4),
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  itemRight: {
    fontSize: rpx(28),
    color: '#ff5c5c',
    fontFamily: theme.typography.family.medium,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
});
