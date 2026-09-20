-- Demo/sample data so every admin + user-app page is populated for testing.
-- Idempotent: fixed IDs + INSERT OR IGNORE. Safe to re-run.

-- Products (linked to the seeded categories)
INSERT OR IGNORE INTO products (id,title,description,image_key,retail_price_minor,currency,status,category_id,created_at,updated_at) VALUES
 ('seed-prod-iphone','iPhone 15 Pro lucky draw','Win the latest iPhone 15 Pro (256GB) from just 1 rupee per entry.',NULL,12999900,'INR','active','11111111-2222-4333-8444-555555550001',strftime('%s','now'),strftime('%s','now')),
 ('seed-prod-cash','₹50,000 Cash award','A cash prize pool of fifty thousand rupees, paid straight to your wallet.',NULL,5000000,'INR','active','11111111-2222-4333-8444-555555550002',strftime('%s','now'),strftime('%s','now')),
 ('seed-prod-scooter','Electric scooter draw','Win a brand-new electric scooter. High winning odds this round.',NULL,9999900,'INR','active','11111111-2222-4333-8444-555555550003',strftime('%s','now'),strftime('%s','now')),
 ('seed-prod-tv','Smart TV 55" draw','Win a 55-inch 4K smart TV.',NULL,6499900,'INR','active','11111111-2222-4333-8444-555555550001',strftime('%s','now'),strftime('%s','now'));

