import { Hono } from 'hono';
import {
  campaignInputSchema,
  contentInputSchema,
  paymentMethodInputSchema,
  paymentMethodUpdateSchema,
  productInputSchema,
  rejectPaymentSchema,
  taskInputSchema,
  userAdminUpdateSchema,
  withdrawalTransitionSchema,
} from '@oriva/shared';
import { fail, ok } from '../lib/http';
import { mapTask, mapWithdrawal } from '../lib/mappers';
import { notificationStatements } from '../lib/notifications';
import type { AppEnv } from '../types';

export const adminRoutes = new Hono<AppEnv>();

function nowSeconds() {
  return Math.floor(Date.now() / 1000);
}

function financeAllowed(c: Parameters<typeof ok>[0]) {
  return ['finance', 'admin'].includes(c.get('userRole'));
}

function adminOnly(c: Parameters<typeof ok>[0]) {
  return c.get('userRole') === 'admin';
}

function audit(
  c: Parameters<typeof ok>[0],
  action: string,
  entityType: string,
  entityId: string,
  metadata: unknown = {},
) {
  return c.env.DB.prepare(
    `INSERT INTO audit_logs
     (id, actor_user_id, action, entity_type, entity_id, request_id, metadata_json, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
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

adminRoutes.get('/dashboard', async (c) => {
  const [users, campaigns, orders, withdrawals, payments, volume] =
    await c.env.DB.batch([
      c.env.DB.prepare(`SELECT COUNT(*) value FROM users WHERE role = 'user'`),
      c.env.DB.prepare(
        `SELECT COUNT(*) value FROM campaigns WHERE status = 'active'`,
      ),
      c.env.DB.prepare(
        `SELECT COUNT(*) value FROM orders WHERE status = 'pending'`,
      ),
      c.env.DB.prepare(
        `SELECT COUNT(*) value FROM withdrawals WHERE status IN ('requested','reviewing','approved')`,
      ),
      c.env.DB.prepare(
        `SELECT COUNT(*) value FROM payment_transactions WHERE status = 'under_review'`,
      ),
      c.env.DB.prepare(
        `SELECT COALESCE(SUM(amount_minor), 0) value FROM payment_transactions WHERE status = 'approved'`,
      ),
    ]);
  const value = (result: D1Result | undefined) =>
    Number((result?.results[0] as { value?: number } | undefined)?.value ?? 0);
  return ok(c, {
    users: value(users),
    activeCampaigns: value(campaigns),
    pendingOrders: value(orders),
    pendingWithdrawals: value(withdrawals),
    pendingPayments: c.get('userRole') === 'support' ? 0 : value(payments),
    grossVolumeMinor: c.get('userRole') === 'support' ? 0 : value(volume),
    currency: 'INR',
  });
});

// Manual payment methods
adminRoutes.get('/payment-methods', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT * FROM payment_methods ORDER BY sort_order, created_at`,
  ).all();
  return ok(c, { items: result.results });
});

adminRoutes.post('/payment-methods', async (c) => {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const parsed = paymentMethodInputSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payment method',
      parsed.error.flatten().fieldErrors,
    );
  const id = crypto.randomUUID();
  const now = nowSeconds();
  const data = parsed.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO payment_methods
       (id, type, display_name, instructions, account_name, account_number, bank_name,
        ifsc, upi_id, qr_image_key, currency, enabled, sort_order, created_at, updated_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    ).bind(
      id,
      data.type,
      data.displayName,
      data.instructions,
      data.accountName ?? null,
      data.accountNumber ?? null,
      data.bankName ?? null,
      data.ifsc ?? null,
      data.upiId ?? null,
      data.qrImageKey ?? null,
      data.currency,
      data.enabled ? 1 : 0,
      data.sortOrder,
      now,
      now,
    ),
    audit(c, 'payment_method.created', 'payment_method', id, {
      type: data.type,
    }),
  ]);
  return ok(c, { id }, 201);
});

