import { Hono } from 'hono';
import {
  createPaymentSchema,
  createRechargeSchema,
  submitPaymentSchema,
  type ManualPayment,
  type PaymentMethod,
} from '@oriva/shared';
import { fail, ok } from '../lib/http';
import type { AppEnv } from '../types';

interface MethodRow {
  id: string;
  type: 'bank' | 'upi';
  display_name: string;
  instructions: string;
  account_name: string | null;
  account_number: string | null;
  bank_name: string | null;
  ifsc: string | null;
  upi_id: string | null;
  qr_image_key: string | null;
  currency: 'INR' | 'USD';
  enabled: number;
  sort_order: number;
}

interface PaymentRow {
  id: string;
  purpose: 'order' | 'recharge';
  order_id: string | null;
  amount_minor: number;
  currency: 'INR' | 'USD';
  status: ManualPayment['status'];
  created_at: number;
  updated_at: number;
  method_id: string;
  method_type: MethodRow['type'];
  display_name: string;
  instructions: string;
  account_name: string | null;
  account_number: string | null;
  bank_name: string | null;
  ifsc: string | null;
  upi_id: string | null;
  qr_image_key: string | null;
  method_currency: MethodRow['currency'];
  enabled: number;
  sort_order: number;
  submission_id: string | null;
  transaction_reference: string | null;
  proof_upload_id: string | null;
  submission_status: 'submitted' | 'approved' | 'rejected' | null;
  rejection_reason: string | null;
  submitted_at: number | null;
  reviewed_at: number | null;
}

const PAYMENT_SELECT = `
  SELECT p.id, p.purpose, p.order_id, p.amount_minor, p.currency, p.status,
         p.created_at, p.updated_at,
         m.id method_id, m.type method_type, m.display_name, m.instructions,
         m.account_name, m.account_number, m.bank_name, m.ifsc, m.upi_id,
         m.qr_image_key, m.currency method_currency, m.enabled, m.sort_order,
         s.id submission_id, s.transaction_reference, s.proof_upload_id,
         s.status submission_status, s.rejection_reason, s.submitted_at, s.reviewed_at
  FROM payment_transactions p
  JOIN payment_methods m ON m.id = p.payment_method_id
  LEFT JOIN payment_submissions s ON s.id = (
    SELECT ps.id FROM payment_submissions ps
    WHERE ps.payment_id = p.id ORDER BY ps.submitted_at DESC LIMIT 1
  )`;

function mapMethod(env: AppEnv['Bindings'], row: MethodRow): PaymentMethod {
  return {
    id: row.id,
    type: row.type,
    displayName: row.display_name,
    instructions: row.instructions,
    accountName: row.account_name,
    accountNumber: row.account_number,
    bankName: row.bank_name,
    ifsc: row.ifsc,
    upiId: row.upi_id,
    qrImageUrl: row.qr_image_key
      ? `${env.PUBLIC_ASSET_BASE}/${row.qr_image_key}`
      : null,
    currency: row.currency,
    enabled: Boolean(row.enabled),
    sortOrder: row.sort_order,
  };
}

function mapPayment(env: AppEnv['Bindings'], row: PaymentRow): ManualPayment {
  return {
    id: row.id,
    purpose: row.purpose,
    orderId: row.order_id,
    amountMinor: row.amount_minor,
    currency: row.currency,
    status: row.status,
    method: mapMethod(env, {
      id: row.method_id,
      type: row.method_type,
      display_name: row.display_name,
      instructions: row.instructions,
      account_name: row.account_name,
      account_number: row.account_number,
      bank_name: row.bank_name,
      ifsc: row.ifsc,
      upi_id: row.upi_id,
      qr_image_key: row.qr_image_key,
      currency: row.method_currency,
      enabled: row.enabled,
      sort_order: row.sort_order,
    }),
    latestSubmission: row.submission_id
      ? {
          id: row.submission_id,
          transactionReference: row.transaction_reference ?? '',
          proofUploadId: row.proof_upload_id,
          status: row.submission_status ?? 'submitted',
          rejectionReason: row.rejection_reason,
          submittedAt: new Date((row.submitted_at ?? 0) * 1000).toISOString(),
          reviewedAt: row.reviewed_at
            ? new Date(row.reviewed_at * 1000).toISOString()
            : null,
        }
      : null,
    createdAt: new Date(row.created_at * 1000).toISOString(),
    updatedAt: new Date(row.updated_at * 1000).toISOString(),
  };
}

export const paymentRoutes = new Hono<AppEnv>();

