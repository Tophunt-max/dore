import { LinearGradient } from 'expo-linear-gradient';
import type { PropsWithChildren } from 'react';
import { ActivityIndicator, Pressable, StyleSheet, Text } from 'react-native';
import { theme } from '@/theme';

interface GradientButtonProps extends PropsWithChildren {
  onPress: () => void;
  disabled?: boolean;
  loading?: boolean;
  compact?: boolean;
}

export function GradientButton({
  children,
  onPress,
  disabled = false,
  loading = false,
  compact = false,
}: GradientButtonProps) {
  return (
    <Pressable
      accessibilityRole="button"
      disabled={disabled || loading}
      onPress={onPress}
      style={({ pressed }) => [pressed && styles.pressed]}
    >
      <LinearGradient
        colors={
          disabled
            ? [theme.colors.border, theme.colors.disabled]
            : [theme.colors.accentStart, theme.colors.accentEnd]
        }
        start={{ x: 0, y: 0.5 }}
        end={{ x: 1, y: 0.5 }}
        style={[styles.button, compact && styles.compact]}
      >
        {loading ? (
          <ActivityIndicator color={theme.colors.ink} />
        ) : (
          <Text style={styles.label}>{children}</Text>
        )}
      </LinearGradient>
    </Pressable>
  );
}

const styles = StyleSheet.create({
  button: {
    minHeight: 50,
    borderRadius: theme.radii.pill,
    alignItems: 'center',
    justifyContent: 'center',
    paddingHorizontal: theme.spacing.xl,
  },
  compact: {
    minHeight: 36,
    paddingHorizontal: theme.spacing.lg,
  },
  label: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
    fontSize: theme.typography.size.body,
  },
  pressed: {
    opacity: 0.82,
  },
});