-- Campaigns (active rounds for the products)
INSERT OR IGNORE INTO campaigns (id,product_id,entry_price_minor,total_entries,sold_entries,starts_at,ends_at,status,created_at,updated_at) VALUES
 ('seed-camp-iphone','seed-prod-iphone',100,1300,842,strftime('%s','now','-2 days'),strftime('%s','now','+5 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('seed-camp-cash','seed-prod-cash',500,1000,410,strftime('%s','now','-1 days'),strftime('%s','now','+3 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('seed-camp-scooter','seed-prod-scooter',100,1000,933,strftime('%s','now','-3 days'),strftime('%s','now','+2 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('seed-camp-tv','seed-prod-tv',200,650,120,strftime('%s','now'),strftime('%s','now','+7 days'),'active',strftime('%s','now'),strftime('%s','now'));

-- Banners
INSERT OR IGNORE INTO banners (id,title,body,image_key,action_url,status,starts_at,ends_at,sort_order,created_at,updated_at) VALUES
 ('seed-banner-1','Win from ₹1','Join lucky draws and win big prizes',NULL,'/products','active',NULL,NULL,1,strftime('%s','now'),strftime('%s','now')),
 ('seed-banner-2','Invite & Earn','Invite friends and earn rewards',NULL,'/referrals','active',NULL,NULL,2,strftime('%s','now'),strftime('%s','now'));

-- Tasks
INSERT OR IGNORE INTO task_definitions (id,title,description,period,reward_coins,reward_minor,status,sort_order,created_at,updated_at) VALUES
 ('seed-task-daily','Daily check-in','Open the app every day to earn coins','daily',10,0,'active',1,strftime('%s','now'),strftime('%s','now')),
 ('seed-task-invite','Invite a friend','Invite a friend who registers','once',50,2500,'active',2,strftime('%s','now'),strftime('%s','now')),
 ('seed-task-firstbuy','First entry','Buy your first lucky draw entry','once',100,0,'active',3,strftime('%s','now'),strftime('%s','now'));

-- Membership plans (VIP)
INSERT OR IGNORE INTO membership_plans (id,name,description,benefits_json,price_minor,currency,duration_days,status,created_at,updated_at) VALUES
 ('seed-plan-silver','Silver VIP','Monthly VIP with reduced fees','["Reduced withdrawal fee","Invite rebate","Priority support"]',49900,'INR',30,'active',strftime('%s','now'),strftime('%s','now')),
 ('seed-plan-gold','Gold VIP','Yearly VIP with best benefits','["Not-win full refund","Highest invite rebate","Zero withdrawal fee","Priority support"]',499900,'INR',365,'active',strftime('%s','now'),strftime('%s','now'));

-- Finance offers (informational)
INSERT OR IGNORE INTO finance_offers (id,provider_name,title,description,category,disclaimer,external_url,status,sort_order,created_at,updated_at) VALUES
 ('seed-fin-savings','Partner Bank','Daily Saver Plan','A savings information plan with daily interest tracking.','savings_information','Informational only. Returns are settled manually by the administrator. Not financial advice.',NULL,'active',1,strftime('%s','now'),strftime('%s','now')),
 ('seed-fin-insure','Partner Insure','Micro Insurance','Low-cost micro insurance information.','insurance','Informational only. Contact the provider for terms.',NULL,'active',2,strftime('%s','now'),strftime('%s','now'));

-- Prize-pool activity (active)
INSERT OR IGNORE INTO prize_activities (id,title,description,rules,prize_pool_minor,currency,winners_count,required_invites,image_key,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('seed-activity-1','₹10,000 Prize Pool','Invite friends and share a ten thousand rupee prize pool.','Invite 3 friends who register and top up before the deadline. Winners are drawn at the deadline and cash is credited to the wallet.',1000000,'INR',5,3,NULL,'active',strftime('%s','now'),strftime('%s','now','+7 days'),strftime('%s','now'),strftime('%s','now'));

-- Payment methods (for manual recharge/order payment)
INSERT OR IGNORE INTO payment_methods (id,type,display_name,instructions,account_name,account_number,bank_name,ifsc,upi_id,currency,enabled,sort_order,created_at,updated_at) VALUES
 ('seed-pm-upi','upi','Company UPI','Pay to the UPI ID and submit the transaction reference.',NULL,NULL,NULL,NULL,'oriva@upi','INR',1,1,strftime('%s','now'),strftime('%s','now')),
 ('seed-pm-bank','bank','Company Bank','Transfer to the bank account and submit the UTR reference.','Oriva Pvt Ltd','000111222333','HDFC Bank','HDFC0000001',NULL,'INR',1,2,strftime('%s','now'),strftime('%s','now'));

-- Game (Lucky Ball / parity)
INSERT OR IGNORE INTO game_definitions (id,title,description,rules,daily_play_limit,points_per_play,status,created_at,updated_at) VALUES
 ('seed-game-lucky','Lucky Ball','Pick a colour or number to earn points.','Select Green, Violet, or Red. Non-monetary points only.',10,5,'active',strftime('%s','now'),strftime('%s','now'));

-- Discount offers
INSERT OR IGNORE INTO discount_offers (id,code,title,description,discount_type,value,max_discount_minor,minimum_order_minor,redemption_limit,per_user_limit,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('seed-disc-welcome','WELCOME10','Welcome 10% off','Ten percent off your first entry','percentage',10,5000,0,1000,1,'active',NULL,NULL,strftime('%s','now'),strftime('%s','now')),
 ('seed-disc-flat','FLAT5','₹5 off','Flat five rupees off','fixed',500,NULL,10000,500,1,'active',NULL,NULL,strftime('%s','now'),strftime('%s','now'));

-- Content pages (help / about)
INSERT OR IGNORE INTO content_pages (id,slug,title,body,locale,status,version,created_at,updated_at) VALUES
 ('seed-content-about','about','About Oriva','Oriva is a lucky-draw platform where you can join from as little as ₹1 for a chance to win great prizes.','en','published',1,strftime('%s','now'),strftime('%s','now')),
 ('seed-content-help','help','Help & FAQ','Browse products, tap Join, complete payment to receive a lucky code. Winners are drawn when a campaign is full.','en','published',1,strftime('%s','now'),strftime('%s','now'));

-- Referral program (active)
INSERT OR IGNORE INTO referral_programs (id,name,referrer_reward_minor,referred_reward_minor,referrer_reward_coins,referred_reward_coins,currency,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('seed-refprog-1','Launch referral program',2500,1000,50,20,'INR','active',NULL,NULL,strftime('%s','now'),strftime('%s','now'));

-- Notification template
INSERT OR IGNORE INTO notification_templates (id,key,title_template,body_template,status,created_at,updated_at) VALUES
 ('seed-nt-winner','winner_announced','You won!','Congratulations {name}, you won {product}.','active',strftime('%s','now'),strftime('%s','now'));