adminRoutes.patch('/payment-methods/:id', async (c) => {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const parsed = paymentMethodUpdateSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid payment method update',
      parsed.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare(
    'SELECT * FROM payment_methods WHERE id = ?',
  )
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!current)
    return fail(c, 404, 'PAYMENT_METHOD_NOT_FOUND', 'Payment method not found');
  const data = parsed.data;
  const value = (camel: keyof typeof data, column: string) =>
    data[camel] === undefined ? current[column] : data[camel];
  const now = nowSeconds();
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE payment_methods SET type=?, display_name=?, instructions=?, account_name=?, account_number=?, bank_name=?, ifsc=?, upi_id=?, qr_image_key=?, currency=?, enabled=?, sort_order=?, updated_at=? WHERE id=?`,
    ).bind(
      value('type', 'type'),
      value('displayName', 'display_name'),
      value('instructions', 'instructions'),
      value('accountName', 'account_name'),
      value('accountNumber', 'account_number'),
      value('bankName', 'bank_name'),
      value('ifsc', 'ifsc'),
      value('upiId', 'upi_id'),
      value('qrImageKey', 'qr_image_key'),
      value('currency', 'currency'),
      data.enabled === undefined ? current.enabled : data.enabled ? 1 : 0,
      value('sortOrder', 'sort_order'),
      now,
      c.req.param('id'),
    ),
    audit(
      c,
      'payment_method.updated',
      'payment_method',
      c.req.param('id'),
      data,
    ),
  ]);
  return ok(c, { updated: true });
});

adminRoutes.delete('/payment-methods/:id', async (c) => {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const id = c.req.param('id');
  const method = await c.env.DB.prepare(
    'SELECT id FROM payment_methods WHERE id = ?',
  )
    .bind(id)
    .first<{ id: string }>();
  if (!method)
    return fail(c, 404, 'PAYMENT_METHOD_NOT_FOUND', 'Payment method not found');
  // Financial integrity: a method referenced by payment history cannot be hard
  // deleted (it would orphan/break transaction records). Disable it instead and
  // tell the admin why.
  const usage = await c.env.DB.prepare(
    'SELECT COUNT(*) AS count FROM payment_transactions WHERE payment_method_id = ?',
  )
    .bind(id)
    .first<{ count: number }>();
  if (usage && Number(usage.count) > 0) {
    await c.env.DB.batch([
      c.env.DB.prepare(
        'UPDATE payment_methods SET enabled = 0, updated_at = ? WHERE id = ?',
      ).bind(nowSeconds(), id),
      audit(c, 'payment_method.disabled', 'payment_method', id, {
        reason: 'has_transaction_history',
        transactions: Number(usage.count),
      }),
    ]);
    return fail(
      c,
      409,
      'PAYMENT_METHOD_IN_USE',
      'This payment method has payment history and cannot be permanently deleted. It has been disabled instead so existing records stay intact.',
    );
  }
  // Unused method: permanently remove it. Admin must re-create it to use again.
  await c.env.DB.batch([
    c.env.DB.prepare('DELETE FROM payment_methods WHERE id = ?').bind(id),
    audit(c, 'payment_method.deleted', 'payment_method', id),
  ]);
  return ok(c, { deleted: true });
});

// Manual payment review
adminRoutes.get('/payments', async (c) => {
  const status = c.req.query('status');
  const where = status ? 'WHERE p.status = ?' : '';
  const statement = c.env.DB.prepare(
    `SELECT p.id, p.user_id, u.phone_e164, p.order_id, p.purpose, p.amount_minor,
            p.currency, p.status, p.created_at, p.updated_at, m.display_name,
            s.id submission_id, s.transaction_reference, s.proof_upload_id,
            s.status submission_status, s.rejection_reason, s.submitted_at
     FROM payment_transactions p
     JOIN users u ON u.id = p.user_id
     JOIN payment_methods m ON m.id = p.payment_method_id
     LEFT JOIN payment_submissions s ON s.id = (
       SELECT ps.id FROM payment_submissions ps WHERE ps.payment_id = p.id
       ORDER BY ps.submitted_at DESC LIMIT 1
     )
     ${where} ORDER BY CASE p.status WHEN 'under_review' THEN 0 ELSE 1 END, p.updated_at DESC LIMIT 200`,
  );
  const result = status
    ? await statement.bind(status).all()
    : await statement.all();
  return ok(c, { items: result.results });
});

adminRoutes.get('/payments/:id/proof', async (c) => {
  const row = await c.env.DB.prepare(
    `SELECT u.object_key, u.content_type FROM payment_submissions s
     JOIN uploads u ON u.id = s.proof_upload_id WHERE s.payment_id = ?
     ORDER BY s.submitted_at DESC LIMIT 1`,
  )
    .bind(c.req.param('id'))
    .first<{ object_key: string; content_type: string }>();
  if (!row) return fail(c, 404, 'PROOF_NOT_FOUND', 'Payment proof not found');
  const object = await c.env.PAYMENT_PROOFS_BUCKET.get(row.object_key);
  if (!object)
    return fail(c, 404, 'PROOF_NOT_FOUND', 'Payment proof object not found');
  return new Response(object.body, {
    headers: {
      'Content-Type': row.content_type,
      'Cache-Control': 'private, no-store',
      'Content-Disposition': 'inline',
    },
  });
});

adminRoutes.post('/payments/:id/approve', async (c) => {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const payment = await c.env.DB.prepare(
    `SELECT p.id, p.user_id, p.purpose, p.order_id, p.status,
            o.status order_status, s.id submission_id, s.status submission_status
     FROM payment_transactions p
     LEFT JOIN orders o ON o.id = p.order_id
     LEFT JOIN payment_submissions s ON s.id = (
       SELECT ps.id FROM payment_submissions ps WHERE ps.payment_id = p.id ORDER BY ps.submitted_at DESC LIMIT 1
     ) WHERE p.id = ?`,
  )
    .bind(c.req.param('id'))
    .first<{
      id: string;
      user_id: string;
      purpose: string;
      order_id: string | null;
      status: string;
      order_status: string | null;
      submission_id: string | null;
      submission_status: string | null;
    }>();
  if (!payment) return fail(c, 404, 'PAYMENT_NOT_FOUND', 'Payment not found');
  if (payment.status === 'approved')
    return ok(c, { approved: true, alreadyProcessed: true });
  if (payment.purpose === 'order' && payment.order_status !== 'pending')
    return fail(c, 409, 'ORDER_NOT_PAYABLE', 'The linked order is not pending');
  if (
    payment.status !== 'under_review' ||
    payment.submission_status !== 'submitted' ||
    !payment.submission_id
  )
    return fail(
      c,
      409,
      'PAYMENT_NOT_REVIEWABLE',
      'Payment has no active submission',
    );
  const now = nowSeconds();
  try {
    await c.env.DB.batch([
      c.env.DB.prepare(
        `INSERT INTO payment_review_decisions
         (payment_id,submission_id,decision,actor_user_id,created_at)
         VALUES(?,?,'approved',?,?)`,
      ).bind(payment.id, payment.submission_id, c.get('userId'), now),
      c.env.DB.prepare(
        `UPDATE payment_submissions SET status='approved',reviewed_at=?,reviewed_by_user_id=?
         WHERE id=? AND status='submitted'`,
      ).bind(now, c.get('userId'), payment.submission_id),
      c.env.DB.prepare(
        `UPDATE payment_transactions SET status='approved', updated_at=? WHERE id=? AND status='under_review'`,
      ).bind(now, payment.id),
      c.env.DB.prepare(
        `INSERT OR IGNORE INTO payment_settlement_outbox (payment_id, status, attempts, created_at) VALUES (?, 'pending', 0, ?)`,
      ).bind(payment.id, now),
      audit(c, 'payment.approved', 'payment', payment.id, {
        submissionId: payment.submission_id,
      }),
    ]);
  } catch (error) {
    const decision = await c.env.DB.prepare(
      'SELECT decision FROM payment_review_decisions WHERE payment_id=?',
    )
      .bind(payment.id)
      .first<{ decision: string }>();
    if (decision?.decision === 'approved')
      return ok(c, { approved: true, alreadyProcessed: true });
    if (decision)
      return fail(
        c,
        409,
        'PAYMENT_ALREADY_DECIDED',
        `Payment was already ${decision.decision}`,
      );
    throw error;
  }
  await c.env.PAYMENT_EVENTS.send({
    type: 'payment.approved',
    paymentId: payment.id,
  });
  return ok(c, { approved: true, alreadyProcessed: false });
});

adminRoutes.post('/payments/:id/reject', async (c) => {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const parsed = rejectPaymentSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Rejection reason is required');
  const payment = await c.env.DB.prepare(
    `SELECT p.id, p.user_id, p.status, s.id submission_id FROM payment_transactions p
     LEFT JOIN payment_submissions s ON s.id = (
       SELECT ps.id FROM payment_submissions ps WHERE ps.payment_id=p.id ORDER BY ps.submitted_at DESC LIMIT 1
     ) WHERE p.id=?`,
  )
    .bind(c.req.param('id'))
    .first<{
      id: string;
      user_id: string;
      status: string;
      submission_id: string | null;
    }>();
  if (!payment) return fail(c, 404, 'PAYMENT_NOT_FOUND', 'Payment not found');
  if (payment.status !== 'under_review' || !payment.submission_id)
    return fail(
      c,
      409,
      'PAYMENT_NOT_REVIEWABLE',
      'Payment has no active submission',
    );
  const now = nowSeconds();
  const notification = notificationStatements(
    c.env.DB,
    {
      type: 'payment.failed',
      userId: payment.user_id,
      title: 'Payment needs attention',
      body: `Payment proof was rejected: ${parsed.data.reason}`,
      entityId: payment.id,
    },
    now,
  );
  try {
    await c.env.DB.batch([
      c.env.DB.prepare(
        `INSERT INTO payment_review_decisions
         (payment_id,submission_id,decision,reason,actor_user_id,created_at)
         VALUES(?,?,'rejected',?,?,?)`,
      ).bind(
        payment.id,
        payment.submission_id,
        parsed.data.reason,
        c.get('userId'),
        now,
      ),
      c.env.DB.prepare(
        `UPDATE payment_submissions SET status='rejected',rejection_reason=?,reviewed_at=?,reviewed_by_user_id=?
         WHERE id=? AND status='submitted'`,
      ).bind(parsed.data.reason, now, c.get('userId'), payment.submission_id),
      c.env.DB.prepare(
        `UPDATE payment_transactions SET status='rejected',updated_at=?
         WHERE id=? AND status='under_review'`,
      ).bind(now, payment.id),
      audit(c, 'payment.rejected', 'payment', payment.id, {
        reason: parsed.data.reason,
      }),
      ...notification.statements,
    ]);
  } catch (error) {
    const decision = await c.env.DB.prepare(
      'SELECT decision,reason FROM payment_review_decisions WHERE payment_id=?',
    )
      .bind(payment.id)
      .first<{ decision: string; reason: string | null }>();
    if (decision?.decision === 'rejected')
      return ok(c, {
        rejected: true,
        alreadyProcessed: true,
        reason: decision.reason,
      });
    if (decision)
      return fail(
        c,
        409,
        'PAYMENT_ALREADY_DECIDED',
        `Payment was already ${decision.decision}`,
      );
    throw error;
  }
  return ok(c, { rejected: true, alreadyProcessed: false });
});

// Users
adminRoutes.get('/users', async (c) => {
  const search = `%${c.req.query('search') ?? ''}%`;
  const result = await c.env.DB.prepare(
    `SELECT id, phone_e164, display_name, email, referral_code, role, status, created_at
     FROM users WHERE phone_e164 LIKE ? OR COALESCE(display_name,'') LIKE ?
     ORDER BY created_at DESC LIMIT 200`,
  )
    .bind(search, search)
    .all();
  return ok(c, { items: result.results });
});
adminRoutes.patch('/users/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const parsed = userAdminUpdateSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid user update',
      parsed.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare('SELECT * FROM users WHERE id=?')
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!current) return fail(c, 404, 'USER_NOT_FOUND', 'User not found');
  const data = parsed.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE users SET display_name=?, email=?, role=?, status=?, updated_at=? WHERE id=?`,
    ).bind(
      data.displayName === undefined ? current.display_name : data.displayName,
      data.email === undefined ? current.email : data.email,
      data.role ?? current.role,
      data.status ?? current.status,
      nowSeconds(),
      c.req.param('id'),
    ),
    audit(c, 'user.updated', 'user', c.req.param('id'), data),
  ]);
  return ok(c, { updated: true });
});

