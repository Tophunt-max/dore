import { Hono, type Context } from 'hono';
import {
  OTP_TTL_SECONDS,
  REFRESH_TOKEN_TTL_SECONDS,
  refreshSessionSchema,
  requestOtpSchema,
  verifyOtpSchema,
} from '@oriva/shared';
import { randomOtp, randomToken, sha256 } from '../lib/crypto';
import { fail, ok } from '../lib/http';
import { signAccessToken } from '../lib/jwt';
import { publicUser, type UserRow } from '../lib/user';
import type { AppEnv, Bindings } from '../types';

export const authRoutes = new Hono<AppEnv>();

async function createSession(
  env: Bindings,
  user: UserRow,
  deviceId: string,
  replacedTokenId?: string,
) {
  const now = Math.floor(Date.now() / 1000);
  const refreshToken = randomToken(48);
  const tokenHash = await sha256(refreshToken);
  const tokenId = crypto.randomUUID();
  const statements: D1PreparedStatement[] = [
    env.DB.prepare(
      `INSERT INTO refresh_tokens (id, user_id, token_hash, device_id, expires_at, created_at)
       VALUES (?, ?, ?, ?, ?, ?)`,
    ).bind(
      tokenId,
      user.id,
      tokenHash,
      deviceId,
      now + REFRESH_TOKEN_TTL_SECONDS,
      now,
    ),
  ];
  if (replacedTokenId) {
    statements.push(
      env.DB.prepare(
        `INSERT INTO refresh_token_rotations(previous_token_id,replacement_token_id,rotated_at)
         VALUES(?,?,?)`,
      ).bind(replacedTokenId, tokenId, now),
      env.DB.prepare(
        `UPDATE refresh_tokens SET revoked_at=?,replaced_by_token_id=?
         WHERE id=? AND revoked_at IS NULL AND replaced_by_token_id IS NULL`,
      ).bind(now, tokenId, replacedTokenId),
    );
  }
  await env.DB.batch(statements);
  return {
    accessToken: await signAccessToken(env, { sub: user.id, role: user.role }),
    refreshToken,
    user: publicUser(env, user),
  };
}

async function enforceRateLimit(
  c: Context<AppEnv>,
  key: string,
  scope: 'phone' | 'ip',
) {
  const id = c.env.OTP_RATE_LIMITER.idFromName(`${scope}:${key}`);
  const response = await c.env.OTP_RATE_LIMITER.get(id).fetch(
    'https://otp-rate/request',
    {
      method: 'POST',
      body: JSON.stringify({ scope }),
    },
  );
  return response;
}

