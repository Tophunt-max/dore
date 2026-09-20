import { StyleSheet, View } from 'react-native';
import { rpx } from '@/rpx';

// ORich `components/lineprogress` (app-service.js module d8b6) wraps uView's
// `u-line-progress` and always passes:
//   active-color="#EE5016"  inactive-color="#F8E0D7"  :show-percent="false"
// with its own `height` prop defaulting to 16rpx and `round` (uView default
// true) giving fully rounded ends. Every ORich screen that shows a fill bar
// (home rows, goods page, finance, orders) uses this component.
const ACTIVE = '#EE5016';
const INACTIVE = '#F8E0D7';

export function LineProgress({
  percent,
  height = 16,
}: {
  /** 0-100 */
  percent: number;
  /** Bar height in rpx (ORich default 16). */
  height?: number;
}) {
  const h = rpx(height);
  const clamped = Math.max(0, Math.min(100, percent));
  return (
    <View
      style={[styles.track, { height: h, borderRadius: h / 2 }]}
      accessibilityRole="progressbar"
    >
      <View
        style={[
          styles.fill,
          { width: `${clamped}%`, borderRadius: h / 2 },
        ]}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  track: {
    width: '100%',
    overflow: 'hidden',
    backgroundColor: INACTIVE,
  },
  fill: { height: '100%', backgroundColor: ACTIVE },
});
