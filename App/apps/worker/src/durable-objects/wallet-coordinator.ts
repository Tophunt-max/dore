import { mapWithdrawal } from '../lib/mappers';
import { notificationStatements } from '../lib/notifications';
import { nowSeconds, periodKey, periodStart } from '../lib/time';
import type { Bindings } from '../types';

interface CreditRequest {
  operation: 'credit';
  userId: string;
  amountMinor: number;
  referenceType: string;
  referenceId: string;
  description: string;
  entryType?: string;
}
interface RewardRequest {
  operation: 'task.reward';
  userId: string;
  taskId: string;
}
interface ReferralRewardRequest {
  operation: 'referral.reward';
  userId: string;
  issueId: string;
  amountMinor: number;
  coinAmount: number;
  description: string;
}
interface RefundRequest {
  operation: 'payment.refund';
  userId: string;
  paymentId: string;
  refundId: string;
  amountMinor: number;
}
interface WithdrawRequest {
  operation: 'withdraw';
  userId: string;
  amountMinor: number;
  beneficiaryId: string;
  idempotencyKey: string;
}
interface WithdrawalTransitionRequest {
  operation: 'withdrawal.transition';
  userId: string;
  withdrawalId: string;
  actorUserId: string;
  target: 'reviewing' | 'approved' | 'rejected' | 'paid';
  reason?: string;
  payoutReference?: string;
}
interface MembershipPurchaseRequest {
  operation: 'membership.purchase';
  userId: string;
  planId: string;
  idempotencyKey: string;
}
interface FinancePurchaseRequest {
  operation: 'finance.purchase';
  userId: string;
  offerId: string;
  principalMinor: number;
  idempotencyKey: string;
}
interface OrderPurchaseRequest {
  operation: 'order.purchase';
  userId: string;
  orderId: string;
  amountMinor: number;
}
type WalletRequest =
  | CreditRequest
  | RewardRequest
  | ReferralRewardRequest
  | RefundRequest
  | WithdrawRequest
  | WithdrawalTransitionRequest
  | MembershipPurchaseRequest
  | FinancePurchaseRequest
  | OrderPurchaseRequest;

export class WalletCoordinator implements DurableObject {
  constructor(
    private readonly state: DurableObjectState,
    private readonly env: Bindings,
  ) {
    void this.state;
  }

  async fetch(request: Request): Promise<Response> {
    if (request.method !== 'POST')
      return Response.json({ message: 'Method not allowed' }, { status: 405 });
    const input = (await request.json()) as WalletRequest;
    if (!input.userId)
      return Response.json(
        { message: 'Invalid wallet request' },
        { status: 400 },
      );
    switch (input.operation) {
      case 'credit':
        return this.credit(input);
      case 'task.reward':
        return this.taskReward(input);
      case 'referral.reward':
        return this.referralReward(input);
      case 'payment.refund':
        return this.refund(input);
      case 'withdrawal.transition':
        return this.transitionWithdrawal(input);
      case 'membership.purchase':
        return this.membershipPurchase(input);
      case 'finance.purchase':
        return this.financePurchase(input);
      case 'order.purchase':
        return this.orderPurchase(input);
      default:
        return this.withdraw(input);
    }
  }

