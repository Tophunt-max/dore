import { Hono } from 'hono';
import {
  reconciliationItemSchema,
  reconciliationRunSchema,
  refundPaymentSchema,
  verifyBeneficiarySchema,
} from '@oriva/shared';
import { decryptBeneficiaryDestination } from '../lib/crypto';
import { fail, ok } from '../lib/http';
import { mapBeneficiary, mapDraw } from '../lib/mappers';
import { notificationStatements } from '../lib/notifications';
import { nowSeconds } from '../lib/time';
import { maskPhone } from '../lib/user';
import type { AppEnv } from '../types';

export const adminOperationsRoutes = new Hono<AppEnv>();

adminOperationsRoutes.get('/payout-beneficiaries', async (c) => {
  const status = c.req.query('status');
  const query = `SELECT b.id,b.user_id,b.type,b.label,b.account_holder_name,b.bank_name,b.ifsc,
    b.destination_last4,b.is_default,b.verification_status,b.rejection_reason,b.active,
    b.created_at,b.updated_at,u.phone_e164 FROM payout_beneficiaries b
    JOIN users u ON u.id=b.user_id ${status ? 'WHERE b.verification_status=?' : ''}
    ORDER BY b.created_at DESC LIMIT 200`;
  const result = status
    ? await c.env.DB.prepare(query).bind(status).all<Record<string, unknown>>()
    : await c.env.DB.prepare(query).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      ...mapBeneficiary(row),
      userId: String(row.user_id),
      phone: String(row.phone_e164),
    })),
  });
});
adminOperationsRoutes.post(
  '/payout-beneficiaries/:id/verification',
  async (c) => {
    const parsed = verifyBeneficiarySchema.safeParse(
      await c.req.json().catch(() => null),
    );
    if (!parsed.success)
      return fail(c, 400, 'VALIDATION_ERROR', 'Invalid verification decision');
    const now = nowSeconds();
    const result = await c.env.DB.prepare(
      `UPDATE payout_beneficiaries SET verification_status=?,verified_by_user_id=?,verified_at=?,
     rejection_reason=?,updated_at=? WHERE id=? AND active=1 AND verification_status='pending'`,
    )
      .bind(
        parsed.data.status,
        c.get('userId'),
        now,
        parsed.data.status === 'rejected' ? parsed.data.reason : null,
        now,
        c.req.param('id'),
      )
      .run();
    if (!result.meta.changes)
      return fail(
        c,
        409,
        'BENEFICIARY_NOT_PENDING',
        'Beneficiary is not pending verification',
      );
    await writeAudit(
      c,
      'payout_beneficiary.verified',
      'payout_beneficiary',
      c.req.param('id'),
      parsed.data,
    );
    return ok(c, { updated: true, status: parsed.data.status });
  },
);
adminOperationsRoutes.get('/withdrawals/:id/destination', async (c) => {
  if (!c.env.BENEFICIARY_ENCRYPTION_KEY)
    return fail(
      c,
      503,
      'PAYOUT_CONFIGURATION_REQUIRED',
      'Payout encryption is not configured',
    );
  const row = await c.env.DB.prepare(
    `SELECT destination_snapshot_json FROM withdrawals WHERE id=?`,
  )
    .bind(c.req.param('id'))
    .first<{ destination_snapshot_json: string | null }>();
  if (!row?.destination_snapshot_json)
    return fail(
      c,
      404,
      'DESTINATION_NOT_FOUND',
      'Withdrawal destination not found',
    );
  const snapshot = JSON.parse(row.destination_snapshot_json) as {
    type: string;
    label: string;
    accountHolderName: string | null;
    bankName: string | null;
    ifsc: string | null;
    ciphertext: string;
    iv: string;
  };
  const destination = await decryptBeneficiaryDestination(
    c.env.BENEFICIARY_ENCRYPTION_KEY,
    snapshot.ciphertext,
    snapshot.iv,
  );
  await writeAudit(
    c,
    'withdrawal.destination_viewed',
    'withdrawal',
    c.req.param('id'),
  );
  return ok(c, {
    type: snapshot.type,
    label: snapshot.label,
    accountHolderName: snapshot.accountHolderName,
    bankName: snapshot.bankName,
    ifsc: snapshot.ifsc,
    destination,
  });
});

adminOperationsRoutes.get('/campaigns/:id/draw', async (c) => {
  const row = await c.env.DB.prepare(
    `SELECT id,campaign_id,status,algorithm_version,seed_commitment,entry_snapshot_hash,
     eligible_entry_count,winning_index,winning_entry_id,committed_at,executed_at,revealed_seed
     FROM campaign_draws WHERE campaign_id=?`,
  )
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  return ok(c, row ? mapDraw(row) : null);
});
adminOperationsRoutes.post('/campaigns/:id/draw/preview', async (c) =>
  callDraw(c, 'draw.preview'),
);
adminOperationsRoutes.post('/campaigns/:id/draw/execute', async (c) =>
  callDraw(c, 'draw.execute'),
);