paymentRoutes.get('/methods', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id, type, display_name, instructions, account_name, account_number,
            bank_name, ifsc, upi_id, qr_image_key, currency, enabled, sort_order
     FROM payment_methods WHERE enabled = 1 ORDER BY sort_order, created_at`,
  ).all<MethodRow>();
  return ok(c, { items: result.results.map((row) => mapMethod(c.env, row)) });
});

paymentRoutes.post('/', async (c) => {
  const parsed = createPaymentSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payment request',
      parsed.error.flatten().fieldErrors,
    );
  const order = await c.env.DB.prepare(
    'SELECT id, amount_minor, currency, status FROM orders WHERE id = ? AND user_id = ?',
  )
    .bind(parsed.data.orderId, c.get('userId'))
    .first<{
      id: string;
      amount_minor: number;
      currency: string;
      status: string;
    }>();
  if (!order) return fail(c, 404, 'ORDER_NOT_FOUND', 'Order not found');
  return createIntent(c, {
    purpose: 'order',
    orderId: order.id,
    orderStatus: order.status,
    amountMinor: order.amount_minor,
    currency: order.currency,
    paymentMethodId: parsed.data.paymentMethodId,
    idempotencyKey: parsed.data.idempotencyKey,
  });
});

paymentRoutes.post('/recharge', async (c) => {
  const parsed = createRechargeSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid recharge request',
      parsed.error.flatten().fieldErrors,
    );
  return createIntent(c, {
    purpose: 'recharge',
    orderId: null,
    amountMinor: parsed.data.amountMinor,
    currency: 'INR',
    paymentMethodId: parsed.data.paymentMethodId,
    idempotencyKey: parsed.data.idempotencyKey,
  });
});

paymentRoutes.get('/', async (c) => {
  const result = await c.env.DB.prepare(
    `${PAYMENT_SELECT} WHERE p.user_id = ? ORDER BY p.created_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<PaymentRow>();
  return ok(c, { items: result.results.map((row) => mapPayment(c.env, row)) });
});

paymentRoutes.get('/:id', async (c) => {
  const payment = await getPayment(c, c.req.param('id'));
  if (!payment) return fail(c, 404, 'PAYMENT_NOT_FOUND', 'Payment not found');
  return ok(c, mapPayment(c.env, payment));
});

paymentRoutes.post('/:id/submissions', async (c) => {
  const parsed = submitPaymentSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payment submission',
      parsed.error.flatten().fieldErrors,
    );
  const payment = await c.env.DB.prepare(
    `SELECT id, status, order_id FROM payment_transactions WHERE id = ? AND user_id = ?`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<{ id: string; status: string; order_id: string | null }>();
  if (!payment) return fail(c, 404, 'PAYMENT_NOT_FOUND', 'Payment not found');
  const existing = await c.env.DB.prepare(
    `SELECT id,payment_id,transaction_reference,proof_upload_id FROM payment_submissions
     WHERE user_id=? AND idempotency_key=?`,
  )
    .bind(c.get('userId'), parsed.data.idempotencyKey)
    .first<{
      id: string;
      payment_id: string;
      transaction_reference: string;
      proof_upload_id: string | null;
    }>();
  if (existing) {
    if (
      existing.payment_id !== payment.id ||
      normalizeReference(existing.transaction_reference) !==
        normalizeReference(parsed.data.transactionReference) ||
      existing.proof_upload_id !== (parsed.data.proofUploadId ?? null)
    )
      return fail(
        c,
        409,
        'IDEMPOTENCY_CONFLICT',
        'The idempotency key was used for another payment submission',
      );
    const current = await getPayment(c, payment.id);
    return ok(c, current ? mapPayment(c.env, current) : null);
  }

  if (!['awaiting_submission', 'rejected'].includes(payment.status))
    return fail(
      c,
      409,
      'PAYMENT_NOT_SUBMITTABLE',
      'This payment is already being reviewed or completed',
    );

  if (parsed.data.proofUploadId) {
    const proof = await c.env.DB.prepare(
      `SELECT u.id FROM uploads u
       WHERE u.id=? AND u.user_id=? AND u.purpose='payment_proof'
       AND u.status='complete' AND u.consumed_at IS NULL
       AND NOT EXISTS (SELECT 1 FROM payment_submissions s WHERE s.proof_upload_id=u.id)`,
    )
      .bind(parsed.data.proofUploadId, c.get('userId'))
      .first();
    if (!proof)
      return fail(
        c,
        400,
        'INVALID_PAYMENT_PROOF',
        'Payment proof is missing or incomplete',
      );
  }

  const normalizedReference = normalizeReference(
    parsed.data.transactionReference,
  );
  if (normalizedReference.length < 6)
    return fail(
      c,
      400,
      'INVALID_TRANSACTION_REFERENCE',
      'Transaction reference must contain at least six letters or numbers',
    );
  const duplicate = await c.env.DB.prepare(
    'SELECT id FROM payment_submissions WHERE normalized_reference = ?',
  )
    .bind(normalizedReference)
    .first();
  if (duplicate)
    return fail(
      c,
      409,
      'REFERENCE_ALREADY_USED',
      'This transaction reference was already submitted',
    );

  const now = Math.floor(Date.now() / 1000);
  const statements: D1PreparedStatement[] = [
    c.env.DB.prepare(
      `INSERT INTO payment_submissions
       (id, payment_id, user_id, transaction_reference, normalized_reference,
        proof_upload_id, idempotency_key, status, submitted_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, 'submitted', ?)`,
    ).bind(
      crypto.randomUUID(),
      payment.id,
      c.get('userId'),
      parsed.data.transactionReference,
      normalizedReference,
      parsed.data.proofUploadId ?? null,
      parsed.data.idempotencyKey,
      now,
    ),
    c.env.DB.prepare(
      `UPDATE payment_transactions SET status = 'under_review', updated_at = ?
       WHERE id = ? AND status IN ('awaiting_submission', 'rejected')`,
    ).bind(now, payment.id),
  ];
  if (parsed.data.proofUploadId) {
    statements.push(
      c.env.DB.prepare(
        `UPDATE uploads SET consumed_at=? WHERE id=? AND user_id=? AND consumed_at IS NULL`,
      ).bind(now, parsed.data.proofUploadId, c.get('userId')),
    );
  }
  if (payment.order_id) {
    statements.push(
      c.env.DB.prepare(
        `UPDATE orders SET reservation_expires_at = ?, updated_at = ?
         WHERE id = ? AND status = 'pending'`,
      ).bind(now + 7 * 86400, now, payment.order_id),
    );
  }
  try {
    await c.env.DB.batch(statements);
  } catch (error) {
    if (error instanceof Error && error.message.includes('UNIQUE'))
      return fail(
        c,
        409,
        'SUBMISSION_CONFLICT',
        'The proof, reference, or idempotency key was already used',
      );
    throw error;
  }
  const current = await getPayment(c, payment.id);
  return ok(c, current ? mapPayment(c.env, current) : null, 201);
});

