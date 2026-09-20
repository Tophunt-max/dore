import { createOrderSchema } from '@oriva/shared';
import { randomToken, sha256 } from '../lib/crypto';
import { mapDraw } from '../lib/mappers';
import { notificationStatements } from '../lib/notifications';
import { nowSeconds } from '../lib/time';
import type { Bindings } from '../types';

type CoordinatorRequest =
  | {
      operation?: 'reserve';
      userId: string;
      campaignId: string;
      quantity: number;
      idempotencyKey: string;
    }
  | { operation: 'settle'; orderId: string }
  | { operation: 'release'; orderId: string; reason?: string }
  | {
      operation: 'order.refund';
      orderId: string;
      actorUserId: string;
      reason: string;
    }
  | {
      operation: 'draw.preview';
      campaignId: string;
      actorUserId: string;
      requestId?: string;
    }
  | {
      operation: 'draw.execute';
      campaignId: string;
      actorUserId: string;
      requestId?: string;
    }
  | {
      operation: 'campaign.transition';
      campaignId: string;
      target: 'active' | 'drawing' | 'cancelled';
      actorUserId?: string;
      requestId?: string;
    };

interface CampaignRow {
  id: string;
  product_id: string;
  entry_price_minor: number;
  total_entries: number;
  sold_entries: number;
  reserved_entries: number;
  ends_at: number;
  status: string;
  title: string;
}
interface OrderRow {
  id: string;
  user_id: string;
  campaign_id: string | null;
  title: string;
  quantity: number;
  amount_minor: number;
  currency: 'INR';
  status: 'pending' | 'paid' | 'failed' | 'cancelled' | 'fulfilled';
  created_at: number;
  reservation_expires_at: number | null;
}
interface EntryRow {
  id: string;
  order_id: string;
  user_id: string;
  entry_number: number;
}
const mapOrder = (row: OrderRow) => ({
  id: row.id,
  campaignId: row.campaign_id,
  title: row.title,
  quantity: row.quantity,
  amountMinor: row.amount_minor,
  currency: row.currency,
  status: row.status,
  createdAt: new Date(row.created_at * 1000).toISOString(),
});

export class CampaignCoordinator implements DurableObject {
  constructor(
    private readonly state: DurableObjectState,
    private readonly env: Bindings,
  ) {
    void this.state;
  }
  async fetch(request: Request): Promise<Response> {
    if (request.method !== 'POST')
      return Response.json({ message: 'Method not allowed' }, { status: 405 });
    const input = (await request.json()) as CoordinatorRequest;
    switch (input.operation) {
      case 'settle':
        return this.settle(input.orderId);
      case 'release':
        return this.release(input.orderId);
      case 'order.refund':
        return this.refundOrder(input);
      case 'draw.preview':
        return this.previewDraw(input);
      case 'draw.execute':
        return this.executeDraw(input);
      case 'campaign.transition':
        return this.transitionCampaign(input);
      default:
        return this.reserve(input);
    }
  }

