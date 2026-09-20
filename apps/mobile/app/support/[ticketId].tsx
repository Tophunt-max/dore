import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { Redirect, useLocalSearchParams } from 'expo-router';
import { useAuthStore } from '@/stores/auth';
import { useState } from 'react';
import { StyleSheet, Text, TextInput, View } from 'react-native';
import { api } from '@/api/endpoints';
import { GradientButton } from '@/components/GradientButton';
import { QueryNotice } from '@/components/QueryNotice';
import { Screen } from '@/components/Screen';
import { StatusPill } from '@/components/StatusPill';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function SupportTicketScreen() {
  const authedUser = useAuthStore((state) => state.user);
  if (!authedUser) return <Redirect href="/login" />;
  const { formatDate, labelFor, t } = useI18n();
  const { ticketId } = useLocalSearchParams<{ ticketId: string }>();
  const [message, setMessage] = useState('');
  const client = useQueryClient();
  const query = useQuery({
    queryKey: ['support-ticket', ticketId],
    queryFn: () => api.supportTicket(ticketId),
  });
  const reply = useMutation({
    mutationFn: () =>
      api.replySupportTicket(ticketId, { body: message.trim() }),
    onSuccess: () => {
      setMessage('');
      void client.invalidateQueries({ queryKey: ['support-ticket', ticketId] });
    },
  });
  const ticket = query.data;
  return (
    <Screen
      header={<TopBar title={ticket?.subject ?? t('support.request')} />}
      refreshing={query.isRefetching}
      onRefresh={() => void query.refetch()}
    >
      <View style={styles.page}>
        <QueryNotice
          loading={query.isLoading}
          error={query.error}
          onRetry={() => void query.refetch()}
        />
        {ticket ? (
          <>
            <View style={styles.header}>
              <Text style={styles.subject}>{ticket.subject}</Text>
              <StatusPill
                label={labelFor(ticket.status)}
                tone={
                  ticket.status === 'resolved' || ticket.status === 'closed'
                    ? 'success'
                    : 'warning'
                }
              />
            </View>
            {ticket.messages.map((item) => (
              <View
                key={item.id}
                style={[
                  styles.messageCard,
                  item.senderRole === 'user' ? styles.user : styles.staff,
                ]}
              >
                <Text style={styles.role}>
                  {item.senderRole === 'user'
                    ? t('support.you')
                    : t('support.staff')}
                </Text>
                <Text style={styles.body}>{item.body}</Text>
                <Text style={styles.date}>{formatDate(item.createdAt)}</Text>
              </View>
            ))}
            {ticket.status !== 'closed' ? (
              <View style={styles.reply}>
                <TextInput
                  multiline
                  placeholder={t('support.replyPlaceholder')}
                  placeholderTextColor={theme.colors.textMuted}
                  value={message}
                  onChangeText={setMessage}
                  style={styles.input}
                />
                {reply.error ? (
                  <Text style={styles.error}>{reply.error.message}</Text>
                ) : null}
                <GradientButton
                  disabled={!message.trim()}
                  loading={reply.isPending}
                  onPress={() => reply.mutate()}
                >
                  {t('support.sendReply')}
                </GradientButton>
              </View>
            ) : null}
          </>
        ) : null}
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.md },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
    padding: 16,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  subject: {
    flex: 1,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  messageCard: { maxWidth: '88%', padding: 14, borderRadius: 14 },
  user: { alignSelf: 'flex-end', backgroundColor: '#FFF1EA' },
  staff: { alignSelf: 'flex-start', backgroundColor: theme.colors.surface },
  role: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.bold,
    fontSize: 11,
  },
  body: { marginTop: 5, color: theme.colors.ink, lineHeight: 19 },
  date: { marginTop: 6, color: theme.colors.textMuted, fontSize: 10 },
  reply: { marginTop: 8, gap: 12 },
  input: {
    minHeight: 100,
    padding: 14,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: 12,
    color: theme.colors.ink,
    backgroundColor: theme.colors.surface,
    textAlignVertical: 'top',
  },
  error: { color: theme.colors.danger, textAlign: 'center' },
});
