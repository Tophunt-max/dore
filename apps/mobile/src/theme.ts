import { colors, radii, shadows, spacing, typography } from '@oriva/shared';

export const theme = {
  colors,
  radii,
  spacing,
  typography,
  shadows,
} as const;

export type AppTheme = typeof theme;
