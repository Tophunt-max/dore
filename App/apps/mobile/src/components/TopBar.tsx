import { router } from 'expo-router';
import { Pressable, StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface TopBarProps {
  title: string;
  canGoBack?: boolean;
  actionLabel?: string;
  onAction?: () => void;
  transparent?: boolean;
  /**
   * Match ORich sub-page navbars, which pass `background:"#ffffff"`. Defaults
   * to the page background (#F8F8F8) to preserve existing screens.
   */
  white?: boolean;
  /** White title/back/action for use over a coloured hero (ORich transparent navbar). */
  light?: boolean;
  onBack?: () => void;
}

export function TopBar({
  title,
  canGoBack = true,
  actionLabel,
  onAction,
  transparent = false,
  white = false,
  light = false,
  onBack,
}: TopBarProps) {
  return (
    <View
      style={[
        styles.container,
        white && styles.whiteBg,
        transparent && styles.transparent,
      ]}
    >
      <View style={styles.side}>
        {canGoBack ? (
          <Pressable
            hitSlop={12}
            onPress={() => (onBack ? onBack() : router.back())}
          >
            <Text style={[styles.back, light && styles.lightText]}>‹</Text>
          </Pressable>
        ) : null}
      </View>
      <Text numberOfLines={1} style={[styles.title, light && styles.lightText]}>
        {title}
      </Text>
      <View style={[styles.side, styles.right]}>
        {actionLabel ? (
          <Pressable hitSlop={10} onPress={onAction}>
            <Text style={[styles.action, light && styles.lightText]}>
              {actionLabel}
            </Text>
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
  whiteBg: {
    backgroundColor: theme.colors.surface,
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
  lightText: { color: '#fff' },
});
