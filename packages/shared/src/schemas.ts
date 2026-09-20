import { z } from 'zod';

export const phoneSchema = z
  .string()
  .trim()
  .regex(/^\+[1-9]\d{7,14}$/, 'Use E.164 format, for example +919876543210');

export const requestOtpSchema = z.object({ phone: phoneSchema });
export const verifyOtpSchema = z.object({
  phone: phoneSchema,
  code: z.string().regex(/^\d{6}$/, 'OTP must contain six digits'),
  deviceId: z.string().min(8).max(128),
  inviteCode: z.string().trim().min(4).max(32).optional(),
});
export const refreshSessionSchema = z.object({
  refreshToken: z.string().min(32),
  deviceId: z.string().min(8).max(128),
});

export const createOrderSchema = z.object({
  campaignId: z.string().uuid(),
  quantity: z.number().int().min(1).max(100),
  idempotencyKey: z.string().uuid(),
});

export const createPaymentSchema = z.object({
  orderId: z.string().uuid(),
  paymentMethodId: z.string().uuid(),
  idempotencyKey: z.string().uuid(),
});
export const createRechargeSchema = z.object({
  amountMinor: z.number().int().min(1000).max(10_000_000),
  paymentMethodId: z.string().uuid(),
  idempotencyKey: z.string().uuid(),
});
export const submitPaymentSchema = z.object({
  transactionReference: z
    .string()
    .trim()
    .min(6)
    .max(80)
    .regex(
      /^[A-Za-z0-9/_-]+$/,
      'Use only letters, numbers, slash, dash, or underscore',
    ),
  proofUploadId: z.string().uuid().nullable().optional(),
  idempotencyKey: z.string().uuid(),
});
export const rejectPaymentSchema = z.object({
  reason: z.string().trim().min(5).max(500),
});

export const paymentMethodInputSchema = z
  .object({
    type: z.enum(['bank', 'upi']),
    displayName: z.string().trim().min(2).max(80),
    instructions: z.string().trim().min(5).max(1000),
    accountName: z.string().trim().max(100).nullable().optional(),
    accountNumber: z.string().trim().max(40).nullable().optional(),
    bankName: z.string().trim().max(100).nullable().optional(),
    ifsc: z.string().trim().max(20).nullable().optional(),
    upiId: z.string().trim().max(100).nullable().optional(),
    qrImageKey: z.string().trim().max(500).nullable().optional(),
    currency: z.enum(['INR', 'USD']).default('INR'),
    enabled: z.boolean().default(true),
    sortOrder: z.number().int().min(0).max(1000).default(0),
  })
  .superRefine((value, context) => {
    if (value.type === 'upi' && !value.upiId) {
      context.addIssue({
        code: 'custom',
        path: ['upiId'],
        message: 'UPI ID is required',
      });
    }
    if (
      value.type === 'bank' &&
      (!value.accountName || !value.accountNumber || !value.ifsc)
    ) {
      context.addIssue({
        code: 'custom',
        path: ['accountNumber'],
        message: 'Bank account name, number, and IFSC are required',
      });
    }
  });

export const userAdminUpdateSchema = z.object({
  displayName: z.string().trim().min(2).max(80).nullable().optional(),
  email: z.string().email().nullable().optional(),
  role: z.enum(['user', 'support', 'finance', 'admin']).optional(),
  status: z.enum(['active', 'suspended', 'closed']).optional(),
});
export const productInputSchema = z.object({
  title: z.string().trim().min(2).max(160),
  description: z.string().trim().max(5000).default(''),
  imageKey: z.string().trim().max(500).nullable().optional(),
  retailPriceMinor: z.number().int().nonnegative(),
  currency: z.enum(['INR', 'USD']).default('INR'),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
});
export const campaignInputSchema = z.object({
  productId: z.string().uuid(),
  entryPriceMinor: z.number().int().positive(),
  totalEntries: z.number().int().positive().max(10_000_000),
  startsAt: z.number().int().positive(),
  endsAt: z.number().int().positive(),
  status: z.enum(['scheduled', 'active', 'cancelled']).default('scheduled'),
});
export const taskInputSchema = z.object({
  title: z.string().trim().min(2).max(120),
  description: z.string().trim().max(1000).default(''),
  period: z.enum(['once', 'daily', 'weekly', 'monthly']),
  eligibilityEvent: z.enum(['check_in', 'paid_order']).default('check_in'),
  rewardCoins: z.number().int().nonnegative().default(0),
  rewardMinor: z.number().int().nonnegative().default(0),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  sortOrder: z.number().int().min(0).max(1000).default(0),
});
export const contentInputSchema = z.object({
  slug: z
    .string()
    .trim()
    .min(2)
    .max(100)
    .regex(/^[a-z0-9-]+$/),
  title: z.string().trim().min(2).max(160),
  body: z.string().trim().min(1).max(100_000),
  locale: z.string().trim().min(2).max(10).default('en'),
  status: z.enum(['draft', 'published', 'archived']).default('draft'),
});
export const addressInputSchema = z.object({
  recipientName: z.string().trim().min(2).max(100),
  phone: phoneSchema,
  line1: z.string().trim().min(3).max(200),
  line2: z.string().trim().max(200).nullable().optional(),
  city: z.string().trim().min(2).max(100),
  region: z.string().trim().min(2).max(100),
  postalCode: z.string().trim().min(3).max(20),
  countryCode: z.string().trim().length(2).default('IN'),
  isDefault: z.boolean().default(false),
});

