import type { CurrencyCode } from './types';

export function formatMoney(
  amountMinor: number,
  currency: CurrencyCode = 'INR',
  locale = 'en-IN',
): string {
  return new Intl.NumberFormat(locale, {
    style: 'currency',
    currency,
    maximumFractionDigits: 2,
  }).format(amountMinor / 100);
}

export function assertMinorAmount(amountMinor: number): void {
  if (!Number.isSafeInteger(amountMinor) || amountMinor < 0) {
    throw new Error('Money must be a non-negative safe integer in minor units');
  }
}