authRoutes.post('/otp/request', async (c) => {
  const parsed = requestOtpSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Enter a valid mobile number',
      parsed.error.flatten().fieldErrors,
    );
  const phoneHash = await sha256(parsed.data.phone);
  const ipHash = await sha256(c.req.header('CF-Connecting-IP') ?? 'local');
  for (const [key, scope] of [
    [phoneHash, 'phone'],
    [ipHash, 'ip'],
  ] as const) {
    const limited = await enforceRateLimit(c, key, scope);
    if (!limited.ok) {
      const body = (await limited.json()) as {
        code: string;
        retryAfter: number;
      };
      c.header('Retry-After', String(body.retryAfter));
      return fail(
        c,
        429,
        body.code,
        'Please wait before requesting another OTP',
      );
    }
  }

  const developmentOtp =
    c.env.APP_ENV === 'local' && c.env.OTP_DEV_MODE === 'true';
  if (c.env.OTP_DEV_MODE === 'true' && c.env.APP_ENV !== 'local')
    return fail(
      c,
      503,
      'UNSAFE_OTP_CONFIGURATION',
      'Development OTP is disabled outside local mode',
    );
  const code = developmentOtp ? '123456' : randomOtp();
  const now = Math.floor(Date.now() / 1000);
  await c.env.DB.prepare(
    `INSERT INTO otp_requests (id, phone_hash, otp_hash, attempts, expires_at, created_at)
     VALUES (?, ?, ?, 0, ?, ?)`,
  )
    .bind(
      crypto.randomUUID(),
      phoneHash,
      await sha256(`${code}:${c.env.OTP_PEPPER}`),
      now + OTP_TTL_SECONDS,
      now,
    )
    .run();

  if (!developmentOtp) {
    const response = await fetch(c.env.OTP_PROVIDER_URL, {
      method: 'POST',
      headers: {
        Authorization: `Bearer ${c.env.OTP_PROVIDER_API_KEY}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        to: parsed.data.phone,
        template: 'oriva_login',
        variables: { code },
      }),
    });
    if (!response.ok)
      return fail(c, 502, 'OTP_PROVIDER_ERROR', 'Unable to deliver OTP');
  }

  return ok(c, {
    expiresIn: OTP_TTL_SECONDS,
    resendAfter: 45,
    ...(developmentOtp ? { developmentCode: code } : {}),
  });
});

authRoutes.post('/otp/verify', async (c) => {
  const parsed = verifyOtpSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid verification request',
      parsed.error.flatten().fieldErrors,
    );
  const now = Math.floor(Date.now() / 1000);
  const phoneHash = await sha256(parsed.data.phone);
  const otp = await c.env.DB.prepare(
    `SELECT id, otp_hash, attempts, expires_at FROM otp_requests
     WHERE phone_hash = ? AND consumed_at IS NULL ORDER BY created_at DESC LIMIT 1`,
  )
    .bind(phoneHash)
    .first<{
      id: string;
      otp_hash: string;
      attempts: number;
      expires_at: number;
    }>();
  if (!otp || otp.expires_at < now || otp.attempts >= 5)
    return fail(c, 401, 'OTP_EXPIRED', 'The OTP is expired or unavailable');
  const candidate = await sha256(`${parsed.data.code}:${c.env.OTP_PEPPER}`);
  if (candidate !== otp.otp_hash) {
    await c.env.DB.prepare(
      'UPDATE otp_requests SET attempts = attempts + 1 WHERE id = ?',
    )
      .bind(otp.id)
      .run();
    return fail(c, 401, 'OTP_INVALID', 'The OTP is incorrect');
  }
  await c.env.DB.prepare('UPDATE otp_requests SET consumed_at = ? WHERE id = ?')
    .bind(now, otp.id)
    .run();

  let user = await c.env.DB.prepare(
    `SELECT id, phone_e164, display_name, email, avatar_key, referral_code, role, status
     FROM users WHERE phone_hash = ?`,
  )
    .bind(phoneHash)
    .first<UserRow>();
  if (!user) {
    const id = crypto.randomUUID();
    const referralCode = randomToken(6).slice(0, 8).toUpperCase();
    let referrerId: string | null = null;
    if (parsed.data.inviteCode) {
      referrerId =
        (
          await c.env.DB.prepare('SELECT id FROM users WHERE referral_code = ?')
            .bind(parsed.data.inviteCode.toUpperCase())
            .first<{ id: string }>()
        )?.id ?? null;
    }
    await c.env.DB.batch([
      c.env.DB.prepare(
        `INSERT INTO users (id, phone_e164, phone_hash, referral_code, referred_by_user_id, role, status, created_at, updated_at)
         VALUES (?, ?, ?, ?, ?, 'user', 'active', ?, ?)`,
      ).bind(
        id,
        parsed.data.phone,
        phoneHash,
        referralCode,
        referrerId,
        now,
        now,
      ),
      c.env.DB.prepare(
        `INSERT INTO wallet_accounts (user_id, currency, available_minor, locked_minor, version, updated_at)
         VALUES (?, 'INR', 0, 0, 0, ?)`,
      ).bind(id, now),
      ...(referrerId
        ? [
            c.env.DB.prepare(
              `INSERT INTO referrals (id, referrer_user_id, referred_user_id, status, created_at)
             VALUES (?, ?, ?, 'registered', ?)`,
            ).bind(crypto.randomUUID(), referrerId, id, now),
          ]
        : []),
    ]);
    user = {
      id,
      phone_e164: parsed.data.phone,
      display_name: null,
      email: null,
      avatar_key: null,
      referral_code: referralCode,
      role: 'user',
      status: 'active',
    };
  }
  if (user.status !== 'active')
    return fail(c, 403, 'ACCOUNT_UNAVAILABLE', 'This account is not active');
  return ok(c, await createSession(c.env, user, parsed.data.deviceId));
});

authRoutes.post('/refresh', async (c) => {
  const parsed = refreshSessionSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid refresh request');
  const now = Math.floor(Date.now() / 1000);
  const row = await c.env.DB.prepare(
    `SELECT rt.id token_id, rt.user_id, rt.device_id, rt.expires_at,rt.revoked_at,rt.replaced_by_token_id,
            u.id, u.phone_e164, u.display_name, u.email, u.avatar_key, u.referral_code, u.role, u.status
     FROM refresh_tokens rt JOIN users u ON u.id = rt.user_id
     WHERE rt.token_hash = ?`,
  )
    .bind(await sha256(parsed.data.refreshToken))
    .first<
      UserRow & {
        token_id: string;
        device_id: string;
        expires_at: number;
        revoked_at: number | null;
        replaced_by_token_id: string | null;
      }
    >();
  if (
    !row ||
    row.expires_at < now ||
    row.device_id !== parsed.data.deviceId ||
    row.status !== 'active'
  ) {
    return fail(
      c,
      401,
      'INVALID_REFRESH_TOKEN',
      'The session is no longer valid',
    );
  }
  if (row.revoked_at || row.replaced_by_token_id) {
    await c.env.DB.prepare(
      `UPDATE refresh_tokens SET revoked_at=COALESCE(revoked_at,?)
       WHERE user_id=? AND device_id=? AND revoked_at IS NULL`,
    )
      .bind(now, row.id, row.device_id)
      .run();
    return fail(
      c,
      401,
      'REFRESH_TOKEN_REPLAY',
      'Session replay detected; sign in again',
    );
  }
  try {
    return ok(
      c,
      await createSession(c.env, row, parsed.data.deviceId, row.token_id),
    );
  } catch (error) {
    if (
      error instanceof Error &&
      (error.message.includes('refresh token replay') ||
        error.message.includes('UNIQUE'))
    ) {
      await c.env.DB.prepare(
        `UPDATE refresh_tokens SET revoked_at=COALESCE(revoked_at,?)
         WHERE user_id=? AND device_id=? AND revoked_at IS NULL`,
      )
        .bind(now, row.id, row.device_id)
        .run();
      return fail(
        c,
        401,
        'REFRESH_TOKEN_REPLAY',
        'Session replay detected; sign in again',
      );
    }
    throw error;
  }
});

authRoutes.post('/logout', async (c) => {
  const body = (await c.req
    .json<{ refreshToken?: string }>()
    .catch(() => ({}))) as { refreshToken?: string };
  if (body.refreshToken) {
    await c.env.DB.prepare(
      'UPDATE refresh_tokens SET revoked_at = ? WHERE token_hash = ? AND revoked_at IS NULL',
    )
      .bind(Math.floor(Date.now() / 1000), await sha256(body.refreshToken))
      .run();
  }
  return ok(c, null);
});
