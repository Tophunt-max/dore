import { useQuery } from '@tanstack/react-query';
import { useState } from 'react';
import { Image, ImageBackground, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/account/teamDetail` (scope ca429d0e): a hero count card (period
// + reward) with my/team contribution stats, direct/team tabs, and a member
// list. Wired to the Oriva team summary + members.
export default function TeamDetailScreen() {
  const { t, formatDate, formatMoney, labelFor } = useI18n();
  const [tab, setTab] = useState(0);
  const team = useQuery({ queryKey: ['team'], queryFn: api.team });
  const summary = useQuery({
    queryKey: ['team-summary'],
    queryFn: api.teamSummary,
  });

  const members = team.data?.items ?? [];
  const s = summary.data;
  const month = new Date().toLocaleDateString('en-US', {
    month: 'long',
    year: 'numeric',
  });

  const tabs = [
    { i: 0, label: `${t('team.membersTab')} (${s?.qualified ?? 0})` },
    { i: 1, label: `${t('team.consumptionTab')} (${members.length})` },
  ];

  return (
    <Screen
      header={<TopBar title={t('team.detailTitle')} white />}
      contentStyle={styles.page}
      refreshing={team.isRefetching}
      onRefresh={() => void team.refetch()}
    >
      {/* .detail_count hero */}
      <ImageBackground
        source={assets.teamBackground}
        resizeMode="cover"
        style={styles.count}
        imageStyle={styles.countImg}
      >
        <View style={styles.march}>
          <Text style={styles.marchTitle}>{month}</Text>
          <Text style={styles.marchRew} numberOfLines={1}>
            {t('team.reward')}:{' '}
            {s ? formatMoney(s.rewardMinor, s.currency) : '—'}
          </Text>
        </View>
        <View style={styles.money}>
          <View style={styles.moneyItem}>
            <Text style={styles.moneyValue}>{s?.totalInvited ?? 0}</Text>
            <Text style={styles.moneyTitle}>{t('team.myContribution')}</Text>
          </View>
          <View style={styles.moneyItem}>
            <Text style={styles.moneyValue}>{s?.rewarded ?? 0}</Text>
            <Text style={styles.moneyTitle}>{t('team.teamContribution')}</Text>
          </View>
        </View>
      </ImageBackground>

      {/* tabs */}
      <View style={styles.listTab}>
        {tabs.map((tabDef) => (
          <Pressable
            key={tabDef.i}
            onPress={() => setTab(tabDef.i)}
            style={styles.tabItem}
          >
            <Text style={[styles.tabText, tab === tabDef.i && styles.tabActive]}>
              {tabDef.label}
            </Text>
            {tab === tabDef.i ? (
              <Image source={assets.select} style={styles.tabUnderline} />
            ) : null}
          </Pressable>
        ))}
      </View>

      <QueryNotice
        loading={team.isLoading}
        error={team.error}
        onRetry={() => void team.refetch()}
      />

      <View style={styles.listContent}>
        {members.map((m) => (
          <View key={m.id} style={styles.contentItem}>
            <View style={styles.itemUser}>
              <Image source={assets.defaultAvatar} style={styles.itemAvatar} />
              <Text style={styles.itemName} numberOfLines={1}>
                {m.displayName ?? m.phoneMasked}
              </Text>
              <Text style={styles.itemTeam}>{labelFor(m.status)}</Text>
            </View>
            <View style={styles.itemCount}>
              <Text style={styles.countJoined}>
                {t('team.joined', { date: formatDate(m.createdAt) })}
              </Text>
            </View>
          </View>
        ))}
        {!team.isLoading && !members.length ? (
          <Text style={styles.empty}>{t('team.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: '#f9f9f9', flexGrow: 1 },
  // .detail_count { height:234rpx }
  count: {
    marginTop: rpx(12),
    marginHorizontal: rpx(30),
    height: rpx(234),
    paddingTop: rpx(34),
    paddingHorizontal: rpx(40),
  },
  countImg: { borderRadius: rpx(16) },
  march: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
  },
  marchTitle: {
    fontSize: rpx(36),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  marchRew: { color: '#fff', maxWidth: rpx(300), fontFamily: theme.typography.family.regular },
  money: {
    marginTop: rpx(40),
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: rpx(30),
  },
  moneyItem: { alignItems: 'center' },
  moneyValue: {
    fontSize: rpx(36),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  moneyTitle: {
    marginTop: rpx(16),
    fontSize: rpx(26),
    color: '#fff',
    fontFamily: theme.typography.family.medium,
  },
  // .detail_list_tab { height:98rpx; bg #fff }
  listTab: {
    marginTop: rpx(24),
    height: rpx(98),
    backgroundColor: '#fff',
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-around',
  },
  tabItem: { alignItems: 'center' },
  tabText: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.medium,
  },
  tabActive: { color: '#17273a' },
  tabUnderline: {
    marginTop: rpx(6),
    width: rpx(28),
    height: rpx(10),
    resizeMode: 'contain',
  },
  listContent: { marginTop: rpx(8), backgroundColor: '#fff' },
  // .detail_list_content_item { padding:30rpx 0; margin:0 30rpx; border-bottom }
  contentItem: {
    marginHorizontal: rpx(30),
    paddingVertical: rpx(30),
    borderBottomWidth: rpx(2),
    borderBottomColor: '#f9f9f9',
  },
  itemUser: { flexDirection: 'row', alignItems: 'center' },
  itemAvatar: {
    width: rpx(64),
    height: rpx(64),
    borderRadius: rpx(32),
    backgroundColor: '#eee',
  },
  itemName: {
    marginLeft: rpx(14),
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
    maxWidth: rpx(240),
  },
  itemTeam: {
    marginLeft: rpx(38),
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  itemCount: { marginTop: rpx(20), paddingHorizontal: rpx(26) },
  countJoined: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
