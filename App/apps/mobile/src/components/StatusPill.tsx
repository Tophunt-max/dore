import { StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

type Tone = 'brand' | 'success' | 'warning' | 'danger' | 'muted';

interface StatusPillProps {
  label: string;
  tone?: Tone;
}

const toneStyles = {
  brand: { backgroundColor: '#FFF1EA', color: theme.colors.primary },
  success: { backgroundColor: '#EAF9F1', color: theme.colors.success },
  warning: { backgroundColor: '#FFF5DD', color: theme.colors.warning },
  danger: { backgroundColor: '#FFECEB', color: theme.colors.danger },
  muted: {
    backgroundColor: theme.colors.background,
    color: theme.colors.textMuted,
  },
} as const;

export function StatusPill({ label, tone = 'brand' }: StatusPillProps) {
  const toneStyle = toneStyles[tone];
  return (
    <View style={[styles.pill, { backgroundColor: toneStyle.backgroundColor }]}>
      <Text style={[styles.label, { color: toneStyle.color }]}>{label}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  pill: {
    alignSelf: 'flex-start',
    borderRadius: theme.radii.pill,
    paddingHorizontal: theme.spacing.md,
    paddingVertical: theme.spacing.xs,
  },
  label: {
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.caption,
  },
});