  private async reserve(
    input: Extract<CoordinatorRequest, { userId: string }>,
  ): Promise<Response> {
    const parsed = createOrderSchema.safeParse(input);
    if (!parsed.success || !input.userId)
      return Response.json(
        { message: 'Invalid order request' },
        { status: 400 },
      );
    const existing = await this.orderByIdempotency(
      input.userId,
      input.idempotencyKey,
    );
    if (existing) {
      if (
        existing.campaign_id !== input.campaignId ||
        existing.quantity !== input.quantity
      )
        return Response.json(
          { message: 'The idempotency key was used for another order' },
          { status: 409 },
        );
      return Response.json(mapOrder(existing));
    }
    const campaign = await this.campaign(input.campaignId);
    if (!campaign)
      return Response.json({ message: 'Campaign not found' }, { status: 404 });
    if (campaign.status !== 'active')
      return Response.json(
        { message: 'Campaign is not active' },
        { status: 409 },
      );
    if (
      campaign.sold_entries + campaign.reserved_entries + input.quantity >
      campaign.total_entries
    )
      return Response.json(
        { message: 'Not enough entries remain' },
        { status: 409 },
      );
    const now = nowSeconds();
    const orderId = crypto.randomUUID();
    const expiresAt = now + 86400;
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE campaigns SET reserved_entries=reserved_entries+?,updated_at=?
         WHERE id=? AND status='active' AND sold_entries+reserved_entries+?<=total_entries`,
      ).bind(input.quantity, now, campaign.id, input.quantity),
      this.env.DB.prepare(
        `INSERT INTO orders
         (id,user_id,campaign_id,title,quantity,amount_minor,currency,status,idempotency_key,
          reservation_expires_at,created_at,updated_at)
         VALUES(?,?,?,?,?,?,'INR','pending',?,?,?,?)`,
      ).bind(
        orderId,
        input.userId,
        campaign.id,
        campaign.title,
        input.quantity,
        campaign.entry_price_minor * input.quantity,
        input.idempotencyKey,
        expiresAt,
        now,
        now,
      ),
    ]);
    return Response.json({
      id: orderId,
      campaignId: campaign.id,
      title: campaign.title,
      quantity: input.quantity,
      amountMinor: campaign.entry_price_minor * input.quantity,
      currency: 'INR',
      status: 'pending',
      createdAt: new Date(now * 1000).toISOString(),
    });
  }

  private async settle(orderId: string): Promise<Response> {
    const order = await this.order(orderId);
    if (!order || !order.campaign_id)
      return Response.json({ message: 'Order not found' }, { status: 404 });
    if (order.status === 'paid' || order.status === 'fulfilled')
      return Response.json({
        status: 'already_settled',
        userId: order.user_id,
      });
    if (order.status !== 'pending')
      return Response.json(
        { message: 'Order is not pending' },
        { status: 409 },
      );
    const campaign = await this.campaign(order.campaign_id);
    if (
      !campaign ||
      !['active', 'sold_out'].includes(campaign.status) ||
      campaign.reserved_entries < order.quantity ||
      campaign.sold_entries + order.quantity > campaign.total_entries
    )
      return Response.json(
        { message: 'Reserved campaign capacity is unavailable' },
        { status: 409 },
      );
    const now = nowSeconds();
    const nextSold = campaign.sold_entries + order.quantity;
    const nextReserved = campaign.reserved_entries - order.quantity;
    const nextStatus =
      nextSold === campaign.total_entries && nextReserved === 0
        ? 'sold_out'
        : campaign.status;
    const statements: D1PreparedStatement[] = [
      this.env.DB.prepare(
        `UPDATE campaigns SET sold_entries=?,reserved_entries=?,status=?,updated_at=? WHERE id=?`,
      ).bind(nextSold, nextReserved, nextStatus, now, campaign.id),
      this.env.DB.prepare(
        `UPDATE orders SET status='paid',reservation_expires_at=NULL,updated_at=?
         WHERE id=? AND status='pending'`,
      ).bind(now, order.id),
      this.env.DB.prepare(
        `INSERT OR IGNORE INTO task_events
         (id,user_id,event_type,source_type,source_id,occurred_at)
         VALUES(?,?,'paid_order','order',?,?)`,
      ).bind(crypto.randomUUID(), order.user_id, order.id, now),
    ];
    for (let offset = 1; offset <= order.quantity; offset += 1)
      statements.push(
        this.env.DB.prepare(
          `INSERT INTO campaign_entries
           (id,campaign_id,order_id,user_id,entry_number,created_at) VALUES(?,?,?,?,?,?)`,
        ).bind(
          crypto.randomUUID(),
          campaign.id,
          order.id,
          order.user_id,
          campaign.sold_entries + offset,
          now,
        ),
      );
    await this.env.DB.batch(statements);
    return Response.json({
      status: 'settled',
      userId: order.user_id,
      orderId: order.id,
    });
  }

  private async release(orderId: string): Promise<Response> {
    const order = await this.order(orderId);
    if (!order || !order.campaign_id)
      return Response.json({ message: 'Order not found' }, { status: 404 });
    if (order.status === 'cancelled' || order.status === 'failed')
      return Response.json({ status: 'already_released' });
    if (order.status !== 'pending')
      return Response.json(
        { message: 'Only pending reservations can be released' },
        { status: 409 },
      );
    const protectedPayment = await this.env.DB.prepare(
      `SELECT id FROM payment_transactions WHERE order_id=?
       AND status IN ('under_review','approved') LIMIT 1`,
    )
      .bind(order.id)
      .first();
    if (protectedPayment)
      return Response.json(
        { message: 'Payment review protects this reservation from release' },
        { status: 409 },
      );
    const campaign = await this.campaign(order.campaign_id);
    if (!campaign || campaign.reserved_entries < order.quantity)
      return Response.json(
        { message: 'Reservation invariant failed' },
        { status: 409 },
      );
    const now = nowSeconds();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE campaigns SET reserved_entries=reserved_entries-?,updated_at=?
         WHERE id=? AND reserved_entries>=?`,
      ).bind(order.quantity, now, order.campaign_id, order.quantity),
      this.env.DB.prepare(
        `UPDATE orders SET status='cancelled',reservation_expires_at=NULL,updated_at=?
         WHERE id=? AND status='pending'`,
      ).bind(now, order.id),
      this.env.DB.prepare(
        `UPDATE payment_transactions SET status='cancelled',updated_at=? WHERE order_id=?
         AND status IN ('awaiting_submission','rejected')`,
      ).bind(now, order.id),
    ]);
    return Response.json({ status: 'released' });
  }

  private async previewDraw(
    input: Extract<CoordinatorRequest, { operation: 'draw.preview' }>,
  ): Promise<Response> {
    const existing = await this.env.DB.prepare(
      'SELECT * FROM campaign_draws WHERE campaign_id=?',
    )
      .bind(input.campaignId)
      .first<Record<string, unknown>>();
    if (existing) return Response.json(mapDraw(existing));
    const campaign = await this.campaign(input.campaignId);
    if (!campaign)
      return Response.json({ message: 'Campaign not found' }, { status: 404 });
    if (campaign.status !== 'drawing' || campaign.reserved_entries !== 0)
      return Response.json(
        { message: 'Campaign must be drawing with no reservations' },
        { status: 409 },
      );
    const entries = await this.eligibleEntries(input.campaignId);
    if (!entries.length)
      return Response.json(
        { message: 'No paid entries are eligible' },
        { status: 409 },
      );
    const snapshotHash = await this.snapshotHash(entries);
    const seed = randomToken(32);
    const commitment = await sha256(`${input.campaignId}:${seed}`);
    const now = nowSeconds();
    const drawId = crypto.randomUUID();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `INSERT INTO campaign_draws
         (id,campaign_id,status,algorithm_version,server_seed,seed_commitment,
          entry_snapshot_hash,eligible_entry_count,committed_by_user_id,committed_at)
         VALUES(?,?,'committed','sha256-index-v1',?,?,?,?,?,?)`,
      ).bind(
        drawId,
        input.campaignId,
        seed,
        commitment,
        snapshotHash,
        entries.length,
        input.actorUserId,
        now,
      ),
      this.audit(
        input.actorUserId,
        'draw.committed',
        'draw',
        drawId,
        input.requestId,
        {
          campaignId: input.campaignId,
          commitment,
          snapshotHash,
          eligibleEntryCount: entries.length,
        },
      ),
    ]);
    const row = await this.env.DB.prepare(
      'SELECT * FROM campaign_draws WHERE id=?',
    )
      .bind(drawId)
      .first<Record<string, unknown>>();
    return Response.json(row ? mapDraw(row) : { id: drawId }, { status: 201 });
  }

  private async executeDraw(
    input: Extract<CoordinatorRequest, { operation: 'draw.execute' }>,
  ): Promise<Response> {
    const draw = await this.env.DB.prepare(
      'SELECT * FROM campaign_draws WHERE campaign_id=?',
    )
      .bind(input.campaignId)
      .first<Record<string, unknown>>();
    if (!draw)
      return Response.json(
        { message: 'Preview and commit the draw first' },
        { status: 409 },
      );
    if (draw.status === 'executed') return Response.json(mapDraw(draw));
    if (draw.status !== 'committed')
      return Response.json(
        { message: 'Draw cannot be executed' },
        { status: 409 },
      );
    const campaign = await this.campaign(input.campaignId);
    if (
      !campaign ||
      campaign.status !== 'drawing' ||
      campaign.reserved_entries !== 0
    )
      return Response.json(
        { message: 'Campaign is not drawable' },
        { status: 409 },
      );
    const entries = await this.eligibleEntries(input.campaignId);
    const snapshotHash = await this.snapshotHash(entries);
    if (
      snapshotHash !== draw.entry_snapshot_hash ||
      entries.length !== Number(draw.eligible_entry_count)
    )
      return Response.json(
        { message: 'Eligible entry snapshot changed; execution is blocked' },
        { status: 409 },
      );
    const seed = String(draw.server_seed);
    const commitment = await sha256(`${input.campaignId}:${seed}`);
    if (commitment !== draw.seed_commitment)
      return Response.json(
        { message: 'Seed commitment verification failed' },
        { status: 409 },
      );
    const digest = await sha256(
      `${seed}:${input.campaignId}:${snapshotHash}:${String(draw.algorithm_version)}`,
    );
    const winningIndex =
      Number.parseInt(digest.slice(0, 13), 16) % entries.length;
    const winnerEntry = entries[winningIndex];
    if (!winnerEntry)
      return Response.json(
        { message: 'Winner selection failed' },
        { status: 500 },
      );
    const now = nowSeconds();
    const winnerId = crypto.randomUUID();
    const prizeId = crypto.randomUUID();
    const notification = notificationStatements(
      this.env.DB,
      {
        userId: winnerEntry.user_id,
        type: 'prize.won',
        title: 'You won a campaign prize',
        body: 'Open your prizes to claim your delivery.',
        entityId: prizeId,
      },
      now,
    );
    await this.env.DB.batch([
      this.env.DB.prepare(
        `INSERT INTO winners
         (id,campaign_id,user_id,order_id,entry_number,algorithm_version,draw_commitment,announced_at)
         VALUES(?,?,?,?,?,?,?,?)`,
      ).bind(
        winnerId,
        input.campaignId,
        winnerEntry.user_id,
        winnerEntry.order_id,
        winnerEntry.entry_number,
        draw.algorithm_version,
        draw.seed_commitment,
        now,
      ),
      this.env.DB.prepare(
        `INSERT INTO prizes(id,winner_id,user_id,product_id,status,created_at,updated_at)
         VALUES(?,?,?,?,'unclaimed',?,?)`,
      ).bind(
        prizeId,
        winnerId,
        winnerEntry.user_id,
        campaign.product_id,
        now,
        now,
      ),
      this.env.DB.prepare(
        `UPDATE campaign_draws SET status='executed',winning_index=?,winning_entry_id=?,
         executed_by_user_id=?,executed_at=?,revealed_seed=? WHERE id=? AND status='committed'`,
      ).bind(
        winningIndex,
        winnerEntry.id,
        input.actorUserId,
        now,
        seed,
        draw.id,
      ),
      this.env.DB.prepare(
        `UPDATE campaigns SET status='completed',winner_user_id=?,updated_at=?
         WHERE id=? AND status='drawing'`,
      ).bind(winnerEntry.user_id, now, input.campaignId),
      this.audit(
        input.actorUserId,
        'draw.executed',
        'draw',
        String(draw.id),
        input.requestId,
        {
          winnerId,
          winningEntryId: winnerEntry.id,
          winningIndex,
          revealedSeed: seed,
        },
      ),
      ...notification.statements,
    ]);
    const executed = await this.env.DB.prepare(
      'SELECT * FROM campaign_draws WHERE id=?',
    )
      .bind(draw.id)
      .first<Record<string, unknown>>();
    return Response.json({
      draw: executed ? mapDraw(executed) : null,
      winnerId,
      prizeId,
    });
  }

  private async refundOrder(
    input: Extract<CoordinatorRequest, { operation: 'order.refund' }>,
  ): Promise<Response> {
    const order = await this.order(input.orderId);
    if (!order || !order.campaign_id)
      return Response.json({ message: 'Order not found' }, { status: 404 });
    if (order.status === 'cancelled')
      return Response.json({ status: 'already_refunded' });
    if (order.status !== 'paid')
      return Response.json(
        { message: 'Only paid, unfulfilled orders can be refunded' },
        { status: 409 },
      );
    const campaign = await this.campaign(order.campaign_id);
    if (!campaign || !['active', 'sold_out'].includes(campaign.status))
      return Response.json(
        { message: 'Campaign has progressed beyond refundable state' },
        { status: 409 },
      );
    const draw = await this.env.DB.prepare(
      'SELECT id FROM campaign_draws WHERE campaign_id=? LIMIT 1',
    )
      .bind(campaign.id)
      .first();
    if (draw)
      return Response.json(
        { message: 'Orders cannot be refunded after draw commitment' },
        { status: 409 },
      );
    const activeEntries = await this.env.DB.prepare(
      'SELECT COUNT(*) value FROM campaign_entries WHERE order_id=? AND voided_at IS NULL',
    )
      .bind(order.id)
      .first<{ value: number }>();
    if (Number(activeEntries?.value ?? 0) !== order.quantity)
      return Response.json(
        { message: 'Order entry invariant failed' },
        { status: 409 },
      );
    const now = nowSeconds();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE campaign_entries SET voided_at=?,void_reason=?
         WHERE order_id=? AND voided_at IS NULL`,
      ).bind(now, input.reason, order.id),
      this.env.DB.prepare(
        `UPDATE campaigns SET sold_entries=sold_entries-?,status='active',updated_at=?
         WHERE id=? AND sold_entries>=? AND status IN ('active','sold_out')`,
      ).bind(order.quantity, now, campaign.id, order.quantity),
      this.env.DB.prepare(
        `UPDATE orders SET status='cancelled',updated_at=? WHERE id=? AND status='paid'`,
      ).bind(now, order.id),
      this.audit(
        input.actorUserId,
        'order.refunded',
        'order',
        order.id,
        undefined,
        {
          reason: input.reason,
          campaignId: campaign.id,
          quantity: order.quantity,
        },
      ),
    ]);
    return Response.json({ status: 'refunded', orderId: order.id });
  }

  private async transitionCampaign(
    input: Extract<CoordinatorRequest, { operation: 'campaign.transition' }>,
  ): Promise<Response> {
    const campaign = await this.campaign(input.campaignId);
    if (!campaign)
      return Response.json({ message: 'Campaign not found' }, { status: 404 });
    const allowed: Record<string, string[]> = {
      scheduled: ['active', 'cancelled'],
      active: ['drawing', 'cancelled'],
      sold_out: ['drawing'],
    };
    if (!allowed[campaign.status]?.includes(input.target))
      return Response.json(
        { message: `Cannot change ${campaign.status} to ${input.target}` },
        { status: 409 },
      );
    if (
      input.target === 'cancelled' &&
      (campaign.sold_entries > 0 || campaign.reserved_entries > 0)
    )
      return Response.json(
        {
          message:
            'Campaigns with sold or reserved entries cannot be cancelled',
        },
        { status: 409 },
      );
    if (
      input.target === 'drawing' &&
      (campaign.reserved_entries > 0 ||
        (campaign.ends_at > nowSeconds() &&
          campaign.sold_entries < campaign.total_entries))
    )
      return Response.json(
        {
          message:
            campaign.reserved_entries > 0
              ? 'Outstanding reservations must be resolved first'
              : 'Campaign cannot draw before it ends or sells out',
        },
        { status: 409 },
      );
    const now = nowSeconds();
    const statements = [
      this.env.DB.prepare(
        `UPDATE campaigns SET status=?,updated_at=? WHERE id=? AND status=?`,
      ).bind(input.target, now, input.campaignId, campaign.status),
    ];
    if (input.actorUserId)
      statements.push(
        this.audit(
          input.actorUserId,
          'campaign.status_changed',
          'campaign',
          input.campaignId,
          input.requestId,
          { from: campaign.status, to: input.target },
        ),
      );
    await this.env.DB.batch(statements);
    return Response.json({ updated: true, status: input.target });
  }

  private campaign(id: string) {
    return this.env.DB.prepare(
      `SELECT c.id,c.product_id,c.entry_price_minor,c.total_entries,c.sold_entries,
       c.reserved_entries,c.ends_at,c.status,p.title FROM campaigns c
       JOIN products p ON p.id=c.product_id WHERE c.id=?`,
    )
      .bind(id)
      .first<CampaignRow>();
  }
  private order(id: string) {
    return this.env.DB.prepare(
      `SELECT id,user_id,campaign_id,title,quantity,amount_minor,currency,status,
       created_at,reservation_expires_at FROM orders WHERE id=?`,
    )
      .bind(id)
      .first<OrderRow>();
  }
  private orderByIdempotency(userId: string, key: string) {
    return this.env.DB.prepare(
      `SELECT id,user_id,campaign_id,title,quantity,amount_minor,currency,status,
       created_at,reservation_expires_at FROM orders WHERE user_id=? AND idempotency_key=?`,
    )
      .bind(userId, key)
      .first<OrderRow>();
  }
  private async eligibleEntries(campaignId: string) {
    const result = await this.env.DB.prepare(
      `SELECT e.id,e.order_id,e.user_id,e.entry_number FROM campaign_entries e
       JOIN orders o ON o.id=e.order_id WHERE e.campaign_id=?
       AND o.status IN ('paid','fulfilled') AND e.voided_at IS NULL
       ORDER BY e.entry_number,e.id`,
    )
      .bind(campaignId)
      .all<EntryRow>();
    return result.results;
  }
  private snapshotHash(entries: EntryRow[]) {
    return sha256(
      entries
        .map(
          (entry) =>
            `${entry.id}:${entry.order_id}:${entry.user_id}:${entry.entry_number}`,
        )
        .join('|'),
    );
  }
  private audit(
    actorUserId: string,
    action: string,
    entityType: string,
    entityId: string,
    requestId: string | undefined,
    metadata: unknown,
  ) {
    return this.env.DB.prepare(
      `INSERT INTO audit_logs
       (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
       VALUES(?,?,?,?,?,?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      actorUserId,
      action,
      entityType,
      entityId,
      requestId ?? null,
      JSON.stringify(metadata),
      nowSeconds(),
    );
  }
}