  private async credit(input: CreditRequest): Promise<Response> {
    if (!validAmount(input.amountMinor)) return invalidAmount();
    const entryType = input.entryType ?? 'recharge';
    const duplicate = await this.env.DB.prepare(
      `SELECT id FROM ledger_entries WHERE reference_type=? AND reference_id=?
       AND entry_type=? AND direction='credit'`,
    )
      .bind(input.referenceType, input.referenceId, entryType)
      .first();
    if (duplicate) return Response.json({ status: 'already_applied' });
    const now = nowSeconds();
    const transactionId = crypto.randomUUID();
    await this.env.DB.batch([
      walletCredit(this.env.DB, input.userId, input.amountMinor, now),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'credit',
        input.amountMinor,
        entryType,
        input.description,
        input.referenceType,
        input.referenceId,
        now,
      ),
    ]);
    return Response.json({ status: 'applied', transactionId });
  }

  private async taskReward(input: RewardRequest): Promise<Response> {
    const task = await this.env.DB.prepare(
      `SELECT id,period,eligibility_event,reward_coins,reward_minor FROM task_definitions
       WHERE id=? AND status='active'`,
    )
      .bind(input.taskId)
      .first<{
        id: string;
        period: string;
        eligibility_event: 'check_in' | 'paid_order';
        reward_coins: number;
        reward_minor: number;
      }>();
    if (!task)
      return Response.json({ message: 'Task not found' }, { status: 404 });
    const date = new Date();
    const key = periodKey(task.period, date);
    const existing = await this.env.DB.prepare(
      `SELECT id,amount_minor,coin_amount,created_at FROM reward_claims
       WHERE user_id=? AND reward_type=? AND period_key=?`,
    )
      .bind(input.userId, task.id, key)
      .first<{
        id: string;
        amount_minor: number;
        coin_amount: number;
        created_at: number;
      }>();
    if (existing)
      return Response.json(
        {
          message: 'Reward already claimed for this period',
          claimId: existing.id,
        },
        { status: 409 },
      );
    const now = nowSeconds();
    if (task.eligibility_event === 'paid_order') {
      const evidence = await this.env.DB.prepare(
        `SELECT id FROM task_events WHERE user_id=? AND event_type='paid_order'
         AND occurred_at>=? ORDER BY occurred_at DESC LIMIT 1`,
      )
        .bind(input.userId, periodStart(task.period, date))
        .first();
      if (!evidence)
        return Response.json(
          {
            message: 'Complete a paid campaign order before claiming this task',
          },
          { status: 409 },
        );
    }
    const claimId = crypto.randomUUID();
    const transactionId = crypto.randomUUID();
    const statements: D1PreparedStatement[] = [];
    if (task.eligibility_event === 'check_in')
      statements.push(
        this.env.DB.prepare(
          `INSERT OR IGNORE INTO task_events
           (id,user_id,event_type,source_type,source_id,occurred_at)
           VALUES(?,?,'check_in','period',?,?)`,
        ).bind(crypto.randomUUID(), input.userId, key, now),
      );
    statements.push(
      this.env.DB.prepare(
        `INSERT INTO reward_claims
         (id,user_id,reward_type,period_key,amount_minor,coin_amount,created_at)
         VALUES(?,?,?,?,?,?,?)`,
      ).bind(
        claimId,
        input.userId,
        task.id,
        key,
        task.reward_minor,
        task.reward_coins,
        now,
      ),
    );
    addRewardStatements(
      statements,
      this.env.DB,
      input.userId,
      task.reward_minor,
      task.reward_coins,
      transactionId,
      'task_claim',
      claimId,
      'Task reward',
      now,
    );
    const notification = notificationStatements(
      this.env.DB,
      {
        userId: input.userId,
        type: 'task.completed',
        title: 'Task completed',
        body: 'Your task reward has been credited.',
        entityId: task.id,
      },
      now,
    );
    statements.push(...notification.statements);
    await this.env.DB.batch(statements);
    return Response.json({
      id: claimId,
      taskId: task.id,
      periodKey: key,
      rewardCoins: task.reward_coins,
      rewardMinor: task.reward_minor,
      claimedAt: new Date(now * 1000).toISOString(),
    });
  }

  private async referralReward(
    input: ReferralRewardRequest,
  ): Promise<Response> {
    const issue = await this.env.DB.prepare(
      `SELECT id,amount_minor,coin_amount FROM referral_reward_issues
       WHERE id=? AND beneficiary_user_id=?`,
    )
      .bind(input.issueId, input.userId)
      .first<{ id: string; amount_minor: number; coin_amount: number }>();
    if (!issue)
      return Response.json(
        { message: 'Reward issue not found' },
        { status: 404 },
      );
    const applied = await this.env.DB.prepare(
      `SELECT id FROM ledger_entries WHERE reference_type='referral_reward'
       AND reference_id=? AND entry_type='referral_reward' AND direction='credit'`,
    )
      .bind(input.issueId)
      .first();
    const coinApplied = await this.env.DB.prepare(
      `SELECT id FROM coin_ledger_entries WHERE reference_type='referral_reward'
       AND reference_id=? AND entry_type='referral_reward' AND direction='credit'`,
    )
      .bind(input.issueId)
      .first();
    if (
      (issue.amount_minor === 0 || applied) &&
      (issue.coin_amount === 0 || coinApplied)
    )
      return Response.json({ status: 'already_applied' });
    const now = nowSeconds();
    const statements: D1PreparedStatement[] = [];
    addRewardStatements(
      statements,
      this.env.DB,
      input.userId,
      applied ? 0 : issue.amount_minor,
      coinApplied ? 0 : issue.coin_amount,
      crypto.randomUUID(),
      'referral_reward',
      input.issueId,
      input.description,
      now,
    );
    if (statements.length) await this.env.DB.batch(statements);
    return Response.json({ status: 'applied' });
  }

  private async refund(input: RefundRequest): Promise<Response> {
    if (!validAmount(input.amountMinor)) return invalidAmount();
    const duplicate = await this.env.DB.prepare(
      `SELECT transaction_id FROM ledger_entries WHERE reference_type='payment_refund'
       AND reference_id=? AND entry_type='payment_refund_reversal' AND direction='debit'`,
    )
      .bind(input.refundId)
      .first<{ transaction_id: string }>();
    if (duplicate)
      return Response.json({
        status: 'already_applied',
        transactionId: duplicate.transaction_id,
      });
    const wallet = await this.wallet(input.userId);
    if (!wallet || wallet.available_minor < input.amountMinor)
      return Response.json(
        { message: 'Available wallet balance is insufficient for reversal' },
        { status: 409 },
      );
    const now = nowSeconds();
    const transactionId = crypto.randomUUID();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE wallet_accounts SET available_minor=available_minor-?,version=version+1,updated_at=?
         WHERE user_id=? AND available_minor>=?`,
      ).bind(input.amountMinor, now, input.userId, input.amountMinor),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'debit',
        input.amountMinor,
        'payment_refund_reversal',
        'Manual payment refund reversal',
        'payment_refund',
        input.refundId,
        now,
      ),
    ]);
    return Response.json({ status: 'applied', transactionId });
  }

  private async membershipPurchase(
    input: MembershipPurchaseRequest,
  ): Promise<Response> {
    if (!input.planId || !input.idempotencyKey)
      return Response.json(
        { message: 'Invalid purchase request' },
        { status: 400 },
      );
    const existing = await this.env.DB.prepare(
      'SELECT membership_id FROM membership_orders WHERE user_id=? AND idempotency_key=?',
    )
      .bind(input.userId, input.idempotencyKey)
      .first<{ membership_id: string }>();
    if (existing)
      return Response.json({
        status: 'ok',
        membershipId: existing.membership_id,
        idempotent: true,
      });
    const plan = await this.env.DB.prepare(
      "SELECT id,price_minor,duration_days FROM membership_plans WHERE id=? AND status='active'",
    )
      .bind(input.planId)
      .first<{ id: string; price_minor: number; duration_days: number }>();
    if (!plan)
      return Response.json({ message: 'Plan not available' }, { status: 404 });
    const price = Number(plan.price_minor);
    if (!Number.isSafeInteger(price) || price <= 0)
      return Response.json(
        { message: 'This plan is not purchasable' },
        { status: 409 },
      );
    const wallet = await this.wallet(input.userId);
    if (!wallet || wallet.available_minor < price)
      return Response.json(
        { message: 'Insufficient wallet balance' },
        { status: 409 },
      );
    const now = nowSeconds();
    const active = await this.env.DB.prepare(
      "SELECT ends_at FROM memberships WHERE user_id=? AND status='active' AND ends_at>? ORDER BY ends_at DESC LIMIT 1",
    )
      .bind(input.userId, now)
      .first<{ ends_at: number }>();
    const startsAt = active ? Number(active.ends_at) : now;
    const endsAt = startsAt + Number(plan.duration_days) * 86400;
    const membershipId = crypto.randomUUID();
    const orderId = crypto.randomUUID();
    const transactionId = crypto.randomUUID();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE wallet_accounts SET available_minor=available_minor-?,version=version+1,updated_at=?
         WHERE user_id=? AND available_minor>=?`,
      ).bind(price, now, input.userId, price),
      this.env.DB.prepare(
        `INSERT INTO memberships (id,user_id,plan_id,status,source,starts_at,ends_at,created_at,updated_at)
         VALUES(?,?,?,'active','purchase',?,?,?,?)`,
      ).bind(membershipId, input.userId, plan.id, startsAt, endsAt, now, now),
      this.env.DB.prepare(
        `INSERT INTO membership_orders (id,user_id,plan_id,membership_id,amount_minor,currency,idempotency_key,status,created_at)
         VALUES(?,?,?,?,?,'INR',?,'paid',?)`,
      ).bind(
        orderId,
        input.userId,
        plan.id,
        membershipId,
        price,
        input.idempotencyKey,
        now,
      ),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'debit',
        price,
        'membership_purchase',
        'VIP membership purchase',
        'membership',
        membershipId,
        now,
      ),
    ]);
    return Response.json({
      status: 'ok',
      membershipId,
      orderId,
      amountMinor: price,
      endsAt: new Date(endsAt * 1000).toISOString(),
    });
  }

  private async financePurchase(
    input: FinancePurchaseRequest,
  ): Promise<Response> {
    if (
      !input.offerId ||
      !input.idempotencyKey ||
      !validAmount(input.principalMinor)
    )
      return invalidAmount();
    const existing = await this.env.DB.prepare(
      'SELECT id FROM finance_orders WHERE user_id=? AND idempotency_key=?',
    )
      .bind(input.userId, input.idempotencyKey)
      .first<{ id: string }>();
    if (existing)
      return Response.json({
        status: 'ok',
        orderId: existing.id,
        idempotent: true,
      });
    const offer = await this.env.DB.prepare(
      "SELECT id FROM finance_offers WHERE id=? AND status='active'",
    )
      .bind(input.offerId)
      .first<{ id: string }>();
    if (!offer)
      return Response.json(
        { message: 'Finance offer not available' },
        { status: 404 },
      );
    const wallet = await this.wallet(input.userId);
    if (!wallet || wallet.available_minor < input.principalMinor)
      return Response.json(
        { message: 'Insufficient wallet balance' },
        { status: 409 },
      );
    const now = nowSeconds();
    const orderId = crypto.randomUUID();
    const transactionId = crypto.randomUUID();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE wallet_accounts SET available_minor=available_minor-?,version=version+1,updated_at=?
         WHERE user_id=? AND available_minor>=?`,
      ).bind(input.principalMinor, now, input.userId, input.principalMinor),
      this.env.DB.prepare(
        `INSERT INTO finance_orders (id,user_id,offer_id,principal_minor,currency,idempotency_key,status,note,created_at,updated_at)
         VALUES(?,?,?,?,'INR',?,'active','',?,?)`,
      ).bind(
        orderId,
        input.userId,
        offer.id,
        input.principalMinor,
        input.idempotencyKey,
        now,
        now,
      ),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'debit',
        input.principalMinor,
        'finance_purchase',
        'Finance product purchase',
        'finance_order',
        orderId,
        now,
      ),
    ]);
    return Response.json({
      status: 'ok',
      orderId,
      principalMinor: input.principalMinor,
    });
  }

  // Pay for a reserved campaign entry order directly from the wallet balance.
  // Serialized per-user by this Durable Object so concurrent buys can't
  // double-spend. Debiting is idempotent per order (via the ledger entry) and
  // guarded by the order still being pending, so a refunded/failed order is not
  // silently re-charged.
  private async orderPurchase(input: OrderPurchaseRequest): Promise<Response> {
    if (!input.orderId || !validAmount(input.amountMinor)) return invalidAmount();
    const order = await this.env.DB.prepare(
      'SELECT id,user_id,status,amount_minor FROM orders WHERE id=? AND user_id=?',
    )
      .bind(input.orderId, input.userId)
      .first<{
        id: string;
        user_id: string;
        status: string;
        amount_minor: number;
      }>();
    if (!order)
      return Response.json({ message: 'Order not found' }, { status: 404 });
    if (order.status === 'paid' || order.status === 'fulfilled')
      return Response.json({ status: 'already_paid' });
    if (order.status !== 'pending')
      return Response.json(
        { message: 'Order is not payable' },
        { status: 409 },
      );
    if (order.amount_minor !== input.amountMinor)
      return Response.json(
        { message: 'Order amount mismatch' },
        { status: 409 },
      );
    const duplicate = await this.env.DB.prepare(
      `SELECT id FROM ledger_entries WHERE reference_type='order' AND reference_id=?
       AND entry_type='order_purchase' AND direction='debit'`,
    )
      .bind(input.orderId)
      .first();
    if (duplicate) return Response.json({ status: 'already_applied' });
    const wallet = await this.wallet(input.userId);
    if (!wallet || wallet.available_minor < input.amountMinor)
      return Response.json(
        { message: 'Insufficient wallet balance' },
        { status: 409 },
      );
    const now = nowSeconds();
    const transactionId = crypto.randomUUID();
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE wallet_accounts SET available_minor=available_minor-?,version=version+1,updated_at=?
         WHERE user_id=? AND available_minor>=?`,
      ).bind(input.amountMinor, now, input.userId, input.amountMinor),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'debit',
        input.amountMinor,
        'order_purchase',
        'Campaign entry purchase',
        'order',
        input.orderId,
        now,
      ),
    ]);
    return Response.json({ status: 'applied', transactionId });
  }

  private async withdraw(input: WithdrawRequest): Promise<Response> {
    if (
      !validAmount(input.amountMinor) ||
      !input.beneficiaryId ||
      !input.idempotencyKey
    )
      return invalidAmount();
    const existing = await this.env.DB.prepare(
      `SELECT * FROM withdrawals WHERE user_id=? AND idempotency_key=?`,
    )
      .bind(input.userId, input.idempotencyKey)
      .first<Record<string, unknown>>();
    if (existing) {
      if (
        Number(existing.amount_minor) !== input.amountMinor ||
        existing.beneficiary_id !== input.beneficiaryId
      )
        return Response.json(
          { message: 'The idempotency key was used for another withdrawal' },
          { status: 409 },
        );
      return Response.json(mapWithdrawal(existing));
    }
    const beneficiary = await this.env.DB.prepare(
      `SELECT * FROM payout_beneficiaries WHERE id=? AND user_id=? AND active=1
       AND verification_status='verified'`,
    )
      .bind(input.beneficiaryId, input.userId)
      .first<Record<string, unknown>>();
    if (!beneficiary)
      return Response.json(
        { message: 'A verified payout beneficiary is required' },
        { status: 409 },
      );
    const wallet = await this.wallet(input.userId);
    if (!wallet || wallet.available_minor < input.amountMinor)
      return Response.json(
        { message: 'Insufficient wallet balance' },
        { status: 409 },
      );
    const now = nowSeconds();
    const withdrawalId = crypto.randomUUID();
    const transactionId = crypto.randomUUID();
    const last4 = String(beneficiary.destination_last4);
    const snapshot = JSON.stringify({
      type: beneficiary.type,
      label: beneficiary.label,
      maskedDestination:
        beneficiary.type === 'bank' ? `••••${last4}` : `••••@${last4}`,
      accountHolderName: beneficiary.account_holder_name,
      bankName: beneficiary.bank_name,
      ifsc: beneficiary.ifsc,
      ciphertext: beneficiary.destination_ciphertext,
      iv: beneficiary.destination_iv,
    });
    await this.env.DB.batch([
      this.env.DB.prepare(
        `UPDATE wallet_accounts SET available_minor=available_minor-?,locked_minor=locked_minor+?,
         version=version+1,updated_at=? WHERE user_id=? AND available_minor>=?`,
      ).bind(
        input.amountMinor,
        input.amountMinor,
        now,
        input.userId,
        input.amountMinor,
      ),
      this.env.DB.prepare(
        `INSERT INTO withdrawals
         (id,user_id,amount_minor,currency,idempotency_key,status,beneficiary_id,
          destination_snapshot_json,created_at,updated_at)
         VALUES(?,?,?,'INR',?,'requested',?,?,?,?)`,
      ).bind(
        withdrawalId,
        input.userId,
        input.amountMinor,
        input.idempotencyKey,
        input.beneficiaryId,
        snapshot,
        now,
        now,
      ),
      ledger(
        this.env.DB,
        transactionId,
        input.userId,
        'debit',
        input.amountMinor,
        'withdrawal_hold',
        'Withdrawal requested',
        'withdrawal',
        withdrawalId,
        now,
      ),
    ]);
    const row = await this.env.DB.prepare(
      'SELECT * FROM withdrawals WHERE id=?',
    )
      .bind(withdrawalId)
      .first<Record<string, unknown>>();
    return Response.json(
      row ? mapWithdrawal(row) : { withdrawalId, status: 'requested' },
    );
  }

  private async transitionWithdrawal(
    input: WithdrawalTransitionRequest,
  ): Promise<Response> {
    const row = await this.env.DB.prepare(
      'SELECT * FROM withdrawals WHERE id=? AND user_id=?',
    )
      .bind(input.withdrawalId, input.userId)
      .first<Record<string, unknown>>();
    if (!row)
      return Response.json(
        { message: 'Withdrawal not found' },
        { status: 404 },
      );
    const status = String(row.status);
    const allowed: Record<string, WithdrawalTransitionRequest['target'][]> = {
      requested: ['reviewing', 'rejected'],
      reviewing: ['approved', 'rejected'],
      approved: ['paid', 'rejected'],
    };
    if (!allowed[status]?.includes(input.target))
      return Response.json(
        { message: `Cannot change ${status} to ${input.target}` },
        { status: 409 },
      );
    if (input.target === 'rejected' && !input.reason)
      return Response.json(
        { message: 'Rejection reason is required' },
        { status: 400 },
      );
    if (input.target === 'paid' && !input.payoutReference)
      return Response.json(
        { message: 'Payout reference is required' },
        { status: 400 },
      );
    const amount = Number(row.amount_minor);
    const wallet = await this.wallet(input.userId);
    if (input.target === 'paid' && !row.destination_snapshot_json)
      return Response.json(
        { message: 'Withdrawal has no immutable payout destination snapshot' },
        { status: 409 },
      );
    if (
      (input.target === 'paid' || input.target === 'rejected') &&
      (!wallet || wallet.locked_minor < amount)
    )
      return Response.json(
        { message: 'Locked balance invariant failed' },
        { status: 409 },
      );
    const now = nowSeconds();
    const transactionId = crypto.randomUUID();
    const statements: D1PreparedStatement[] = [];
    if (input.target === 'rejected') {
      statements.push(
        this.env.DB.prepare(
          `UPDATE wallet_accounts SET available_minor=available_minor+?,locked_minor=locked_minor-?,
           version=version+1,updated_at=? WHERE user_id=? AND locked_minor>=?`,
        ).bind(amount, amount, now, input.userId, amount),
        ledger(
          this.env.DB,
          transactionId,
          input.userId,
          'credit',
          amount,
          'withdrawal_release',
          'Withdrawal released',
          'withdrawal',
          input.withdrawalId,
          now,
        ),
      );
    }
    if (input.target === 'paid') {
      statements.push(
        this.env.DB.prepare(
          `UPDATE wallet_accounts SET locked_minor=locked_minor-?,version=version+1,updated_at=?
           WHERE user_id=? AND locked_minor>=?`,
        ).bind(amount, now, input.userId, amount),
        ledger(
          this.env.DB,
          transactionId,
          input.userId,
          'credit',
          amount,
          'withdrawal_hold_release',
          'Withdrawal hold finalized',
          'withdrawal',
          input.withdrawalId,
          now,
        ),
        ledger(
          this.env.DB,
          transactionId,
          input.userId,
          'debit',
          amount,
          'withdrawal_payout',
          'Withdrawal paid',
          'withdrawal',
          input.withdrawalId,
          now,
        ),
      );
    }
    statements.push(
      this.env.DB.prepare(
        `UPDATE withdrawals SET status=?,rejection_reason=?,payout_reference=?,
         reviewed_by_user_id=?,reviewed_at=?,settled_at=?,updated_at=? WHERE id=? AND status=?`,
      ).bind(
        input.target,
        input.reason ?? null,
        input.payoutReference ?? null,
        input.actorUserId,
        now,
        ['paid', 'rejected'].includes(input.target) ? now : null,
        now,
        input.withdrawalId,
        status,
      ),
    );
    const notification = notificationStatements(
      this.env.DB,
      {
        userId: input.userId,
        type: 'withdrawal.updated',
        title: 'Withdrawal updated',
        body: `Your withdrawal is now ${input.target}.`,
        entityId: input.withdrawalId,
      },
      now,
    );
    statements.push(...notification.statements);
    await this.env.DB.batch(statements);
    return Response.json({ updated: true, status: input.target });
  }

  private wallet(userId: string) {
    return this.env.DB.prepare(
      'SELECT available_minor,locked_minor FROM wallet_accounts WHERE user_id=?',
    )
      .bind(userId)
      .first<{ available_minor: number; locked_minor: number }>();
  }
}

