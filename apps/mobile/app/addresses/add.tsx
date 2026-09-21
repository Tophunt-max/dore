import { zodResolver } from '@hookform/resolvers/zod';
import { useQueryClient } from '@tanstack/react-query';
import { Redirect, router } from 'expo-router';
import { useAuthStore } from '@/stores/auth';
import { Controller, useForm } from 'react-hook-form';
import {
  KeyboardAvoidingView,
  Platform,
  StyleSheet,
  Switch,
  Text,
  TextInput,
  View,
} from 'react-native';
import { addressInputSchema, type AddressInput } from '@oriva/shared';
import { z } from 'zod';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

type AddressFormInput = z.input<typeof addressInputSchema>;
const fields: ReadonlyArray<{
  name: Exclude<keyof AddressInput, 'isDefault'>;
  labelKey:
    | 'addresses.recipient'
    | 'addresses.phone'
    | 'addresses.line1'
    | 'addresses.line2'
    | 'addresses.city'
    | 'addresses.region'
    | 'addresses.postalCode'
    | 'addresses.countryCode';
  keyboardType?: 'default' | 'phone-pad';
}> = [
  { name: 'recipientName', labelKey: 'addresses.recipient' },
  { name: 'phone', labelKey: 'addresses.phone', keyboardType: 'phone-pad' },
  { name: 'line1', labelKey: 'addresses.line1' },
  { name: 'line2', labelKey: 'addresses.line2' },
  { name: 'city', labelKey: 'addresses.city' },
  { name: 'region', labelKey: 'addresses.region' },
  { name: 'postalCode', labelKey: 'addresses.postalCode' },
  { name: 'countryCode', labelKey: 'addresses.countryCode' },
];

// ORich `pages/address/add` (scope 475cd6c4): a white form block with rows
// (label-left + input-right, #ececec separators) and a fixed-bottom submit.
export default function AddAddressScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
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
    <Screen
      header={<TopBar title={t('addresses.addTitle')} white />}
      contentStyle={styles.page}
    >
      <KeyboardAvoidingView
        behavior={Platform.OS === 'ios' ? 'padding' : undefined}
      >
        <View style={styles.form}>
          {fields.map((field, index) => (
            <Controller
              key={field.name}
              control={control}
              name={field.name}
              render={({ field: { onBlur, onChange, value } }) => (
                <View
                  style={[styles.item, index < fields.length && styles.border]}
                >
                  <Text style={styles.itemLeft}>{t(field.labelKey)}</Text>
                  <TextInput
                    keyboardType={field.keyboardType}
                    autoCapitalize={
                      field.name === 'countryCode' ? 'characters' : 'none'
                    }
                    placeholder=""
                    placeholderTextColor={theme.colors.disabled}
                    style={styles.itemRight}
                    onBlur={onBlur}
                    onChangeText={onChange}
                    value={String(value ?? '')}
                  />
                </View>
              )}
            />
          ))}
          <Controller
            control={control}
            name="isDefault"
            render={({ field: { onChange, value } }) => (
              <View style={styles.item}>
                <Text style={styles.itemLeft}>{t('addresses.makeDefault')}</Text>
                <Switch value={value} onValueChange={onChange} />
              </View>
            )}
          />
        </View>

        {errors.root?.message ? (
          <Text style={styles.error}>{errors.root.message}</Text>
        ) : null}
      </KeyboardAvoidingView>

      <View style={styles.submit}>
        <GradientButton loading={isSubmitting} onPress={save}>
          {t('addresses.save')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  // .add { background:#f8f8f8; padding-bottom:200rpx }
  page: {
    backgroundColor: '#f8f8f8',
    flexGrow: 1,
    paddingBottom: rpx(200),
  },
  // .add_form { background:#fff; padding-left:30rpx; padding-right:28rpx }
  form: {
    marginTop: rpx(2),
    backgroundColor: '#fff',
    paddingHorizontal: rpx(30),
  },
  // .add_form_item { height:122rpx; row }
  item: {
    minHeight: rpx(122),
    flexDirection: 'row',
    alignItems: 'center',
  },
  // .border_bottom { border-bottom:1rpx #ececec }
  border: {
    borderBottomWidth: rpx(1),
    borderBottomColor: '#ececec',
  },
  // .add_form_item_left { width:122rpx }
  itemLeft: {
    width: rpx(150),
    fontSize: rpx(30),
    color: '#17273a',
    fontFamily: theme.typography.family.medium,
  },
  // .add_form_item_right { margin-left:50rpx; width:75% }
  itemRight: {
    flex: 1,
    marginLeft: rpx(30),
    height: rpx(70),
    fontSize: rpx(30),
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
  },
  error: {
    marginTop: rpx(20),
    textAlign: 'center',
    color: theme.colors.danger,
  },
  // .add_submin { fixed; left:78rpx; bottom:38rpx; width:600rpx }
  submit: {
    position: 'absolute',
    left: rpx(78),
    right: rpx(78),
    bottom: rpx(38),
  },
});
