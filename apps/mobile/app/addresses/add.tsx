import { zodResolver } from '@hookform/resolvers/zod';
import { useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { Controller, useForm } from 'react-hook-form';
import {
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Switch,
  Text,
  View,
} from 'react-native';
import { addressInputSchema, type AddressInput } from '@oriva/shared';
import { z } from 'zod';
import { api } from '@/api/endpoints';
import { FormField } from '@/components/FormField';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';
type AddressFormInput = z.input<typeof addressInputSchema>;
const fields: ReadonlyArray<{
  name: Exclude<keyof AddressInput, 'isDefault' | 'line2'>;
  labelKey:
    | 'addresses.recipient'
    | 'addresses.phone'
    | 'addresses.line1'
    | 'addresses.city'
    | 'addresses.region'
    | 'addresses.postalCode'
    | 'addresses.countryCode';
  keyboardType?: 'default' | 'phone-pad';
}> = [
  { name: 'recipientName', labelKey: 'addresses.recipient' },
  { name: 'phone', labelKey: 'addresses.phone', keyboardType: 'phone-pad' },
  { name: 'line1', labelKey: 'addresses.line1' },
  { name: 'city', labelKey: 'addresses.city' },
  { name: 'region', labelKey: 'addresses.region' },
  { name: 'postalCode', labelKey: 'addresses.postalCode' },
  { name: 'countryCode', labelKey: 'addresses.countryCode' },
];
export default function AddAddressScreen() {
  const { t } = useI18n();
  const client = useQueryClient();
  const {
    control,
    handleSubmit,
    setError,
    formState: { errors, isSubmitting },
  } = useForm<AddressFormInput, unknown, AddressInput>({
    resolver: zodResolver(addressInputSchema),
    defaultValues: {
      recipientName: '',
      phone: '+91',
      line1: '',
      line2: null,
      city: '',
      region: '',
      postalCode: '',
      countryCode: 'IN',
      isDefault: false,
    },
  });
  const save = handleSubmit(async (values) => {
    try {
      await api.createAddress(values);
      await client.invalidateQueries({ queryKey: ['addresses'] });
      router.back();
    } catch (error) {
      setError('root', {
        message: error instanceof Error ? error.message : t('common.error'),
      });
    }
  });
  return (
    <Screen header={<TopBar title={t('addresses.addTitle')} />}>
      <KeyboardAvoidingView
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
        style={styles.page}
      >
        {fields.map((field) => (
          <Controller
            key={field.name}
            control={control}
            name={field.name}
            render={({ field: { onBlur, onChange, value } }) => (
              <FormField
                autoCapitalize={
                  field.name === 'phone' || field.name === 'countryCode'
                    ? 'characters'
                    : 'words'
                }
                error={errors[field.name]?.message}
                keyboardType={field.keyboardType}
                label={t(field.labelKey)}
                onBlur={onBlur}
                onChangeText={onChange}
                value={String(value ?? '')}
              />
            )}
          />
        ))}
        <Controller
          control={control}
          name="line2"
          render={({ field: { onBlur, onChange, value } }) => (
            <FormField
              label={t('addresses.line2')}
              onBlur={onBlur}
              onChangeText={onChange}
              value={value ?? ''}
            />
          )}
        />
        <Controller
          control={control}
          name="isDefault"
          render={({ field: { onChange, value } }) => (
            <View style={styles.toggle}>
              <Text style={styles.toggleLabel}>
                {t('addresses.makeDefault')}
              </Text>
              <Switch value={value} onValueChange={onChange} />
            </View>
          )}
        />
        {errors.root?.message ? (
          <Text style={styles.error}>{errors.root.message}</Text>
        ) : null}
        <GradientButton loading={isSubmitting} onPress={save}>
          {t('addresses.save')}
        </GradientButton>
      </KeyboardAvoidingView>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg },
  toggle: {
    marginBottom: 20,
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
  },
  toggleLabel: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  error: { marginBottom: 16, textAlign: 'center', color: theme.colors.danger },
});
