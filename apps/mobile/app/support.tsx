import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { router } from 'expo-router';
import { useState } from 'react';
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { ContentPage } from '@/components/ContentPage';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function SupportScreen() {
  const { formatDate, labelFor, t } = useI18n();
  const client = useQueryClient();
  const tickets = useQuery({
    queryKey: ['support-tickets'],
    queryFn: api.supportTickets,
  });
  const [subject, setSubject] = useState('');
  const [message, setMessage] = useState('');
  const [error, setError] = useState<string | null>(null);
  const create = useMutation({
    mutationFn: () =>
      api.createSupportTicket({
        subject: subject.trim(),
        category: 'other',
        message: message.trim(),
      }),
    onSuccess: () => {
      setSubject('');
      setMessage('');
      setError(null);
      void client.invalidateQueries({ queryKey: ['support-tickets'] });
    },
    onError: (reason) => setError(reason.message),
  });
  return (
    <Screen
      header={<TopBar title={t('account.support')} />}
      refreshing={tickets.isRefetching}
      onRefresh={() => void tickets.refetch()}
    >
      <ContentPage
        slug="support"
        fallbackTitle={t('support.fallbackTitle')}
        fallbackBody={t('support.fallbackBody')}
      />
      <View style={styles.page}>
        <Pressable onPress={() => router.push('/help')} style={styles.help}>
          <Text style={styles.helpText}>{t('support.browse')}</Text>
        </Pressable>
        <Text style={styles.heading}>{t('support.myRequests')}</Text>
        <QueryNotice
          loading={tickets.isLoading}
          error={tickets.error}
          onRetry={() => void tickets.refetch()}
        />
        {tickets.data?.items.map((ticket) => (
          <Pressable
            key={ticket.id}
            onPress={() => router.push(`/support/${ticket.id}`)}
            style={styles.ticket}
          >
            <View style={styles.row}>
              <Text style={styles.ticketTitle}>{ticket.subject}</Text>
              <StatusPill
                label={labelFor(ticket.status)}
                tone={
                  ticket.status === 'resolved' || ticket.status === 'closed'
                    ? 'success'
                    : 'warning'
                }
              />
            </View>
            <Text style={styles.meta}>
              {ticket.category} · {formatDate(ticket.updatedAt)}
            </Text>
          </Pressable>
        ))}
        <Text style={styles.heading}>{t('support.newRequest')}</Text>
        <TextInput
          placeholder={t('support.subject')}
          placeholderTextColor={theme.colors.textMuted}
          value={subject}
          onChangeText={setSubject}
          style={styles.input}
        />
        <TextInput
          multiline
          numberOfLines={5}
          placeholder={t('support.describe')}
          placeholderTextColor={theme.colors.textMuted}
          value={message}
          onChangeText={setMessage}
          style={[styles.input, styles.message]}
        />
        {error ? <Text style={styles.error}>{error}</Text> : null}
        <GradientButton
          disabled={subject.trim().length < 3 || !message.trim()}
          loading={create.isPending}
          onPress={() => create.mutate()}
        >
          {t('support.create')}
        </GradientButton>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.md },
  help: {
    padding: 14,
    alignItems: 'center',
    borderRadius: 24,
    backgroundColor: '#FFF1EA',
  },
  helpText: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
  },
  heading: {
    marginTop: 12,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  ticket: {
    padding: 16,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  row: { flexDirection: 'row', alignItems: 'center', gap: 8 },
  ticketTitle: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
  meta: { marginTop: 7, color: theme.colors.textMuted, fontSize: 11 },
  input: {
    minHeight: 52,
    paddingHorizontal: 14,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: 10,
    color: theme.colors.ink,
    backgroundColor: theme.colors.surface,
  },
  message: { minHeight: 110, paddingTop: 14, textAlignVertical: 'top' },
  error: { color: theme.colors.danger, textAlign: 'center' },
});
