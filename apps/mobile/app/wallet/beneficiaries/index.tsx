import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
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

export default function BeneficiariesScreen() {
  const { labelFor, t } = useI18n();
  const client = useQueryClient();
  const query = useQuery({
    queryKey: ['beneficiaries'],
    queryFn: api.beneficiaries,
  });
  const remove = useMutation({
    mutationFn: api.deleteBeneficiary,
    onSuccess: () => client.invalidateQueries({ queryKey: ['beneficiaries'] }),
  });
  return (
    <Screen
      header={<TopBar title={t('beneficiaries.title')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {query.data?.items.map((item) => (
          <View key={item.id} style={styles.card}>
            <View style={styles.header}>
              <View style={styles.copy}>
                <Text style={styles.title}>{item.label}</Text>
                <Text style={styles.detail}>
                  {item.type.toUpperCase()} · {item.maskedDestination}
                </Text>
              </View>
              <StatusPill
                label={labelFor(item.verificationStatus)}
                tone={
                  item.verificationStatus === 'verified'
                    ? 'success'
                    : item.verificationStatus === 'rejected'
                      ? 'danger'
                      : 'warning'
                }
              />
            </View>
            {item.rejectionReason ? (
              <Text style={styles.error}>{item.rejectionReason}</Text>
            ) : null}
            <View style={styles.actions}>
              <Pressable
                onPress={() =>
                  Alert.alert(
                    t('beneficiaries.removeTitle'),
                    t('beneficiaries.removeCopy'),
                    [
                      { text: t('common.cancel'), style: 'cancel' },
                      {
                        text: t('common.remove'),
                        style: 'destructive',
                        onPress: () => remove.mutate(item.id),
                      },
                    ],
                  )
                }
              >
                <Text style={styles.remove}>{t('common.remove')}</Text>
              </Pressable>
            </View>
          </View>
        ))}
        {!query.isLoading && !query.error && !query.data?.items.length ? (
          <Text style={styles.empty}>{t('beneficiaries.empty')}</Text>
        ) : null}
        <GradientButton
          onPress={() => router.push('/wallet/beneficiaries/add')}
        >
          {t('beneficiaries.add')}
        </GradientButton>
      </View>
    </Screen>
  );
}

const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  card: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  header: { flexDirection: 'row', alignItems: 'center', gap: theme.spacing.md },
  copy: { flex: 1 },
  title: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  detail: { marginTop: 5, color: theme.colors.textMuted },
  error: { marginTop: 10, color: theme.colors.danger },
  actions: {
    alignItems: 'flex-end',
    marginTop: 12,
    paddingTop: 12,
    borderTopWidth: StyleSheet.hairlineWidth,
    borderTopColor: theme.colors.border,
  },
  remove: {
    color: theme.colors.danger,
    fontFamily: theme.typography.family.bold,
  },
  empty: { padding: 28, textAlign: 'center', color: theme.colors.textMuted },
});
