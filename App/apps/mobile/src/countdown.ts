// Reproduces ORich's `utils/utils.js` countDown() (app-service.js module f16a).
//
//   var d = days, h = hours%24, m = minutes%60, s = seconds%60  (each zero-padded)
//   var H = 24 * d + parseInt(h)          // days are folded into the hour count
//   return `${H}:${m}:${s}`
//
// So the app never prints "1d 20h" — it prints accumulated hours, e.g.
// "44:47:05", and "00:00:00" once the deadline passes (which also stops the
// per-item interval in the original).
function pad(value: number): string {
  return value < 10 ? `0${value}` : String(value);
}

export const COUNTDOWN_ZERO = '00:00:00';

/**
 * @param endMs   deadline in epoch milliseconds
 * @param nowMs   current time in epoch milliseconds
 */
export function countDown(endMs: number, nowMs: number): string {
  const diff = endMs - nowMs;
  if (!Number.isFinite(diff) || diff <= 0) return COUNTDOWN_ZERO;
  const days = Math.floor(diff / 1000 / 60 / 60 / 24);
  const hours = Math.floor((diff / 1000 / 60 / 60) % 24);
  const minutes = Math.floor((diff / 1000 / 60) % 60);
  const seconds = Math.floor((diff / 1000) % 60);
  // ORich folds whole days into the hour field.
  const totalHours = 24 * days + hours;
  return `${totalHours}:${pad(minutes)}:${pad(seconds)}`;
}
