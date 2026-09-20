import * as SecureStore from 'expo-secure-store';
import { useEffect } from 'react';
import { create } from 'zustand';

export type Locale = 'en' | 'hi' | 'zh';
const LOCALE_KEY = 'oriva_locale';

type LocalizedText = Record<Locale, string>;

/**
 * Keeping every locale beside its English source makes missing translations a
 * type error instead of silently falling back to English.
 */
export const catalog = {
  'nav.home': { en: 'Home', hi: 'होम', zh: '首页' },
  'nav.winners': { en: 'Winners', hi: 'विजेता', zh: '获奖者' },
  'nav.member': { en: 'Benefits', hi: 'लाभ', zh: '权益' },
  'nav.tasks': { en: 'Tasks', hi: 'कार्य', zh: '任务' },
  'nav.account': { en: 'Account', hi: 'खाता', zh: '账户' },
  'common.loading': { en: 'Loading…', hi: 'लोड हो रहा है…', zh: '加载中…' },
  'common.retry': { en: 'Try again', hi: 'फिर कोशिश करें', zh: '重试' },
  'common.refresh': { en: 'Refresh', hi: 'रीफ़्रेश करें', zh: '刷新' },
  'common.continue': { en: 'Continue', hi: 'जारी रखें', zh: '继续' },
  'common.cancel': { en: 'Cancel', hi: 'रद्द करें', zh: '取消' },
  'common.remove': { en: 'Remove', hi: 'हटाएँ', zh: '移除' },
  'common.default': { en: 'Default', hi: 'डिफ़ॉल्ट', zh: '默认' },
  'common.error': {
    en: 'Something went wrong',
    hi: 'कुछ गलत हो गया',
    zh: '出现错误',
  },
  'common.empty': {
    en: 'Nothing here yet',
    hi: 'अभी यहाँ कुछ नहीं है',
    zh: '这里暂时没有内容',
  },
  'common.emptyCopy': {
    en: 'New activity will appear here.',
    hi: 'नई गतिविधि यहाँ दिखाई देगी।',
    zh: '新活动将显示在这里。',
  },
  'common.pleaseTryAgain': {
    en: 'Please try again.',
    hi: 'कृपया फिर कोशिश करें।',
    zh: '请重试。',
  },
  'common.pleaseWait': {
    en: 'Please wait…',
    hi: 'कृपया प्रतीक्षा करें…',
    zh: '请稍候…',
  },
  'common.selected': { en: 'Selected', hi: 'चयनित', zh: '已选择' },
  'common.verified': { en: 'Verified', hi: 'सत्यापित', zh: '已验证' },
  'common.invite': { en: 'Invite', hi: 'आमंत्रित करें', zh: '邀请' },
  'common.share': { en: 'Share', hi: 'साझा करें', zh: '分享' },
  'auth.login': { en: 'Login', hi: 'लॉग इन', zh: '登录' },
  'auth.welcome': {
    en: 'Welcome to Oriva',
    hi: 'Oriva में आपका स्वागत है',
    zh: '欢迎使用 Oriva',
  },
  'auth.mobilePrompt': {
    en: 'Enter your mobile number to continue',
    hi: 'जारी रखने के लिए मोबाइल नंबर दर्ज करें',
    zh: '输入手机号以继续',
  },
  'auth.mobile': { en: 'Mobile number', hi: 'मोबाइल नंबर', zh: '手机号' },
  'auth.sendOtp': { en: 'Send OTP', hi: 'OTP भेजें', zh: '发送验证码' },
  'auth.terms': {
    en: 'By continuing, you agree to the applicable terms and conditions.',
    hi: 'जारी रखकर, आप लागू नियमों और शर्तों से सहमत होते हैं।',
    zh: '继续即表示您同意适用的条款和条件。',
  },
  'auth.verify': {
    en: 'Verify OTP',
    hi: 'OTP सत्यापित करें',
    zh: '验证验证码',
  },
  'auth.code': { en: 'Verification code', hi: 'सत्यापन कोड', zh: '验证码' },
  'auth.codeLabel': { en: 'OTP', hi: 'OTP', zh: '验证码' },
  'auth.invalidCode': {
    en: 'Enter the six-digit OTP',
    hi: 'छह अंकों का OTP दर्ज करें',
    zh: '请输入六位验证码',
  },
  'auth.codePrompt': {
    en: 'Enter the OTP sent to {phone}',
    hi: '{phone} पर भेजा OTP दर्ज करें',
    zh: '输入发送至 {phone} 的验证码',
  },
  'auth.invite': {
    en: 'Invitation code (optional)',
    hi: 'आमंत्रण कोड (वैकल्पिक)',
    zh: '邀请码（可选）',
  },
  'auth.submit': { en: 'Submit', hi: 'जमा करें', zh: '提交' },
  'account.title': { en: 'Account', hi: 'खाता', zh: '账户' },
  'account.welcome': {
    en: 'Welcome to Oriva',
    hi: 'Oriva में आपका स्वागत है',
    zh: '欢迎使用 Oriva',
  },
  'account.signInPrompt': {
    en: 'Sign in to personalise your account',
    hi: 'अपने खाते को व्यक्तिगत बनाने के लिए साइन इन करें',
    zh: '登录以个性化您的账户',
  },
  'account.wallet': { en: 'Wallet balance', hi: 'वॉलेट शेष', zh: '钱包余额' },
  'account.recharge': { en: 'Recharge', hi: 'रिचार्ज', zh: '充值' },
  'account.withdraw': { en: 'Withdraw', hi: 'निकासी', zh: '提现' },
  'account.activity': { en: 'My activity', hi: 'मेरी गतिविधि', zh: '我的活动' },
  'account.orders': { en: 'My orders', hi: 'मेरे ऑर्डर', zh: '我的订单' },
  'account.prizes': { en: 'My prizes', hi: 'मेरे पुरस्कार', zh: '我的奖品' },
  'account.shares': {
    en: 'My shares',
    hi: 'मेरी साझा कहानियाँ',
    zh: '我的分享',
  },
  'account.team': { en: 'My team', hi: 'मेरी टीम', zh: '我的团队' },
  'account.addresses': {
    en: 'Delivery addresses',
    hi: 'डिलीवरी पते',
    zh: '收货地址',
  },
  'account.payments': {
    en: 'Payment records',
    hi: 'भुगतान रिकॉर्ड',
    zh: '付款记录',
  },
  'account.methods': {
    en: 'Payment methods',
    hi: 'भुगतान विधियाँ',
    zh: '付款方式',
  },
  'account.funding': {
    en: 'Funding records',
    hi: 'धन रिकॉर्ड',
    zh: '资金记录',
  },
  'account.support': {
    en: 'Customer service',
    hi: 'ग्राहक सेवा',
    zh: '客户服务',
  },
  'account.settings': { en: 'Settings', hi: 'सेटिंग्स', zh: '设置' },
  'account.about': {
    en: 'About Oriva',
    hi: 'Oriva के बारे में',
    zh: '关于 Oriva',
  },
  'settings.title': { en: 'Settings', hi: 'सेटिंग्स', zh: '设置' },
  'settings.profile': { en: 'Profile', hi: 'प्रोफ़ाइल', zh: '个人资料' },
  'settings.preferences': {
    en: 'Preferences',
    hi: 'प्राथमिकताएँ',
    zh: '偏好设置',
  },
  'settings.information': { en: 'Information', hi: 'जानकारी', zh: '信息' },
  'settings.language': { en: 'Language', hi: 'भाषा', zh: '语言' },
  'settings.languageHint': {
    en: 'Choose app language',
    hi: 'ऐप की भाषा चुनें',
    zh: '选择应用语言',
  },
  'settings.notifications': {
    en: 'Enable notifications',
    hi: 'सूचनाएँ सक्षम करें',
    zh: '启用通知',
  },
  'settings.notificationsEnabled': {
    en: 'Notifications enabled',
    hi: 'सूचनाएँ सक्षम हो गईं',
    zh: '通知已启用',
  },
  'settings.logout': { en: 'Log out', hi: 'लॉग आउट', zh: '退出登录' },
  'settings.signin': {
    en: 'Sign in to Oriva',
    hi: 'Oriva में साइन इन करें',
    zh: '登录 Oriva',
  },
  'settings.displayName': {
    en: 'Display name',
    hi: 'प्रदर्शित नाम',
    zh: '显示名称',
  },
  'settings.profilePhoto': {
    en: 'Profile photo',
    hi: 'प्रोफ़ाइल फ़ोटो',
    zh: '头像',
  },
  'settings.campaignRules': {
    en: 'Campaign rules',
    hi: 'अभियान नियम',
    zh: '活动规则',
  },
  'settings.helpCentre': {
    en: 'Help centre',
    hi: 'सहायता केंद्र',
    zh: '帮助中心',
  },
  'language.en': { en: 'English', hi: 'अंग्रेज़ी', zh: '英语' },
  'language.hi': { en: 'हिन्दी', hi: 'हिन्दी', zh: '印地语' },
  'language.zh': { en: '中文', hi: 'चीनी', zh: '中文' },
  'payment.methods': {
    en: 'Payment methods',
    hi: 'भुगतान विधियाँ',
    zh: '付款方式',
  },
  'payment.records': {
    en: 'Payment records',
    hi: 'भुगतान रिकॉर्ड',
    zh: '付款记录',
  },
  'payment.status': {
    en: 'Payment status',
    hi: 'भुगतान स्थिति',
    zh: '付款状态',
  },
  'payment.none': { en: 'No payments', hi: 'कोई भुगतान नहीं', zh: '暂无付款' },
  'payment.noneCopy': {
    en: 'Manual payment submissions will appear here.',
    hi: 'मैन्युअल भुगतान जमा यहाँ दिखाई देंगे।',
    zh: '手动付款提交将显示在这里。',
  },
  'payment.noMethods': {
    en: 'No methods available',
    hi: 'कोई विधि उपलब्ध नहीं',
    zh: '暂无可用方式',
  },
  'payment.noMethodsCopy': {
    en: 'Bank or UPI transfer details will appear when available.',
    hi: 'उपलब्ध होने पर बैंक या UPI ट्रांसफ़र विवरण दिखाई देंगे।',
    zh: '可用时将显示银行或 UPI 转账详情。',
  },
  'payment.loadingMethods': {
    en: 'Loading payment methods…',
    hi: 'भुगतान विधियाँ लोड हो रही हैं…',
    zh: '正在加载支付方式…',
  },
  'payment.methodsError': {
    en: 'Could not load payment methods. Please check your connection and try again.',
    hi: 'भुगतान विधियाँ लोड नहीं हो सकीं। कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।',
    zh: '无法加载支付方式，请检查网络后重试。',
  },
  'payment.loginRequired': {
    en: 'Please log in to recharge your wallet and view payment methods.',
    hi: 'वॉलेट रिचार्ज करने और भुगतान विधियाँ देखने के लिए कृपया लॉग इन करें।',
    zh: '请登录以充值钱包并查看支付方式。',
  },
  'payment.recharge': {
    en: 'Wallet recharge',
    hi: 'वॉलेट रिचार्ज',
    zh: '钱包充值',
  },
  'payment.order': { en: 'Order payment', hi: 'ऑर्डर भुगतान', zh: '订单付款' },
  'payment.reference': { en: 'Reference', hi: 'संदर्भ', zh: '参考号' },
  'payment.pending': {
    en: 'Administrator review pending',
    hi: 'प्रशासक समीक्षा लंबित',
    zh: '等待管理员审核',
  },
  'payment.pendingCopy': {
    en: 'No balance or order status changes until an authorized administrator approves this payment.',
    hi: 'अधिकृत प्रशासक द्वारा भुगतान स्वीकृत होने तक शेष राशि या ऑर्डर स्थिति नहीं बदलेगी।',
    zh: '在授权管理员批准此付款之前，余额或订单状态不会改变。',
  },
  'payment.submit': {
    en: 'Submit for review',
    hi: 'समीक्षा के लिए जमा करें',
    zh: '提交审核',
  },
  'payment.chooseMethod': {
    en: 'Choose manual payment method',
    hi: 'मैन्युअल भुगतान विधि चुनें',
    zh: '选择手动付款方式',
  },
  'payment.transferInstructions': {
    en: 'Transfer the exact amount, then submit the transaction reference for administrator verification.',
    hi: 'सटीक राशि ट्रांसफ़र करें, फिर प्रशासक सत्यापन के लिए लेन-देन संदर्भ जमा करें।',
    zh: '转账准确金额，然后提交交易参考号供管理员验证。',
  },
  'payment.showDetails': {
    en: 'Show transfer details',
    hi: 'ट्रांसफ़र विवरण दिखाएँ',
    zh: '显示转账详情',
  },
  'payment.transferExact': {
    en: 'Transfer exact amount',
    hi: 'सटीक राशि ट्रांसफ़र करें',
    zh: '转账准确金额',
  },
  'payment.upiId': { en: 'UPI ID', hi: 'UPI आईडी', zh: 'UPI ID' },
  'payment.accountName': { en: 'Account name', hi: 'खाता नाम', zh: '账户名称' },
  'payment.accountNumber': {
    en: 'Account number',
    hi: 'खाता संख्या',
    zh: '账号',
  },
  'payment.bank': { en: 'Bank', hi: 'बैंक', zh: '银行' },
  'payment.bankName': { en: 'Bank name', hi: 'बैंक का नाम', zh: '银行名称' },
  'payment.ifsc': { en: 'IFSC', hi: 'IFSC', zh: 'IFSC' },
  'payment.transactionReference': {
    en: 'UTR / transaction reference',
    hi: 'UTR / लेन-देन संदर्भ',
    zh: 'UTR / 交易参考号',
  },
  'payment.bankReference': {
    en: 'UTR / bank reference',
    hi: 'UTR / बैंक संदर्भ',
    zh: 'UTR / 银行参考号',
  },
  'payment.enterReference': {
    en: 'Enter transaction reference',
    hi: 'लेन-देन संदर्भ दर्ज करें',
    zh: '输入交易参考号',
  },
  'payment.invalidReference': {
    en: 'Enter a valid transaction reference',
    hi: 'मान्य लेन-देन संदर्भ दर्ज करें',
    zh: '请输入有效的交易参考号',
  },
  'payment.invalidUtr': {
    en: 'Enter a valid UTR or bank transaction reference',
    hi: 'मान्य UTR या बैंक लेन-देन संदर्भ दर्ज करें',
    zh: '请输入有效的 UTR 或银行交易参考号',
  },
  'payment.proofAttached': {
    en: '✓ Payment proof attached',
    hi: '✓ भुगतान प्रमाण संलग्न है',
    zh: '✓ 已附付款凭证',
  },
  'payment.attachProof': {
    en: '+ Attach payment screenshot (optional)',
    hi: '+ भुगतान स्क्रीनशॉट संलग्न करें (वैकल्पिक)',
    zh: '+ 附上付款截图（可选）',
  },
  'payment.shortProofAttached': {
    en: '✓ Proof attached',
    hi: '✓ प्रमाण संलग्न है',
    zh: '✓ 已附凭证',
  },
  'payment.attachScreenshot': {
    en: '+ Attach screenshot (optional)',
    hi: '+ स्क्रीनशॉट संलग्न करें (वैकल्पिक)',
    zh: '+ 附上截图（可选）',
  },
  'payment.verificationNotice': {
    en: 'Money is credited or the order is marked paid only after an authorized administrator verifies the reference.',
    hi: 'अधिकृत प्रशासक द्वारा संदर्भ सत्यापित किए जाने के बाद ही राशि जमा होती है या ऑर्डर को भुगतान किया हुआ माना जाता है।',
    zh: '只有授权管理员验证参考号后，资金才会入账或订单才会标记为已付款。',
  },
  'payment.uploadFailed': {
    en: 'Upload failed',
    hi: 'अपलोड विफल',
    zh: '上传失败',
  },
  'payment.unableUploadProof': {
    en: 'Unable to upload proof',
    hi: 'प्रमाण अपलोड नहीं हो सका',
    zh: '无法上传凭证',
  },
  'payment.submissionFailed': {
    en: 'Submission failed',
    hi: 'जमा करना विफल',
    zh: '提交失败',
  },
  'payment.unableSubmit': {
    en: 'Unable to submit',
    hi: 'जमा नहीं हो सका',
    zh: '无法提交',
  },
  'payment.unableCreate': {
    en: 'Unable to create payment',
    hi: 'भुगतान नहीं बनाया जा सका',
    zh: '无法创建付款',
  },
  'payment.unableSubmitPayment': {
    en: 'Unable to submit payment',
    hi: 'भुगतान जमा नहीं हो सका',
    zh: '无法提交付款',
  },
  'payment.submitVerification': {
    en: 'Submit for verification',
    hi: 'सत्यापन के लिए जमा करें',
    zh: '提交验证',
  },
  'payment.submitNewReference': {
    en: 'Submit a new reference',
    hi: 'नया संदर्भ जमा करें',
    zh: '提交新的参考号',
  },
  'payment.submitYourReference': {
    en: 'Submit your reference',
    hi: 'अपना संदर्भ जमा करें',
    zh: '提交您的参考号',
  },
  'home.welcome': { en: 'Welcome to', hi: 'स्वागत है', zh: '欢迎来到' },
  'home.activePool': {
    en: 'Active prize pool',
    hi: 'सक्रिय पुरस्कार पूल',
    zh: '当前奖池',
  },
  'home.poolInfo': {
    en: 'Informational total from active campaign entries',
    hi: 'सक्रिय अभियान प्रविष्टियों का सूचनात्मक कुल',
    zh: '当前活动参与金额的信息汇总',
  },
  'home.latestWinners': {
    en: 'Latest winners',
    hi: 'नवीनतम विजेता',
    zh: '最新获奖者',
  },
  'home.campaigns': {
    en: 'Active campaigns',
    hi: 'सक्रिय अभियान',
    zh: '进行中的活动',
  },
  'home.noCampaigns': {
    en: 'No active campaigns right now.',
    hi: 'अभी कोई सक्रिय अभियान नहीं है।',
    zh: '目前没有进行中的活动。',
  },
  'home.noWinners': {
    en: 'No winner announcements yet.',
    hi: 'अभी कोई विजेता घोषणा नहीं है।',
    zh: '暂时没有获奖公告。',
  },
  'home.seeAll': { en: 'See all', hi: 'सभी देखें', zh: '查看全部' },
  'pool.winnersPublished': {
    en: '{count} winners published.',
    hi: '{count} विजेता प्रकाशित।',
    zh: '已公布 {count} 位获奖者。',
  },
  'pool.entriesProgress': {
    en: '{sold} / {total} entries · {progress}%',
    hi: '{sold} / {total} प्रविष्टियाँ · {progress}%',
    zh: '{sold} / {total} 个参与名额 · {progress}%',
  },
  'catalog.title': {
    en: 'Explore campaigns',
    hi: 'अभियान देखें',
    zh: '浏览活动',
  },
  'catalog.active': { en: 'Active', hi: 'सक्रिय', zh: '进行中' },
  'catalog.scheduled': {
    en: 'Starting soon',
    hi: 'जल्द शुरू होगा',
    zh: '即将开始',
  },
  'catalog.empty': {
    en: 'No campaigns in this section.',
    hi: 'इस अनुभाग में कोई अभियान नहीं है।',
    zh: '此版块暂无活动。',
  },
  'catalog.entry': {
    en: 'per entry',
    hi: 'प्रति प्रविष्टि',
    zh: '每个参与名额',
  },
  'catalog.needed': {
    en: 'Remaining: {count}',
    hi: 'शेष: {count}',
    zh: '剩余：{count}',
  },
  'catalog.join': { en: 'View', hi: 'देखें', zh: '查看' },
  'campaign.title': {
    en: 'Campaign details',
    hi: 'अभियान विवरण',
    zh: '活动详情',
  },
  'campaign.entries': {
    en: '{count} entries confirmed',
    hi: '{count} प्रविष्टियाँ पक्की',
    zh: '已确认 {count} 个参与名额',
  },
  'campaign.remaining': {
    en: '{count} remaining',
    hi: '{count} शेष',
    zh: '剩余 {count}',
  },
  'campaign.select': {
    en: 'Select entries',
    hi: 'प्रविष्टियाँ चुनें',
    zh: '选择参与数量',
  },
  'campaign.join': {
    en: 'Continue · {amount}',
    hi: 'जारी रखें · {amount}',
    zh: '继续 · {amount}',
  },
  'campaign.unavailable': {
    en: 'This campaign is not currently open.',
    hi: 'यह अभियान अभी खुला नहीं है।',
    zh: '此活动目前未开放。',
  },
  'campaign.endIn': {
    en: 'End in {time}',
    hi: 'समाप्ति {time}',
    zh: '{time} 后结束',
  },
  'campaign.peopleParticipating': {
    en: '{count} people are participating',
    hi: '{count} लोग भाग ले रहे हैं',
    zh: '{count} 人正在参与',
  },
  'campaign.total': {
    en: 'Total',
    hi: 'कुल',
    zh: '总数',
  },
  'campaign.needed': {
    en: 'Needed',
    hi: 'आवश्यक',
    zh: '还需',
  },
  'campaign.buyNow': {
    en: 'Buy',
    hi: 'खरीदें',
    zh: '购买',
  },
  'campaign.insufficient': {
    en: 'Insufficient wallet balance. Please recharge to continue.',
    hi: 'वॉलेट बैलेंस कम है। जारी रखने के लिए रिचार्ज करें।',
    zh: '钱包余额不足，请充值后继续。',
  },
  'winners.title': {
    en: 'Latest winners',
    hi: 'नवीनतम विजेता',
    zh: '最新获奖者',
  },
  'winners.subtitle': {
    en: 'Published campaign results',
    hi: 'प्रकाशित अभियान परिणाम',
    zh: '已公布的活动结果',
  },
  'winners.announced': {
    en: 'Announced {date}',
    hi: '{date} को घोषित',
    zh: '公布于 {date}',
  },
  'winners.result': { en: 'Result', hi: 'परिणाम', zh: '结果' },
  'about.title': {
    en: 'Everyday rewards, thoughtfully presented',
    hi: 'रोज़मर्रा के पुरस्कार, सोच-समझकर प्रस्तुत',
    zh: '用心呈现日常奖励',
  },
  'about.body': {
    en: 'Oriva brings campaigns, account tasks, results and physical prize claims into one place. Information shown in the app comes from current services where available.',
    hi: 'Oriva अभियान, खाता कार्य, परिणाम और भौतिक पुरस्कार दावों को एक जगह लाता है। उपलब्ध होने पर ऐप में दिखाई गई जानकारी वर्तमान सेवाओं से आती है।',
    zh: 'Oriva 将活动、账户任务、结果和实物奖品申领集中在一处。应用中显示的信息在可用时来自当前服务。',
  },
  'draw.title': { en: 'Draw verification', hi: 'ड्रा सत्यापन', zh: '抽取验证' },
  'draw.kicker': {
    en: 'COMMITMENT / REVEAL',
    hi: 'प्रतिबद्धता / खुलासा',
    zh: '承诺 / 公开',
  },
  'draw.heroTitle': {
    en: 'Every published draw can be checked',
    hi: 'हर प्रकाशित ड्रा की जाँच की जा सकती है',
    zh: '每次已公布的抽取均可核验',
  },
  'draw.heroCopy': {
    en: 'The server commits to a secret seed and an immutable paid-entry snapshot before execution. The seed is revealed only when the result is published.',
    hi: 'सर्वर निष्पादन से पहले एक गुप्त सीड और अपरिवर्तनीय भुगतान-प्रविष्टि स्नैपशॉट की प्रतिबद्धता देता है। परिणाम प्रकाशित होने पर ही सीड बताया जाता है।',
    zh: '服务器在执行前承诺一个秘密种子和不可更改的已付款参与快照。仅在结果公布时公开种子。',
  },
  'draw.openFromWinner': {
    en: 'Open this screen from a published winner to inspect its draw.',
    hi: 'ड्रा देखने के लिए प्रकाशित विजेता से यह स्क्रीन खोलें।',
    zh: '请从已公布的获奖者页面打开此屏幕以查看抽取。',
  },
  'draw.proof': { en: 'Draw proof', hi: 'ड्रा प्रमाण', zh: '抽取证明' },
  'draw.algorithm': { en: 'Algorithm', hi: 'एल्गोरिदम', zh: '算法' },
  'draw.eligibleEntries': {
    en: 'Eligible entries',
    hi: 'योग्य प्रविष्टियाँ',
    zh: '符合条件的参与名额',
  },
  'draw.seedCommitment': {
    en: 'Seed commitment',
    hi: 'सीड प्रतिबद्धता',
    zh: '种子承诺',
  },
  'draw.entrySnapshot': {
    en: 'Entry snapshot',
    hi: 'प्रविष्टि स्नैपशॉट',
    zh: '参与快照',
  },
  'draw.winningIndex': {
    en: 'Winning index',
    hi: 'विजेता सूचकांक',
    zh: '获奖索引',
  },
  'draw.winningEntry': {
    en: 'Winning entry',
    hi: 'विजेता प्रविष्टि',
    zh: '获奖参与名额',
  },
  'draw.revealedSeed': {
    en: 'Revealed seed',
    hi: 'प्रकट सीड',
    zh: '已公开种子',
  },
  'draw.seedHidden': {
    en: 'The committed seed remains hidden until execution.',
    hi: 'निष्पादन तक प्रतिबद्ध सीड छिपा रहता है।',
    zh: '承诺的种子在执行前保持隐藏。',
  },
  'discount.title': { en: 'Discounts', hi: 'छूट', zh: '优惠' },
  'discount.off': { en: 'OFF', hi: 'छूट', zh: '优惠' },
  'discount.available': { en: 'Available', hi: 'उपलब्ध', zh: '可用' },
  'discount.ends': {
    en: 'Ends {date}',
    hi: '{date} को समाप्त',
    zh: '截止于 {date}',
  },
  'discount.noEndDate': {
    en: 'No published end date',
    hi: 'कोई प्रकाशित समाप्ति तिथि नहीं',
    zh: '未公布结束日期',
  },
  'discount.empty': {
    en: 'No active discounts.',
    hi: 'कोई सक्रिय छूट नहीं।',
    zh: '暂无有效优惠。',
  },
  'finance.title': {
    en: 'Finance information',
    hi: 'वित्त जानकारी',
    zh: '金融信息',
  },
  'finance.kicker': {
    en: 'ORIVA INFORMATION',
    hi: 'ORIVA जानकारी',
    zh: 'ORIVA 信息',
  },
  'finance.heroTitle': {
    en: 'Understand every option first',
    hi: 'पहले हर विकल्प को समझें',
    zh: '先了解每一个选项',
  },
  'finance.heroCopy': {
    en: 'Only administrator-published informational partner content appears here.',
    hi: 'यहाँ केवल प्रशासक द्वारा प्रकाशित भागीदार जानकारी दिखाई जाती है।',
    zh: '这里只显示管理员发布的合作方信息内容。',
  },
  'finance.information': { en: 'Information', hi: 'जानकारी', zh: '信息' },
  'finance.informationOnly': {
    en: 'Information only',
    hi: 'केवल जानकारी',
    zh: '仅供参考',
  },
  'finance.visitProvider': {
    en: 'Visit authorized provider ›',
    hi: 'अधिकृत प्रदाता पर जाएँ ›',
    zh: '访问授权提供商 ›',
  },
  'finance.empty': {
    en: 'No informational offers are currently published.',
    hi: 'अभी कोई जानकारीपरक प्रस्ताव प्रकाशित नहीं है।',
    zh: '目前没有已发布的信息性方案。',
  },
  'finance.important': { en: 'Important', hi: 'महत्वपूर्ण', zh: '重要提示' },
  'finance.disclaimer': {
    en: 'Oriva does not approve, underwrite, disburse, or guarantee a financial product from this screen.',
    hi: 'Oriva इस स्क्रीन से किसी वित्तीय उत्पाद को स्वीकृत, अंडरराइट, वितरित या गारंटी नहीं करता।',
    zh: 'Oriva 不会通过此页面批准、承保、发放或担保任何金融产品。',
  },
  'finance.providerDisclosure': {
    en: 'Provider disclosure',
    hi: 'प्रदाता खुलासा',
    zh: '提供商披露',
  },
  'finance.openWebsite': {
    en: 'Open provider website',
    hi: 'प्रदाता वेबसाइट खोलें',
    zh: '打开提供商网站',
  },
  'finance.offerUnavailable': {
    en: 'This offer is not available.',
    hi: 'यह प्रस्ताव उपलब्ध नहीं है।',
    zh: '此方案不可用。',
  },
  'finance.handoff': {
    en: 'Provider hand-off',
    hi: 'प्रदाता को भेजें',
    zh: '转至提供商',
  },
  'finance.handoffTitle': {
    en: 'Continue only with an authorized provider',
    hi: 'केवल अधिकृत प्रदाता के साथ जारी रखें',
    zh: '仅向授权提供商继续',
  },
  'finance.handoffCopy': {
    en: 'Oriva does not collect a credit application, make an approval decision, receive deposits, or disburse funds. Review the provider’s terms and disclosures before leaving the app.',
    hi: 'Oriva क्रेडिट आवेदन एकत्र नहीं करता, स्वीकृति निर्णय नहीं लेता, जमा स्वीकार नहीं करता या धन वितरित नहीं करता। ऐप छोड़ने से पहले प्रदाता की शर्तें और खुलासे देखें।',
    zh: 'Oriva 不收集信贷申请、不作批准决定、不接收存款，也不发放资金。离开应用前请查看提供商的条款和披露。',
  },
  'finance.openAuthorized': {
    en: 'Open authorized provider',
    hi: 'अधिकृत प्रदाता खोलें',
    zh: '打开授权提供商',
  },
  'finance.noLink': {
    en: 'No external application link has been published.',
    hi: 'कोई बाहरी आवेदन लिंक प्रकाशित नहीं है।',
    zh: '尚未公布外部申请链接。',
  },
  'finance.noHandoff': {
    en: 'No provider hand-off is currently available.',
    hi: 'अभी कोई प्रदाता हस्तांतरण उपलब्ध नहीं है।',
    zh: '目前没有可用的提供商跳转。',
  },
  'game.title': { en: 'Games', hi: 'गेम', zh: '游戏' },
  'game.heroTitle': { en: 'Oriva Games', hi: 'Oriva गेम', zh: 'Oriva 游戏' },
  'game.heroCopy': {
    en: 'Non-monetary engagement only. No wager, odds, stake, wallet debit, or cash payout.',
    hi: 'केवल गैर-मौद्रिक सहभागिता। कोई दाँव, ऑड्स, हिस्सेदारी, वॉलेट कटौती या नकद भुगतान नहीं।',
    zh: '仅限非金钱互动。无投注、赔率、押注、钱包扣款或现金支付。',
  },
  'game.playComplete': {
    en: 'Play complete',
    hi: 'खेल पूरा हुआ',
    zh: '游戏完成',
  },
  'game.playResult': {
    en: '{points} non-monetary points awarded. Play #{sequence}.',
    hi: '{points} गैर-मौद्रिक अंक दिए गए। खेल #{sequence}।',
    zh: '获得 {points} 个非金钱积分。第 #{sequence} 次游戏。',
  },
  'game.unable': { en: 'Unable to play', hi: 'खेल नहीं सका', zh: '无法游戏' },
  'game.meta': {
    en: '{daily} daily plays · {points} points per play',
    hi: 'प्रतिदिन {daily} खेल · प्रति खेल {points} अंक',
    zh: '每日 {daily} 次 · 每次 {points} 积分',
  },
  'game.playing': { en: 'Playing…', hi: 'खेल रहा है…', zh: '进行中…' },
  'game.play': { en: 'Play', hi: 'खेलें', zh: '开始' },
  'game.empty': {
    en: 'No game is currently active.',
    hi: 'अभी कोई गेम सक्रिय नहीं है।',
    zh: '目前没有进行中的游戏。',
  },
  'intro.discover': { en: 'DISCOVER', hi: 'खोजें', zh: '探索' },
  'intro.discoverTitle': {
    en: 'Rewards worth looking forward to',
    hi: 'ऐसे पुरस्कार जिनका इंतज़ार हो',
    zh: '值得期待的奖励',
  },
  'intro.discoverCopy': {
    en: 'Explore thoughtfully presented campaigns and see progress at a glance.',
    hi: 'सोच-समझकर प्रस्तुत अभियानों को देखें और प्रगति एक नज़र में जानें।',
    zh: '探索精心呈现的活动，一览进度。',
  },
  'intro.understand': { en: 'UNDERSTAND', hi: 'समझें', zh: '了解' },
  'intro.understandTitle': {
    en: 'Results you can follow',
    hi: 'ऐसे परिणाम जिन्हें आप समझ सकें',
    zh: '清晰可查的结果',
  },
  'intro.understandCopy': {
    en: 'Review draw calculations, campaign rules, and winner updates in one place.',
    hi: 'ड्रा गणना, अभियान नियम और विजेता अपडेट एक जगह देखें।',
    zh: '在一处查看抽取计算、活动规则和获奖更新。',
  },
  'intro.celebrate': { en: 'CELEBRATE', hi: 'उत्सव मनाएँ', zh: '庆祝' },
  'intro.celebrateTitle': {
    en: 'Share the moments that matter',
    hi: 'खास पलों को साझा करें',
    zh: '分享重要时刻',
  },
  'intro.celebrateCopy': {
    en: 'Claim prizes, track delivery, and tell your Oriva story when you choose.',
    hi: 'पुरस्कार का दावा करें, डिलीवरी ट्रैक करें और चाहें तो अपनी Oriva कहानी बताएँ।',
    zh: '申领奖品、跟踪配送，并在您愿意时分享 Oriva 故事。',
  },
  'intro.skip': { en: 'Skip', hi: 'छोड़ें', zh: '跳过' },
  'intro.explore': { en: 'Explore Oriva', hi: 'Oriva देखें', zh: '探索 Oriva' },
  'shares.title': { en: 'My shares', hi: 'मेरी साझा कहानियाँ', zh: '我的分享' },
  'shares.published': {
    en: 'Published stories',
    hi: 'प्रकाशित कहानियाँ',
    zh: '已发布故事',
  },
  'shares.summary': {
    en: 'Only stories saved by your account appear here.',
    hi: 'केवल आपके खाते से सहेजी गई कहानियाँ यहाँ दिखाई देती हैं।',
    zh: '这里只显示由您的账户保存的故事。',
  },
  'shares.sharedFrom': {
    en: '{story} — shared from Oriva',
    hi: '{story} — Oriva से साझा',
    zh: '{story} — 分享自 Oriva',
  },
  'shares.prizeStory': {
    en: 'Prize story',
    hi: 'पुरस्कार कहानी',
    zh: '奖品故事',
  },
  'shares.orivaStory': {
    en: 'Oriva story',
    hi: 'Oriva कहानी',
    zh: 'Oriva 故事',
  },
  'shares.empty': {
    en: 'No published stories yet.',
    hi: 'अभी कोई प्रकाशित कहानी नहीं है।',
    zh: '暂时没有已发布的故事。',
  },
  'notifications.title': { en: 'Notifications', hi: 'सूचनाएँ', zh: '通知' },
  'notifications.readAll': { en: 'Read all', hi: 'सभी पढ़ें', zh: '全部已读' },
  'notifications.empty': {
    en: 'You’re all caught up.',
    hi: 'आपने सब देख लिया है।',
    zh: '您已查看全部通知。',
  },
  'addresses.title': {
    en: 'Delivery addresses',
    hi: 'डिलीवरी पते',
    zh: '收货地址',
  },
  'addresses.add': {
    en: 'Add new address',
    hi: 'नया पता जोड़ें',
    zh: '添加新地址',
  },
  'addresses.empty': {
    en: 'No saved addresses',
    hi: 'कोई सहेजा पता नहीं',
    zh: '暂无已保存地址',
  },
  'addresses.emptyCopy': {
    en: 'Add one for a future physical prize claim.',
    hi: 'भविष्य में भौतिक पुरस्कार के दावे के लिए एक पता जोड़ें।',
    zh: '添加一个地址以便日后申领实物奖品。',
  },
  'addresses.makeDefault': {
    en: 'Make default',
    hi: 'डिफ़ॉल्ट बनाएँ',
    zh: '设为默认',
  },
  'addresses.removeConfirm': {
    en: 'Remove this address?',
    hi: 'यह पता हटाएँ?',
    zh: '移除此地址？',
  },
  'addresses.addTitle': { en: 'Add address', hi: 'पता जोड़ें', zh: '添加地址' },
  'addresses.save': { en: 'Save address', hi: 'पता सहेजें', zh: '保存地址' },
  'addresses.recipient': {
    en: 'Recipient name',
    hi: 'प्राप्तकर्ता का नाम',
    zh: '收件人姓名',
  },
  'addresses.phone': {
    en: 'Phone (E.164)',
    hi: 'फ़ोन (E.164)',
    zh: '电话（E.164）',
  },
  'addresses.line1': {
    en: 'Address line 1',
    hi: 'पता पंक्ति 1',
    zh: '地址第 1 行',
  },
  'addresses.line2': {
    en: 'Address line 2 (optional)',
    hi: 'पता पंक्ति 2 (वैकल्पिक)',
    zh: '地址第 2 行（可选）',
  },
  'addresses.city': { en: 'City', hi: 'शहर', zh: '城市' },
  'addresses.region': {
    en: 'State / region',
    hi: 'राज्य / क्षेत्र',
    zh: '省 / 地区',
  },
  'addresses.postalCode': { en: 'Postal code', hi: 'पिन कोड', zh: '邮政编码' },
  'addresses.countryCode': {
    en: 'Country code',
    hi: 'देश कोड',
    zh: '国家/地区代码',
  },
  'tasks.title': { en: 'Reward tasks', hi: 'रिवॉर्ड कार्य', zh: '奖励任务' },
  'tasks.subtitle': {
    en: 'Available non-monetary account activities',
    hi: 'उपलब्ध गैर-मौद्रिक खाता गतिविधियाँ',
    zh: '可用的非金钱账户活动',
  },
  'tasks.claim': { en: 'Claim', hi: 'दावा करें', zh: '领取' },
  'tasks.claimed': { en: 'Claimed', hi: 'दावा किया', zh: '已领取' },
  'tasks.empty': {
    en: 'No tasks are currently available.',
    hi: 'अभी कोई कार्य उपलब्ध नहीं है।',
    zh: '目前没有可用任务。',
  },
  'tasks.signIn': {
    en: 'Sign in to claim',
    hi: 'दावे के लिए साइन इन करें',
    zh: '登录后领取',
  },
  'tasks.rewardCredited': {
    en: 'Reward credited',
    hi: 'पुरस्कार जमा हुआ',
    zh: '奖励已到账',
  },
  'tasks.unavailable': {
    en: 'Task unavailable',
    hi: 'कार्य उपलब्ध नहीं',
    zh: '任务不可用',
  },
  'tasks.coins': { en: 'coins', hi: 'कॉइन', zh: '积分' },
  'tasks.rewardCoins': {
    en: '{coins} coins',
    hi: '{coins} कॉइन',
    zh: '{coins} 积分',
  },
  'tasks.rewardCoinsCash': {
    en: '{coins} coins and {amount}',
    hi: '{coins} कॉइन और {amount}',
    zh: '{coins} 积分和 {amount}',
  },
  'tasks.heroTitle': {
    en: 'Earn configured rewards',
    hi: 'निर्धारित पुरस्कार कमाएँ',
    zh: '获取已配置的奖励',
  },
  'tasks.heroCopy': {
    en: 'Eligibility is verified by the service before every claim.',
    hi: 'हर दावे से पहले सेवा पात्रता सत्यापित करती है।',
    zh: '每次领取前，服务都会验证资格。',
  },
  'tasks.rewardMeta': {
    en: '{coins} coins{amount} · {period}',
    hi: '{coins} कॉइन{amount} · {period}',
    zh: '{coins} 积分{amount} · {period}',
  },
  'team.title': { en: 'My team', hi: 'मेरी टीम', zh: '我的团队' },
  'team.members': { en: 'Members', hi: 'सदस्य', zh: '成员' },
  'team.empty': {
    en: 'No invited members yet.',
    hi: 'अभी कोई आमंत्रित सदस्य नहीं है।',
    zh: '暂时没有受邀成员。',
  },
  'team.joined': {
    en: 'Joined {date}',
    hi: '{date} को शामिल हुए',
    zh: '加入于 {date}',
  },
  'team.detailUnavailable': {
    en: 'Detailed activity is not provided by the current service.',
    hi: 'वर्तमान सेवा विस्तृत गतिविधि उपलब्ध नहीं कराती।',
    zh: '当前服务不提供详细活动信息。',
  },
  'referrals.inviteFriends': {
    en: 'Invite friends',
    hi: 'दोस्तों को आमंत्रित करें',
    zh: '邀请好友',
  },
  'referrals.shareMessage': {
    en: 'Join me on Oriva. Use invitation code {code} when you verify your account.',
    hi: 'Oriva पर मेरे साथ जुड़ें। अपना खाता सत्यापित करते समय आमंत्रण कोड {code} का उपयोग करें।',
    zh: '加入 Oriva。验证账户时使用邀请码 {code}。',
  },
  'referrals.yourCode': {
    en: 'Your invitation code',
    hi: 'आपका आमंत्रण कोड',
    zh: '您的邀请码',
  },
  'referrals.copy': {
    en: 'Share only your personal code. Any program eligibility is determined by the current service terms.',
    hi: 'केवल अपना व्यक्तिगत कोड साझा करें। किसी भी कार्यक्रम की पात्रता वर्तमान सेवा शर्तों से तय होती है।',
    zh: '请仅分享您的个人邀请码。任何计划资格均由当前服务条款决定。',
  },
  'referrals.share': {
    en: 'Share invitation',
    hi: 'आमंत्रण साझा करें',
    zh: '分享邀请',
  },
  'referrals.signIn': {
    en: 'Sign in to get your code',
    hi: 'कोड पाने के लिए साइन इन करें',
    zh: '登录以获取邀请码',
  },
  'referrals.summary': {
    en: 'Invited members returned by your account',
    hi: 'आपके खाते से लौटाए गए आमंत्रित सदस्य',
    zh: '您账户中的受邀成员',
  },
  'prizes.title': { en: 'My prizes', hi: 'मेरे पुरस्कार', zh: '我的奖品' },
  'prizes.empty': {
    en: 'No prizes yet.',
    hi: 'अभी कोई पुरस्कार नहीं।',
    zh: '暂时没有奖品。',
  },
  'prizes.claim': {
    en: 'Claim prize',
    hi: 'पुरस्कार का दावा करें',
    zh: '申领奖品',
  },
  'prizes.selectAddress': {
    en: 'Select a delivery address',
    hi: 'डिलीवरी पता चुनें',
    zh: '选择收货地址',
  },
  'prizes.addAddress': {
    en: 'Add an address first',
    hi: 'पहले पता जोड़ें',
    zh: '请先添加地址',
  },
  'prizes.tracking': {
    en: 'Tracking reference',
    hi: 'ट्रैकिंग संदर्भ',
    zh: '物流参考号',
  },
  'prizes.details': {
    en: 'Prize details',
    hi: 'पुरस्कार विवरण',
    zh: '奖品详情',
  },
  'prizes.claimReceived': {
    en: 'Claim received',
    hi: 'दावा प्राप्त हुआ',
    zh: '已收到申领',
  },
  'prizes.claimMessage': {
    en: 'Your selected delivery address was submitted.',
    hi: 'आपका चुना हुआ डिलीवरी पता जमा कर दिया गया।',
    zh: '您选择的收货地址已提交。',
  },
  'wallet.title': { en: 'Wallet', hi: 'वॉलेट', zh: '钱包' },
  'wallet.available': {
    en: 'Available balance',
    hi: 'उपलब्ध शेष',
    zh: '可用余额',
  },
  'wallet.locked': {
    en: 'Locked: {amount}',
    hi: 'लॉक: {amount}',
    zh: '锁定：{amount}',
  },
  'wallet.recharge': { en: 'Recharge', hi: 'रिचार्ज', zh: '充值' },
  'wallet.rechargeCopy': {
    en: 'Add money securely',
    hi: 'सुरक्षित रूप से राशि जोड़ें',
    zh: '安全充值',
  },
  'wallet.withdraw': { en: 'Withdraw', hi: 'निकासी', zh: '提现' },
  'wallet.withdrawCopy': {
    en: 'Transfer to bank/UPI',
    hi: 'बैंक/UPI में ट्रांसफ़र',
    zh: '转至银行/UPI',
  },
  'wallet.funding': { en: 'Funding records', hi: 'धन रिकॉर्ड', zh: '资金记录' },
  'wallet.withdrawals': {
    en: 'Withdrawal records',
    hi: 'निकासी रिकॉर्ड',
    zh: '提现记录',
  },
  'wallet.manualRecharge': {
    en: 'Manual recharge',
    hi: 'मैन्युअल रिचार्ज',
    zh: '手动充值',
  },
  'wallet.selectRecharge': {
    en: 'Please select the recharge amount:',
    hi: 'कृपया रिचार्ज राशि चुनें:',
    zh: '请选择充值金额：',
  },
  'wallet.noTransactions': {
    en: 'No transactions',
    hi: 'कोई लेन-देन नहीं',
    zh: '暂无交易',
  },
  'wallet.noTransactionsCopy': {
    en: 'Recharge, order, reward, and withdrawal entries will appear here.',
    hi: 'रिचार्ज, ऑर्डर, पुरस्कार और निकासी प्रविष्टियाँ यहाँ दिखाई देंगी।',
    zh: '充值、订单、奖励和提现记录将显示在这里。',
  },
  'withdraw.title': { en: 'Withdraw', hi: 'निकासी', zh: '提现' },
  'withdraw.amount': {
    en: 'Withdrawal amount',
    hi: 'निकासी राशि',
    zh: '提现金额',
  },
  'withdraw.available': {
    en: 'Available: {amount}',
    hi: 'उपलब्ध: {amount}',
    zh: '可用：{amount}',
  },
  'withdraw.submit': {
    en: 'Submit request',
    hi: 'अनुरोध जमा करें',
    zh: '提交申请',
  },
  'withdraw.info': {
    en: 'Requests are reviewed before payout. This screen does not provide investment or gaming advice.',
    hi: 'भुगतान से पहले अनुरोधों की समीक्षा होती है। यह स्क्रीन निवेश या गेमिंग सलाह नहीं देती।',
    zh: '申请将在付款前审核。此页面不提供投资或游戏建议。',
  },
  'withdraw.beneficiaryRequired': {
    en: 'Add and verify a payout beneficiary first.',
    hi: 'पहले भुगतान लाभार्थी जोड़ें और सत्यापित करें।',
    zh: '请先添加并验证收款人。',
  },
  'withdraw.invalidAmount': {
    en: 'Enter an amount within your available balance.',
    hi: 'उपलब्ध शेष के भीतर राशि दर्ज करें।',
    zh: '请输入不超过可用余额的金额。',
  },
  'withdraw.requested': {
    en: 'Withdrawal requested',
    hi: 'निकासी का अनुरोध किया गया',
    zh: '已申请提现',
  },
  'withdraw.requestedCopy': {
    en: 'Your verified payout destination and request were submitted for finance review.',
    hi: 'आपका सत्यापित भुगतान गंतव्य और अनुरोध वित्त समीक्षा के लिए जमा किया गया।',
    zh: '您已验证的收款方式和申请已提交财务审核。',
  },
  'withdraw.records': { en: 'Records', hi: 'रिकॉर्ड', zh: '记录' },
  'withdraw.destination': {
    en: 'Verified payout destination',
    hi: 'सत्यापित भुगतान गंतव्य',
    zh: '已验证的收款方式',
  },
  'withdraw.addBeneficiary': {
    en: 'Add or check a payout beneficiary ›',
    hi: 'भुगतान लाभार्थी जोड़ें या जाँचें ›',
    zh: '添加或查看收款人 ›',
  },
  'beneficiaries.title': {
    en: 'Payout beneficiaries',
    hi: 'भुगतान लाभार्थी',
    zh: '收款人',
  },
  'beneficiaries.add': {
    en: 'Add beneficiary',
    hi: 'लाभार्थी जोड़ें',
    zh: '添加收款人',
  },
  'beneficiaries.unavailable': {
    en: 'No payout beneficiaries are available. Add one and wait for finance verification.',
    hi: 'कोई भुगतान लाभार्थी उपलब्ध नहीं है। एक जोड़ें और वित्त सत्यापन की प्रतीक्षा करें।',
    zh: '暂无可用收款人。请添加并等待财务验证。',
  },
  'beneficiaries.info': {
    en: 'Payout details are encrypted. A finance administrator must verify a new destination before withdrawal.',
    hi: 'भुगतान विवरण एन्क्रिप्ट किए जाते हैं। निकासी से पहले वित्त प्रशासक को नए गंतव्य का सत्यापन करना होगा।',
    zh: '收款详情会加密保存。新收款方式必须经财务管理员验证后方可提现。',
  },
  'beneficiaries.label': { en: 'Label', hi: 'लेबल', zh: '标签' },
  'beneficiaries.primary': {
    en: 'Primary payout',
    hi: 'मुख्य भुगतान',
    zh: '主要收款方式',
  },
  'beneficiaries.holder': {
    en: 'Account holder name',
    hi: 'खाताधारक का नाम',
    zh: '账户持有人姓名',
  },
  'beneficiaries.removeTitle': {
    en: 'Remove beneficiary?',
    hi: 'लाभार्थी हटाएँ?',
    zh: '移除收款人？',
  },
  'beneficiaries.removeCopy': {
    en: 'Active withdrawals keep their saved destination snapshot.',
    hi: 'सक्रिय निकासी अपने सहेजे गए गंतव्य स्नैपशॉट को बनाए रखती हैं।',
    zh: '进行中的提现会保留已保存的收款方式快照。',
  },
  'beneficiaries.empty': {
    en: 'No payout beneficiary has been added.',
    hi: 'कोई भुगतान लाभार्थी नहीं जोड़ा गया है।',
    zh: '尚未添加收款人。',
  },
  'content.fallback': {
    en: 'The latest online content is unavailable. Showing the built-in information instead.',
    hi: 'नवीनतम ऑनलाइन सामग्री उपलब्ध नहीं है। इसके बजाय अंतर्निहित जानकारी दिखाई जा रही है।',
    zh: '最新在线内容不可用，现显示内置信息。',
  },
  'rules.title': { en: 'Campaign rules', hi: 'अभियान नियम', zh: '活动规则' },
  'rules.fallbackTitle': {
    en: 'Campaign participation information',
    hi: 'अभियान सहभागिता जानकारी',
    zh: '活动参与信息',
  },
  'rules.fallbackBody': {
    en: 'Review each campaign’s current entry price, availability and timing before continuing. Confirmed entries belong only to their stated campaign. Published winner information is shown exactly as supplied by the service. Physical prizes require a valid delivery address. Automated or abusive participation may be restricted.',
    hi: 'जारी रखने से पहले प्रत्येक अभियान की वर्तमान प्रविष्टि कीमत, उपलब्धता और समय देखें। पक्की प्रविष्टियाँ केवल बताए गए अभियान की होती हैं। प्रकाशित विजेता जानकारी सेवा द्वारा दिए गए रूप में दिखाई जाती है। भौतिक पुरस्कारों के लिए मान्य डिलीवरी पता आवश्यक है। स्वचालित या दुरुपयोग वाली भागीदारी प्रतिबंधित की जा सकती है।',
    zh: '继续前请查看每个活动当前的参与价格、可用性和时间。已确认的参与仅属于指定活动。已公布的获奖信息按服务提供的内容原样显示。实物奖品需要有效收货地址。自动化或滥用参与可能受到限制。',
  },
  'support.fallbackTitle': {
    en: 'How can we help?',
    hi: 'हम कैसे मदद कर सकते हैं?',
    zh: '我们能如何帮助您？',
  },
  'support.fallbackBody': {
    en: 'Create a support request below or browse account and campaign guidance.',
    hi: 'नीचे सहायता अनुरोध बनाएँ या खाता और अभियान मार्गदर्शन देखें।',
    zh: '在下方创建支持请求，或浏览账户和活动指南。',
  },
  'support.browse': {
    en: 'Browse help topics ›',
    hi: 'सहायता विषय देखें ›',
    zh: '浏览帮助主题 ›',
  },
  'support.myRequests': {
    en: 'My support requests',
    hi: 'मेरे सहायता अनुरोध',
    zh: '我的支持请求',
  },
  'support.newRequest': { en: 'New request', hi: 'नया अनुरोध', zh: '新请求' },
  'support.subject': { en: 'Subject', hi: 'विषय', zh: '主题' },
  'support.describe': {
    en: 'Describe the issue',
    hi: 'समस्या का वर्णन करें',
    zh: '描述问题',
  },
  'support.create': {
    en: 'Create support request',
    hi: 'सहायता अनुरोध बनाएँ',
    zh: '创建支持请求',
  },
  'support.request': {
    en: 'Support request',
    hi: 'सहायता अनुरोध',
    zh: '支持请求',
  },
  'support.you': { en: 'You', hi: 'आप', zh: '您' },
  'support.staff': {
    en: 'Oriva support',
    hi: 'Oriva सहायता',
    zh: 'Oriva 支持',
  },
  'support.replyPlaceholder': {
    en: 'Write a reply',
    hi: 'जवाब लिखें',
    zh: '撰写回复',
  },
  'support.sendReply': { en: 'Send reply', hi: 'जवाब भेजें', zh: '发送回复' },
  'help.title': { en: 'Help Centre', hi: 'सहायता केंद्र', zh: '帮助中心' },
  'help.heading': {
    en: 'What can we help with?',
    hi: 'हम किसमें मदद कर सकते हैं?',
    zh: '我们能帮您解决什么？',
  },
  'help.copy': {
    en: 'Choose a topic for clear, step-by-step answers.',
    hi: 'स्पष्ट, चरण-दर-चरण उत्तरों के लिए विषय चुनें।',
    zh: '选择主题以获取清晰的分步解答。',
  },
  'help.campaignsTitle': {
    en: 'Campaigns and entries',
    hi: 'अभियान और प्रविष्टियाँ',
    zh: '活动与参与',
  },
  'help.campaignsSubtitle': {
    en: 'Joining, entry numbers, and progress',
    hi: 'शामिल होना, प्रविष्टि संख्या और प्रगति',
    zh: '参与、编号和进度',
  },
  'help.campaignsBody': {
    en: 'Open an active campaign to review its live progress, entry price and timing before continuing.',
    hi: 'जारी रखने से पहले सक्रिय अभियान खोलकर उसकी लाइव प्रगति, प्रविष्टि कीमत और समय देखें।',
    zh: '继续前请打开进行中的活动，查看实时进度、参与价格和时间。',
  },
  'help.resultsTitle': {
    en: 'Draws and winners',
    hi: 'ड्रा और विजेता',
    zh: '抽取与获奖者',
  },
  'help.resultsSubtitle': {
    en: 'Calculation details and result timing',
    hi: 'गणना विवरण और परिणाम समय',
    zh: '计算详情和结果时间',
  },
  'help.resultsBody': {
    en: 'Winner announcements are shown when published by the service. The app does not add verification or entry-count claims.',
    hi: 'सेवा द्वारा प्रकाशित होने पर विजेता घोषणाएँ दिखाई जाती हैं। ऐप अतिरिक्त सत्यापन या प्रविष्टि-संख्या दावे नहीं जोड़ता।',
    zh: '服务发布后会显示获奖公告。应用不会额外添加验证或参与数量声明。',
  },
  'help.prizesTitle': {
    en: 'Prize claims',
    hi: 'पुरस्कार दावे',
    zh: '奖品申领',
  },
  'help.prizesSubtitle': {
    en: 'Delivery addresses and claim status',
    hi: 'डिलीवरी पते और दावा स्थिति',
    zh: '收货地址和申领状态',
  },
  'help.prizesBody': {
    en: 'Open My prizes, select an unclaimed prize and choose one of your saved delivery addresses.',
    hi: 'मेरे पुरस्कार खोलें, बिना दावा किया पुरस्कार चुनें और सहेजे गए डिलीवरी पतों में से एक चुनें।',
    zh: '打开“我的奖品”，选择未申领奖品并选择一个已保存的收货地址。',
  },
  'help.accountTitle': {
    en: 'Account and profile',
    hi: 'खाता और प्रोफ़ाइल',
    zh: '账户与个人资料',
  },
  'help.accountSubtitle': {
    en: 'Sign-in, display name, and notifications',
    hi: 'साइन-इन, प्रदर्शित नाम और सूचनाएँ',
    zh: '登录、显示名称和通知',
  },
  'help.accountBody': {
    en: 'Use Settings to update your display name, language, notifications and delivery addresses.',
    hi: 'प्रदर्शित नाम, भाषा, सूचनाएँ और डिलीवरी पते अपडेट करने के लिए सेटिंग्स का उपयोग करें।',
    zh: '使用“设置”更新显示名称、语言、通知和收货地址。',
  },
  'help.contact': {
    en: 'Still need help? Contact support',
    hi: 'अब भी मदद चाहिए? सहायता से संपर्क करें',
    zh: '仍需帮助？联系支持',
  },
  'orders.confirm': {
    en: 'Confirm order',
    hi: 'ऑर्डर की पुष्टि करें',
    zh: '确认订单',
  },
  'orders.details': { en: 'Order details', hi: 'ऑर्डर विवरण', zh: '订单详情' },
  'orders.loading': {
    en: 'Loading order',
    hi: 'ऑर्डर लोड हो रहा है',
    zh: '正在加载订单',
  },
  'orders.unavailable': {
    en: 'Order unavailable',
    hi: 'ऑर्डर उपलब्ध नहीं',
    zh: '订单不可用',
  },
  'orders.entry': {
    en: '{count} entry',
    hi: '{count} प्रविष्टि',
    zh: '{count} 个参与名额',
  },
  'orders.entries': {
    en: '{count} entries',
    hi: '{count} प्रविष्टियाँ',
    zh: '{count} 个参与名额',
  },
  'orders.status': {
    en: 'Order is {status}',
    hi: 'ऑर्डर {status} है',
    zh: '订单状态：{status}',
  },
  'orders.noPayment': {
    en: 'Payment submission is no longer required.',
    hi: 'अब भुगतान जमा करने की आवश्यकता नहीं है।',
    zh: '无需再提交付款。',
  },
  'orders.quantity': { en: 'Quantity', hi: 'मात्रा', zh: '数量' },
  'orders.amount': { en: 'Amount', hi: 'राशि', zh: '金额' },
  'orders.id': { en: 'Order ID', hi: 'ऑर्डर आईडी', zh: '订单 ID' },
  'orders.empty': { en: 'No orders', hi: 'कोई ऑर्डर नहीं', zh: '暂无订单' },
  'orders.emptyCopy': {
    en: 'Your lucky draw orders will appear here.',
    hi: 'आपके लकी ड्रा ऑर्डर यहाँ दिखाई देंगे।',
    zh: '您的抽奖订单将显示在这里。',
  },
  'profile.nameError': {
    en: 'Use at least two characters',
    hi: 'कम से कम दो अक्षर उपयोग करें',
    zh: '请至少输入两个字符',
  },
  'profile.nameUpdated': {
    en: 'Display name updated',
    hi: 'प्रदर्शित नाम अपडेट हुआ',
    zh: '显示名称已更新',
  },
  'profile.greeting': {
    en: 'How should we greet you?',
    hi: 'हम आपको किस नाम से बुलाएँ?',
    zh: '我们该如何称呼您？',
  },
  'profile.copy': {
    en: 'This updates your display name. Public result data is shown only as returned by the service.',
    hi: 'यह आपका प्रदर्शित नाम अपडेट करता है। सार्वजनिक परिणाम डेटा केवल सेवा से प्राप्त रूप में दिखाया जाता है।',
    zh: '这会更新您的显示名称。公开结果数据仅按服务返回的内容显示。',
  },
  'profile.namePlaceholder': {
    en: 'Your name',
    hi: 'आपका नाम',
    zh: '您的姓名',
  },
  'profile.saveName': {
    en: 'Save display name',
    hi: 'प्रदर्शित नाम सहेजें',
    zh: '保存显示名称',
  },
  'membership.title': {
    en: 'Oriva Membership',
    hi: 'Oriva सदस्यता',
    zh: 'Oriva 会员',
  },
  'membership.active': {
    en: 'Active membership',
    hi: 'सक्रिय सदस्यता',
    zh: '有效会员',
  },
  'membership.inactive': {
    en: 'No active membership',
    hi: 'कोई सक्रिय सदस्यता नहीं',
    zh: '暂无有效会员',
  },
  'membership.defaultBenefits': {
    en: 'Benefits published by Oriva',
    hi: 'Oriva द्वारा प्रकाशित लाभ',
    zh: 'Oriva 发布的权益',
  },
  'membership.validUntil': {
    en: 'Valid until {date}',
    hi: '{date} तक मान्य',
    zh: '有效期至 {date}',
  },
  'membership.granted': {
    en: 'Memberships are granted by approved promotions or administrators.',
    hi: 'सदस्यताएँ स्वीकृत प्रचार या प्रशासकों द्वारा दी जाती हैं।',
    zh: '会员资格由已批准的推广活动或管理员授予。',
  },
  'membership.plans': {
    en: 'Available plans',
    hi: 'उपलब्ध योजनाएँ',
    zh: '可用方案',
  },
  'membership.planMeta': {
    en: '{days} days · Administrator/promotion activation',
    hi: '{days} दिन · प्रशासक/प्रचार सक्रियण',
    zh: '{days} 天 · 管理员/推广激活',
  },
  'membership.empty': {
    en: 'No membership plan is currently active.',
    hi: 'अभी कोई सदस्यता योजना सक्रिय नहीं है।',
    zh: '目前没有有效的会员方案。',
  },
  'shareWin.title': {
    en: 'Share your win',
    hi: 'अपनी जीत साझा करें',
    zh: '分享您的获奖时刻',
  },
  'shareWin.kicker': { en: 'ORIVA MOMENT', hi: 'ORIVA पल', zh: 'ORIVA 时刻' },
  'shareWin.reward': {
    en: 'A reward worth celebrating',
    hi: 'जश्न मनाने लायक पुरस्कार',
    zh: '值得庆祝的奖励',
  },
  'shareWin.reference': {
    en: 'Prize reference: {id}',
    hi: 'पुरस्कार संदर्भ: {id}',
    zh: '奖品参考号：{id}',
  },
  'shareWin.story': {
    en: 'Tell your story',
    hi: 'अपनी कहानी बताएँ',
    zh: '讲述您的故事',
  },
  'shareWin.placeholder': {
    en: 'What made this win special?',
    hi: 'इस जीत को खास किसने बनाया?',
    zh: '是什么让这次获奖如此特别？',
  },
  'shareWin.tip': {
    en: 'Keep personal details out of public stories. Stories are persisted only after the service validates ownership.',
    hi: 'सार्वजनिक कहानियों में व्यक्तिगत विवरण न दें। सेवा द्वारा स्वामित्व सत्यापित होने के बाद ही कहानियाँ सहेजी जाती हैं।',
    zh: '请勿在公开故事中包含个人信息。服务验证所有权后才会保存故事。',
  },
  'shareWin.publish': {
    en: 'Publish story',
    hi: 'कहानी प्रकाशित करें',
    zh: '发布故事',
  },
  'result.done': { en: 'Done', hi: 'पूर्ण', zh: '完成' },
  'result.reference': { en: 'Reference', hi: 'संदर्भ', zh: '参考号' },
  'result.backHome': { en: 'Back to home', hi: 'होम पर लौटें', zh: '返回首页' },
  'status.active': { en: 'Active', hi: 'सक्रिय', zh: '进行中' },
  'status.approved': { en: 'Approved', hi: 'स्वीकृत', zh: '已批准' },
  'status.awaiting_submission': {
    en: 'Awaiting submission',
    hi: 'जमा होने की प्रतीक्षा',
    zh: '等待提交',
  },
  'status.cancelled': { en: 'Cancelled', hi: 'रद्द', zh: '已取消' },
  'status.claimed': { en: 'Claimed', hi: 'दावा किया गया', zh: '已申领' },
  'status.closed': { en: 'Closed', hi: 'बंद', zh: '已关闭' },
  'status.delivered': { en: 'Delivered', hi: 'डिलीवर किया गया', zh: '已送达' },
  'status.executed': { en: 'Executed', hi: 'निष्पादित', zh: '已执行' },
  'status.failed': { en: 'Failed', hi: 'विफल', zh: '失败' },
  'status.paid': { en: 'Paid', hi: 'भुगतान किया गया', zh: '已付款' },
  'status.pending': { en: 'Pending', hi: 'लंबित', zh: '待处理' },
  'status.processing': { en: 'Processing', hi: 'प्रक्रिया में', zh: '处理中' },
  'status.qualified': { en: 'Qualified', hi: 'योग्य', zh: '已符合资格' },
  'status.rejected': { en: 'Rejected', hi: 'अस्वीकृत', zh: '已拒绝' },
  'status.resolved': { en: 'Resolved', hi: 'समाधान हुआ', zh: '已解决' },
  'status.rewarded': { en: 'Rewarded', hi: 'पुरस्कृत', zh: '已奖励' },
  'status.scheduled': { en: 'Scheduled', hi: 'निर्धारित', zh: '已安排' },
  'status.shipped': { en: 'Shipped', hi: 'भेजा गया', zh: '已发货' },
  'status.under_review': {
    en: 'Under review',
    hi: 'समीक्षा में',
    zh: '审核中',
  },
  'status.unclaimed': {
    en: 'Unclaimed',
    hi: 'दावा नहीं किया गया',
    zh: '未申领',
  },
  'period.daily': { en: 'Daily', hi: 'दैनिक', zh: '每日' },
  'period.weekly': { en: 'Weekly', hi: 'साप्ताहिक', zh: '每周' },
  'period.once': { en: 'One time', hi: 'एक बार', zh: '一次性' },
  'period.one_time': { en: 'One time', hi: 'एक बार', zh: '一次性' },
} as const satisfies Record<string, LocalizedText>;

