import * as ImagePicker from 'expo-image-picker';
import type { CreateUploadInput } from '@oriva/shared';
import { api } from '@/api/endpoints';
import { getApiUrl } from '@/api/client';
import { useAuthStore } from '@/stores/auth';

async function chooseAndUpload(
  purpose: CreateUploadInput['purpose'],
  options: { allowsEditing: boolean; aspect?: [number, number] },
): Promise<{ uploadId: string; url: string | null } | null> {
  const permission = await ImagePicker.requestMediaLibraryPermissionsAsync();
  if (!permission.granted)
    throw new Error('Photo access is required to select an image');
  const result = await ImagePicker.launchImageLibraryAsync({
    mediaTypes: ['images'],
    allowsEditing: options.allowsEditing,
    aspect: options.aspect,
    quality: 0.85,
  });
  if (result.canceled || !result.assets[0]) return null;
  const selected = result.assets[0];
  const contentType =
    selected.mimeType === 'image/png' ? 'image/png' : 'image/jpeg';
  const fileExtension = contentType === 'image/png' ? 'png' : 'jpg';
  const blob = await (await fetch(selected.uri)).blob();
  const upload = await api.createUpload({
    purpose,
    contentType,
    contentLength: blob.size,
    fileExtension,
  });
  const token = useAuthStore.getState().accessToken;
  const response = await fetch(`${getApiUrl()}${upload.uploadUrl}`, {
    method: 'PUT',
    headers: {
      Authorization: `Bearer ${token}`,
      'Content-Type': contentType,
      'Content-Length': String(blob.size),
      'X-Upload-Id': upload.uploadId,
    },
    body: blob,
  });
  if (!response.ok) throw new Error('Image upload failed');
  return api.completeUpload(upload.uploadId);
}

export async function chooseAndUploadAvatar(): Promise<string | null> {
  return (
    (await chooseAndUpload('avatar', { allowsEditing: true, aspect: [1, 1] }))
      ?.url ?? null
  );
}

export async function chooseAndUploadPaymentProof(): Promise<string | null> {
  return (
    (await chooseAndUpload('payment_proof', { allowsEditing: false }))
      ?.uploadId ?? null
  );
}
