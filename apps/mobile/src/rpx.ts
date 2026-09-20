import { Dimensions } from 'react-native';

// The ORich uni-app is designed on a 750rpx-wide artboard. uni-app converts
// rpx to px with: px = rpx * screenWidth / 750. We reproduce that exact scale
// so the recovered layouts render with the same proportions as the original.
//
// On very wide viewports (desktop web) we cap the base width so the phone
// layout keeps its intended proportions instead of stretching hugely.
const DESIGN_WIDTH = 750;
const MAX_BASE_WIDTH = 540;

function baseWidth(): number {
  const { width } = Dimensions.get('window');
  return Math.min(width, MAX_BASE_WIDTH);
}

let scale = baseWidth() / DESIGN_WIDTH;

// Keep the scale in sync if the window is resized (e.g. browser/orientation).
Dimensions.addEventListener('change', () => {
  scale = baseWidth() / DESIGN_WIDTH;
});

/** Convert an ORich design rpx value to device px. */
export function rpx(value: number): number {
  return Math.round(value * scale * 100) / 100;
}

/** Current base content width in px (capped), useful for centering on web. */
export function contentWidth(): number {
  return baseWidth();
}