export const registerPushTokenSchema = z.object({
  token: z.string().min(20).max(512),
  platform: z.enum(['android', 'ios']),
  deviceId: z.string().min(8).max(128),
});
export const createUploadSchema = z.object({
  purpose: z.enum([
    'avatar',
    'product',
    'campaign',
    'prize',
    'banner',
    'support',
    'payment_proof',
  ]),
  contentType: z.enum(['image/jpeg', 'image/png', 'image/webp']),
  contentLength: z
    .number()
    .int()
    .positive()
    .max(10 * 1024 * 1024),
  fileExtension: z.enum(['jpg', 'jpeg', 'png', 'webp']),
});
export const paginationSchema = z.object({
  cursor: z.string().optional(),
  limit: z.coerce.number().int().min(1).max(100).default(20),
});

export type RequestOtpInput = z.infer<typeof requestOtpSchema>;
export type VerifyOtpInput = z.infer<typeof verifyOtpSchema>;
export type CreateOrderInput = z.infer<typeof createOrderSchema>;
export type CreatePaymentInput = z.infer<typeof createPaymentSchema>;
export type CreateRechargeInput = z.infer<typeof createRechargeSchema>;
export type SubmitPaymentInput = z.infer<typeof submitPaymentSchema>;
export type PaymentMethodInput = z.infer<typeof paymentMethodInputSchema>;
export type ProductInput = z.infer<typeof productInputSchema>;
export type CampaignInput = z.infer<typeof campaignInputSchema>;
export type TaskInput = z.infer<typeof taskInputSchema>;
export type ContentInput = z.infer<typeof contentInputSchema>;
export type AddressInput = z.infer<typeof addressInputSchema>;
export type CreateUploadInput = z.infer<typeof createUploadSchema>;

