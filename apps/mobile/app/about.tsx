import { StyleSheet, View } from 'react-native';
import { BrandMark } from '@/components/BrandMark';
import { ContentPage } from '@/components/ContentPage';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function AboutScreen() {
  const { t } = useI18n();
  return (
    <Screen header={<TopBar title={t('account.about')} />}>
      <ContentPage
        slug="about"
        fallbackTitle={t('about.title')}
        fallbackBody={t('about.body')}
        leading={
          <View style={styles.mark}>
            <BrandMark size={92} />
          </View>
        }
      />
    </Screen>
  );
}
const styles = StyleSheet.create({
  mark: { alignItems: 'center', padding: theme.spacing.lg },
});
