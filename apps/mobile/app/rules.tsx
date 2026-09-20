import { ContentPage } from '@/components/ContentPage';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
export default function RulesScreen() {
  const { t } = useI18n();
  return (
    <Screen header={<TopBar title={t('rules.title')} />}>
      <ContentPage
        slug="rules"
        fallbackTitle={t('rules.fallbackTitle')}
        fallbackBody={t('rules.fallbackBody')}
      />
    </Screen>
  );
}