// Products
adminRoutes.get('/products', async (c) =>
  ok(c, {
    items: (
      await c.env.DB.prepare(
        'SELECT * FROM products ORDER BY created_at DESC LIMIT 200',
      ).all()
    ).results,
  }),
);
adminRoutes.post('/products', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const parsed = productInputSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid product',
      parsed.error.flatten().fieldErrors,
    );
  const id = crypto.randomUUID();
  const now = nowSeconds();
  const d = parsed.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO products (id,title,description,image_key,retail_price_minor,currency,status,created_at,updated_at) VALUES (?,?,?,?,?,?,?,?,?)`,
    ).bind(
      id,
      d.title,
      d.description,
      d.imageKey ?? null,
      d.retailPriceMinor,
      d.currency,
      d.status,
      now,
      now,
    ),
    audit(c, 'product.created', 'product', id, d),
  ]);
  return ok(c, { id }, 201);
});
adminRoutes.patch('/products/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const parsed = productInputSchema
    .partial()
    .safeParse(await c.req.json().catch(() => null));
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid product update',
      parsed.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare('SELECT * FROM products WHERE id=?')
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!current) return fail(c, 404, 'PRODUCT_NOT_FOUND', 'Product not found');
  const d = parsed.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE products SET title=?,description=?,image_key=?,retail_price_minor=?,currency=?,status=?,updated_at=? WHERE id=?`,
    ).bind(
      d.title ?? current.title,
      d.description ?? current.description,
      d.imageKey === undefined ? current.image_key : d.imageKey,
      d.retailPriceMinor ?? current.retail_price_minor,
      d.currency ?? current.currency,
      d.status ?? current.status,
      nowSeconds(),
      c.req.param('id'),
    ),
    audit(c, 'product.updated', 'product', c.req.param('id'), d),
  ]);
  return ok(c, { updated: true });
});
adminRoutes.delete('/products/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE products SET status='archived',updated_at=? WHERE id=?`,
    ).bind(nowSeconds(), c.req.param('id')),
    audit(c, 'product.archived', 'product', c.req.param('id')),
  ]);
  return ok(c, { archived: true });
});