adminOperationsRoutes.post('/payments/:id/refunds', async (c) => {
  const parsed = refundPaymentSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid refund request',
      parsed.error.flatten().fieldErrors,
    );
  const payment = await c.env.DB.prepare(
    `SELECT p.id,p.user_id,p.purpose,p.amount_minor,p.currency,p.status,p.settlement_processed_at,
      p.order_id,o.status order_status,o.campaign_id FROM payment_transactions p
     LEFT JOIN orders o ON o.id=p.order_id WHERE p.id=?`,
  )
    .bind(c.req.param('id'))
    .first<{
      id: string;
      user_id: string;
      purpose: 'order' | 'recharge';
      amount_minor: number;
      currency: string;
      status: string;
      settlement_processed_at: number | null;
      order_id: string | null;
      order_status: string | null;
      campaign_id: string | null;
    }>();
  if (!payment) return fail(c, 404, 'PAYMENT_NOT_FOUND', 'Payment not found');
  let existing = await c.env.DB.prepare(
    'SELECT * FROM payment_refunds WHERE idempotency_key=?',
  )
    .bind(parsed.data.idempotencyKey)
    .first<Record<string, unknown>>();
  if (!existing) {
    existing = await c.env.DB.prepare(
      'SELECT * FROM payment_refunds WHERE payment_id=?',
    )
      .bind(payment.id)
      .first<Record<string, unknown>>();
  }
  let refundId: string;
  const now = nowSeconds();
  if (existing) {
    if (existing.payment_id !== payment.id)
      return fail(
        c,
        409,
        'IDEMPOTENCY_CONFLICT',
        'Idempotency key belongs to another refund',
      );
    if (existing.status === 'complete') return ok(c, camelizeRefund(existing));
    refundId = String(existing.id);
    if (existing.status === 'failed') {
      await c.env.DB.batch([
        c.env.DB.prepare(
          `UPDATE payment_refunds SET status='pending',failure_reason=NULL,idempotency_key=?,reason=?,payout_reference=?
           WHERE id=? AND status='failed'`,
        ).bind(
          parsed.data.idempotencyKey,
          parsed.data.reason,
          parsed.data.payoutReference,
          refundId,
        ),
        auditStatement(c, 'payment.refund_retried', 'payment', payment.id, {
          refundId,
        }),
      ]);
    }
  } else {
    refundId = crypto.randomUUID();
  }
  if (payment.status !== 'approved')
    return fail(
      c,
      409,
      'PAYMENT_NOT_REFUNDABLE',
      'Only approved payments can be refunded',
    );
  if (payment.purpose === 'order') {
    if (
      !payment.order_id ||
      !payment.campaign_id ||
      payment.order_status !== 'paid'
    )
      return fail(
        c,
        409,
        'ORDER_PAYMENT_NOT_REFUNDABLE',
        'Only paid, unfulfilled campaign orders can be refunded',
      );
    const coordinator = c.env.CAMPAIGN_COORDINATOR.get(
      c.env.CAMPAIGN_COORDINATOR.idFromName(payment.campaign_id),
    );
    const response = await coordinator.fetch('https://campaign/order-refund', {
      method: 'POST',
      body: JSON.stringify({
        operation: 'order.refund',
        orderId: payment.order_id,
        actorUserId: c.get('userId'),
        reason: parsed.data.reason,
      }),
    });
    if (!response.ok) {
      const body = (await response.json()) as { message?: string };
      return fail(
        c,
        409,
        'ORDER_PAYMENT_NOT_REFUNDABLE',
        body.message ?? 'Order refund failed',
      );
    }
  }
  if (!existing)
    await c.env.DB.prepare(
      `INSERT INTO payment_refunds
       (id,payment_id,amount_minor,currency,reason,status,requested_by_user_id,idempotency_key,payout_reference,created_at)
       VALUES(?,?,?,?,?,'pending',?,?,?,?)`,
    )
      .bind(
        refundId,
        payment.id,
        payment.amount_minor,
        payment.currency,
        parsed.data.reason,
        c.get('userId'),
        parsed.data.idempotencyKey,
        parsed.data.payoutReference,
        now,
      )
      .run();
  let transactionId: string | null = null;
  if (payment.purpose === 'recharge') {
    const coordinator = c.env.WALLET_COORDINATOR.get(
      c.env.WALLET_COORDINATOR.idFromName(payment.user_id),
    );
    const response = await coordinator.fetch('https://wallet/payment-refund', {
      method: 'POST',
      body: JSON.stringify({
        operation: 'payment.refund',
        userId: payment.user_id,
        paymentId: payment.id,
        refundId,
        amountMinor: payment.amount_minor,
      }),
    });
    const body = (await response.json()) as {
      message?: string;
      transactionId?: string;
    };
    if (!response.ok) {
      await c.env.DB.prepare(
        `UPDATE payment_refunds SET status='failed',failure_reason=? WHERE id=? AND status='pending'`,
      )
        .bind(body.message ?? 'Wallet reversal failed', refundId)
        .run();
      return fail(
        c,
        409,
        'REFUND_REVERSAL_FAILED',
        body.message ?? 'Wallet reversal failed',
      );
    }
    transactionId = body.transactionId ?? null;
  }
  const notification = notificationStatements(
    c.env.DB,
    {
      userId: payment.user_id,
      type: 'payment.completed',
      title: 'Payment refunded',
      body: 'Your manual payment refund has been completed.',
      entityId: payment.id,
    },
    now,
  );
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE payment_refunds SET status='complete',ledger_transaction_id=?,completed_at=?
       WHERE id=? AND status='pending'`,
    ).bind(transactionId, now, refundId),
    c.env.DB.prepare(
      `UPDATE payment_transactions SET status='refunded',updated_at=? WHERE id=? AND status='approved'`,
    ).bind(now, payment.id),
    auditStatement(c, 'payment.refunded', 'payment', payment.id, {
      refundId,
      reason: parsed.data.reason,
    }),
    ...notification.statements,
  ]);
  return ok(
    c,
    {
      id: refundId,
      status: 'complete',
      transactionId,
      payoutReference: parsed.data.payoutReference,
    },
    201,
  );
});

adminOperationsRoutes.get('/reports/reconciliation', async (c) => {
  const [payments, outbox, paymentOutbox, discrepancies, withdrawals, ledger] =
    await c.env.DB.batch([
      c.env.DB.prepare(
        `SELECT status,COUNT(*) count,COALESCE(SUM(amount_minor),0) amount_minor
       FROM payment_transactions GROUP BY status`,
      ),
      c.env.DB.prepare(
        `SELECT status,COUNT(*) count FROM outbox_events GROUP BY status`,
      ),
      c.env.DB.prepare(
        `SELECT status,COUNT(*) count,MAX(attempts) max_attempts
         FROM payment_settlement_outbox GROUP BY status`,
      ),
      c.env.DB.prepare(
        `SELECT status,COUNT(*) count FROM reconciliation_items GROUP BY status`,
      ),
      c.env.DB.prepare(
        `SELECT status,COUNT(*) count,COALESCE(SUM(amount_minor),0) amount_minor
       FROM withdrawals GROUP BY status`,
      ),
      c.env.DB.prepare(
        `SELECT direction,COALESCE(SUM(amount_minor),0) amount_minor
       FROM ledger_entries GROUP BY direction`,
      ),
    ]);
  return ok(c, {
    payments: payments?.results ?? [],
    outbox: outbox?.results ?? [],
    paymentSettlementOutbox: paymentOutbox?.results ?? [],
    discrepancies: discrepancies?.results ?? [],
    withdrawals: withdrawals?.results ?? [],
    ledger: ledger?.results ?? [],
  });
});
adminOperationsRoutes.get('/reconciliation/runs', async (c) => {
  const result = await c.env.DB.prepare(
    'SELECT * FROM reconciliation_runs ORDER BY opened_at DESC LIMIT 100',
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.post('/reconciliation/runs', async (c) => {
  const parsed = reconciliationRunSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid reconciliation run');
  const id = crypto.randomUUID();
  const now = nowSeconds();
  await c.env.DB.prepare(
    `INSERT INTO reconciliation_runs
     (id,source,statement_reference,status,opened_by_user_id,opened_at,notes)
     VALUES(?,?,?,'open',?,?,?)`,
  )
    .bind(
      id,
      parsed.data.source,
      parsed.data.statementReference,
      c.get('userId'),
      now,
      parsed.data.notes ?? null,
    )
    .run();
  return ok(c, { id }, 201);
});
adminOperationsRoutes.post('/reconciliation/runs/:id/items', async (c) => {
  const parsed = reconciliationItemSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid reconciliation item');
  const run = await c.env.DB.prepare(
    "SELECT id FROM reconciliation_runs WHERE id=? AND status='open'",
  )
    .bind(c.req.param('id'))
    .first();
  if (!run)
    return fail(c, 404, 'RUN_NOT_FOUND', 'Open reconciliation run not found');
  const id = crypto.randomUUID();
  await c.env.DB.prepare(
    `INSERT INTO reconciliation_items
     (id,run_id,payment_id,external_reference,amount_minor,currency,status,created_at)
     VALUES(?,?,?,?,?,?,?,?)`,
  )
    .bind(
      id,
      c.req.param('id'),
      parsed.data.paymentId ?? null,
      parsed.data.externalReference,
      parsed.data.amountMinor,
      parsed.data.currency,
      parsed.data.status,
      nowSeconds(),
    )
    .run();
  return ok(c, { id }, 201);
});
adminOperationsRoutes.post('/reconciliation/items/:id/resolve', async (c) => {
  const body = (await c.req.json<{ note?: string }>().catch(() => ({}))) as {
    note?: string;
  };
  if (!body.note?.trim())
    return fail(c, 400, 'NOTE_REQUIRED', 'Resolution note is required');
  const result = await c.env.DB.prepare(
    `UPDATE reconciliation_items SET status='resolved',resolution_note=?,resolved_by_user_id=?,resolved_at=?
     WHERE id=? AND status!='resolved'`,
  )
    .bind(body.note.trim(), c.get('userId'), nowSeconds(), c.req.param('id'))
    .run();
  if (!result.meta.changes)
    return fail(c, 409, 'ITEM_NOT_RESOLVABLE', 'Item cannot be resolved');
  return ok(c, { resolved: true });
});

adminOperationsRoutes.get('/payment-settlement-outbox', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT o.payment_id,o.status,o.attempts,o.last_error,o.created_at,o.processed_at,
      p.user_id,p.order_id,p.purpose,p.amount_minor,p.currency
     FROM payment_settlement_outbox o JOIN payment_transactions p ON p.id=o.payment_id
     WHERE o.status!='complete' ORDER BY o.attempts DESC,o.created_at LIMIT 200`,
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(camelizeOperationalRow) });
});
adminOperationsRoutes.post(
  '/payment-settlement-outbox/:paymentId/retry',
  async (c) => {
    const result = await c.env.DB.prepare(
      `UPDATE payment_settlement_outbox SET status='pending',attempts=0,last_error=NULL
     WHERE payment_id=? AND status!='complete'`,
    )
      .bind(c.req.param('paymentId'))
      .run();
    if (!result.meta.changes)
      return fail(
        c,
        409,
        'SETTLEMENT_NOT_RETRYABLE',
        'Settlement is not retryable',
      );
    await c.env.PAYMENT_EVENTS.send({
      type: 'payment.approved',
      paymentId: c.req.param('paymentId'),
    });
    return ok(c, { retried: true });
  },
);

