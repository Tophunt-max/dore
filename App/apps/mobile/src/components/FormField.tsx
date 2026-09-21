import {
  StyleSheet,
  Text,
  TextInput,
  View,
  type TextInputProps,
} from 'react-native';
import { theme } from '@/theme';

interface FormFieldProps extends TextInputProps {
  label: string;
  error?: string;
}

export function FormField({ label, error, style, ...props }: FormFieldProps) {
  return (
    <View style={styles.container}>
      <Text style={styles.label}>{label}</Text>
      <TextInput
        placeholderTextColor={theme.colors.textMuted}
        style={[styles.input, error && styles.inputError, style]}
        {...props}
      />
      {error ? <Text style={styles.error}>{error}</Text> : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { marginBottom: theme.spacing.lg },
  label: {
    marginBottom: theme.spacing.sm,
    color: theme.colors.ink,
    fontFamily: theme.typography.family.medium,
    fontSize: theme.typography.size.body,
  },
  input: {
    minHeight: 52,
    borderWidth: 1,
    borderColor: theme.colors.border,
    borderRadius: theme.radii.lg,
    paddingHorizontal: theme.spacing.lg,
    color: theme.colors.ink,
    backgroundColor: theme.colors.surface,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.subtitle,
  },
  inputError: { borderColor: theme.colors.danger },
  error: {
    marginTop: theme.spacing.xs,
    color: theme.colors.danger,
    fontFamily: theme.typography.family.regular,
    fontSize: theme.typography.size.caption,
  },
});
