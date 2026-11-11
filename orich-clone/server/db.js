'use strict';
// In-memory demo data for the ORich-style group-buy / wallet / finance app.
// Money is stored in integer paise (1 rupee = 100) and formatted at the edges.

function img(p) {
  return '/static/image/' + p;
}

const products = [
  {
    id: 1,
    title: 'iPhone 15 Pro Max 256GB',
    subtitle: 'Natural Titanium',
    cover: img('goods/goods1.png'),
    price: 10,            // join price per share, in rupees
    marketValue: 159900,  // rupees
    total: 16000,         // shares needed
    joined: 12840,
    status: 'ongoing',    // ongoing | drawing | done
    hot: true,
  },
  {
    id: 2,
    title: 'Royal Enfield Classic 350',
    subtitle: 'Halcyon Green',
    cover: img('goods/goods2.jpg'),
    price: 20,
    marketValue: 193000,
    total: 9650,
    joined: 9650,
    status: 'drawing',
    hot: true,
  },
  {
    id: 3,
    title: '1 Gram Gold Coin (24K)',
    subtitle: 'Certified 999.9',
    cover: img('home/img_lottery.png'),
    price: 5,
    marketValue: 7400,
    total: 1480,
    joined: 430,
    status: 'ongoing',
    hot: false,
  },
  {
    id: 4,
    title: 'Samsung 55" 4K Smart TV',
    subtitle: 'Crystal UHD',
    cover: img('home/img_Winning.png'),
    price: 10,
    marketValue: 54990,
    total: 5500,
    joined: 2210,
    status: 'ongoing',
    hot: true,
  },
];

const winners = [
  { id: 101, name: 'rahul***', product: 'iPhone 14 128GB', avatar: img('home/img_Winning.png'), code: 'OR20260108', shares: 36, date: '2026-11-08' },
  { id: 102, name: 'meena***', product: 'Gold Coin 2g', avatar: img('home/img_Winning.png'), code: 'OR20260107', shares: 12, date: '2026-11-07' },
  { id: 103, name: 'arjun***', product: 'OnePlus 12R', avatar: img('home/img_Winning.png'), code: 'OR20260106', shares: 58, date: '2026-11-06' },
  { id: 104, name: 'sana***', product: 'Smart Watch', avatar: img('home/img_Winning.png'), code: 'OR20260105', shares: 9, date: '2026-11-05' },
];

const finances = [
  { id: 1, name: 'ORich Daily 7', rate: 0.8, days: 7, min: 500, max: 50000, desc: 'Fixed daily return, principal returned on maturity.' },
  { id: 2, name: 'ORich Flex 30', rate: 1.2, days: 30, min: 1000, max: 200000, desc: 'Higher daily return over a 30-day lock-in.' },
  { id: 3, name: 'ORich Prime 90', rate: 1.6, days: 90, min: 5000, max: 500000, desc: 'Our best rate for a 90-day commitment.' },
];

const rechargeOptions = [100, 300, 500, 1000, 2000, 5000];

// A single demo account keyed by token.
function freshUser() {
  return {
    phone: '',
    nickname: '',
    avatar: img('home/icon_multiuser.png'),
    balance: 125000,     // paise -> 1250.00
    frozen: 0,
    inviteCode: 'ORICH' + Math.floor(1000 + Math.random() * 8999),
    teamCount: 0,
    createdAt: Date.now(),
  };
}

module.exports = { products, winners, finances, rechargeOptions, freshUser, img };
