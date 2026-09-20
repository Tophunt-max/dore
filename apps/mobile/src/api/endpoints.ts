import type {
  Address,
  AddressInput,
  Banner,
  Campaign,
  CampaignDraw,
  CampaignHistoryItem,
  CampaignParticipant,
  Category,
  CoinSummary,
  ContentPage,
  CreateOrderInput,
  CreatePaymentInput,
  CreateRechargeInput,
  CreateSharePostInput,
  CreateSupportTicketInput,
  CreateUploadInput,
  DiscountOffer,
  AfterSalesRequest,
  FinanceOffer,
  FinanceOrder,
  GameDefinition,
  LedgerEntry,
  ManualPayment,
  Membership,
  MembershipPlan,
  PrizeActivity,
  SystemConfig,
  NotificationInboxItem,
  Order,
  PayoutBeneficiary,
  PayoutBeneficiaryInput,
  PaymentMethod,
  Prize,
  ReferralConsumer,
  ReferralRebate,
  ReferralSummary,
  RequestOtpInput,
  SharePost,
  SubmitPaymentInput,
  SupportMessage,
  SupportMessageInput,
  SupportTicket,
  TaskClaim,
  TaskDefinition,
  TeamMember,
  User,
  VerifyOtpInput,
  WalletSummary,
  Winner,
  Withdrawal,
} from '@oriva/shared';
import { apiRequest } from './client';

export interface SessionResponse {
  accessToken: string;
  refreshToken: string;
  user: User;
}

