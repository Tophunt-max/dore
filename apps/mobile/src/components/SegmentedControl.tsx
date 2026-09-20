import { Pressable, StyleSheet, Text, View } from 'react-native';
import { theme } from '@/theme';

interface Segment<T extends string> {
  label: string;
  value: T;
}

interface SegmentedControlProps<T extends string> {
  options: readonly Segment<T>[];
  value: T;
  onChange: (value: T) => void;
}

export function SegmentedControl<T extends string>({
  options,
  value,
  onChange,
}: SegmentedControlProps<T>) {
  return (
    <View style={styles.container}>
      {options.map((option) => {
        const active = option.value === value;
        return (
          <Pressable
            key={option.value}
            onPress={() => onChange(option.value)}
            style={[styles.option, active && styles.activeOption]}
          >
            <Text style={[styles.label, active && styles.activeLabel]}>
              {option.label}
            </Text>
          </Pressable>
        );
      })}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flexDirection: 'row',
    borderRadius: theme.radii.pill,
    padding: theme.spacing.xs,
    backgroundColor: theme.colors.surface,
  },
  option: {
    flex: 1,
    minHeight: 38,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: theme.radii.pill,
    paddingHorizontal: theme.spacing.sm,
  },
  activeOption: { backgroundColor: theme.colors.accentStart },
  label: {
    color: theme.colors.textMuted,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.bodySmall,
  },
  activeLabel: {
    color: theme.colors.ink,
    fontFamily: theme.typography.family.bold,
  },
});
