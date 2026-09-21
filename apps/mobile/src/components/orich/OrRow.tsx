import type { ReactNode } from 'react';
import { Image, Pressable, StyleSheet, Text, View } from 'react-native';
import { assets } from '@/assets';
import { rpx } from '@/rpx';
import { theme } from '@/theme';

// Faithful ORich list primitives. The decompiled account sub-pages (setting,
// aboutus, service, username, funding …) all share one visual language:
//   * a white block on the #f8f8f8 page background
//   * rows with a 32rpx #444 Roboto label on the left
//   * an optional grey (#b9b9b9) value and/or a grey right chevron on the right
//   * 2rpx #ececec hair separators between rows
// These components reproduce those metrics exactly so every rebuilt page keeps
// the same proportions as the original artboard.

const INK = '#444';
const GREY = '#b9b9b9';
const SEP = '#ececec';

/** White rounded-less block that hosts a set of ORich rows. */
export function OrList({
  children,
  style,
}: {
  children: ReactNode;
  style?: object;
}) {
  return <View style={[styles.list, style]}>{children}</View>;
}

interface OrRowProps {
  label: string;
  value?: string;
  /** Show the grey right chevron (ORich `u-icon arrow-right #B9B9B9`). */
  chevron?: boolean;
  /** Render a custom trailing node instead of value/chevron. */
  trailing?: ReactNode;
  /** Render a custom leading node before the label. */
  leading?: ReactNode;
  onPress?: () => void;
  last?: boolean;
}

export function OrRow({
  label,
  value,
  chevron,
  trailing,
  leading,
  onPress,
  last,
}: OrRowProps) {
  const body = (
    <View style={[styles.row, last && styles.rowLast]}>
      {leading}
      <Text style={styles.label}>{label}</Text>
      <View style={styles.right}>
        {value ? (
          <Text style={styles.value} numberOfLines={1}>
            {value}
          </Text>
        ) : null}
        {trailing}
        {chevron ? (
          <Image source={assets.caretRight} style={styles.chevron} />
        ) : null}
      </View>
    </View>
  );
  if (!onPress) return body;
  return (
    <Pressable
      onPress={onPress}
      style={({ pressed }) => (pressed ? styles.pressed : undefined)}
    >
      {body}
    </Pressable>
  );
}

const styles = StyleSheet.create({
  // .middle { background-color:#fff }
  list: { backgroundColor: theme.colors.surface },
  // .name { padding:37rpx 30rpx; space-between } with #ececec hair separators
  row: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingVertical: rpx(37),
    paddingHorizontal: rpx(30),
    borderBottomWidth: rpx(2),
    borderBottomColor: SEP,
  },
  rowLast: { borderBottomWidth: 0 },
  pressed: { opacity: 0.72 },
  // .name_title { font-size:32rpx; color:#444 }
  label: {
    fontSize: rpx(32),
    color: INK,
    fontFamily: theme.typography.family.regular,
  },
  right: { flexDirection: 'row', alignItems: 'center', flexShrink: 1 },
  // .name_info { font-size:32rpx; color:#b9b9b9 }
  value: {
    fontSize: rpx(32),
    color: GREY,
    fontFamily: theme.typography.family.regular,
  },
  // u-icon arrow-right size 30 (~30rpx), colour #B9B9B9
  chevron: {
    width: rpx(30),
    height: rpx(30),
    marginLeft: rpx(12),
    resizeMode: 'contain',
    tintColor: GREY,
  },
});
