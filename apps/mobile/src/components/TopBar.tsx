import { router } from 'expo-router';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface TopBarProps {
  title: string;
  canGoBack?: boolean;
  actionLabel?: string;
  onAction?: () => void;
  transparent?: boolean;
}

export function TopBar({
  title,
  canGoBack = true,
  actionLabel,
  onAction,
  transparent = false,
}: TopBarProps) {
  return (
    <View style={[styles.container, transparent && styles.transparent]}>
      <View style={styles.side}>
        {canGoBack ? (
          <Pressable hitSlop={12} onPress={() => router.back()}>
            <Text style={styles.back}>‹</Text>
          </Pressable>
        ) : null}
      </View>
      <Text numberOfLines={1} style={styles.title}>
        {title}
      </Text>
      <View style={[styles.side, styles.right]}>
        {actionLabel ? (
          <Pressable hitSlop={10} onPress={onAction}>
            <Text style={styles.action}>{actionLabel}</Text>
          </Pressable>
        ) : null}
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    minHeight: 50,
    flexDirection: 'row',
    alignItems: 'center',
    paddingHorizontal: theme.spacing.lg,
    backgroundColor: theme.colors.background,
  },
  transparent: {
    backgroundColor: 'transparent',
  },
  side: {
    width: 72,
  },
  right: {
    alignItems: 'flex-end',
  },
  title: {
    flex: 1,
    textAlign: 'center',
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.subtitle,
  },
  back: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.regular,
    fontSize: 36,
    lineHeight: 38,
  },
  action: {
    color: theme.colors.primary,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.body,
  },
});
