import { router } from 'expo-router';
import { useState } from 'react';
import {
  Image,
  ImageBackground,
  KeyboardAvoidingView,
  Platform,
  Pressable,
  StyleSheet,
  Text,
  TextInput,
  View,
} from 'react-native';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// ORich `pages/login/login` (scope 6f534c1f): full-bleed background art, a big
// left-aligned title + grey tips, and a phone input row (icon + country code +
// divider + input) over a hairline, then the send-OTP button and a rule footer.
export default function LoginScreen() {
  const { t } = useI18n();
  const [national, setNational] = useState('');
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function submit() {
    const phone = `+91${national.replace(/\D/g, '')}`;
    if (national.replace(/\D/g, '').length < 6) {
      setError(t('common.error'));
      return;
    }
    setBusy(true);
    setError(null);
    try {
      await api.requestOtp({ phone });
      router.push({ pathname: '/verify-otp', params: { phone } });
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
        <View style={styles.backicon}>
          <Pressable hitSlop={12} onPress={() => router.back()}>
            <Text style={styles.back}>‹</Text>
          </Pressable>
        </View>

        <Text style={styles.title}>{t('auth.welcome')}</Text>
        <Text style={styles.tips}>{t('auth.mobilePrompt')}</Text>

        <Text style={styles.inputTitle}>{t('auth.mobile')}</Text>
        <View style={styles.inputview}>
          <Image source={assets.loginPhone} style={styles.phoneIcon} />
          <Text style={styles.num}>+91</Text>
          <View style={styles.op} />
          <TextInput
            value={national}
            onChangeText={setNational}
            keyboardType="phone-pad"
            placeholder="9876543210"
            placeholderTextColor="silver"
            style={styles.input}
          />
        </View>
        {error ? <Text style={styles.error}>{error}</Text> : null}

        <View style={styles.nextbtn}>
          <GradientButton loading={busy} onPress={() => void submit()}>
            {t('auth.sendOtp')}
          </GradientButton>
        </View>

        <Text style={styles.rule}>{t('auth.terms')}</Text>
      </KeyboardAvoidingView>
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  // .login { padding:0 30rpx; bg art }
  bg: { flex: 1, paddingHorizontal: rpx(30) },
  flex: { flex: 1 },
  // .backicon { height:98rpx }
  backicon: { height: rpx(98), justifyContent: 'center', marginTop: rpx(40) },
  back: { fontSize: rpx(56), color: theme.colors.ink, lineHeight: rpx(58) },
  // .title { margin-top:120rpx; 48rpx; weight 700 }
  title: {
    marginTop: rpx(120),
    paddingHorizontal: rpx(20),
    fontSize: rpx(48),
    color: '#17273a',
    fontFamily: theme.typography.family.bold,
  },
  // .tips { 36rpx; #b9b9b9 }
  tips: {
    paddingHorizontal: rpx(20),
    fontSize: rpx(36),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
  },
  // .input-title { margin-top:104rpx; 32rpx; #17273a }
  inputTitle: {
    marginTop: rpx(104),
    marginBottom: rpx(16),
    paddingHorizontal: rpx(20),
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.regular,
  },
  // .inputview { padding:20rpx 0; margin:0 20rpx; border-bottom 2rpx #ececec }
  inputview: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: rpx(20),
    marginHorizontal: rpx(20),
    borderBottomWidth: rpx(2),
    borderBottomColor: '#ececec',
  },
  phoneIcon: {
    width: rpx(40),
    height: rpx(40),
    marginRight: rpx(10),
    resizeMode: 'contain',
  },
  // .inputview-num { 32rpx; silver }
  num: {
    fontSize: rpx(32),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .inputview-op { 2rpx x 26rpx; #b9b9b9 }
  op: {
    width: rpx(2),
    height: rpx(26),
    marginHorizontal: rpx(16),
    backgroundColor: '#b9b9b9',
  },
  // .inputview-input { flex:1; 32rpx; #17273a }
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
  // .nextbtn { margin-top:134rpx }
  nextbtn: { marginTop: rpx(134), paddingHorizontal: rpx(20) },
  // .user-rule { margin-top:260rpx; 26rpx }
  rule: {
    marginTop: rpx(60),
    paddingHorizontal: rpx(20),
    fontSize: rpx(26),
    color: '#b9b9b9',
    fontFamily: theme.typography.family.regular,
    lineHeight: rpx(38),
  },
});
