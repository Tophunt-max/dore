import { Tabs } from 'expo-router';
import { Image, StyleSheet } from 'react-native';
import { assets } from '@/assets';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

const icons = {
  index: [assets.tabs.home, assets.tabs.homeActive],
  winners: [assets.tabs.winner, assets.tabs.winnerActive],
  member: [assets.tabs.member, assets.tabs.memberActive],
  tasks: [assets.tabs.task, assets.tabs.taskActive],
  account: [assets.tabs.account, assets.tabs.accountActive],
} as const;
function TabIcon({
  name,
  focused,
}: {
  name: keyof typeof icons;
  focused: boolean;
}) {
  return (
    <Image
      resizeMode="contain"
      source={icons[name][focused ? 1 : 0]}
      style={styles.icon}
    />
  );
}
export default function TabLayout() {
  const { t } = useI18n();
  return (
    <Tabs
      screenOptions={{
        headerShown: false,
        // ORich tabbar: color #17273a, selectedColor #de6436 (matches the
        // app-config tabBar block too).
        tabBarActiveTintColor: '#de6436',
        tabBarInactiveTintColor: '#17273a',
        tabBarLabelStyle: styles.label,
        tabBarStyle: styles.bar,
        tabBarItemStyle: styles.item,
      }}
    >
      <Tabs.Screen
        name="index"
        options={{
          title: t('nav.home'),
          tabBarIcon: ({ focused }) => (
            <TabIcon focused={focused} name="index" />
          ),
        }}
      />
      <Tabs.Screen
        name="winners"
        options={{
          title: t('nav.winners'),
          tabBarIcon: ({ focused }) => (
            <TabIcon focused={focused} name="winners" />
          ),
        }}
      />
      <Tabs.Screen
        name="member"
        options={{
          title: t('nav.member'),
          tabBarIcon: ({ focused }) => (
            <TabIcon focused={focused} name="member" />
          ),
        }}
      />
      <Tabs.Screen
        name="tasks"
        options={{
          title: t('nav.tasks'),
          tabBarIcon: ({ focused }) => (
            <TabIcon focused={focused} name="tasks" />
          ),
        }}
      />
      <Tabs.Screen
        name="account"
        options={{
          title: t('nav.account'),
          tabBarIcon: ({ focused }) => (
            <TabIcon focused={focused} name="account" />
          ),
        }}
      />
    </Tabs>
  );
}
const styles = StyleSheet.create({
  bar: {
    height: rpx(98),
    paddingTop: 4,
    paddingBottom: 7,
    backgroundColor: theme.colors.surface,
    borderTopColor: theme.colors.border,
  },
  item: { paddingVertical: 2 },
  icon: { width: rpx(46), height: rpx(46) },
  label: {
    fontFamily: theme.typography.family.bold,
    fontSize: rpx(20),
    marginTop: rpx(2),
  },
});