async function createIntent(
  c: Parameters<typeof ok>[0],
  input: {
    purpose: 'order' | 'recharge';
    orderId: string | null;
    orderStatus?: string;
    amountMinor: number;
    currency: string;
    paymentMethodId: string;
    idempotencyKey: string;
  },
) {
  const method = await c.env.DB.prepare(
    `SELECT id FROM payment_methods WHERE id = ? AND enabled = 1 AND currency = ?`,
  )
    .bind(input.paymentMethodId, input.currency)
    .first();
  if (!method)
    return fail(
      c,
      400,
      'PAYMENT_METHOD_UNAVAILABLE',
      'Selected payment method is unavailable',
    );
  const existing = await c.env.DB.prepare(
    `SELECT id, purpose, order_id, amount_minor, currency, payment_method_id
     FROM payment_transactions WHERE user_id = ? AND idempotency_key = ?`,
  )
    .bind(c.get('userId'), input.idempotencyKey)
    .first<{
      id: string;
      purpose: string;
      order_id: string | null;
      amount_minor: number;
      currency: string;
      payment_method_id: string;
    }>();
  if (
    existing &&
    (existing.purpose !== input.purpose ||
      existing.order_id !== input.orderId ||
      existing.amount_minor !== input.amountMinor ||
      existing.currency !== input.currency ||
      existing.payment_method_id !== input.paymentMethodId)
  ) {
    return fail(
      c,
      409,
      'IDEMPOTENCY_CONFLICT',
      'The idempotency key was already used for another payment',
    );
  }
  if (!existing && input.orderId && input.orderStatus !== 'pending')
    return fail(c, 409, 'ORDER_NOT_PAYABLE', 'Order cannot be paid');
  if (!existing && input.orderId) {
    const active = await c.env.DB.prepare(
      `SELECT id FROM payment_transactions WHERE order_id=? AND user_id=?
       AND status NOT IN ('cancelled','refunded') ORDER BY created_at DESC LIMIT 1`,
    )
      .bind(input.orderId, c.get('userId'))
      .first<{ id: string }>();
    if (active)
      return fail(
        c,
        409,
        'ORDER_PAYMENT_EXISTS',
        'This order already has an active payment',
      );
  }
  const paymentId = existing?.id ?? crypto.randomUUID();
  const now = Math.floor(Date.now() / 1000);
  if (!existing) {
    try {
      await c.env.DB.prepare(
        `INSERT INTO payment_transactions
         (id, user_id, order_id, payment_method_id, purpose, amount_minor, currency,
          idempotency_key, status, created_at, updated_at)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'awaiting_submission', ?, ?)`,
      )
        .bind(
          paymentId,
          c.get('userId'),
          input.orderId,
          input.paymentMethodId,
          input.purpose,
          input.amountMinor,
          input.currency,
          input.idempotencyKey,
          now,
          now,
        )
        .run();
    } catch (error) {
      if (error instanceof Error && error.message.includes('UNIQUE'))
        return fail(
          c,
          409,
          input.orderId ? 'ORDER_PAYMENT_EXISTS' : 'IDEMPOTENCY_CONFLICT',
          input.orderId
            ? 'This order already has an active payment'
            : 'The idempotency key was already used',
        );
      throw error;
    }
  }
  const payment = await getPayment(c, paymentId);
  return ok(
    c,
    payment ? mapPayment(c.env, payment) : null,
    existing ? 200 : 201,
  );
}

async function getPayment(c: Parameters<typeof ok>[0], id: string) {
  return c.env.DB.prepare(`${PAYMENT_SELECT} WHERE p.id = ? AND p.user_id = ?`)
    .bind(id, c.get('userId'))
    .first<PaymentRow>();
}

function normalizeReference(value: string) {
  return value
    .normalize('NFKC')
    .trim()
    .toUpperCase()
    .replace(/[^A-Z0-9]/g, '');
}
