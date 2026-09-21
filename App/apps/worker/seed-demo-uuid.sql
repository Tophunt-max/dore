-- UUID-based demo seed (fixes UUID-validated flows: recharge, orders, payments, VIP)
-- Remove any previous non-UUID demo rows first.
DELETE FROM campaigns WHERE id LIKE 'seed-%';
DELETE FROM products WHERE id LIKE 'seed-%';
DELETE FROM banners WHERE id LIKE 'seed-%';
DELETE FROM task_definitions WHERE id LIKE 'seed-%';
DELETE FROM membership_plans WHERE id LIKE 'seed-%';
DELETE FROM finance_offers WHERE id LIKE 'seed-%';
DELETE FROM prize_activities WHERE id LIKE 'seed-%';
DELETE FROM payment_methods WHERE id LIKE 'seed-%';
DELETE FROM game_definitions WHERE id LIKE 'seed-%';
DELETE FROM discount_offers WHERE id LIKE 'seed-%';
DELETE FROM content_pages WHERE id LIKE 'seed-%';
DELETE FROM referral_programs WHERE id LIKE 'seed-%';
DELETE FROM notification_templates WHERE id LIKE 'seed-%';

INSERT OR IGNORE INTO products (id,title,description,image_key,retail_price_minor,currency,status,category_id,created_at,updated_at) VALUES
 ('bf07d890-f80a-48ea-a077-b4cffdba9535','iPhone 15 Pro lucky draw','Win the latest iPhone 15 Pro from just 1 rupee per entry.',NULL,12999900,'INR','active','11111111-2222-4333-8444-555555550001',strftime('%s','now'),strftime('%s','now')),
 ('ec39704d-a1df-4b7d-816c-c5d71bc917c2','Rs 50,000 Cash award','A cash prize pool paid straight to your wallet.',NULL,5000000,'INR','active','11111111-2222-4333-8444-555555550002',strftime('%s','now'),strftime('%s','now')),
 ('69354270-be09-426c-8e0f-222bf7887f57','Electric scooter draw','Win a brand-new electric scooter.',NULL,9999900,'INR','active','11111111-2222-4333-8444-555555550003',strftime('%s','now'),strftime('%s','now')),
 ('956f49e6-541c-46ff-bb5a-fdb770db5c0c','Smart TV 55 inch draw','Win a 55-inch 4K smart TV.',NULL,6499900,'INR','active','11111111-2222-4333-8444-555555550001',strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO campaigns (id,product_id,entry_price_minor,total_entries,sold_entries,starts_at,ends_at,status,created_at,updated_at) VALUES
 ('604414f0-7b64-4b53-8624-22c9381ad96d','bf07d890-f80a-48ea-a077-b4cffdba9535',100,1300,842,strftime('%s','now'),strftime('%s','now','+5 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('8150941e-d2bb-467b-b64b-f8752a4da4fb','ec39704d-a1df-4b7d-816c-c5d71bc917c2',500,1000,410,strftime('%s','now'),strftime('%s','now','+3 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('3a5b3216-7245-4d20-a6a5-d9ed7e600d29','69354270-be09-426c-8e0f-222bf7887f57',100,1000,933,strftime('%s','now'),strftime('%s','now','+2 days'),'active',strftime('%s','now'),strftime('%s','now')),
 ('cbe9be8f-3268-444e-a486-763eb7d56dd6','956f49e6-541c-46ff-bb5a-fdb770db5c0c',200,650,120,strftime('%s','now'),strftime('%s','now','+7 days'),'active',strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO payment_methods (id,type,display_name,instructions,account_name,account_number,bank_name,ifsc,upi_id,currency,enabled,sort_order,created_at,updated_at) VALUES
 ('4a995b4e-86a8-473c-a571-4c96fcb09b75','upi','Company UPI','Pay to the UPI ID and submit the transaction reference.',NULL,NULL,NULL,NULL,'oriva@upi','INR',1,1,strftime('%s','now'),strftime('%s','now')),
 ('8c740eae-8091-4028-a7c6-a62bb7714e4c','bank','Company Bank','Transfer to the bank account and submit the UTR reference.','Oriva Pvt Ltd','000111222333','HDFC Bank','HDFC0000001',NULL,'INR',1,2,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO membership_plans (id,name,description,benefits_json,price_minor,currency,duration_days,status,created_at,updated_at) VALUES
 ('5d9c3e28-37de-46fd-b0bb-21e35ee4eef2','Silver VIP','Monthly VIP with reduced fees','["Reduced withdrawal fee","Invite rebate","Priority support"]',49900,'INR',30,'active',strftime('%s','now'),strftime('%s','now')),
 ('d7258bcd-c07e-491f-9211-97b67bbd187e','Gold VIP','Yearly VIP with best benefits','["Not-win full refund","Highest invite rebate","Zero withdrawal fee"]',499900,'INR',365,'active',strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO finance_offers (id,provider_name,title,description,category,disclaimer,external_url,status,sort_order,created_at,updated_at) VALUES
 ('bc8a54a6-bd91-4eb8-bac7-58cd1702c172','Partner Bank','Daily Saver Plan','A savings information plan with daily interest tracking.','savings_information','Informational only. Returns settled manually by admin.',NULL,'active',1,strftime('%s','now'),strftime('%s','now')),
 ('e6467892-c2be-4da5-add4-3265b17c3edc','Partner Insure','Micro Insurance','Low-cost micro insurance information.','insurance','Informational only. Contact provider for terms.',NULL,'active',2,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO prize_activities (id,title,description,rules,prize_pool_minor,currency,winners_count,required_invites,image_key,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('5649d588-f536-490d-a9ef-76f645552dfa','Rs 10,000 Prize Pool','Invite friends and share a prize pool.','Invite 3 friends who register and top up before the deadline.',1000000,'INR',5,3,NULL,'active',strftime('%s','now'),strftime('%s','now','+7 days'),strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO banners (id,title,body,image_key,action_url,status,starts_at,ends_at,sort_order,created_at,updated_at) VALUES
 ('aad11ced-bc59-4552-aa15-355100ea677c','Win from Rs 1','Join lucky draws and win big prizes',NULL,'/products','active',NULL,NULL,1,strftime('%s','now'),strftime('%s','now')),
 ('9fd3969b-c3ed-4aa5-ba51-45bb921806bd','Invite & Earn','Invite friends and earn rewards',NULL,'/referrals','active',NULL,NULL,2,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO task_definitions (id,title,description,period,reward_coins,reward_minor,status,sort_order,created_at,updated_at) VALUES
 ('18276d13-2a5b-40f5-8e67-fab8765198c6','Daily check-in','Open the app every day to earn coins','daily',10,0,'active',1,strftime('%s','now'),strftime('%s','now')),
 ('0bc6545a-ee0f-4988-a374-1221821d8113','Invite a friend','Invite a friend who registers','once',50,2500,'active',2,strftime('%s','now'),strftime('%s','now')),
 ('2203da64-ce43-46fe-8f39-5842b826dcc7','First entry','Buy your first lucky draw entry','once',100,0,'active',3,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO game_definitions (id,title,description,rules,daily_play_limit,points_per_play,status,created_at,updated_at) VALUES
 ('17818a62-e0be-40f5-893d-89a48587fe14','Lucky Ball','Pick a colour or number to earn points.','Select Green, Violet, or Red. Non-monetary points only.',10,5,'active',strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO discount_offers (id,code,title,description,discount_type,value,max_discount_minor,minimum_order_minor,redemption_limit,per_user_limit,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('54a0cfef-137a-4b50-a891-91a583d28c07','WELCOME10','Welcome 10% off','Ten percent off your first entry','percentage',10,5000,0,1000,1,'active',NULL,NULL,strftime('%s','now'),strftime('%s','now')),
 ('beb5f65f-4ccf-4c4e-a20f-7633cdb53894','FLAT5','Rs 5 off','Flat five rupees off','fixed',500,NULL,10000,500,1,'active',NULL,NULL,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO content_pages (id,slug,title,body,locale,status,version,created_at,updated_at) VALUES
 ('2c197f31-4edf-4433-be3a-4d38bbbd9820','about','About Oriva','Oriva is a lucky-draw platform where you can join from as little as Rs 1.','en','published',1,strftime('%s','now'),strftime('%s','now')),
 ('a3e08118-1514-4bbc-abfd-37313e69e1c2','help','Help & FAQ','Browse products, tap Join, complete payment to receive a lucky code.','en','published',1,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO referral_programs (id,name,referrer_reward_minor,referred_reward_minor,referrer_reward_coins,referred_reward_coins,currency,status,starts_at,ends_at,created_at,updated_at) VALUES
 ('b58247c0-6c6f-4694-ab2c-125a9a6d3edd','Launch referral program',2500,1000,50,20,'INR','active',NULL,NULL,strftime('%s','now'),strftime('%s','now'));

INSERT OR IGNORE INTO notification_templates (id,key,title_template,body_template,status,created_at,updated_at) VALUES
 ('d49cf59b-ca5d-4f82-83b3-fc8987ff417b','winner_announced','You won!','Congratulations {name}, you won {product}.','active',strftime('%s','now'),strftime('%s','now'));
