import { useQuery } from '@tanstack/react-query';
import { useLocalSearchParams } from 'expo-router';
import { LinearGradient } from 'expo-linear-gradient';
import { ScrollView, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/goods/calculation` (scope 97a90e28): an orange gradient
// algorithm card, a white intro line, a participants list (left/right rows),
// and a white result section.
export default function CalculationScreen() {
  const { campaignId } = useLocalSearchParams<{ campaignId?: string }>();
  const { t } = useI18n();
  const query = useQuery({
    queryKey: ['campaign-draw', campaignId],
    queryFn: () => api.campaignDraw(campaignId!),
    enabled: Boolean(campaignId),
    retry: false,
  });
  const draw = query.data;

  const rows: { label: string; value: string }[] = draw
    ? [
        { label: t('draw.seedCommitment'), value: draw.seedCommitment },
        { label: t('draw.entrySnapshot'), value: draw.entrySnapshotHash },
        ...(draw.winningEntryId
          ? [{ label: t('draw.winningEntry'), value: draw.winningEntryId }]
          : []),
        ...(draw.revealedSeed
          ? [{ label: t('draw.revealedSeed'), value: draw.revealedSeed }]
          : []),
      ]
    : [];

  return (
    <Screen
      header={<TopBar title={t('draw.title')} white />}
      contentStyle={styles.page}
    >
      {/* .alg — orange gradient */}
      <LinearGradient
        colors={['rgba(238,80,22,0.65)', '#ee5016']}
        start={{ x: 1, y: 0 }}
        end={{ x: 0, y: 1 }}
        style={styles.alg}
      >
        <Text style={styles.algTitle}>{t('draw.heroTitle')}</Text>
        <Text style={styles.algText}>{t('draw.heroCopy')}</Text>
      </LinearGradient>

      {!campaignId ? (
        <Text style={styles.empty}>{t('draw.openFromWinner')}</Text>
      ) : (
        <>
          <QueryNotice
            loading={query.isLoading}
            error={query.error}
            onRetry={() => void query.refetch()}
          />
          {draw ? (
            <>
              {/* .intro */}
              <View style={styles.intro}>
                <Text style={styles.introText}>
                  {t('draw.algorithm')}: <Text style={styles.hl}>{draw.algorithmVersion}</Text>
                </Text>
              </View>

              {/* .list */}
              <View style={styles.list}>
                <View style={styles.listHeader}>
                  <Text style={styles.headerLeft}>{t('draw.eligibleEntries')}</Text>
                  <Text style={styles.headerRight}>
                    {draw.eligibleEntryCount}
                  </Text>
                </View>
                <ScrollView style={styles.listMain} nestedScrollEnabled>
                  {rows.map((row) => (
                    <View key={row.label} style={styles.item}>
                      <Text style={styles.itemLeft}>{row.label}</Text>
                      <Text style={styles.itemRight} numberOfLines={1}>
                        {row.value}
                      </Text>
                    </View>
                  ))}
                </ScrollView>
              </View>

              {/* .result */}
              <View style={styles.result}>
                <Text style={styles.resultTitle}>{t('draw.winningIndex')}</Text>
                <Text style={styles.resultMain}>
                  {draw.winningIndex !== null ? (
                    <Text style={styles.hl}>#{draw.winningIndex}</Text>
                  ) : (
                    t('draw.seedHidden')
                  )}
                </Text>
              </View>
            </>
          ) : null}
        </>
      )}
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .calculation { padding:0 30rpx 30rpx; background:#f9f9f9 }
  page: {
    backgroundColor: '#f9f9f9',
    flexGrow: 1,
    paddingHorizontal: rpx(30),
    paddingBottom: rpx(30),
  },
  // .alg { margin-top:16rpx; padding:30rpx 28rpx; gradient; radius 16rpx }
  alg: {
    marginTop: rpx(16),
    paddingVertical: rpx(30),
    paddingHorizontal: rpx(28),
    borderRadius: rpx(16),
  },
  algTitle: {
    fontSize: rpx(32),
    color: '#fff',
    fontFamily: theme.typography.family.bold,
  },
  algText: {
    marginTop: rpx(10),
    fontSize: rpx(28),
    color: '#fff',
    lineHeight: rpx(40),
    fontFamily: theme.typography.family.medium,
  },
  // .intro { margin-top:16rpx; padding:28rpx; bg #fff }
  intro: {
    marginTop: rpx(16),
    padding: rpx(28),
    backgroundColor: '#fff',
  },
  introText: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  hl: { color: '#ee5016' },
  // .list { padding:0 28rpx }
  list: { marginTop: rpx(4), backgroundColor: '#fff', paddingHorizontal: rpx(28) },
  // .list .header { height:90rpx }
  listHeader: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    height: rpx(90),
  },
  headerLeft: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.medium,
  },
  headerRight: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.bold,
  },
  // .list .main { height:400rpx }
  listMain: { maxHeight: rpx(400) },
  // .item { height:92rpx; border-top #ececec }
  item: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    minHeight: rpx(92),
    paddingVertical: rpx(16),
    borderTopWidth: rpx(1),
    borderTopColor: '#ececec',
  },
  itemLeft: {
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  itemRight: {
    flexShrink: 1,
    marginLeft: rpx(20),
    fontSize: rpx(26),
    color: '#ee5016',
    fontFamily: theme.typography.family.regular,
  },
  // .result { margin-top:16rpx; padding:20rpx 22rpx; bg #fff }
  result: {
    marginTop: rpx(16),
    paddingVertical: rpx(20),
    paddingHorizontal: rpx(22),
    backgroundColor: '#fff',
  },
  resultTitle: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  resultMain: {
    marginVertical: rpx(24),
    fontSize: rpx(36),
    textAlign: 'center',
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  empty: {
    padding: rpx(60),
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