// Campaigns
adminRoutes.get('/campaigns', async (c) =>
  ok(c, {
    items: (
      await c.env.DB.prepare(
        `SELECT c.*,p.title FROM campaigns c JOIN products p ON p.id=c.product_id ORDER BY c.created_at DESC LIMIT 200`,
      ).all()
    ).results,
  }),
);
adminRoutes.post('/campaigns', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const p = campaignInputSchema.safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid campaign',
      p.error.flatten().fieldErrors,
    );
  if (p.data.endsAt <= p.data.startsAt)
    return fail(c, 400, 'INVALID_DATES', 'End time must follow start time');
  const id = crypto.randomUUID(),
    now = nowSeconds(),
    d = p.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO campaigns(id,product_id,entry_price_minor,total_entries,sold_entries,starts_at,ends_at,status,created_at,updated_at)VALUES(?,?,?,?,0,?,?,?,?,?)`,
    ).bind(
      id,
      d.productId,
      d.entryPriceMinor,
      d.totalEntries,
      d.startsAt,
      d.endsAt,
      d.status,
      now,
      now,
    ),
    audit(c, 'campaign.created', 'campaign', id, d),
  ]);
  return ok(c, { id }, 201);
});
adminRoutes.patch('/campaigns/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const p = campaignInputSchema
    .partial()
    .safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid campaign update',
      p.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare('SELECT * FROM campaigns WHERE id=?')
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!current) return fail(c, 404, 'CAMPAIGN_NOT_FOUND', 'Campaign not found');
  const d = p.data;
  const economicsChanged =
    d.productId !== undefined ||
    d.entryPriceMinor !== undefined ||
    d.totalEntries !== undefined ||
    d.startsAt !== undefined ||
    d.endsAt !== undefined;
  if (
    economicsChanged &&
    (current.status !== 'scheduled' ||
      Number(current.sold_entries) > 0 ||
      Number(current.reserved_entries) > 0)
  )
    return fail(
      c,
      409,
      'CAMPAIGN_ECONOMICS_FROZEN',
      'Product, price, capacity, and dates are frozen after activation or activity',
    );
  if (economicsChanged && d.status && d.status !== current.status)
    return fail(
      c,
      400,
      'SPLIT_CAMPAIGN_UPDATE',
      'Update economics and status in separate requests',
    );
  if (
    d.totalEntries !== undefined &&
    d.totalEntries <
      Number(current.sold_entries) + Number(current.reserved_entries)
  )
    return fail(
      c,
      409,
      'CAPACITY_TOO_SMALL',
      'Capacity cannot be below sold and reserved entries',
    );
  const startsAt = Number(d.startsAt ?? current.starts_at);
  const endsAt = Number(d.endsAt ?? current.ends_at);
  if (endsAt <= startsAt)
    return fail(c, 400, 'INVALID_DATES', 'End time must follow start time');
  if (d.status && d.status !== current.status) {
    if (d.status === 'scheduled')
      return fail(
        c,
        409,
        'INVALID_TRANSITION',
        'Campaigns cannot transition back to scheduled',
      );
    const coordinator = c.env.CAMPAIGN_COORDINATOR.get(
      c.env.CAMPAIGN_COORDINATOR.idFromName(c.req.param('id')),
    );
    const response = await coordinator.fetch('https://campaign/transition', {
      method: 'POST',
      body: JSON.stringify({
        operation: 'campaign.transition',
        campaignId: c.req.param('id'),
        target: d.status,
        actorUserId: c.get('userId'),
        requestId: c.get('requestId'),
      }),
    });
    if (!response.ok)
      return fail(
        c,
        409,
        'INVALID_TRANSITION',
        ((await response.json()) as { message?: string }).message ??
          'Campaign transition failed',
      );
  }
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE campaigns SET product_id=?,entry_price_minor=?,total_entries=?,starts_at=?,ends_at=?,updated_at=? WHERE id=?`,
    ).bind(
      d.productId ?? current.product_id,
      d.entryPriceMinor ?? current.entry_price_minor,
      d.totalEntries ?? current.total_entries,
      startsAt,
      endsAt,
      nowSeconds(),
      c.req.param('id'),
    ),
    audit(c, 'campaign.updated', 'campaign', c.req.param('id'), d),
  ]);
  return ok(c, { updated: true });
});
adminRoutes.delete('/campaigns/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const campaignId = c.req.param('id');
  const coordinator = c.env.CAMPAIGN_COORDINATOR.get(
    c.env.CAMPAIGN_COORDINATOR.idFromName(campaignId),
  );
  const response = await coordinator.fetch('https://campaign/transition', {
    method: 'POST',
    body: JSON.stringify({
      operation: 'campaign.transition',
      campaignId,
      target: 'cancelled',
      actorUserId: c.get('userId'),
      requestId: c.get('requestId'),
    }),
  });
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : 409,
      'CAMPAIGN_NOT_CANCELLABLE',
      ((await response.json()) as { message?: string }).message ??
        'Campaign cannot be cancelled',
    );
  return ok(c, { cancelled: true });
});

