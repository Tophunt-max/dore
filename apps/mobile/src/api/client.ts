import type { ApiFailure, ApiResponse } from '@oriva/shared';

const API_URL = process.env.EXPO_PUBLIC_API_URL ?? 'http://127.0.0.1:8787';

let accessToken: string | null = null;
let refreshHandler: (() => Promise<string | null>) | null = null;
let unauthorizedHandler: (() => Promise<void> | void) | null = null;
let refreshPromise: Promise<string | null> | null = null;

export function getApiUrl(): string {
  return API_URL.replace(/\/$/, '');
}

export function setApiAccessToken(token: string | null): void {
  accessToken = token;
}

export function registerSessionHandlers(handlers: {
  refresh: () => Promise<string | null>;
  unauthorized: () => Promise<void> | void;
}): void {
  refreshHandler = handlers.refresh;
  unauthorizedHandler = handlers.unauthorized;
}

interface RequestOptions extends Omit<RequestInit, 'body'> {
  body?: unknown;
  authenticated?: boolean;
  retryAfterRefresh?: boolean;
}

function requestHeaders(options: RequestOptions): Headers {
  const headers = new Headers(options.headers);
  headers.set('Accept', 'application/json');
  if (options.body !== undefined) {
    headers.set('Content-Type', 'application/json');
  }
  if (options.authenticated !== false && accessToken) {
    headers.set('Authorization', `Bearer ${accessToken}`);
  }
  return headers;
}

export async function apiRequest<T>(
  path: string,
  options: RequestOptions = {},
): Promise<T> {
  const response = await fetch(`${getApiUrl()}${path}`, {
    ...options,
    headers: requestHeaders(options),
    body: options.body === undefined ? undefined : JSON.stringify(options.body),
  });

  if (
    response.status === 401 &&
    options.authenticated !== false &&
    options.retryAfterRefresh !== false &&
    refreshHandler
  ) {
    refreshPromise ??= refreshHandler().finally(() => {
      refreshPromise = null;
    });
    const nextToken = await refreshPromise;
    if (nextToken) {
      return apiRequest<T>(path, { ...options, retryAfterRefresh: false });
    }
    await unauthorizedHandler?.();
  }

  const payload = (await response
    .json()
    .catch(() => null)) as ApiResponse<T> | null;
  if (!response.ok || !payload?.success) {
    const failure = payload as ApiFailure | null;
    const error = new Error(
      failure?.error.message ?? `Request failed (${response.status})`,
    );
    Object.assign(error, {
      code: failure?.error.code ?? 'REQUEST_FAILED',
      status: response.status,
      fieldErrors: failure?.error.fieldErrors,
    });
    throw error;
  }

  return payload.data;
}
