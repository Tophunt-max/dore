import { jwtVerify, SignJWT } from 'jose';
import { ACCESS_TOKEN_TTL_SECONDS } from '@oriva/shared';
import type { Bindings } from '../types';

const encoder = new TextEncoder();

export interface AccessTokenClaims {
  sub: string;
  role: 'user' | 'support' | 'finance' | 'admin';
}

export async function signAccessToken(
  env: Bindings,
  claims: AccessTokenClaims,
): Promise<string> {
  return new SignJWT({ role: claims.role })
    .setProtectedHeader({ alg: 'HS256', typ: 'JWT' })
    .setSubject(claims.sub)
    .setIssuer('oriva-api')
    .setAudience('oriva-mobile')
    .setIssuedAt()
    .setExpirationTime(`${ACCESS_TOKEN_TTL_SECONDS}s`)
    .sign(encoder.encode(env.JWT_SECRET));
}

export async function verifyAccessToken(
  env: Bindings,
  token: string,
): Promise<AccessTokenClaims> {
  const { payload } = await jwtVerify(token, encoder.encode(env.JWT_SECRET), {
    issuer: 'oriva-api',
    audience: 'oriva-mobile',
    algorithms: ['HS256'],
  });
  if (!payload.sub || typeof payload.role !== 'string') {
    throw new Error('Invalid token claims');
  }
  return {
    sub: payload.sub,
    role: payload.role as AccessTokenClaims['role'],
  };
}