function validAmount(value: number) {
  return Number.isSafeInteger(value) && value > 0;
}
function invalidAmount() {
  return Response.json({ message: 'Invalid wallet amount' }, { status: 400 });
}
function walletCredit(
  db: D1Database,
  userId: string,
  amount: number,
  now: number,
) {
  return db
    .prepare(
      `INSERT INTO wallet_accounts(user_id,currency,available_minor,locked_minor,version,updated_at)
     VALUES(?,'INR',?,0,1,?) ON CONFLICT(user_id) DO UPDATE SET
     available_minor=available_minor+excluded.available_minor,version=version+1,updated_at=excluded.updated_at`,
    )
    .bind(userId, amount, now);
}
function ledger(
  db: D1Database,
  transactionId: string,
  userId: string,
  direction: 'credit' | 'debit',
  amount: number,
  entryType: string,
  description: string,
  referenceType: string,
  referenceId: string,
  now: number,
) {
  return db
    .prepare(
      `INSERT INTO ledger_entries
     (id,transaction_id,user_id,direction,amount_minor,currency,entry_type,description,reference_type,reference_id,created_at)
     VALUES(?,?,?,?,?,'INR',?,?,?,?,?)`,
    )
    .bind(
      crypto.randomUUID(),
      transactionId,
      userId,
      direction,
      amount,
      entryType,
      description,
      referenceType,
      referenceId,
      now,
    );
}
function addRewardStatements(
  statements: D1PreparedStatement[],
  db: D1Database,
  userId: string,
  money: number,
  coins: number,
  transactionId: string,
  referenceType: string,
  referenceId: string,
  description: string,
  now: number,
) {
  if (money > 0)
    statements.push(
      walletCredit(db, userId, money, now),
      ledger(
        db,
        transactionId,
        userId,
        'credit',
        money,
        referenceType,
        description,
        referenceType,
        referenceId,
        now,
      ),
    );
  if (coins > 0)
    statements.push(
      db
        .prepare(
          `INSERT INTO coin_accounts(user_id,balance,version,updated_at) VALUES(?,?,1,?)
         ON CONFLICT(user_id) DO UPDATE SET balance=balance+excluded.balance,
         version=version+1,updated_at=excluded.updated_at`,
        )
        .bind(userId, coins, now),
      db
        .prepare(
          `INSERT INTO coin_ledger_entries
         (id,transaction_id,user_id,direction,amount,entry_type,description,reference_type,reference_id,created_at)
         VALUES(?,?,?,'credit',?,?,?,?,?,?)`,
        )
        .bind(
          crypto.randomUUID(),
          transactionId,
          userId,
          coins,
          referenceType,
          description,
          referenceType,
          referenceId,
          now,
        ),
    );
}
