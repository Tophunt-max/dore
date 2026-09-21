import { router } from 'expo-router';
import { useState } from 'react';
import { Alert, StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/account/username` (scope fefffb8c): a single white "list" block
// with one labelled input row (136rpx key + bordered field) and a fixed-bottom
// confirm button. Deliberately minimal, matching the original.
export default function UsernameScreen() {
  const { t } = useI18n();
  const user = useAuthStore((s) => s.user);
  const updateUser = useAuthStore((s) => s.updateUser);
  const [name, setName] = useState(user?.displayName ?? '');
  const [busy, setBusy] = useState(false);
  const normalized = name.trim();

  async function save() {
    if (!user) {
      router.push('/login');
      return;
    }
    if (normalized.length < 2 || normalized.length > 16) {
      Alert.alert(t('profile.nameError'));
      return;
    }
    setBusy(true);
    try {
      const result = await api.updateMe({ displayName: normalized });
      if (result) updateUser(result);
      Alert.alert(t('profile.nameUpdated'));
      router.back();
    } catch (e) {
      Alert.alert(e instanceof Error ? e.message : t('common.error'));
    } finally {
      setBusy(false);
    }
  }

  return (
    <Screen
      header={<TopBar title={t('settings.displayName')} white />}
      contentStyle={styles.page}
    >
      {/* .list { padding:14rpx 30rpx; background:#fff } */}
      <View style={styles.list}>
        <View style={styles.item}>
          <Text style={styles.itemKey}>{t('settings.displayName')}</Text>
          <TextInput
            value={name}
            onChangeText={setName}
            maxLength={16}
            placeholder={t('profile.namePlaceholder')}
            placeholderTextColor={theme.colors.disabled}
            style={styles.itemName}
          />
        </View>
      </View>

      {/* .logout { position:fixed; bottom:38rpx; left:74rpx; width:600rpx } */}
      <View style={styles.confirm}>
        <GradientButton loading={busy} onPress={() => void save()}>
          {t('profile.saveName')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { backgroundColor: theme.colors.background, flexGrow: 1 },
  list: {
    paddingVertical: rpx(14),
    paddingHorizontal: rpx(30),
    backgroundColor: theme.colors.surface,
  },
  item: { flexDirection: 'row', alignItems: 'center' },
  // .item-key { width:136rpx; font-size:32rpx; color:#444 }
  itemKey: {
    width: rpx(136),
    fontSize: rpx(32),
    color: '#444',
    fontFamily: theme.typography.family.regular,
  },
  // .item-name { flex:1; height:84rpx; padding:0 20rpx; border:1rpx #e0dfdf; radius:7rpx }
  itemName: {
    flex: 1,
    height: rpx(84),
    paddingHorizontal: rpx(20),
    borderWidth: rpx(1),
    borderColor: '#e0dfdf',
    borderRadius: rpx(7),
    fontSize: rpx(30),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  confirm: {
    position: 'absolute',
    left: rpx(74),
    right: rpx(74),
    bottom: rpx(38),
  },
});
