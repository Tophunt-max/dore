import { router, useLocalSearchParams } from 'expo-router';
import { useState } from 'react';
import {
  Image,
  ImageBackground,
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/login/regist` (scope 7838e254): same background + title as
// login, with an OTP input row, an invitation-code row, and the confirm button.
export default function VerifyOtpScreen() {
  const { t } = useI18n();
  const { phone = '' } = useLocalSearchParams<{ phone: string }>();
  const verifyOtp = useAuthStore((s) => s.verifyOtp);
  const [code, setCode] = useState('');
  const [invite, setInvite] = useState('');
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function submit() {
    if (!/^\d{6}$/.test(code)) {
      setError(t('auth.invalidCode'));
      return;
    }
    setBusy(true);
    setError(null);
    try {
      await verifyOtp(phone, code, invite.trim() || undefined);
      router.replace('/(tabs)');
    } catch (e) {
      setError(e instanceof Error ? e.message : t('common.error'));
    } finally {
      setBusy(false);
    }
  }

  return (
    <ImageBackground
      source={assets.loginBackground}
      resizeMode="cover"
      style={styles.bg}
    >
      <KeyboardAvoidingView
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
        style={styles.flex}
      >
        <Text style={styles.title}>{t('auth.verify')}</Text>
        <Text style={styles.tips}>{t('auth.codePrompt', { phone })}</Text>

        <Text style={styles.inputTitle}>{t('auth.codeLabel')}</Text>
        <View style={styles.inputview}>
          <TextInput
            value={code}
            onChangeText={setCode}
            keyboardType="number-pad"
            maxLength={6}
            placeholder="000000"
            placeholderTextColor="silver"
            style={styles.input}
          />
        </View>

        <Text style={styles.inputTitle}>{t('auth.invite')}</Text>
        <View style={styles.inputview}>
          <Image source={assets.loginInvite} style={styles.inviteIcon} />
          <TextInput
            value={invite}
            onChangeText={setInvite}
            autoCapitalize="characters"
            placeholder=""
            placeholderTextColor="silver"
            style={styles.input}
          />
        </View>
        {error ? <Text style={styles.error}>{error}</Text> : null}

        <View style={styles.nextbtn}>
          <GradientButton loading={busy} onPress={() => void submit()}>
            {t('auth.submit')}
          </GradientButton>
        </View>
      </KeyboardAvoidingView>
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  bg: { flex: 1, paddingHorizontal: rpx(30) },
  flex: { flex: 1 },
  title: {
    marginTop: rpx(200),
    paddingHorizontal: rpx(20),
    fontSize: rpx(48),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  tips: {
    paddingHorizontal: rpx(20),
    fontSize: rpx(36),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  inputTitle: {
    marginTop: rpx(64),
    marginBottom: rpx(16),
    paddingHorizontal: rpx(20),
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  inputview: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: rpx(20),
    marginHorizontal: rpx(20),
    borderBottomWidth: rpx(2),
    borderBottomColor: '#ececec',
  },
  inviteIcon: {
    width: rpx(40),
    height: rpx(40),
    marginRight: rpx(20),
    resizeMode: 'contain',
  },
  input: {
    flex: 1,
    paddingLeft: rpx(4),
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  error: {
    marginTop: rpx(16),
    paddingHorizontal: rpx(20),
    color: theme.colors.danger,
    fontSize: rpx(26),
  },
  nextbtn: { marginTop: rpx(120), paddingHorizontal: rpx(20) },
});
