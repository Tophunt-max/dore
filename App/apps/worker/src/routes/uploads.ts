import { Hono } from 'hono';
import { createUploadSchema } from '@oriva/shared';
import { fail, ok } from '../lib/http';
import type { AppEnv } from '../types';

interface UploadRow {
  id: string;
  user_id: string;
  purpose: string;
  object_key: string;
  content_type: string;
  expected_bytes: number;
  status: string;
  expires_at: number;
}
export const uploadRoutes = new Hono<AppEnv>();
const extensionByMime: Record<string, string[]> = {
  'image/jpeg': ['jpg', 'jpeg'],
  'image/png': ['png'],
  'image/webp': ['webp'],
};

uploadRoutes.post('/', async (c) => {
  const parsed = createUploadSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid upload request',
      parsed.error.flatten().fieldErrors,
    );
  if (
    !extensionByMime[parsed.data.contentType]?.includes(
      parsed.data.fileExtension,
    )
  )
    return fail(
      c,
      400,
      'FILE_TYPE_MISMATCH',
      'File extension does not match its MIME type',
    );
  if (
    ['product', 'campaign', 'prize', 'banner'].includes(parsed.data.purpose) &&
    c.get('userRole') !== 'admin'
  )
    return fail(
      c,
      403,
      'PRIVILEGED_UPLOAD_REQUIRED',
      'This upload purpose requires an administrator',
    );
  const id = crypto.randomUUID();
  const now = Math.floor(Date.now() / 1000);
  const objectKey = `${
    parsed.data.purpose === 'payment_proof'
      ? 'private/payment-proofs'
      : `users/${c.get('userId')}/${parsed.data.purpose}`
  }/${crypto.randomUUID()}.${parsed.data.fileExtension}`;
  await c.env.DB.prepare(
    `INSERT INTO uploads
     (id,user_id,purpose,object_key,content_type,expected_bytes,status,expires_at,created_at)
     VALUES(?,?,?,?,?,?,'pending',?,?)`,
  )
    .bind(
      id,
      c.get('userId'),
      parsed.data.purpose,
      objectKey,
      parsed.data.contentType,
      parsed.data.contentLength,
      now + 900,
      now,
    )
    .run();
  return ok(
    c,
    { uploadId: id, uploadUrl: `/api/v1/uploads/${id}/content`, objectKey },
    201,
  );
});

uploadRoutes.put('/:id/content', async (c) => {
  const upload = await getUpload(c, c.req.param('id'));
  if (!upload)
    return fail(c, 404, 'UPLOAD_NOT_FOUND', 'Upload session not found');
  const now = Math.floor(Date.now() / 1000);
  if (upload.status !== 'pending' || upload.expires_at < now)
    return fail(
      c,
      409,
      'UPLOAD_UNAVAILABLE',
      'Upload session is expired or already used',
    );
  const contentType = (c.req.header('Content-Type') ?? '')
    .split(';')[0]
    ?.trim();
  if (contentType !== upload.content_type)
    return fail(c, 400, 'CONTENT_TYPE_MISMATCH', 'Unexpected file type');
  const declaredLength = c.req.header('Content-Length');
  if (declaredLength && Number(declaredLength) !== upload.expected_bytes)
    return fail(c, 400, 'CONTENT_LENGTH_MISMATCH', 'Unexpected file size');
  const bytes = await readBoundedBody(c.req.raw.body, upload.expected_bytes);
  if (!bytes)
    return fail(
      c,
      400,
      'CONTENT_LENGTH_MISMATCH',
      'Actual file size exceeds the upload session',
    );
  if (!bytes.length)
    return fail(c, 400, 'EMPTY_UPLOAD', 'Upload body is empty');
  if (
    bytes.byteLength !== upload.expected_bytes ||
    bytes.byteLength > 10 * 1024 * 1024
  )
    return fail(
      c,
      400,
      'CONTENT_LENGTH_MISMATCH',
      'Actual file size does not match the upload session',
    );
  if (!matchesMagic(bytes, upload.content_type))
    return fail(
      c,
      400,
      'INVALID_FILE_SIGNATURE',
      'File content does not match the declared image type',
    );
  const bucket =
    upload.purpose === 'payment_proof'
      ? c.env.PAYMENT_PROOFS_BUCKET
      : c.env.ASSETS_BUCKET;
  await bucket.put(upload.object_key, bytes, {
    httpMetadata: {
      contentType: upload.content_type,
      cacheControl:
        upload.purpose === 'payment_proof'
          ? 'private, no-store'
          : 'public, max-age=31536000, immutable',
    },
    customMetadata: {
      userId: upload.user_id,
      purpose: upload.purpose,
      uploadId: upload.id,
      signatureChecked: 'true',
    },
  });
  await c.env.DB.prepare(
    `UPDATE uploads SET status='uploaded',actual_bytes=? WHERE id=? AND status='pending'`,
  )
    .bind(bytes.byteLength, upload.id)
    .run();
  return ok(c, { uploaded: true, actualBytes: bytes.byteLength });
});

