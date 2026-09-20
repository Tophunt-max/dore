import { zodResolver } from '@hookform/resolvers/zod';
import { router } from 'expo-router';
import { Controller, useForm } from 'react-hook-form';
import {
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { requestOtpSchema, type RequestOtpInput } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { BrandMark } from '@/components/BrandMark';
import { FormField } from '@/components/FormField';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
export default function LoginScreen() {
  const { t } = useI18n();
  const {
    control,
    handleSubmit,
    setError,
    formState: { errors, isSubmitting },
  } = useForm<RequestOtpInput>({
    resolver: zodResolver(requestOtpSchema),
    defaultValues: { phone: '+91' },
  });
  const submit = handleSubmit(async ({ phone }) => {
    try {
      await api.requestOtp({ phone });
      router.push({ pathname: '/verify-otp', params: { phone } });
    } catch (error) {
      setError('phone', {
        message: error instanceof Error ? error.message : t('common.error'),
      });
    }
  });
  return (
    <Screen
      scroll={false}
      header={<TopBar title={t('auth.login')} />}
      contentStyle={styles.fill}
    >
      <KeyboardAvoidingView
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
        style={styles.keyboard}
      >
        <View style={styles.card}>
          <View style={styles.logo}>
            <BrandMark size={76} />
          </View>
          <Text style={styles.title}>{t('auth.welcome')}</Text>
          <Text style={styles.subtitle}>{t('auth.mobilePrompt')}</Text>
          <Controller
            control={control}
            name="phone"
            render={({ field: { onBlur, onChange, value } }) => (
              <FormField
                autoComplete="tel"
                error={errors.phone?.message}
                keyboardType="phone-pad"
                label={t('auth.mobile')}
                onBlur={onBlur}
                onChangeText={onChange}
                placeholder="+919876543210"
                value={value}
              />
            )}
          />
          <GradientButton loading={isSubmitting} onPress={submit}>
            {t('auth.sendOtp')}
          </GradientButton>
          <Text style={styles.terms}>{t('auth.terms')}</Text>
        </View>
      </KeyboardAvoidingView>
    </Screen>
  );
}
const styles = StyleSheet.create({
  fill: { paddingBottom: 0 },
  keyboard: { flex: 1, justifyContent: 'flex-end', backgroundColor: '#EEF8F1' },
  card: {
    borderTopLeftRadius: 28,
    borderTopRightRadius: 28,
    padding: theme.spacing.xl,
    paddingBottom: theme.spacing.xxxl,
    backgroundColor: theme.colors.surface,
  },
  logo: { alignSelf: 'center' },
  title: {
    marginTop: theme.spacing.md,
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  subtitle: {
    marginTop: theme.spacing.xs,
    marginBottom: theme.spacing.xl,
    textAlign: 'center',
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
  terms: {
    marginTop: theme.spacing.lg,
    textAlign: 'center',
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.caption,
    lineHeight: 18,
  },
});
