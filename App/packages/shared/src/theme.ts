export const colors = {
  primary: '#EE5016',
  primaryPressed: '#D9430D',
  accentStart: '#FFE44B',
  accentEnd: '#FEA326',
  ink: '#17273A',
  textSecondary: '#686868',
  textMuted: '#919191',
  border: '#ECECEC',
  background: '#F8F8F8',
  surface: '#FFFFFF',
  success: '#19BE6B',
  warning: '#F29100',
  danger: '#FA3534',
  info: '#2979FF',
  disabled: '#B9B9B9',
  overlay: 'rgba(23, 39, 58, 0.48)',
} as const;

export const spacing = {
  xs: 4,
  sm: 8,
  md: 12,
  lg: 16,
  xl: 20,
  xxl: 24,
  xxxl: 32,
} as const;

export const radii = {
  sm: 4,
  md: 8,
  lg: 10,
  xl: 16,
  xxl: 20,
  pill: 999,
} as const;

export const typography = {
  family: {
    regular: 'RobotoRegular',
    medium: 'RobotoMedium',
    bold: 'RobotoBold',
  },
  size: {
    caption: 12,
    bodySmall: 13,
    body: 14,
    subtitle: 16,
    title: 20,
    hero: 26,
  },
} as const;

export const shadows = {
  card: {
    shadowColor: '#17273A',
    shadowOffset: { width: 0, height: 4 },
    shadowOpacity: 0.08,
    shadowRadius: 12,
    elevation: 3,
  },
} as const;
