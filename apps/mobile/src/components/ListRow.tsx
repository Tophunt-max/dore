import type { ReactNode } from 'react';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface ListRowProps {
  title: string;
  subtitle?: string;
  leading?: ReactNode;
  trailing?: ReactNode;
  onPress?: () => void;
}

export function ListRow({
  title,
  subtitle,
  leading,
  trailing,
  onPress,
}: ListRowProps) {
  return (
    <Pressable
      disabled={!onPress}
      onPress={onPress}
      style={({ pressed }) => [styles.row, pressed && styles.pressed]}
    >
      {leading ? <View style={styles.leading}>{leading}</View> : null}
      <View style={styles.copy}>
        <Text style={styles.title}>{title}</Text>
        {subtitle ? <Text style={styles.subtitle}>{subtitle}</Text> : null}
      </View>
      {trailing ?? (onPress ? <Text style={styles.arrow}>›</Text> : null)}
    </Pressable>
  );
}

const styles = StyleSheet.create({
  row: {
    minHeight: 64,
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: theme.spacing.lg,
    paddingVertical: theme.spacing.md,
    borderBottomWidth: StyleSheet.hairlineWidth,
    borderBottomColor: theme.colors.border,
    backgroundColor: theme.colors.surface,
  },
  pressed: { opacity: 0.72 },
  leading: { marginRight: theme.spacing.md },
  copy: { flex: 1 },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.body,
  },
  subtitle: {
    marginTop: theme.spacing.xs,
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.caption,
    lineHeight: 17,
  },
  arrow: {
    marginLeft: theme.spacing.md,
    color: theme.colors.textMuted,
    fontSize: 24,
  },
});