// Orders
adminRoutes.get('/orders', async (c) =>
  ok(c, {
    items: (
      await c.env.DB.prepare(
        `SELECT o.*,u.phone_e164 FROM orders o JOIN users u ON u.id=o.user_id ORDER BY o.created_at DESC LIMIT 200`,
      ).all()
    ).results,
  }),
);
adminRoutes.patch('/orders/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const body = (await c.req.json<{ status?: string }>().catch(() => ({}))) as {
    status?: string;
  };
  if (!body.status || !['cancelled', 'fulfilled'].includes(body.status))
    return fail(
      c,
      400,
      'INVALID_STATUS',
      'Only cancellation or fulfillment is allowed',
    );
  const order = await c.env.DB.prepare(
    'SELECT status,campaign_id FROM orders WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<{ status: string; campaign_id: string | null }>();
  if (!order) return fail(c, 404, 'ORDER_NOT_FOUND', 'Order not found');
  if (body.status === 'fulfilled' && order.status !== 'paid')
    return fail(
      c,
      409,
      'INVALID_TRANSITION',
      'Only paid orders can be fulfilled',
    );
  if (body.status === 'cancelled') {
    if (order.status !== 'pending' || !order.campaign_id)
      return fail(
        c,
        409,
        'INVALID_TRANSITION',
        'Only pending reservations can be cancelled',
      );
    const coordinator = c.env.CAMPAIGN_COORDINATOR.get(
      c.env.CAMPAIGN_COORDINATOR.idFromName(order.campaign_id),
    );
    const response = await coordinator.fetch('https://campaign/release', {
      method: 'POST',
      body: JSON.stringify({
        operation: 'release',
        orderId: c.req.param('id'),
      }),
    });
    if (!response.ok)
      return fail(
        c,
        409,
        'RELEASE_FAILED',
        'Order reservation could not be released',
      );
  } else {
    await c.env.DB.prepare('UPDATE orders SET status=?,updated_at=? WHERE id=?')
      .bind(body.status, nowSeconds(), c.req.param('id'))
      .run();
  }
  await c.env.DB.batch([
    audit(c, 'order.status_changed', 'order', c.req.param('id'), {
      status: body.status,
    }),
  ]);
  return ok(c, { updated: true });
});

