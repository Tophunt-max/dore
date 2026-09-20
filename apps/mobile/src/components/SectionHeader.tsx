import { Pressable, StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface SectionHeaderProps {
  title: string;
  action?: string;
  onAction?: () => void;
}

export function SectionHeader({ title, action, onAction }: SectionHeaderProps) {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>{title}</Text>
      {action ? (
        <Pressable hitSlop={10} onPress={onAction}>
          <Text style={styles.action}>{action} ›</Text>
        </Pressable>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginBottom: theme.spacing.md,
  },
  title: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  action: {
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.bodySmall,
  },
});
