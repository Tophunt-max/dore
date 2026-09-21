// Money is stored/transferred as integer minor units (paise). Format for display.
export function formatMinor(minor: number | undefined | null, symbol = '₹'): string {
  const v = (minor ?? 0) / 100;
  return `${symbol}${v.toLocaleString('en-IN', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`;
}

export function toMinor(rupees: number | string): number {
  const n = typeof rupees === 'string' ? parseFloat(rupees) : rupees;
  if (isNaN(n)) return 0;
  return Math.round(n * 100);
}