// Tasks
adminRoutes.get('/tasks', async (c) => {
  const result = await c.env.DB.prepare(
    'SELECT * FROM task_definitions ORDER BY sort_order,created_at',
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapTask) });
});
adminRoutes.post('/tasks', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const p = taskInputSchema.safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid task',
      p.error.flatten().fieldErrors,
    );
  const id = crypto.randomUUID(),
    n = nowSeconds(),
    d = p.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO task_definitions(id,title,description,period,eligibility_event,reward_coins,reward_minor,status,sort_order,created_at,updated_at)VALUES(?,?,?,?,?,?,?,?,?,?,?)`,
    ).bind(
      id,
      d.title,
      d.description,
      d.period,
      d.eligibilityEvent,
      d.rewardCoins,
      d.rewardMinor,
      d.status,
      d.sortOrder,
      n,
      n,
    ),
    audit(c, 'task.created', 'task', id, d),
  ]);
  return ok(c, { id }, 201);
});
adminRoutes.patch('/tasks/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const p = taskInputSchema
    .partial()
    .safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid task update',
      p.error.flatten().fieldErrors,
    );
  const cur = await c.env.DB.prepare(
    'SELECT * FROM task_definitions WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!cur) return fail(c, 404, 'TASK_NOT_FOUND', 'Task not found');
  const d = p.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE task_definitions SET title=?,description=?,period=?,eligibility_event=?,reward_coins=?,reward_minor=?,status=?,sort_order=?,updated_at=? WHERE id=?`,
    ).bind(
      d.title ?? cur.title,
      d.description ?? cur.description,
      d.period ?? cur.period,
      d.eligibilityEvent ?? cur.eligibility_event,
      d.rewardCoins ?? cur.reward_coins,
      d.rewardMinor ?? cur.reward_minor,
      d.status ?? cur.status,
      d.sortOrder ?? cur.sort_order,
      nowSeconds(),
      c.req.param('id'),
    ),
    audit(c, 'task.updated', 'task', c.req.param('id'), d),
  ]);
  return ok(c, { updated: true });
});
adminRoutes.delete('/tasks/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE task_definitions SET status='archived',updated_at=? WHERE id=?`,
    ).bind(nowSeconds(), c.req.param('id')),
    audit(c, 'task.archived', 'task', c.req.param('id')),
  ]);
  return ok(c, { archived: true });
});

