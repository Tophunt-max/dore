import type { Context } from 'hono';
import type { ContentfulStatusCode } from 'hono/utils/http-status';
import type { AppEnv } from '../types';

export function ok<T>(
  c: Context<AppEnv>,
  data: T,
  status: ContentfulStatusCode = 200,
) {
  return c.json(
    { success: true as const, data, requestId: c.get('requestId') },
    status,
  );
}

export function fail(
  c: Context<AppEnv>,
  status: ContentfulStatusCode,
  code: string,
  message: string,
  fieldErrors?: Record<string, string[]>,
) {
  return c.json(
    {
      success: false as const,
      error: { code, message, ...(fieldErrors ? { fieldErrors } : {}) },
      requestId: c.get('requestId'),
    },
    status,
  );
}
