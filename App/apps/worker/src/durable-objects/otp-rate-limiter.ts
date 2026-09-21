import type { Bindings } from '../types';

interface RateRequest {
  scope: 'phone' | 'ip';
}

export class OtpRateLimiter implements DurableObject {
  constructor(
    private readonly state: DurableObjectState,
    private readonly env: Bindings,
  ) {
    void this.env;
  }

  async fetch(request: Request): Promise<Response> {
    if (request.method !== 'POST')
      return new Response('Method not allowed', { status: 405 });
    const { scope } = (await request.json()) as RateRequest;
    const now = Date.now();
    const windowMs = 10 * 60 * 1000;
    const cooldownMs = scope === 'phone' ? 45_000 : 1_000;
    const limit = scope === 'phone' ? 5 : 25;
    const existing = (await this.state.storage.get<number[]>('requests')) ?? [];
    const recent = existing.filter((timestamp) => now - timestamp < windowMs);
    const last = recent.at(-1);
    if (last && now - last < cooldownMs) {
      return Response.json(
        {
          code: 'OTP_COOLDOWN',
          retryAfter: Math.ceil((cooldownMs - (now - last)) / 1000),
        },
        { status: 429 },
      );
    }
    if (recent.length >= limit) {
      return Response.json(
        {
          code: 'OTP_RATE_LIMITED',
          retryAfter: Math.ceil((windowMs - (now - recent[0]!)) / 1000),
        },
        { status: 429 },
      );
    }
    recent.push(now);
    await this.state.storage.put('requests', recent);
    return new Response(null, { status: 204 });
  }
}