adminOperationsRoutes.get('/outbox', async (c) => {
  const status = c.req.query('status') ?? 'dead_letter';
  const result = await c.env.DB.prepare(
    `SELECT id,event_type,aggregate_type,aggregate_id,status,attempts,last_error,created_at
     FROM outbox_events WHERE status=? ORDER BY created_at DESC LIMIT 200`,
  )
    .bind(status)
    .all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.post('/outbox/:id/retry', async (c) => {
  const result = await c.env.DB.prepare(
    `UPDATE outbox_events SET status='pending',attempts=0,last_error=NULL,available_at=?,lease_expires_at=NULL
     WHERE id=? AND status IN ('dead_letter','pending')`,
  )
    .bind(nowSeconds(), c.req.param('id'))
    .run();
  if (!result.meta.changes)
    return fail(
      c,
      409,
      'OUTBOX_NOT_RETRYABLE',
      'Outbox event is not retryable',
    );
  await writeAudit(c, 'outbox.retried', 'outbox_event', c.req.param('id'));
  return ok(c, { retried: true });
});
adminOperationsRoutes.get('/audit-logs', async (c) => {
  const entityType = c.req.query('entityType');
  const entityId = c.req.query('entityId');
  const where =
    entityType && entityId ? 'WHERE entity_type=? AND entity_id=?' : '';
  const query = `SELECT id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at
    FROM audit_logs ${where} ORDER BY created_at DESC LIMIT 200`;
  const result =
    entityType && entityId
      ? await c.env.DB.prepare(query)
          .bind(entityType, entityId)
          .all<Record<string, unknown>>()
      : await c.env.DB.prepare(query).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: row.id,
      actorUserId: row.actor_user_id,
      action: row.action,
      entityType: row.entity_type,
      entityId: row.entity_id,
      requestId: row.request_id,
      metadata: safeJson(row.metadata_json),
      createdAt: new Date(Number(row.created_at) * 1000).toISOString(),
    })),
  });
});

