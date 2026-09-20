import type { User } from '@oriva/shared';
import type { Bindings } from '../types';

export interface UserRow {
  id: string;
  phone_e164: string;
  display_name: string | null;
  email: string | null;
  avatar_key: string | null;
  referral_code: string;
  role: 'user' | 'support' | 'finance' | 'admin';
  status: 'active' | 'suspended' | 'closed';
}

export function maskPhone(phone: string): string {
  if (phone.length < 7) return '***';
  return `${phone.slice(0, 3)}****${phone.slice(-3)}`;
}

export function publicUser(env: Bindings, row: UserRow): User {
  return {
    id: row.id,
    phoneMasked: maskPhone(row.phone_e164),
    displayName: row.display_name,
    email: row.email,
    avatarUrl: row.avatar_key
      ? `${env.PUBLIC_ASSET_BASE}/${row.avatar_key}`
      : null,
    referralCode: row.referral_code,
    role: row.role,
    status: row.status,
  };
}
