export const nowSeconds = () => Math.floor(Date.now() / 1000);

export function periodKey(period: string, date = new Date()): string {
  if (period === 'once') return 'once';
  if (period === 'daily') return date.toISOString().slice(0, 10);
  if (period === 'monthly') return date.toISOString().slice(0, 7);
  const utcDate = new Date(
    Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate()),
  );
  const day = utcDate.getUTCDay() || 7;
  utcDate.setUTCDate(utcDate.getUTCDate() + 4 - day);
  const yearStart = new Date(Date.UTC(utcDate.getUTCFullYear(), 0, 1));
  const week = Math.ceil(
    ((utcDate.getTime() - yearStart.getTime()) / 86_400_000 + 1) / 7,
  );
  return `${utcDate.getUTCFullYear()}-W${String(week).padStart(2, '0')}`;
}

export function periodStart(period: string, date = new Date()): number {
  if (period === 'once') return 0;
  if (period === 'daily')
    return Math.floor(
      Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate()) /
        1000,
    );
  if (period === 'monthly')
    return Math.floor(
      Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), 1) / 1000,
    );
  const start = new Date(
    Date.UTC(date.getUTCFullYear(), date.getUTCMonth(), date.getUTCDate()),
  );
  const day = start.getUTCDay() || 7;
  start.setUTCDate(start.getUTCDate() - day + 1);
  return Math.floor(start.getTime() / 1000);
}