async function callDraw(
  c: Parameters<typeof ok>[0],
  operation: 'draw.preview' | 'draw.execute',
) {
  const campaignId = c.req.param('id') ?? '';
  const coordinator = c.env.CAMPAIGN_COORDINATOR.get(
    c.env.CAMPAIGN_COORDINATOR.idFromName(campaignId),
  );
  const response = await coordinator.fetch('https://campaign/draw', {
    method: 'POST',
    body: JSON.stringify({
      operation,
      campaignId,
      actorUserId: c.get('userId'),
      requestId: c.get('requestId'),
    }),
  });
  const body = await response.json();
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : response.status === 409 ? 409 : 400,
      'DRAW_OPERATION_FAILED',
      (body as { message?: string }).message ?? 'Draw operation failed',
    );
  return ok(
    c,
    body,
    operation === 'draw.preview' && response.status === 201 ? 201 : 200,
  );
}
function auditStatement(
  c: Parameters<typeof ok>[0],
  action: string,
  entityType: string,
  entityId: string,
  metadata: unknown = {},
) {
  return c.env.DB.prepare(
    `INSERT INTO audit_logs
     (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
     VALUES(?,?,?,?,?,?,?,?)`,
  ).bind(
    crypto.randomUUID(),
    c.get('userId'),
    action,
    entityType,
    entityId,
    c.get('requestId'),
    JSON.stringify(metadata),
    nowSeconds(),
  );
}
function writeAudit(
  c: Parameters<typeof ok>[0],
  action: string,
  entityType: string,
  entityId: string,
  metadata: unknown = {},
) {
  return auditStatement(c, action, entityType, entityId, metadata).run();
}
function safeJson(value: unknown) {
  try {
    return JSON.parse(String(value));
  } catch {
    return {};
  }
}