uploadRoutes.post('/:id/complete', async (c) => {
  const upload = await getUpload(c, c.req.param('id'));
  if (!upload)
    return fail(c, 404, 'UPLOAD_NOT_FOUND', 'Upload session not found');
  if (upload.status === 'complete')
    return ok(c, {
      uploadId: upload.id,
      url:
        upload.purpose === 'payment_proof'
          ? null
          : `${c.env.PUBLIC_ASSET_BASE}/${upload.object_key}`,
    });
  if (upload.status !== 'uploaded')
    return fail(c, 409, 'UPLOAD_INCOMPLETE', 'File has not been uploaded');
  const bucket =
    upload.purpose === 'payment_proof'
      ? c.env.PAYMENT_PROOFS_BUCKET
      : c.env.ASSETS_BUCKET;
  const object = await bucket.head(upload.object_key);
  if (!object || object.size !== upload.expected_bytes)
    return fail(
      c,
      409,
      'UPLOAD_SIZE_MISMATCH',
      'Uploaded file could not be verified',
    );
  const now = Math.floor(Date.now() / 1000);
  const statements = [
    c.env.DB.prepare(
      `UPDATE uploads SET status='complete',completed_at=? WHERE id=? AND status='uploaded'`,
    ).bind(now, upload.id),
  ];
  if (upload.purpose === 'avatar')
    statements.push(
      c.env.DB.prepare(
        'UPDATE users SET avatar_key=?,updated_at=? WHERE id=?',
      ).bind(upload.object_key, now, upload.user_id),
    );
  await c.env.DB.batch(statements);
  return ok(c, {
    uploadId: upload.id,
    url:
      upload.purpose === 'payment_proof'
        ? null
        : `${c.env.PUBLIC_ASSET_BASE}/${upload.object_key}`,
  });
});

async function readBoundedBody(
  body: ReadableStream<Uint8Array> | null,
  maximumBytes: number,
) {
  if (!body) return new Uint8Array();
  const reader = body.getReader();
  const chunks: Uint8Array[] = [];
  let total = 0;
  while (true) {
    const { done, value } = await reader.read();
    if (done) break;
    if (!value) continue;
    total += value.byteLength;
    if (total > maximumBytes) {
      await reader.cancel('Upload exceeds declared size');
      return null;
    }
    chunks.push(value);
  }
  const output = new Uint8Array(total);
  let offset = 0;
  for (const chunk of chunks) {
    output.set(chunk, offset);
    offset += chunk.byteLength;
  }
  return output;
}