export type TranslationKey = keyof typeof catalog;

const labelKeys: Readonly<Record<string, TranslationKey>> = {
  active: 'status.active',
  approved: 'status.approved',
  awaiting_submission: 'status.awaiting_submission',
  cancelled: 'status.cancelled',
  claimed: 'status.claimed',
  closed: 'status.closed',
  delivered: 'status.delivered',
  executed: 'status.executed',
  failed: 'status.failed',
  paid: 'status.paid',
  pending: 'status.pending',
  processing: 'status.processing',
  qualified: 'status.qualified',
  rejected: 'status.rejected',
  resolved: 'status.resolved',
  rewarded: 'status.rewarded',
  scheduled: 'status.scheduled',
  shipped: 'status.shipped',
  under_review: 'status.under_review',
  unclaimed: 'status.unclaimed',
  daily: 'period.daily',
  weekly: 'period.weekly',
  once: 'period.once',
  one_time: 'period.one_time',
};

interface LocaleState {
  locale: Locale;
  initialized: boolean;
  initialize: () => Promise<void>;
  setLocale: (locale: Locale) => Promise<void>;
}

export const useLocaleStore = create<LocaleState>((set) => ({
  locale: 'en',
  initialized: false,
  initialize: async () => {
    const saved = await SecureStore.getItemAsync(LOCALE_KEY);
    set({
      locale: saved === 'hi' || saved === 'zh' ? saved : 'en',
      initialized: true,
    });
  },
  setLocale: async (locale) => {
    await SecureStore.setItemAsync(LOCALE_KEY, locale);
    set({ locale });
  },
}));

export function useI18n() {
  const locale = useLocaleStore((state) => state.locale);
  const t = (key: TranslationKey, values?: Record<string, string | number>) => {
    let value: string = catalog[key][locale];
    if (values) {
      Object.entries(values).forEach(([name, replacement]) => {
        value = value.replaceAll(`{${name}}`, String(replacement));
      });
    }
    return value;
  };
  return {
    locale,
    t,
    labelFor: (value: string) => {
      const key = labelKeys[value.toLowerCase()];
      return key ? t(key) : value;
    },
    formatDate: (value: string) =>
      new Intl.DateTimeFormat(
        locale === 'zh' ? 'zh-CN' : locale === 'hi' ? 'hi-IN' : 'en-IN',
        { dateStyle: 'medium' },
      ).format(new Date(value)),
    formatMoney: (minor: number, currency = 'INR') =>
      new Intl.NumberFormat(
        locale === 'zh' ? 'zh-CN' : locale === 'hi' ? 'hi-IN' : 'en-IN',
        { style: 'currency', currency },
      ).format(minor / 100),
  };
}

export function useInitializeLocale() {
  const initialize = useLocaleStore((state) => state.initialize);
  useEffect(() => {
    void initialize();
  }, [initialize]);
}
