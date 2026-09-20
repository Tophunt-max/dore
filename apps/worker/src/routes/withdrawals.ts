import { Hono } from 'hono';
import { createWithdrawalSchema } from '@oriva/shared';
import { fail, ok } from '../lib/http';
import type { AppEnv } from '../types';

export const withdrawalRoutes = new Hono<AppEnv>();

withdrawalRoutes.post('/', async (c) => {
  const parsed = createWithdrawalSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid withdrawal request',
      parsed.error.flatten().fieldErrors,
    );
  const userId = c.get('userId');
  const stub = c.env.WALLET_COORDINATOR.get(
    c.env.WALLET_COORDINATOR.idFromName(userId),
  );
  const response = await stub.fetch('https://wallet/withdraw', {
    method: 'POST',
    body: JSON.stringify({ operation: 'withdraw', userId, ...parsed.data }),
  });
  const body = await response.json();
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : response.status === 409 ? 409 : 400,
      'WITHDRAWAL_REJECTED',
      (body as { message?: string }).message ?? 'Withdrawal rejected',
    );
  return ok(c, body, 201);
});
