import { Hono } from 'hono';
import { payoutBeneficiaryInputSchema } from '@oriva/shared';
import { encryptBeneficiaryDestination, sha256 } from '../lib/crypto';
import { fail, ok } from '../lib/http';
import { mapBeneficiary } from '../lib/mappers';
import { nowSeconds } from '../lib/time';
import type { AppEnv } from '../types';

export const payoutRoutes = new Hono<AppEnv>();

const beneficiaryColumns = `id,type,label,account_holder_name,bank_name,ifsc,destination_last4,
  is_default,verification_status,rejection_reason,active,created_at,updated_at`;

payoutRoutes.get('/', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT ${beneficiaryColumns} FROM payout_beneficiaries
     WHERE user_id=? AND active=1 ORDER BY is_default DESC,created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapBeneficiary) });
});

payoutRoutes.post('/', async (c) => {
  const parsed = payoutBeneficiaryInputSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payout beneficiary',
      parsed.error.flatten().fieldErrors,
    );
  return saveBeneficiary(c, parsed.data);
});

payoutRoutes.put('/:id', async (c) => {
  const parsed = payoutBeneficiaryInputSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payout beneficiary',
      parsed.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare(
    'SELECT id FROM payout_beneficiaries WHERE id=? AND user_id=? AND active=1',
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first();
  if (!current)
    return fail(c, 404, 'BENEFICIARY_NOT_FOUND', 'Beneficiary not found');
  return saveBeneficiary(c, parsed.data, c.req.param('id'));
});

payoutRoutes.delete('/:id', async (c) => {
  const activeWithdrawal = await c.env.DB.prepare(
    `SELECT id FROM withdrawals WHERE beneficiary_id=? AND user_id=?
     AND status IN ('requested','reviewing','approved') LIMIT 1`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first();
  if (activeWithdrawal)
    return fail(
      c,
      409,
      'BENEFICIARY_IN_USE',
      'This beneficiary is used by an active withdrawal',
    );
  const result = await c.env.DB.prepare(
    `UPDATE payout_beneficiaries SET active=0,is_default=0,updated_at=?
     WHERE id=? AND user_id=? AND active=1`,
  )
    .bind(nowSeconds(), c.req.param('id'), c.get('userId'))
    .run();
  if (!result.meta.changes)
    return fail(c, 404, 'BENEFICIARY_NOT_FOUND', 'Beneficiary not found');
  return ok(c, { deleted: true });
});

async function saveBeneficiary(
  c: Parameters<typeof ok>[0],
  input: ReturnType<typeof payoutBeneficiaryInputSchema.parse>,
  id: string = crypto.randomUUID(),
) {
  if (!c.env.BENEFICIARY_ENCRYPTION_KEY)
    return fail(
      c,
      503,
      'PAYOUT_CONFIGURATION_REQUIRED',
      'Payout beneficiary encryption is not configured',
    );
  const destination =
    input.type === 'bank'
      ? input.accountNumber.replace(/\s/g, '')
      : input.upiId.toLowerCase();
  const fingerprint = await sha256(`${input.type}:${destination}`);
  if (!c.req.param('id')) {
    const archived = await c.env.DB.prepare(
      `SELECT id FROM payout_beneficiaries WHERE user_id=? AND destination_fingerprint=? AND active=0`,
    )
      .bind(c.get('userId'), fingerprint)
      .first<{ id: string }>();
    if (archived) id = archived.id;
  }
  const encrypted = await encryptBeneficiaryDestination(
    c.env.BENEFICIARY_ENCRYPTION_KEY,
    destination,
  );
  const now = nowSeconds();
  const statements: D1PreparedStatement[] = [];
  if (input.isDefault)
    statements.push(
      c.env.DB.prepare(
        'UPDATE payout_beneficiaries SET is_default=0,updated_at=? WHERE user_id=?',
      ).bind(now, c.get('userId')),
    );
  statements.push(
    c.env.DB.prepare(
      `INSERT INTO payout_beneficiaries
       (id,user_id,type,label,account_holder_name,bank_name,ifsc,destination_ciphertext,
        destination_iv,destination_last4,destination_fingerprint,is_default,
        verification_status,active,created_at,updated_at)
       VALUES(?,?,?,?,?,?,?,?,?,?,?,?, 'pending',1,?,?)
       ON CONFLICT(id) DO UPDATE SET type=excluded.type,label=excluded.label,
        account_holder_name=excluded.account_holder_name,bank_name=excluded.bank_name,
        ifsc=excluded.ifsc,destination_ciphertext=excluded.destination_ciphertext,
        destination_iv=excluded.destination_iv,destination_last4=excluded.destination_last4,
        destination_fingerprint=excluded.destination_fingerprint,is_default=excluded.is_default,
        verification_status='pending',verified_by_user_id=NULL,verified_at=NULL,
        rejection_reason=NULL,active=1,updated_at=excluded.updated_at`,
    ).bind(
      id,
      c.get('userId'),
      input.type,
      input.label,
      input.accountHolderName ?? null,
      input.type === 'bank' ? input.bankName : null,
      input.type === 'bank' ? input.ifsc : null,
      encrypted.ciphertext,
      encrypted.iv,
      destination.slice(-4),
      fingerprint,
      input.isDefault ? 1 : 0,
      now,
      now,
    ),
  );
  try {
    await c.env.DB.batch(statements);
  } catch (error) {
    if (error instanceof Error && error.message.includes('UNIQUE'))
      return fail(
        c,
        409,
        'BENEFICIARY_ALREADY_EXISTS',
        'This payout destination is already registered',
      );
    throw error;
  }
  const row = await c.env.DB.prepare(
    `SELECT ${beneficiaryColumns} FROM payout_beneficiaries WHERE id=? AND user_id=?`,
  )
    .bind(id, c.get('userId'))
    .first<Record<string, unknown>>();
  return ok(
    c,
    row ? mapBeneficiary(row) : null,
    id === c.req.param('id') ? 200 : 201,
  );
}
