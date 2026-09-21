import Constants from 'expo-constants';
import { router } from 'expo-router';
import { Alert, StyleSheet, View } from 'react-native';
import { OrList, OrRow } from '@/components/orich/OrRow';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/account/aboutus` (scope 28953aca): a white block with two rows —
// "User Agreement" (opens the rich-text agreement) and a version row that shows
// the app version and checks for updates. Not a marketing card.
export default function AboutScreen() {
  const { t } = useI18n();
  const version = Constants.expoConfig?.version ?? '0.1.0';

  return (
    <Screen
      header={<TopBar title={t('account.about')} white />}
      contentStyle={styles.page}
    >
      <View style={styles.block}>
        <OrList>
          <OrRow
            label={t('about.agreement')}
            chevron
            onPress={() =>
              router.push({ pathname: '/rules', params: { type: '1' } })
            }
          />
          <OrRow
            label={t('about.checkUpdate')}
            value={`${t('about.version')} ${version}`}
            chevron
            last
            onPress={() => Alert.alert(t('about.latestVersion'))}
          />
        </OrList>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .about { background:#f8f8f8 } — navbar (112rpx) then the white block.
  page: { backgroundColor: theme.colors.background, flexGrow: 1 },
  // .about_main { padding:0 24rpx 0 30rpx } is handled inside OrRow; the block
  // sits directly under the navbar.
  block: { marginTop: rpx(2) },
});
