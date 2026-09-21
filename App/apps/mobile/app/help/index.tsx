import { router } from 'expo-router';
import { Image, ImageBackground, Pressable, StyleSheet, Text, View } from 'react-native';
import { assets } from '@/assets';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/help/help` (scope 1d9015e4): a hero (`help_top`) with a white
// card (`help_main`) pulled up -46rpx and rounded 60rpx at the top. Each item
// has a left icon column (35%) and a content column (65%) of questions that
// open the detail page.
const topicIds = ['campaigns', 'results', 'prizes', 'account'] as const;
const topicIcons = {
  campaigns: assets.hotPicks,
  results: assets.quickWinner,
  prizes: assets.menuMyshare,
  account: assets.menuAbout,
} as const;

export default function HelpScreen() {
  const { t } = useI18n();
  const topics = [
    {
      id: topicIds[0],
      title: t('help.campaignsTitle'),
      subtitle: t('help.campaignsSubtitle'),
    },
    {
      id: topicIds[1],
      title: t('help.resultsTitle'),
      subtitle: t('help.resultsSubtitle'),
    },
    {
      id: topicIds[2],
      title: t('help.prizesTitle'),
      subtitle: t('help.prizesSubtitle'),
    },
    {
      id: topicIds[3],
      title: t('help.accountTitle'),
      subtitle: t('help.accountSubtitle'),
    },
  ] as const;

  return (
    <Screen
      header={<TopBar title={t('help.title')} white />}
      contentStyle={styles.help}
    >
      {/* .help_top { height:392rpx; background: faq art } */}
      <ImageBackground
        source={assets.faqBackground}
        resizeMode="cover"
        style={styles.helpTop}
      />
      {/* .help_main { margin-top:-46rpx; border-radius:60rpx 60rpx 0 0 } */}
      <View style={styles.helpMain}>
        <View style={styles.helpMainTitle}>
          <Text style={styles.helpMainTitleName}>{t('help.heading')}</Text>
        </View>
        {topics.map((topic) => (
          <Pressable
            key={topic.id}
            onPress={() => router.push(`/help/${topic.id}`)}
            style={styles.helpItem}
          >
            <View style={styles.itemIcon}>
              <View style={styles.itemIconUrl}>
                <Image source={topicIcons[topic.id]} style={styles.iconImg} />
              </View>
              <Text style={styles.itemIconTitle} numberOfLines={1}>
                {topic.title}
              </Text>
            </View>
            <View style={styles.itemContent}>
              <View style={styles.qRow}>
                <View style={styles.qDot} />
                <Text style={styles.qText} numberOfLines={2}>
                  {topic.subtitle}
                </Text>
              </View>
            </View>
          </Pressable>
        ))}
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  help: { backgroundColor: theme.colors.background, paddingBottom: rpx(30) },
  // .help_top { height:392rpx }
  helpTop: { width: '100%', height: rpx(392) },
  // .help_main { margin-top:-46rpx; radius 60rpx top; padding-top:40rpx }
  helpMain: {
    marginTop: rpx(-46),
    paddingTop: rpx(40),
    backgroundColor: theme.colors.surface,
    borderTopLeftRadius: rpx(60),
    borderTopRightRadius: rpx(60),
  },
  // .help_main_title { padding:30 30 20; border-bottom:2rpx #e9ecef }
  helpMainTitle: {
    paddingHorizontal: rpx(30),
    paddingTop: rpx(30),
    paddingBottom: rpx(20),
    borderBottomWidth: rpx(2),
    borderBottomColor: '#e9ecef',
  },
  // .help_main_title_name { font-weight:700; font-size:32rpx }
  helpMainTitleName: {
    fontSize: rpx(32),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  // .help_main_item { border-bottom:2rpx #e9ecef; padding:20rpx }
  helpItem: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: rpx(20),
    borderBottomWidth: rpx(2),
    borderBottomColor: '#e9ecef',
  },
  // .help_main_item_icon { width:35%; column; padding:0 20rpx }
  itemIcon: {
    width: '35%',
    alignItems: 'center',
    justifyContent: 'center',
    paddingHorizontal: rpx(20),
  },
  // .help_main_item_icon_url { width:60rpx; height:60rpx }
  itemIconUrl: { width: rpx(60), height: rpx(60) },
  iconImg: { width: '100%', height: '100%', resizeMode: 'contain' },
  // .help_main_item_icon_title { text-align:center; color:#a9a9a9 }
  itemIconTitle: {
    marginTop: rpx(8),
    textAlign: 'center',
    color: '#a9a9a9',
    fontSize: rpx(24),
    fontFamily: theme.typography.family.regular,
  },
  // .help_main_item_content { width:65% }
  itemContent: { width: '65%' },
  // .iconb { display:flex; align-items:center }
  qRow: { flexDirection: 'row', alignItems: 'center' },
  // .icon_qr { width:10rpx; height:10rpx; radius 50%; #a9a9a9; opacity .4 }
  qDot: {
    width: rpx(10),
    height: rpx(10),
    borderRadius: rpx(5),
    marginRight: rpx(8),
    backgroundColor: '#a9a9a9',
    opacity: 0.4,
  },
  qText: {
    flex: 1,
    fontSize: rpx(28),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
});