function camelizeRefund(row: Record<string, unknown>) {
  return {
    id: String(row.id),
    paymentId: String(row.payment_id),
    amountMinor: Number(row.amount_minor),
    currency: row.currency,
    reason: String(row.reason),
    status: row.status,
    createdAt: new Date(Number(row.created_at) * 1000).toISOString(),
    completedAt:
      row.completed_at == null
        ? null
        : new Date(Number(row.completed_at) * 1000).toISOString(),
    failureReason:
      row.failure_reason == null ? null : String(row.failure_reason),
  };
}

function camelizeOperationalRow(row: Record<string, unknown>) {
  const output: Record<string, unknown> = {};
  for (const [key, value] of Object.entries(row)) {
    const camel = key.replace(/_([a-z])/g, (_, letter: string) =>
      letter.toUpperCase(),
    );
    output[camel] =
      key.endsWith('_at') && value != null
        ? new Date(Number(value) * 1000).toISOString()
        : value;
  }
  return output;
}

// Compatibility/read models used by the operations console.
adminOperationsRoutes.get('/draws', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT c.id,c.id campaign_id,c.status,c.sold_entries eligible_entries,
      d.algorithm_version,d.seed_commitment,d.entry_snapshot_hash,d.committed_at,d.executed_at
     FROM campaigns c LEFT JOIN campaign_draws d ON d.campaign_id=c.id
     WHERE c.status IN ('drawing','completed') OR d.id IS NOT NULL
     ORDER BY c.updated_at DESC LIMIT 200`,
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/draw-results', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT w.id,w.campaign_id,w.user_id winner_user_id,w.entry_number,
      w.draw_commitment,d.winning_entry_id,d.algorithm_version,d.executed_at created_at
     FROM winners w JOIN campaign_draws d ON d.campaign_id=w.campaign_id
     ORDER BY w.announced_at DESC LIMIT 200`,
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/payment-reconciliation', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT p.id payment_id,p.purpose,p.status,p.amount_minor,
      CASE
        WHEN p.status='approved' AND p.settlement_processed_at IS NULL THEN 'unsettled'
        WHEN p.status='approved' AND p.settlement_processed_at IS NOT NULL THEN 'matched'
        ELSE p.status
      END status,
      0 difference_minor,p.updated_at checked_at
     FROM payment_transactions p ORDER BY p.updated_at DESC LIMIT 200`,
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/referrals', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT r.id,r.referrer_user_id,r.referred_user_id,r.status,r.first_paid_order_id,
      r.program_id,r.created_at,r.qualified_at,r.rewarded_at,u.referral_code
     FROM referrals r JOIN users u ON u.id=r.referrer_user_id
     ORDER BY r.created_at DESC LIMIT 200`,
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/rewards', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,beneficiary_user_id user_id,'referral' source_type,coin_amount reward_coins,
      amount_minor reward_minor,'credited' status,created_at
     FROM referral_reward_issues
     UNION ALL
     SELECT id,user_id,'task' source_type,coin_amount reward_coins,
      amount_minor reward_minor,'credited' status,created_at FROM reward_claims
     ORDER BY created_at DESC LIMIT 200`,
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/reports', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,'reconciliation' report_type,status,opened_by_user_id requested_by_user_id,
      opened_at created_at,completed_at FROM reconciliation_runs
     ORDER BY opened_at DESC LIMIT 100`,
  ).all();
  return ok(c, { items: result.results });
});
adminOperationsRoutes.get('/reports/export.csv', async (c) => {
  const report = c.req.query('report') ?? 'payments';
  const queries: Record<string, { sql: string; columns: string[] }> = {
    payments: {
      sql: 'SELECT id,user_id,order_id,purpose,amount_minor,currency,status,created_at,updated_at FROM payment_transactions ORDER BY created_at DESC LIMIT 5000',
      columns: [
        'id',
        'user_id',
        'order_id',
        'purpose',
        'amount_minor',
        'currency',
        'status',
        'created_at',
        'updated_at',
      ],
    },
    withdrawals: {
      sql: 'SELECT id,user_id,beneficiary_id,amount_minor,currency,status,payout_reference,created_at,settled_at FROM withdrawals ORDER BY created_at DESC LIMIT 5000',
      columns: [
        'id',
        'user_id',
        'beneficiary_id',
        'amount_minor',
        'currency',
        'status',
        'payout_reference',
        'created_at',
        'settled_at',
      ],
    },
    campaigns: {
      sql: 'SELECT id,product_id,total_entries,sold_entries,reserved_entries,status,starts_at,ends_at FROM campaigns ORDER BY created_at DESC LIMIT 5000',
      columns: [
        'id',
        'product_id',
        'total_entries',
        'sold_entries',
        'reserved_entries',
        'status',
        'starts_at',
        'ends_at',
      ],
    },
    rewards: {
      sql: 'SELECT id,user_id,reward_type,period_key,amount_minor,coin_amount,created_at FROM reward_claims ORDER BY created_at DESC LIMIT 5000',
      columns: [
        'id',
        'user_id',
        'reward_type',
        'period_key',
        'amount_minor',
        'coin_amount',
        'created_at',
      ],
    },
    'audit-logs': {
      sql: 'SELECT id,actor_user_id,action,entity_type,entity_id,request_id,created_at FROM audit_logs ORDER BY created_at DESC LIMIT 5000',
      columns: [
        'id',
        'actor_user_id',
        'action',
        'entity_type',
        'entity_id',
        'request_id',
        'created_at',
      ],
    },
  };
  const selected = queries[report];
  if (!selected) return fail(c, 400, 'INVALID_REPORT', 'Unknown report type');
  const rows = (
    await c.env.DB.prepare(selected.sql).all<Record<string, unknown>>()
  ).results;
  const escape = (value: unknown) =>
    `"${String(value ?? '').replaceAll('"', '""')}"`;
  const csv = [
    selected.columns.join(','),
    ...rows.map((row) =>
      selected.columns.map((column) => escape(row[column])).join(','),
    ),
  ].join('\n');
  return new Response(csv, {
    headers: {
      'Content-Type': 'text/csv; charset=utf-8',
      'Content-Disposition': `attachment; filename="oriva-${report}.csv"`,
      'Cache-Control': 'private, no-store',
    },
  });
});


