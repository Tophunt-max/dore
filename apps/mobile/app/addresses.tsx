import { useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Alert, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function AddressesScreen() {
  const { t } = useI18n();
  const client = useQueryClient();
  const query = useQuery({ queryKey: ['addresses'], queryFn: api.addresses });
  const [busy, setBusy] = React.useState<string | null>(null);
  async function makeDefault(id: string) {
    setBusy(id);
    try {
      await api.updateAddress(id, { isDefault: true });
      await client.invalidateQueries({ queryKey: ['addresses'] });
    } finally {
      setBusy(null);
    }
  }
  function remove(id: string) {
    Alert.alert(t('addresses.removeConfirm'), undefined, [
      { text: t('common.cancel'), style: 'cancel' },
      {
        text: t('common.remove'),
        style: 'destructive',
        onPress: () =>
          void (async () => {
            setBusy(id);
            try {
              await api.deleteAddress(id);
              await client.invalidateQueries({ queryKey: ['addresses'] });
            } finally {
              setBusy(null);
            }
          })(),
      },
    ]);
  }
  return (
    <Screen
      header={<TopBar title={t('addresses.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((a) => (
          <View key={a.id} style={styles.card}>
            <View style={styles.header}>
              <Text style={styles.name}>{a.recipientName}</Text>
              {a.isDefault ? (
                <StatusPill label={t('common.default')} tone="success" />
              ) : null}
            </View>
            <Text style={styles.phone}>{a.phone}</Text>
            <Text style={styles.address}>
              {[a.line1, a.line2, a.city, a.region, a.postalCode, a.countryCode]
                .filter(Boolean)
                .join(', ')}
            </Text>
            <View style={styles.actions}>
              {!a.isDefault ? (
                <Pressable
                  disabled={busy === a.id}
                  onPress={() => void makeDefault(a.id)}
                >
                  <Text style={styles.action}>
                    {t('addresses.makeDefault')}
                  </Text>
                </Pressable>
              ) : null}
              <Pressable disabled={busy === a.id} onPress={() => remove(a.id)}>
                <Text style={styles.remove}>{t('common.remove')}</Text>
              </Pressable>
            </View>
          </View>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <View style={styles.empty}>
            <Text style={styles.emptyTitle}>{t('addresses.empty')}</Text>
            <Text style={styles.emptyCopy}>{t('addresses.emptyCopy')}</Text>
          </View>
        ) : null}
        <GradientButton onPress={() => router.push('/addresses/add')}>
          {t('addresses.add')}
        </GradientButton>
      </View>
    </Screen>
  );
}
import React from 'react';
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
    ...theme.shadows.card,
  },
  header: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  name: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  phone: { marginTop: 6, color: theme.colors.textSecondary },
  address: { marginTop: 10, color: theme.colors.textSecondary, lineHeight: 20 },
  actions: {
    minHeight: 44,
    marginTop: 12,
    paddingTop: 12,
    flexDirection: 'row',
    justifyContent: 'flex-end',
    gap: 20,
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: theme.colors.border,
  },
  action: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  remove: {
    color: theme.colors.danger,
    fontFamily: theme.typography.family.bold,
  },
  empty: {
    alignItems: 'center',
    padding: 40,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  emptyTitle: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  emptyCopy: {
    marginTop: 6,
    textAlign: 'center',
    color: theme.colors.textMuted,
  },
});