const beneficiaryCommon = {
  label: z.string().trim().min(2).max(80),
  isDefault: z.boolean().default(false),
};
export const payoutBeneficiaryInputSchema = z.discriminatedUnion('type', [
  z.object({
    ...beneficiaryCommon,
    type: z.literal('bank'),
    accountHolderName: z.string().trim().min(2).max(120),
    accountNumber: z
      .string()
      .trim()
      .regex(/^\d{6,34}$/),
    bankName: z.string().trim().min(2).max(120),
    ifsc: z
      .string()
      .trim()
      .toUpperCase()
      .regex(/^[A-Z]{4}0[A-Z0-9]{6}$/),
  }),
  z.object({
    ...beneficiaryCommon,
    type: z.literal('upi'),
    accountHolderName: z.string().trim().min(2).max(120).nullable().optional(),
    upiId: z
      .string()
      .trim()
      .toLowerCase()
      .regex(/^[a-z0-9._-]{2,256}@[a-z][a-z0-9.-]{1,63}$/),
  }),
]);
export const verifyBeneficiarySchema = z.discriminatedUnion('status', [
  z.object({ status: z.literal('verified') }),
  z.object({
    status: z.literal('rejected'),
    reason: z.string().trim().min(5).max(500),
  }),
]);
export const createWithdrawalSchema = z.object({
  amountMinor: z.number().int().positive().max(10_000_000),
  beneficiaryId: z.string().uuid(),
  idempotencyKey: z.string().uuid(),
});
export const withdrawalTransitionSchema = z.object({
  reason: z.string().trim().min(5).max(500).optional(),
  payoutReference: z.string().trim().min(4).max(120).optional(),
});
export const refundPaymentSchema = z.object({
  reason: z.string().trim().min(5).max(500),
  payoutReference: z.string().trim().min(4).max(120),
  idempotencyKey: z.string().uuid(),
});
export const createSupportTicketSchema = z.object({
  subject: z.string().trim().min(3).max(160),
  category: z.enum(['payment', 'withdrawal', 'campaign', 'account', 'other']),
  message: z.string().trim().min(1).max(10_000),
  attachmentUploadId: z.string().uuid().nullable().optional(),
});
export const supportMessageSchema = z.object({
  body: z.string().trim().min(1).max(10_000),
  attachmentUploadId: z.string().uuid().nullable().optional(),
});
export const supportTicketUpdateSchema = z.object({
  status: z
    .enum(['open', 'in_progress', 'waiting_on_user', 'resolved', 'closed'])
    .optional(),
  priority: z.enum(['low', 'normal', 'high', 'urgent']).optional(),
  assignedToUserId: z.string().uuid().nullable().optional(),
});
export const broadcastSchema = z.object({
  title: z.string().trim().min(2).max(120),
  body: z.string().trim().min(1).max(2000),
  audience: z.enum(['all', 'active_users']).default('active_users'),
});
export const notificationTemplateSchema = z.object({
  key: z
    .string()
    .trim()
    .min(2)
    .max(80)
    .regex(/^[a-z0-9._-]+$/),
  titleTemplate: z.string().trim().min(2).max(120),
  bodyTemplate: z.string().trim().min(1).max(2000),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
});
export const bannerInputSchema = z.object({
  title: z.string().trim().min(2).max(160),
  body: z.string().trim().max(2000).default(''),
  imageKey: z.string().trim().max(500).nullable().optional(),
  actionUrl: z.string().url().max(1000).nullable().optional(),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  startsAt: z.number().int().positive().nullable().optional(),
  endsAt: z.number().int().positive().nullable().optional(),
  sortOrder: z.number().int().min(0).max(1000).default(0),
});
export const categoryInputSchema = z.object({
  name: z.string().trim().min(1).max(80),
  slug: z
    .string()
    .trim()
    .min(1)
    .max(80)
    .regex(/^[a-z0-9-]+$/, 'Use lowercase letters, numbers, and hyphens'),
  imageKey: z.string().trim().max(500).nullable().optional(),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  sortOrder: z.number().int().min(0).max(1000).default(0),
});
export const financeOfferInputSchema = z.object({
  providerName: z.string().trim().min(2).max(120),
  title: z.string().trim().min(2).max(160),
  description: z.string().trim().min(1).max(5000),
  category: z.enum(['education', 'insurance', 'savings_information', 'other']),
  disclaimer: z.string().trim().min(10).max(5000),
  externalUrl: z.string().url().max(1000).nullable().optional(),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  sortOrder: z.number().int().min(0).max(1000).default(0),
});
export const gameDefinitionInputSchema = z.object({
  title: z.string().trim().min(2).max(160),
  description: z.string().trim().min(1).max(5000),
  rules: z.string().trim().min(1).max(5000),
  dailyPlayLimit: z.number().int().min(1).max(100),
  pointsPerPlay: z.number().int().min(0).max(1_000_000),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
});
export const membershipPlanInputSchema = z.object({
  name: z.string().trim().min(2).max(120),
  description: z.string().trim().min(1).max(5000),
  benefits: z.array(z.string().trim().min(1).max(300)).max(50),
  priceMinor: z.number().int().nonnegative().max(100_000_000),
  currency: z.enum(['INR', 'USD']).default('INR'),
  durationDays: z.number().int().min(1).max(3650),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
});
export const membershipGrantSchema = z.object({
  userId: z.string().uuid(),
  planId: z.string().uuid(),
  startsAt: z.number().int().positive().optional(),
});
export const discountOfferInputSchema = z.object({
  code: z
    .string()
    .trim()
    .toUpperCase()
    .regex(/^[A-Z0-9_-]{3,32}$/),
  title: z.string().trim().min(2).max(160),
  description: z.string().trim().max(2000).default(''),
  discountType: z.enum(['fixed', 'percentage']),
  value: z.number().int().positive(),
  maxDiscountMinor: z.number().int().positive().nullable().optional(),
  minimumOrderMinor: z.number().int().nonnegative().default(0),
  redemptionLimit: z.number().int().positive().nullable().optional(),
  perUserLimit: z.number().int().positive().max(100).default(1),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  startsAt: z.number().int().positive().nullable().optional(),
  endsAt: z.number().int().positive().nullable().optional(),
});
export const referralProgramInputSchema = z.object({
  name: z.string().trim().min(2).max(120),
  referrerRewardMinor: z.number().int().nonnegative().max(10_000_000),
  referredRewardMinor: z.number().int().nonnegative().max(10_000_000),
  referrerRewardCoins: z.number().int().nonnegative().max(10_000_000),
  referredRewardCoins: z.number().int().nonnegative().max(10_000_000),
  currency: z.enum(['INR']).default('INR'),
  status: z.enum(['draft', 'active', 'archived']).default('draft'),
  startsAt: z.number().int().positive().nullable().optional(),
  endsAt: z.number().int().positive().nullable().optional(),
});
export const reconciliationRunSchema = z.object({
  source: z.string().trim().min(2).max(80),
  statementReference: z.string().trim().min(2).max(160),
  notes: z.string().trim().max(2000).nullable().optional(),
});
export const reconciliationItemSchema = z.object({
  paymentId: z.string().uuid().nullable().optional(),
  externalReference: z.string().trim().min(2).max(160),
  amountMinor: z.number().int().positive(),
  currency: z.enum(['INR', 'USD']),
  status: z.enum([
    'matched',
    'missing_internal',
    'amount_mismatch',
    'duplicate',
  ]),
});

export type PayoutBeneficiaryInput = z.infer<
  typeof payoutBeneficiaryInputSchema
>;
export type CreateWithdrawalInput = z.infer<typeof createWithdrawalSchema>;
export type RefundPaymentInput = z.infer<typeof refundPaymentSchema>;
export type CreateSupportTicketInput = z.infer<
  typeof createSupportTicketSchema
>;
export type SupportMessageInput = z.infer<typeof supportMessageSchema>;

export const createSharePostSchema = z.object({
  prizeId: z.string().uuid().nullable().optional(),
  body: z.string().trim().min(12).max(280),
});
export type CreateSharePostInput = z.infer<typeof createSharePostSchema>;