// After-sales administration (ORich `editAfStatus`).
adminOperationsRoutes.get('/after-sales', async (c) => {
  const status = c.req.query('status');
  const base = `SELECT a.id,a.user_id,a.order_id,a.type,a.reason,a.status,a.admin_note,a.created_at,a.updated_at,
    u.phone_e164, o.title order_title
    FROM after_sales a JOIN users u ON u.id=a.user_id JOIN orders o ON o.id=a.order_id`;
  const result = status
    ? await c.env.DB.prepare(
        `${base} WHERE a.status=? ORDER BY a.created_at DESC LIMIT 200`,
      )
        .bind(status)
        .all<Record<string, unknown>>()
    : await c.env.DB.prepare(
        `${base} ORDER BY a.created_at DESC LIMIT 200`,
      ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      userId: String(row.user_id),
      phoneMasked: maskPhone(String(row.phone_e164)),
      orderId: String(row.order_id),
      orderTitle: String(row.order_title),
      type: String(row.type),
      reason: String(row.reason),
      status: String(row.status),
      adminNote: String(row.admin_note),
      createdAt: new Date(Number(row.created_at) * 1000).toISOString(),
      updatedAt: new Date(Number(row.updated_at) * 1000).toISOString(),
    })),
  });
});
adminOperationsRoutes.post('/after-sales/:id/status', async (c) => {
  const body = (await c.req.json().catch(() => ({}))) as {
    status?: string;
    adminNote?: string;
  };
  const allowed = ['open', 'in_review', 'resolved', 'rejected'];
  if (!body.status || !allowed.includes(body.status))
    return fail(c, 400, 'VALIDATION_ERROR', 'A valid status is required');
  const now = nowSeconds();
  const existing = await c.env.DB.prepare(
    'SELECT id FROM after_sales WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<{ id: string }>();
  if (!existing)
    return fail(c, 404, 'AFTER_SALES_NOT_FOUND', 'After-sales request not found');
  await c.env.DB.batch([
    c.env.DB.prepare(
      'UPDATE after_sales SET status=?,admin_note=?,updated_at=? WHERE id=?',
    ).bind(body.status, (body.adminNote ?? '').trim(), now, c.req.param('id')),
    c.env.DB.prepare(
      `INSERT INTO audit_logs (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
       VALUES(?,?,?,?,?,?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      c.get('userId'),
      'after_sales.status_changed',
      'after_sales',
      c.req.param('id'),
      c.get('requestId'),
      JSON.stringify({ status: body.status }),
      now,
    ),
  ]);
  return ok(c, { id: c.req.param('id'), status: body.status });
});

// System settings administration (backs the public `getsystem` config).
adminOperationsRoutes.get('/settings', async (c) => {
  const result = await c.env.DB.prepare(
    'SELECT key,value,updated_at FROM system_settings ORDER BY key',
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      key: String(row.key),
      value: String(row.value),
      updatedAt: new Date(Number(row.updated_at) * 1000).toISOString(),
    })),
  });
});
adminOperationsRoutes.put('/settings', async (c) => {
  const body = (await c.req.json().catch(() => ({}))) as {
    settings?: Record<string, string>;
  };
  const entries = Object.entries(body.settings ?? {});
  if (!entries.length)
    return fail(c, 400, 'VALIDATION_ERROR', 'settings object is required');
  const now = nowSeconds();
  const statements = entries.map(([key, value]) =>
    c.env.DB.prepare(
      `INSERT INTO system_settings (key,value,updated_at) VALUES(?,?,?)
       ON CONFLICT(key) DO UPDATE SET value=excluded.value,updated_at=excluded.updated_at`,
    ).bind(String(key), String(value), now),
  );
  statements.push(
    c.env.DB.prepare(
      `INSERT INTO audit_logs (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
       VALUES(?,?,?,?,?,?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      c.get('userId'),
      'system_settings.updated',
      'system_settings',
      'system_settings',
      c.get('requestId'),
      JSON.stringify({ keys: entries.map(([k]) => k) }),
      now,
    ),
  );
  await c.env.DB.batch(statements);
  return ok(c, { updated: entries.length });
});


// ── Phase C: administrator-controlled money settlement ──────────────────────
// These credit user wallets and are intentionally MANUAL (a finance
// administrator decides each amount). Nothing here is automated, matching the
// repo's regulated-money release gates in docs/SETUP.md.

async function creditWallet(
  env: AppEnv['Bindings'],
  userId: string,
  amountMinor: number,
  referenceType: string,
  referenceId: string,
  entryType: string,
  description: string,
): Promise<{ ok: boolean; message?: string }> {
  const stub = env.WALLET_COORDINATOR.get(
    env.WALLET_COORDINATOR.idFromName(userId),
  );
  const res = await stub.fetch('https://wallet/credit', {
    method: 'POST',
    body: JSON.stringify({
      operation: 'credit',
      userId,
      amountMinor,
      referenceType,
      referenceId,
      entryType,
      description,
    }),
  });
  if (res.ok) return { ok: true };
  const body = (await res.json().catch(() => ({}))) as { message?: string };
  return { ok: false, message: body.message };
}

adminOperationsRoutes.get('/finance-orders', async (c) => {
  const status = c.req.query('status');
  const base = `SELECT o.id,o.user_id,o.principal_minor,o.currency,o.status,o.note,o.created_at,o.updated_at,
    u.phone_e164, f.title offer_title, f.provider_name
    FROM finance_orders o JOIN users u ON u.id=o.user_id JOIN finance_offers f ON f.id=o.offer_id`;
  const result = status
    ? await c.env.DB.prepare(
        `${base} WHERE o.status=? ORDER BY o.created_at DESC LIMIT 200`,
      )
        .bind(status)
        .all<Record<string, unknown>>()
    : await c.env.DB.prepare(
        `${base} ORDER BY o.created_at DESC LIMIT 200`,
      ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      userId: String(row.user_id),
      phoneMasked: maskPhone(String(row.phone_e164)),
      offerTitle: String(row.offer_title),
      providerName: String(row.provider_name),
      principalMinor: Number(row.principal_minor),
      currency: String(row.currency),
      status: String(row.status),
      note: String(row.note),
      createdAt: new Date(Number(row.created_at) * 1000).toISOString(),
      updatedAt: new Date(Number(row.updated_at) * 1000).toISOString(),
    })),
  });
});

