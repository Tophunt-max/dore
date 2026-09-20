import { useQuery } from '@tanstack/react-query';
import { router } from 'expo-router';
import { StyleSheet, Text, useWindowDimensions, View } from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { ProductCard } from '@/components/ProductCard';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { SegmentedControl } from '@/components/SegmentedControl';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
import { useState } from 'react';
type Tab = 'active' | 'scheduled';
export default function ProductsScreen() {
  const [tab, setTab] = useState<Tab>('active');
  const { width } = useWindowDimensions();
  const { t } = useI18n();
  const query = useQuery({ queryKey: ['campaigns'], queryFn: api.campaigns });
  const items = (query.data?.items ?? []).filter((c) =>
    tab === 'active' ? c.status === 'active' : c.status === 'scheduled',
  );
  const cardWidth =
    width < 360
      ? '100%'
      : width > 700
        ? Math.min(260, (width - 64) / 3)
        : (width - 44) / 2;
  return (
    <Screen
      header={
        <TopBar
          actionLabel="?"
          onAction={() => router.push('/rules')}
          title={t('catalog.title')}
        />
      }
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <SegmentedControl
          options={[
            { label: t('catalog.active'), value: 'active' },
            { label: t('catalog.scheduled'), value: 'scheduled' },
          ]}
          value={tab}
          onChange={setTab}
        />
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        <View style={styles.grid}>
          {items.map((c) => (
            <ProductCard
              key={c.id}
              width={cardWidth}
              image={
                c.product.imageUrl
                  ? { uri: c.product.imageUrl }
                  : assets.goodsOne
              }
              onPress={() => router.push(`/products/${c.id}`)}
              priceMinor={c.entryPriceMinor}
              sold={c.soldEntries}
              title={c.product.title}
              total={c.totalEntries}
              currency={c.product.currency}
            />
          ))}
        </View>
        {!query.isLoading && !query.error && !items.length ? (
          <Text style={styles.empty}>{t('catalog.empty')}</Text>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  grid: { flexDirection: 'row', flexWrap: 'wrap', gap: theme.spacing.md },
  empty: {
    padding: theme.spacing.xxxl,
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