// Versioned content
adminRoutes.get('/content', async (c) =>
  ok(c, {
    items: (
      await c.env.DB.prepare(
        'SELECT * FROM content_pages ORDER BY updated_at DESC LIMIT 200',
      ).all()
    ).results,
  }),
);
adminRoutes.post('/content', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const p = contentInputSchema.safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid content',
      p.error.flatten().fieldErrors,
    );
  const version =
    Number(
      (
        await c.env.DB.prepare(
          'SELECT MAX(version) value FROM content_pages WHERE slug=? AND locale=?',
        )
          .bind(p.data.slug, p.data.locale)
          .first<{ value: number | null }>()
      )?.value ?? 0,
    ) + 1;
  const id = crypto.randomUUID(),
    n = nowSeconds(),
    d = p.data;
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO content_pages(id,slug,title,body,locale,status,version,created_at,updated_at)VALUES(?,?,?,?,?,?,?,?,?)`,
    ).bind(id, d.slug, d.title, d.body, d.locale, d.status, version, n, n),
    audit(c, 'content.created', 'content', id, { slug: d.slug, version }),
  ]);
  return ok(c, { id, version }, 201);
});
adminRoutes.patch('/content/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const body = (await c.req.json<{ status?: string }>().catch(() => ({}))) as {
    status?: string;
  };
  if (!body.status || !['draft', 'published', 'archived'].includes(body.status))
    return fail(c, 400, 'INVALID_STATUS', 'Invalid content status');
  await c.env.DB.batch([
    c.env.DB.prepare(
      'UPDATE content_pages SET status=?,updated_at=? WHERE id=?',
    ).bind(body.status, nowSeconds(), c.req.param('id')),
    audit(c, 'content.status_changed', 'content', c.req.param('id'), body),
  ]);
  return ok(c, { updated: true });
});
adminRoutes.delete('/content/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE content_pages SET status='archived',updated_at=? WHERE id=?`,
    ).bind(nowSeconds(), c.req.param('id')),
    audit(c, 'content.archived', 'content', c.req.param('id')),
  ]);
  return ok(c, { archived: true });
});