// Settle a finance order: credit principal + the administrator-entered return
// to the user's wallet, then mark the order settled.
adminOperationsRoutes.post('/finance-orders/:id/settle', async (c) => {
  const body = (await c.req.json().catch(() => ({}))) as {
    returnMinor?: number;
    note?: string;
  };
  const returnMinor = Number(body.returnMinor ?? 0);
  if (!Number.isSafeInteger(returnMinor) || returnMinor < 0)
    return fail(c, 400, 'VALIDATION_ERROR', 'returnMinor must be >= 0');
  const order = await c.env.DB.prepare(
    "SELECT id,user_id,principal_minor FROM finance_orders WHERE id=? AND status='active'",
  )
    .bind(c.req.param('id'))
    .first<{ id: string; user_id: string; principal_minor: number }>();
  if (!order)
    return fail(c, 409, 'FINANCE_ORDER_NOT_SETTLEABLE', 'Order is not active');
  const total = Number(order.principal_minor) + returnMinor;
  const credited = await creditWallet(
    c.env,
    order.user_id,
    total,
    'finance_order',
    order.id,
    'finance_settlement',
    'Finance settlement (principal + return)',
  );
  if (!credited.ok)
    return fail(
      c,
      409,
      'SETTLEMENT_FAILED',
      credited.message ?? 'Wallet credit failed',
    );
  const now = nowSeconds();
  await c.env.DB.batch([
    c.env.DB.prepare(
      "UPDATE finance_orders SET status='settled',note=?,updated_at=? WHERE id=?",
    ).bind((body.note ?? '').trim(), now, order.id),
    c.env.DB.prepare(
      `INSERT INTO audit_logs (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
       VALUES(?,?,?,?,?,?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      c.get('userId'),
      'finance_order.settled',
      'finance_order',
      order.id,
      c.get('requestId'),
      JSON.stringify({ principalMinor: order.principal_minor, returnMinor }),
      now,
    ),
  ]);
  return ok(c, { id: order.id, status: 'settled', creditedMinor: total });
});

adminOperationsRoutes.get('/winners', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT w.id,w.campaign_id,w.user_id,w.entry_number,w.announced_at,
      u.phone_e164, p.title product_title
     FROM winners w JOIN users u ON u.id=w.user_id
     JOIN campaigns c ON c.id=w.campaign_id JOIN products p ON p.id=c.product_id
     ORDER BY w.announced_at DESC LIMIT 200`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      campaignId: String(row.campaign_id),
      userId: String(row.user_id),
      phoneMasked: maskPhone(String(row.phone_e164)),
      productTitle: String(row.product_title),
      entryNumber: Number(row.entry_number),
      announcedAt: new Date(Number(row.announced_at) * 1000).toISOString(),
    })),
  });
});

