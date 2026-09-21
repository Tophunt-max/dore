export function token(): string {
  return localStorage.getItem('admin_token') || '';
}