// Prizes
adminRoutes.get('/prizes', async (c) =>
  ok(c, {
    items: (
      await c.env.DB.prepare(
        `SELECT pr.*,p.title product_title,u.phone_e164 FROM prizes pr JOIN products p ON p.id=pr.product_id JOIN users u ON u.id=pr.user_id ORDER BY pr.created_at DESC LIMIT 200`,
      ).all()
    ).results,
  }),
);
adminRoutes.patch('/prizes/:id', async (c) => {
  if (!adminOnly(c))
    return fail(c, 403, 'FORBIDDEN', 'Administrator role is required');
  const body = (await c.req
    .json<{ status?: string; trackingReference?: string; adminNote?: string }>()
    .catch(() => ({}))) as {
    status?: string;
    trackingReference?: string;
    adminNote?: string;
  };
  if (
    !body.status ||
    !['unclaimed', 'claimed', 'processing', 'shipped', 'delivered'].includes(
      body.status,
    )
  )
    return fail(c, 400, 'INVALID_STATUS', 'Invalid prize status');
  await c.env.DB.batch([
    c.env.DB.prepare(
      'UPDATE prizes SET status=?,tracking_reference=?,admin_note=?,updated_at=? WHERE id=?',
    ).bind(
      body.status,
      body.trackingReference ?? null,
      body.adminNote ?? null,
      nowSeconds(),
      c.req.param('id'),
    ),
    audit(c, 'prize.updated', 'prize', c.req.param('id'), body),
  ]);
  return ok(c, { updated: true });
});

// Withdrawals with balance release/settlement
adminRoutes.get('/withdrawals', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT w.*,u.phone_e164 FROM withdrawals w JOIN users u ON u.id=w.user_id
     ORDER BY w.created_at DESC LIMIT 200`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      ...mapWithdrawal(row),
      userId: String(row.user_id),
      phone: String(row.phone_e164),
    })),
  });
});
adminRoutes.post('/withdrawals/:id/review', async (c) =>
  changeWithdrawal(c, 'reviewing'),
);
adminRoutes.post('/withdrawals/:id/approve', async (c) =>
  changeWithdrawal(c, 'approved'),
);
adminRoutes.post('/withdrawals/:id/reject', async (c) =>
  changeWithdrawal(c, 'rejected'),
);
adminRoutes.post('/withdrawals/:id/paid', async (c) =>
  changeWithdrawal(c, 'paid'),
);

async function changeWithdrawal(
  c: Parameters<typeof ok>[0],
  target: 'reviewing' | 'approved' | 'rejected' | 'paid',
) {
  if (!financeAllowed(c))
    return fail(c, 403, 'FORBIDDEN', 'Finance role is required');
  const parsed = withdrawalTransitionSchema.safeParse(
    await c.req.json().catch(() => ({})),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid withdrawal transition');
  if (target === 'rejected' && !parsed.data.reason)
    return fail(c, 400, 'REASON_REQUIRED', 'Rejection reason is required');
  if (target === 'paid' && !parsed.data.payoutReference)
    return fail(
      c,
      400,
      'PAYOUT_REFERENCE_REQUIRED',
      'Payout reference is required',
    );
  const withdrawal = await c.env.DB.prepare(
    'SELECT user_id FROM withdrawals WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<{ user_id: string }>();
  if (!withdrawal)
    return fail(c, 404, 'WITHDRAWAL_NOT_FOUND', 'Withdrawal not found');
  const coordinator = c.env.WALLET_COORDINATOR.get(
    c.env.WALLET_COORDINATOR.idFromName(withdrawal.user_id),
  );
  const response = await coordinator.fetch(
    'https://wallet/withdrawal-transition',
    {
      method: 'POST',
      body: JSON.stringify({
        operation: 'withdrawal.transition',
        userId: withdrawal.user_id,
        withdrawalId: c.req.param('id'),
        actorUserId: c.get('userId'),
        target,
        ...parsed.data,
      }),
    },
  );
  const body = await response.json();
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : response.status === 409 ? 409 : 400,
      'WITHDRAWAL_TRANSITION_FAILED',
      (body as { message?: string }).message ?? 'Withdrawal transition failed',
    );
  await audit(
    c,
    `withdrawal.${target}`,
    'withdrawal',
    c.req.param('id') ?? '',
    parsed.data,
  ).run();
  return ok(c, body);
}

adminRoutes.get('/payments/:id/submissions', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,payment_id,transaction_reference,proof_upload_id,status,rejection_reason,
      submitted_at,reviewed_at,reviewed_by_user_id
     FROM payment_submissions WHERE payment_id=? ORDER BY submitted_at DESC`,
  )
    .bind(c.req.param('id'))
    .all();
  return ok(c, { items: result.results });
});