// Cash prize payout: credit an administrator-entered amount to a winner's
// wallet (for cash-award campaigns). Idempotent by winner id.
adminOperationsRoutes.post('/winners/:id/payout', async (c) => {
  const body = (await c.req.json().catch(() => ({}))) as {
    amountMinor?: number;
    note?: string;
  };
  const amountMinor = Number(body.amountMinor);
  if (!Number.isSafeInteger(amountMinor) || amountMinor <= 0)
    return fail(c, 400, 'VALIDATION_ERROR', 'amountMinor must be > 0');
  const winner = await c.env.DB.prepare(
    'SELECT id,user_id FROM winners WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<{ id: string; user_id: string }>();
  if (!winner) return fail(c, 404, 'WINNER_NOT_FOUND', 'Winner not found');
  const credited = await creditWallet(
    c.env,
    winner.user_id,
    amountMinor,
    'winner',
    winner.id,
    'prize_payout',
    'Cash prize payout',
  );
  if (!credited.ok)
    return fail(
      c,
      409,
      'PAYOUT_FAILED',
      credited.message ?? 'Wallet credit failed',
    );
  const now = nowSeconds();
  await c.env.DB.prepare(
    `INSERT INTO audit_logs (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
     VALUES(?,?,?,?,?,?,?,?)`,
  )
    .bind(
      crypto.randomUUID(),
      c.get('userId'),
      'winner.cash_payout',
      'winner',
      winner.id,
      c.get('requestId'),
      JSON.stringify({ amountMinor }),
      now,
    )
    .run();
  return ok(c, { id: winner.id, paidMinor: amountMinor });
});
