-- Demo seed data for vuapp. Run after schema.sql.
INSERT INTO banners (image, link, sort, active) VALUES
  ('/static/image/goods/goods1.png', '', 0, 1),
  ('/static/image/goods/goods2.jpg', '', 1, 1);

INSERT INTO notices (text, active, created_at) VALUES
  ('Welcome to vuapp — join a group buy and win big!', 1, strftime('%s','now')),
  ('New finance plans now live with daily returns.', 1, strftime('%s','now'));

INSERT INTO goods (title, image, description, category, price_minor, market_price_minor, total_slots, filled_slots, issue, status, end_at, created_at) VALUES
  ('Smartphone 5G 128GB', '/static/image/goods/goods1.png', 'Latest 5G smartphone', 'newbie', 100, 1999900, 200, 45, '20260921A', 'active', strftime('%s','now')+86400, strftime('%s','now')),
  ('Wireless Earbuds Pro', '/static/image/goods/goods2.jpg', 'Noise cancelling earbuds', 'normal', 100, 799900, 100, 12, '20260921B', 'active', strftime('%s','now')+86400, strftime('%s','now')),
  ('Smart Watch Series X', '/static/image/goods/goods1.png', 'Fitness smart watch', 'high', 500, 2499900, 150, 88, '20260921C', 'active', strftime('%s','now')+43200, strftime('%s','now')),
  ('Gold Coin 1g', '/static/image/goods/goods2.jpg', 'Certified gold coin', 'high', 1000, 699900, 300, 210, '20260921D', 'active', strftime('%s','now')+21600, strftime('%s','now'));

INSERT INTO finance_products (title, image, rate_bps, term_days, min_minor, max_minor, status, created_at) VALUES
  ('Daily Saver 7d', '/static/image/goods/goods1.png', 1200, 7, 10000, 5000000, 'active', strftime('%s','now')),
  ('Growth Plan 30d', '/static/image/goods/goods2.jpg', 1800, 30, 50000, 10000000, 'active', strftime('%s','now'));

INSERT INTO tasks (title, description, reward_minor, period, target, active, created_at) VALUES
  ('Daily check-in', 'Open the app today', 500, 'daily', 1, 1, strftime('%s','now')),
  ('Invite a friend', 'Invite 1 new user', 5000, 'weekly', 1, 1, strftime('%s','now')),
  ('Complete first order', 'Join any group buy', 2000, 'once', 1, 1, strftime('%s','now'));

INSERT INTO help_articles (topic, title, body, sort) VALUES
  ('general', 'How does the group buy work?', 'Join a campaign by buying slots. When it fills, a winner is drawn.', 0),
  ('payment', 'How to recharge?', 'Go to Wallet > Recharge, pay via UPI/bank and submit the reference number.', 1),
  ('payment', 'How to withdraw?', 'Add a beneficiary, then request a withdrawal from your wallet.', 2);

INSERT INTO pages_content (slug, title, body) VALUES
  ('rule', 'Rules', 'Participation rules and fair-play policy for vuapp campaigns.'),
  ('about', 'About vuapp', 'vuapp is a group-buy and rewards platform.'),
  ('intro', 'Welcome', 'Get started with vuapp.');
