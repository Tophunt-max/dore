import { useQuery, useQueryClient } from '@tanstack/react-query';
import { Redirect, router } from 'expo-router';
import React from 'react';
import { Alert, Pressable, StyleSheet, Text, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useAuthStore } from '@/stores/auth';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/address/address` (scope 3cc08b87): white cards with a top row
// (name + mobile + edit), the address body, and a bottom row (default radio +
// delete), plus a fixed-bottom add button.
export default function AddressesScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
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

  const items = query.data?.items ?? [];

  return (
    <Screen
      header={<TopBar title={t('addresses.title')} white />}
      contentStyle={styles.page}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <QueryNotice
        loading={query.isLoading}
        error={query.error}
        onRetry={() => void query.refetch()}
      />
      {items.map((a) => (
        <View key={a.id} style={styles.content}>
          <View style={styles.top}>
            <Text style={styles.topName}>{a.recipientName}</Text>
            <Text style={styles.topNumber}>{a.phone}</Text>
            <Pressable
              hitSlop={10}
              style={styles.editBtn}
              onPress={() => router.push(`/addresses/add?id=${a.id}`)}
            >
              <Text style={styles.editText}>✎</Text>
            </Pressable>
          </View>
          <View style={styles.middle}>
            <Text style={styles.middleContent}>
              {[a.line1, a.line2, a.city, a.region, a.postalCode, a.countryCode]
                .filter(Boolean)
                .join(', ')}
            </Text>
          </View>
          <View style={styles.bottom}>
            <Pressable
              disabled={busy === a.id || a.isDefault}
              onPress={() => void makeDefault(a.id)}
              style={styles.bottomRadio}
            >
              <View
                style={[styles.circle, a.isDefault && styles.circleSelected]}
              />
              <Text
                style={[styles.radioLabel, a.isDefault && styles.radioSelected]}
              >
                {t('addresses.makeDefault')}
              </Text>
            </Pressable>
            <Pressable disabled={busy === a.id} onPress={() => remove(a.id)}>
              <Text style={styles.delete}>{t('common.remove')}</Text>
            </Pressable>
          </View>
        </View>
      ))}
      {!query.isLoading && !query.error && !items.length ? (
        <View style={styles.empty}>
          <Text style={styles.emptyTitle}>{t('addresses.empty')}</Text>
          <Text style={styles.emptyCopy}>{t('addresses.emptyCopy')}</Text>
        </View>
      ) : null}

      <View style={styles.addbtn}>
        <GradientButton onPress={() => router.push('/addresses/add')}>
          {t('addresses.add')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: {
    backgroundColor: theme.colors.background,
    flexGrow: 1,
    paddingBottom: rpx(180),
  },
  // .content { margin:22 28 16 30; padding-bottom:20rpx; radius 16rpx }
  content: {
    marginTop: rpx(22),
    marginHorizontal: rpx(29),
    paddingBottom: rpx(20),
    backgroundColor: theme.colors.surface,
    borderRadius: rpx(16),
  },
  // .top { padding:24 30 0 34 }
  top: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingTop: rpx(24),
    paddingHorizontal: rpx(34),
  },
  // .top_name { 32rpx; weight 700; #17273a }
  topName: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .top_number { margin-left:16rpx; 28rpx; #b9b9b9 }
  topNumber: {
    marginLeft: rpx(16),
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  editBtn: { marginLeft: 'auto' },
  editText: { fontSize: rpx(36), color: '#b9b9b9' },
  // .middle { margin:6 30 34 34 }
  middle: {
    marginTop: rpx(6),
    marginBottom: rpx(20),
    paddingHorizontal: rpx(34),
  },
  // .middle_content { 24rpx; #b9b9b9 }
  middleContent: {
    fontSize: rpx(24),
    lineHeight: rpx(36),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .bottom { padding:20rpx 34rpx 0; border-top #ececec }
  bottom: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: rpx(34),
    paddingTop: rpx(20),
    borderTopWidth: rpx(1),
    borderTopColor: '#ececec',
  },
  bottomRadio: { flexDirection: 'row', alignItems: 'center' },
  // .bottom-circle { 34rpx; border 2rpx #b9b9b9; radius 50% }
  circle: {
    width: rpx(34),
    height: rpx(34),
    marginRight: rpx(12),
    borderWidth: rpx(2),
    borderColor: '#b9b9b9',
    borderRadius: rpx(17),
  },
  circleSelected: { backgroundColor: '#ee5016', borderColor: '#ee5016' },
  radioLabel: {
    fontSize: rpx(28),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  radioSelected: { color: '#ee5016' },
  // .delete { 28rpx; #17273a }
  delete: {
    fontSize: rpx(28),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  addbtn: {
    position: 'absolute',
    left: '50%',
    bottom: rpx(40),
    width: rpx(600),
    transform: [{ translateX: -rpx(300) }],
  },
  empty: {
    alignItems: 'center',
    padding: rpx(60),
    marginTop: rpx(22),
    marginHorizontal: rpx(29),
    borderRadius: rpx(16),
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
