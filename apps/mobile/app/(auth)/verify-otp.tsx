import { zodResolver } from '@hookform/resolvers/zod';
import { router, useLocalSearchParams } from 'expo-router';
import { Controller, useForm } from 'react-hook-form';
import {
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Text,
  View,
} from 'react-native';
import { z } from 'zod';
import { FormField } from '@/components/FormField';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { useAuthStore } from '@/stores/auth';
import { theme } from '@/theme';
const schemaFor = (message: string) =>
  z.object({
    code: z.string().regex(/^\d{6}$/, message),
    inviteCode: z.string().trim().max(32).optional(),
  });
type Values = z.infer<ReturnType<typeof schemaFor>>;
export default function VerifyOtpScreen() {
  const { t } = useI18n();
  const { phone = '' } = useLocalSearchParams<{ phone: string }>();
  const verifyOtp = useAuthStore((s) => s.verifyOtp);
  const {
    control,
    handleSubmit,
    setError,
    formState: { errors, isSubmitting },
  } = useForm<Values>({
    resolver: zodResolver(schemaFor(t('auth.invalidCode'))),
    defaultValues: { code: '', inviteCode: '' },
  });
  const submit = handleSubmit(async ({ code, inviteCode }) => {
    try {
      await verifyOtp(phone, code, inviteCode || undefined);
      router.replace('/(tabs)');
    } catch (error) {
      setError('code', {
        message: error instanceof Error ? error.message : t('common.error'),
      });
    }
  });
  return (
    <Screen scroll={false} header={<TopBar title={t('auth.verify')} />}>
      <KeyboardAvoidingView
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
        style={styles.page}
      >
        <View style={styles.badge}>
          <Text style={styles.badgeText}>6</Text>
        </View>
        <Text style={styles.title}>{t('auth.code')}</Text>
        <Text style={styles.copy}>{t('auth.codePrompt', { phone })}</Text>
        <Controller
          control={control}
          name="code"
          render={({ field: { onBlur, onChange, value } }) => (
            <FormField
              autoComplete="one-time-code"
              error={errors.code?.message}
              keyboardType="number-pad"
              label={t('auth.codeLabel')}
              maxLength={6}
              onBlur={onBlur}
              onChangeText={onChange}
              placeholder="000000"
              value={value}
            />
          )}
        />
        <Controller
          control={control}
          name="inviteCode"
          render={({ field: { onBlur, onChange, value } }) => (
            <FormField
              autoCapitalize="characters"
              error={errors.inviteCode?.message}
              label={t('auth.invite')}
              onBlur={onBlur}
              onChangeText={onChange}
              placeholder=""
              value={value}
            />
          )}
        />
        <GradientButton loading={isSubmitting} onPress={submit}>
          {t('auth.submit')}
        </GradientButton>
      </KeyboardAvoidingView>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { flex: 1, padding: theme.spacing.xl, justifyContent: 'center' },
  badge: {
    width: 72,
    height: 72,
    alignSelf: 'center',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 36,
    backgroundColor: '#FFF3D1',
  },
  badgeText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 32,
  },
  title: {
    marginTop: theme.spacing.lg,
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.title,
  },
  copy: {
    marginTop: theme.spacing.sm,
    marginBottom: theme.spacing.xl,
    textAlign: 'center',
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
  },
});