function matchesMagic(bytes: Uint8Array, contentType: string) {
  if (contentType === 'image/jpeg') return validJpeg(bytes);
  if (contentType === 'image/png') {
    if (
      bytes.length < 57 ||
      bytes[0] !== 0x89 ||
      bytes[1] !== 0x50 ||
      bytes[2] !== 0x4e ||
      bytes[3] !== 0x47 ||
      bytes[4] !== 0x0d ||
      bytes[5] !== 0x0a ||
      bytes[6] !== 0x1a ||
      bytes[7] !== 0x0a ||
      ascii(bytes, 12, 16) !== 'IHDR' ||
      ascii(bytes, bytes.length - 8, bytes.length - 4) !== 'IEND'
    )
      return false;
    return validDimensions(readU32Be(bytes, 16), readU32Be(bytes, 20));
  }
  if (contentType === 'image/webp') {
    if (
      bytes.length < 30 ||
      ascii(bytes, 0, 4) !== 'RIFF' ||
      ascii(bytes, 8, 12) !== 'WEBP' ||
      readU32Le(bytes, 4) !== bytes.length - 8 ||
      readU32Le(bytes, 16) > bytes.length - 20
    )
      return false;
    const chunk = ascii(bytes, 12, 16);
    if (chunk === 'VP8X')
      return validDimensions(
        1 + readU24Le(bytes, 24),
        1 + readU24Le(bytes, 27),
      );
    if (chunk === 'VP8L' && bytes[20] === 0x2f) {
      const width = 1 + ((bytes[21] ?? 0) | (((bytes[22] ?? 0) & 0x3f) << 8));
      const height =
        1 +
        (((bytes[22] ?? 0) >> 6) |
          ((bytes[23] ?? 0) << 2) |
          (((bytes[24] ?? 0) & 0x0f) << 10));
      return validDimensions(width, height);
    }
    if (
      chunk === 'VP8 ' &&
      bytes[23] === 0x9d &&
      bytes[24] === 0x01 &&
      bytes[25] === 0x2a
    )
      return validDimensions(
        ((bytes[26] ?? 0) | ((bytes[27] ?? 0) << 8)) & 0x3fff,
        ((bytes[28] ?? 0) | ((bytes[29] ?? 0) << 8)) & 0x3fff,
      );
    return false;
  }
  return false;
}
function validJpeg(bytes: Uint8Array) {
  if (
    bytes.length < 32 ||
    bytes[0] !== 0xff ||
    bytes[1] !== 0xd8 ||
    bytes.at(-2) !== 0xff ||
    bytes.at(-1) !== 0xd9
  )
    return false;
  let offset = 2;
  while (offset + 9 < bytes.length) {
    if (bytes[offset] !== 0xff) {
      offset += 1;
      continue;
    }
    const marker = bytes[offset + 1] ?? 0;
    if (marker === 0xd8 || marker === 0xd9 || marker === 0x01) {
      offset += 2;
      continue;
    }
    const length = ((bytes[offset + 2] ?? 0) << 8) | (bytes[offset + 3] ?? 0);
    if (length < 2 || offset + 2 + length > bytes.length) return false;
    if (
      [
        0xc0, 0xc1, 0xc2, 0xc3, 0xc5, 0xc6, 0xc7, 0xc9, 0xca, 0xcb, 0xcd, 0xce,
        0xcf,
      ].includes(marker)
    )
      return validDimensions(
        ((bytes[offset + 7] ?? 0) << 8) | (bytes[offset + 8] ?? 0),
        ((bytes[offset + 5] ?? 0) << 8) | (bytes[offset + 6] ?? 0),
      );
    offset += 2 + length;
  }
  return false;
}
const ascii = (bytes: Uint8Array, start: number, end: number) =>
  String.fromCharCode(...bytes.slice(start, end));
const readU32Be = (bytes: Uint8Array, offset: number) =>
  ((bytes[offset] ?? 0) * 0x1000000 +
    ((bytes[offset + 1] ?? 0) << 16) +
    ((bytes[offset + 2] ?? 0) << 8) +
    (bytes[offset + 3] ?? 0)) >>>
  0;
const readU32Le = (bytes: Uint8Array, offset: number) =>
  ((bytes[offset + 3] ?? 0) * 0x1000000 +
    ((bytes[offset + 2] ?? 0) << 16) +
    ((bytes[offset + 1] ?? 0) << 8) +
    (bytes[offset] ?? 0)) >>>
  0;
const readU24Le = (bytes: Uint8Array, offset: number) =>
  (bytes[offset] ?? 0) |
  ((bytes[offset + 1] ?? 0) << 8) |
  ((bytes[offset + 2] ?? 0) << 16);
const validDimensions = (width: number, height: number) =>
  width > 0 &&
  height > 0 &&
  width <= 12_000 &&
  height <= 12_000 &&
  width * height <= 40_000_000;
async function getUpload(c: Parameters<typeof ok>[0], id: string) {
  return c.env.DB.prepare(
    `SELECT id,user_id,purpose,object_key,content_type,expected_bytes,status,expires_at
     FROM uploads WHERE id=? AND user_id=?`,
  )
    .bind(id, c.get('userId'))
    .first<UploadRow>();
}