export const api = {
  requestOtp: (input: RequestOtpInput) =>
    apiRequest<{ expiresIn: number; resendAfter: number }>(
      '/api/v1/auth/otp/request',
      {
        method: 'POST',
        authenticated: false,
        body: input,
      },
    ),
  verifyOtp: (input: VerifyOtpInput) =>
    apiRequest<SessionResponse>('/api/v1/auth/otp/verify', {
      method: 'POST',
      authenticated: false,
      body: input,
    }),
  refresh: (refreshToken: string, deviceId: string) =>
    apiRequest<SessionResponse>('/api/v1/auth/refresh', {
      method: 'POST',
      authenticated: false,
      body: { refreshToken, deviceId },
    }),
  logout: (refreshToken: string) =>
    apiRequest<void>('/api/v1/auth/logout', {
      method: 'POST',
      body: { refreshToken },
    }),
  me: () => apiRequest<User>('/api/v1/users/me'),
  updateMe: (input: { displayName?: string; email?: string | null }) =>
    apiRequest<User | null>('/api/v1/users/me', {
      method: 'PATCH',
      body: input,
    }),

  campaigns: (category?: string) =>
    apiRequest<{ items: Campaign[] }>(
      category
        ? `/api/v1/campaigns?category=${encodeURIComponent(category)}`
        : '/api/v1/campaigns',
    ),
  campaign: (id: string) => apiRequest<Campaign>(`/api/v1/campaigns/${id}`),
  campaignParticipants: (id: string) =>
    apiRequest<{ items: CampaignParticipant[] }>(
      `/api/v1/campaigns/${id}/participants`,
    ),
  campaignHistory: (id: string) =>
    apiRequest<{ items: CampaignHistoryItem[] }>(
      `/api/v1/campaigns/${id}/history`,
    ),
  categories: () => apiRequest<{ items: Category[] }>('/api/v1/categories'),
  campaignDraw: (id: string) =>
    apiRequest<CampaignDraw>(`/api/v1/winners/draws/${id}`),
  createOrder: (input: CreateOrderInput) =>
    apiRequest<Order>('/api/v1/orders', { method: 'POST', body: input }),
  orders: () => apiRequest<{ items: Order[] }>('/api/v1/orders'),
  order: (id: string) => apiRequest<Order>(`/api/v1/orders/${id}`),
  winners: () => apiRequest<{ items: Winner[] }>('/api/v1/winners'),

  wallet: () => apiRequest<WalletSummary>('/api/v1/wallet'),
  ledger: () => apiRequest<{ items: LedgerEntry[] }>('/api/v1/wallet/ledger'),
  coins: () => apiRequest<CoinSummary>('/api/v1/coins'),
  paymentMethods: () =>
    apiRequest<{ items: PaymentMethod[] }>('/api/v1/payments/methods'),
  createPayment: (input: CreatePaymentInput) =>
    apiRequest<ManualPayment>('/api/v1/payments', {
      method: 'POST',
      body: input,
    }),
  createRecharge: (input: CreateRechargeInput) =>
    apiRequest<ManualPayment>('/api/v1/payments/recharge', {
      method: 'POST',
      body: input,
    }),
  payments: () => apiRequest<{ items: ManualPayment[] }>('/api/v1/payments'),
  payment: (id: string) => apiRequest<ManualPayment>(`/api/v1/payments/${id}`),
  submitPayment: (id: string, input: SubmitPaymentInput) =>
    apiRequest<ManualPayment | null>(`/api/v1/payments/${id}/submissions`, {
      method: 'POST',
      body: input,
    }),

  beneficiaries: () =>
    apiRequest<{ items: PayoutBeneficiary[] }>('/api/v1/payout-beneficiaries'),
  createBeneficiary: (input: PayoutBeneficiaryInput) =>
    apiRequest<PayoutBeneficiary>('/api/v1/payout-beneficiaries', {
      method: 'POST',
      body: input,
    }),
  updateBeneficiary: (id: string, input: PayoutBeneficiaryInput) =>
    apiRequest<PayoutBeneficiary>(`/api/v1/payout-beneficiaries/${id}`, {
      method: 'PUT',
      body: input,
    }),
  deleteBeneficiary: (id: string) =>
    apiRequest<{ deleted: boolean }>(`/api/v1/payout-beneficiaries/${id}`, {
      method: 'DELETE',
    }),
  requestWithdrawal: (
    amountMinor: number,
    beneficiaryId: string,
    idempotencyKey: string,
  ) =>
    apiRequest<Withdrawal>('/api/v1/withdrawals', {
      method: 'POST',
      body: { amountMinor, beneficiaryId, idempotencyKey },
    }),
  withdrawals: () => apiRequest<{ items: Withdrawal[] }>('/api/v1/withdrawals'),

  addresses: () => apiRequest<{ items: Address[] }>('/api/v1/addresses'),
  createAddress: (input: AddressInput) =>
    apiRequest<{ id: string }>('/api/v1/addresses', {
      method: 'POST',
      body: input,
    }),
  updateAddress: (id: string, input: Partial<AddressInput>) =>
    apiRequest<{ updated: boolean }>(`/api/v1/addresses/${id}`, {
      method: 'PATCH',
      body: input,
    }),
  deleteAddress: (id: string) =>
    apiRequest<{ deleted: boolean }>(`/api/v1/addresses/${id}`, {
      method: 'DELETE',
    }),

  tasks: () => apiRequest<{ items: TaskDefinition[] }>('/api/v1/tasks'),
  claimTask: (id: string) =>
    apiRequest<TaskClaim>(`/api/v1/tasks/${id}/claim`, { method: 'POST' }),
  content: (slug: string, locale = 'en') =>
    apiRequest<ContentPage>(
      `/api/v1/content/${encodeURIComponent(slug)}?locale=${encodeURIComponent(locale)}`,
    ),
  prizes: () => apiRequest<{ items: Prize[] }>('/api/v1/prizes'),
  claimPrize: (id: string, addressId: string) =>
    apiRequest<{ claimed: boolean }>(`/api/v1/prizes/${id}/claim`, {
      method: 'POST',
      body: { addressId },
    }),
  team: () => apiRequest<{ items: TeamMember[] }>('/api/v1/team'),
  teamSummary: () => apiRequest<ReferralSummary>('/api/v1/team/summary'),
  teamConsumption: () =>
    apiRequest<{ items: ReferralConsumer[] }>('/api/v1/team/consumption'),
  teamRebates: () =>
    apiRequest<{ items: ReferralRebate[] }>('/api/v1/team/rebates'),
  shares: () => apiRequest<{ items: SharePost[] }>('/api/v1/shares'),
  createShare: (input: CreateSharePostInput) =>
    apiRequest<{ id: string }>('/api/v1/shares', {
      method: 'POST',
      body: input,
    }),
  deleteShare: (id: string) =>
    apiRequest<{ removed: boolean }>(`/api/v1/shares/${id}`, {
      method: 'DELETE',
    }),

  notifications: () =>
    apiRequest<{ items: NotificationInboxItem[] }>('/api/v1/notifications'),
  readNotification: (id: string) =>
    apiRequest<{ read: boolean }>(`/api/v1/notifications/${id}/read`, {
      method: 'POST',
    }),
  readAllNotifications: () =>
    apiRequest<{ updated: boolean }>('/api/v1/notifications/read-all', {
      method: 'POST',
    }),
  registerPushToken: (input: {
    token: string;
    platform: 'android' | 'ios';
    deviceId: string;
  }) =>
    apiRequest<void>('/api/v1/push/devices', { method: 'POST', body: input }),

  supportTickets: () =>
    apiRequest<{ items: SupportTicket[] }>('/api/v1/support/tickets'),
  supportTicket: (id: string) =>
    apiRequest<SupportTicket & { messages: SupportMessage[] }>(
      `/api/v1/support/tickets/${id}`,
    ),
  createSupportTicket: (input: CreateSupportTicketInput) =>
    apiRequest<{ id: string }>('/api/v1/support/tickets', {
      method: 'POST',
      body: input,
    }),
  replySupportTicket: (id: string, input: SupportMessageInput) =>
    apiRequest<{ created: boolean }>(`/api/v1/support/tickets/${id}/messages`, {
      method: 'POST',
      body: input,
    }),

  banners: () => apiRequest<{ items: Banner[] }>('/api/v1/banners'),
  financeOffers: () =>
    apiRequest<{ informationalOnly: true; items: FinanceOffer[] }>(
      '/api/v1/finance/offers',
    ),
  financeBuy: (offerId: string, principalMinor: number) =>
    apiRequest<{ status: string; orderId: string }>(
      `/api/v1/finance/offers/${offerId}/purchase`,
      { method: 'POST', body: { principalMinor } },
    ),
  financeOrders: () =>
    apiRequest<{ informationalReturns: true; items: FinanceOrder[] }>(
      '/api/v1/finance/orders',
    ),
  financeOrdersRecent: () =>
    apiRequest<{ items: FinanceOrder[] }>('/api/v1/finance/orders/recent'),
  financeOffer: (id: string) =>
    apiRequest<FinanceOffer & { participants: number; totalPrincipalMinor: number }>(
      `/api/v1/finance/offers/${id}`,
    ),
  financeOfferHistory: (id: string) =>
    apiRequest<{ items: unknown[] }>(`/api/v1/finance/offers/${id}/history`),
  prizeActivities: () =>
    apiRequest<{ items: PrizeActivity[] }>('/api/v1/prize-activities'),
  prizeActivity: (id: string) =>
    apiRequest<PrizeActivity & { participants: unknown[] }>(
      `/api/v1/prize-activities/${id}`,
    ),
  joinPrizeActivity: (id: string) =>
    apiRequest<{ joined: boolean }>(`/api/v1/prize-activities/${id}/join`, {
      method: 'POST',
    }),
  systemConfig: () => apiRequest<SystemConfig>('/api/v1/system'),
  afterSales: () =>
    apiRequest<{ items: AfterSalesRequest[] }>('/api/v1/after-sales'),
  createAfterSales: (input: {
    orderId: string;
    type: string;
    reason: string;
  }) =>
    apiRequest<{ id: string; status: string }>('/api/v1/after-sales', {
      method: 'POST',
      body: input,
    }),
  games: () =>
    apiRequest<{ nonMonetary: true; items: GameDefinition[] }>('/api/v1/games'),
  playGame: (id: string) =>
    apiRequest<{ sequence: number; pointsAwarded: number; monetaryValue: 0 }>(
      `/api/v1/games/${id}/play`,
      { method: 'POST' },
    ),
  membershipPlans: () =>
    apiRequest<{ items: MembershipPlan[] }>('/api/v1/memberships/plans'),
  memberships: () => apiRequest<{ items: Membership[] }>('/api/v1/memberships'),
  buyMembership: (planId: string) =>
    apiRequest<{ status: string; membershipId: string }>(
      '/api/v1/memberships/purchase',
      { method: 'POST', body: { planId } },
    ),
  discounts: () => apiRequest<{ items: DiscountOffer[] }>('/api/v1/discounts'),

  createUpload: (input: CreateUploadInput) =>
    apiRequest<{ uploadId: string; uploadUrl: string; objectKey: string }>(
      '/api/v1/uploads',
      {
        method: 'POST',
        body: input,
      },
    ),
  completeUpload: (uploadId: string) =>
    apiRequest<{ uploadId: string; url: string | null }>(
      `/api/v1/uploads/${uploadId}/complete`,
      { method: 'POST' },
    ),
};
