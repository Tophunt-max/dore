import { useMutation, useQueryClient } from '@tanstack/react-query';
import { router, useLocalSearchParams } from 'expo-router';
import { Image, StyleSheet, Text, TextInput, View } from 'react-native';
import { useState } from 'react';
import { api } from '@/api/endpoints';
import { assets } from '@/assets';
import { GradientButton } from '@/components/GradientButton';
import { Screen } from '@/components/Screen';
import { TopBar } from '@/components/TopBar';
import { useI18n } from '@/i18n';
import { theme } from '@/theme';

export default function BaskShareScreen() {
  const { t } = useI18n();
  const { prizeId } = useLocalSearchParams<{ prizeId?: string }>();
  const [story, setStory] = useState('');
  const client = useQueryClient();
  const publish = useMutation({
    mutationFn: () =>
      api.createShare({ prizeId: prizeId || null, body: story.trim() }),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['shares'] });
      router.replace('/my-shares');
    },
  });
  return (
    <Screen header={<TopBar title={t('shareWin.title')} />}>
      <View style={styles.page}>
        <View style={styles.prizeCard}>
          <Image
            resizeMode="contain"
            source={assets.success}
            style={styles.image}
          />
          <View style={styles.prizeCopy}>
            <Text style={styles.kicker}>{t('shareWin.kicker')}</Text>
            <Text style={styles.prizeTitle}>{t('shareWin.reward')}</Text>
            {prizeId ? (
              <Text style={styles.reference}>
                {t('shareWin.reference', { id: prizeId })}
              </Text>
            ) : null}
          </View>
        </View>
        <View style={styles.editor}>
          <Text style={styles.label}>{t('shareWin.story')}</Text>
          <TextInput
            multiline
            maxLength={280}
            onChangeText={setStory}
            placeholder={t('shareWin.placeholder')}
            placeholderTextColor={theme.colors.textMuted}
            style={styles.input}
            textAlignVertical="top"
            value={story}
          />
          <Text style={styles.counter}>{story.length}/280</Text>
        </View>
        <View style={styles.tip}>
          <Text style={styles.tipIcon}>✦</Text>
          <Text style={styles.tipText}>{t('shareWin.tip')}</Text>
        </View>
        {publish.error ? (
          <Text style={styles.error}>{publish.error.message}</Text>
        ) : null}
        <GradientButton
          disabled={story.trim().length < 12}
          loading={publish.isPending}
          onPress={() => publish.mutate()}
        >
          {t('shareWin.publish')}
        </GradientButton>
      </View>
    </Screen>
  );
}
const styles = StyleSheet.create({
  page: { padding: theme.spacing.lg, gap: theme.spacing.lg },
  prizeCard: {
    flexDirection: 'row',
    alignItems: 'center',
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.ink,
  },
  image: { width: 86, height: 86 },
  prizeCopy: { flex: 1, marginLeft: 12 },
  kicker: {
    color: theme.colors.accentStart,
    fontFamily: theme.typography.family.bold,
    letterSpacing: 1.2,
  },
  prizeTitle: {
    marginTop: 5,
    color: theme.colors.surface,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  reference: { marginTop: 7, color: '#D8DEE5', fontSize: 11 },
  editor: {
    padding: theme.spacing.lg,
    borderRadius: theme.radii.xl,
    backgroundColor: theme.colors.surface,
  },
  label: { color: theme.colors.ink, fontFamily: theme.typography.family.bold },
  input: {
    minHeight: 150,
    marginTop: 12,
    padding: 12,
    borderRadius: 10,
    color: theme.colors.ink,
    backgroundColor: theme.colors.background,
  },
  counter: { marginTop: 8, textAlign: 'right', color: theme.colors.textMuted },
  tip: {
    flexDirection: 'row',
    padding: 16,
    borderRadius: 10,
    backgroundColor: '#FFF5DD',
  },
  tipIcon: { color: theme.colors.warning, fontSize: 20 },
  tipText: {
    flex: 1,
    marginLeft: 12,
    color: theme.colors.textSecondary,
    lineHeight: 20,
  },
  error: { textAlign: 'center', color: theme.colors.danger },
});
