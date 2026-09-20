import assert from 'node:assert/strict';
import { readFileSync, readdirSync } from 'node:fs';
import { join } from 'node:path';
import test from 'node:test';
import { DatabaseSync } from 'node:sqlite';

const migrationsDirectory = new URL('../migrations/', import.meta.url);

function database() {
  const db = new DatabaseSync(':memory:');
  db.exec('PRAGMA foreign_keys = ON;');
  for (const filename of readdirSync(migrationsDirectory)
    .filter((name) => name.endsWith('.sql'))
    .sort()) {
    db.exec(readFileSync(new URL(filename, migrationsDirectory), 'utf8'));
  }
  return db;
}

function seedIdentity(db) {
  db.prepare(
    `INSERT INTO users(id,phone_e164,phone_hash,referral_code,role,status,created_at,updated_at)
    VALUES('u1','+919000000001','h1','REF00001','user','active',1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO users(id,phone_e164,phone_hash,referral_code,role,status,created_at,updated_at)
    VALUES('a1','+919000000002','h2','REF00002','admin','active',1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO products(id,title,description,retail_price_minor,currency,status,created_at,updated_at)
    VALUES('p1','Product','',10000,'INR','active',1,1)`,
  ).run();
}

test('all D1 migrations apply from scratch', () => {
  const db = database();
  const tables = db
    .prepare("SELECT COUNT(*) count FROM sqlite_master WHERE type='table'")
    .get();
  assert.ok(tables.count >= 35);
  assert.equal(
    db
      .prepare('SELECT COUNT(*) count FROM payment_methods WHERE enabled=1')
      .get().count,
    0,
  );
  db.close();
});

test('production Worker configuration fails closed for OTP', () => {
  const config = readFileSync(
    new URL('../wrangler.jsonc', import.meta.url),
    'utf8',
  );
  assert.match(config, /"APP_ENV"\s*:\s*"production"/);
  assert.match(config, /"OTP_DEV_MODE"\s*:\s*"false"/);
});

test('campaign economics freeze after activation', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO campaigns(id,product_id,entry_price_minor,total_entries,sold_entries,starts_at,ends_at,status,created_at,updated_at)
    VALUES('c1','p1',100,10,0,1,9999999999,'scheduled',1,1)`,
  ).run();
  db.prepare("UPDATE campaigns SET status='active' WHERE id='c1'").run();
  assert.throws(
    () =>
      db
        .prepare("UPDATE campaigns SET entry_price_minor=200 WHERE id='c1'")
        .run(),
    /campaign economics are frozen/,
  );
  db.close();
});

test('only one payment review decision can win', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO payment_methods(id,type,display_name,instructions,upi_id,currency,enabled,sort_order,created_at,updated_at)
    VALUES('m1','upi','UPI','Pay exact amount','pay@upi','INR',1,0,1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_transactions(id,user_id,payment_method_id,purpose,amount_minor,currency,idempotency_key,status,created_at,updated_at)
    VALUES('pay1','u1','m1','recharge',1000,'INR','key1','under_review',1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_submissions(id,payment_id,user_id,transaction_reference,normalized_reference,idempotency_key,status,submitted_at)
    VALUES('sub1','pay1','u1','ABC123','ABC123','sub-key','submitted',1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_review_decisions(payment_id,submission_id,decision,actor_user_id,created_at)
    VALUES('pay1','sub1','approved','a1',2)`,
  ).run();
  assert.throws(
    () =>
      db
        .prepare(
          `INSERT INTO payment_review_decisions(payment_id,submission_id,decision,reason,actor_user_id,created_at)
    VALUES('pay1','sub1','rejected','conflict','a1',3)`,
        )
        .run(),
    /UNIQUE/,
  );
  db.close();
});

test('protected payment blocks stale reservation cancellation', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO campaigns(id,product_id,entry_price_minor,total_entries,sold_entries,reserved_entries,starts_at,ends_at,status,created_at,updated_at)
    VALUES('c1','p1',100,10,0,1,1,9999999999,'active',1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO orders(id,user_id,campaign_id,title,quantity,amount_minor,currency,status,idempotency_key,reservation_expires_at,created_at,updated_at)
    VALUES('o1','u1','c1','Order',1,100,'INR','pending','order-key',2,1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_methods(id,type,display_name,instructions,upi_id,currency,enabled,sort_order,created_at,updated_at)
    VALUES('m1','upi','UPI','Pay exact amount','pay@upi','INR',1,0,1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_transactions(id,user_id,order_id,payment_method_id,purpose,amount_minor,currency,idempotency_key,status,created_at,updated_at)
    VALUES('pay1','u1','o1','m1','order',100,'INR','payment-key','under_review',1,1)`,
  ).run();
  assert.throws(
    () =>
      db.prepare("UPDATE orders SET status='cancelled' WHERE id='o1'").run(),
    /protected payment/,
  );
  db.close();
});

test('refresh token rotation is one-time', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO refresh_tokens(id,user_id,token_hash,device_id,expires_at,created_at)
    VALUES('r1','u1','token1','device1',9999999999,1),('r2','u1','token2','device1',9999999999,1),('r3','u1','token3','device1',9999999999,1)`,
  ).run();
  db.prepare(
    "INSERT INTO refresh_token_rotations(previous_token_id,replacement_token_id,rotated_at) VALUES('r1','r2',2)",
  ).run();
  db.prepare(
    "UPDATE refresh_tokens SET revoked_at=2,replaced_by_token_id='r2' WHERE id='r1'",
  ).run();
  assert.throws(
    () =>
      db
        .prepare(
          "INSERT INTO refresh_token_rotations(previous_token_id,replacement_token_id,rotated_at) VALUES('r1','r3',3)",
        )
        .run(),
    /refresh token replay|UNIQUE/,
  );
  db.close();
});

test('money ledger and completed refunds are immutable', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO ledger_entries(id,transaction_id,user_id,direction,amount_minor,currency,entry_type,description,reference_type,reference_id,created_at)
    VALUES('l1','t1','u1','credit',100,'INR','seed','seed','test','1',1)`,
  ).run();
  assert.throws(
    () =>
      db
        .prepare("UPDATE ledger_entries SET amount_minor=200 WHERE id='l1'")
        .run(),
    /immutable/,
  );
  assert.throws(
    () => db.prepare("DELETE FROM ledger_entries WHERE id='l1'").run(),
    /immutable/,
  );
  db.close();
});

test('failed refund can re-enter pending without creating a second refund', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO payment_methods(id,type,display_name,instructions,upi_id,currency,enabled,sort_order,created_at,updated_at)
    VALUES('m1','upi','UPI','Pay exact amount','pay@upi','INR',1,0,1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_transactions(id,user_id,payment_method_id,purpose,amount_minor,currency,idempotency_key,status,created_at,updated_at)
    VALUES('pay1','u1','m1','recharge',1000,'INR','key1','approved',1,1)`,
  ).run();
  db.prepare(
    `INSERT INTO payment_refunds(id,payment_id,amount_minor,currency,reason,status,requested_by_user_id,idempotency_key,payout_reference,created_at,failure_reason)
    VALUES('ref1','pay1',1000,'INR','initial','failed','a1','refund-key-1','BANK-1',1,'insufficient wallet')`,
  ).run();
  const changed = db
    .prepare(
      `UPDATE payment_refunds SET status='pending',failure_reason=NULL,idempotency_key='refund-key-2',reason='retry',payout_reference='BANK-2'
    WHERE id='ref1' AND status='failed'`,
    )
    .run();
  assert.equal(changed.changes, 1);
  const row = db
    .prepare(
      "SELECT status,idempotency_key,payout_reference FROM payment_refunds WHERE id='ref1'",
    )
    .get();
  assert.deepEqual(
    { ...row },
    {
      status: 'pending',
      idempotency_key: 'refund-key-2',
      payout_reference: 'BANK-2',
    },
  );
  assert.equal(
    db
      .prepare(
        "SELECT COUNT(*) count FROM payment_refunds WHERE payment_id='pay1'",
      )
      .get().count,
    1,
  );
  db.close();
});

test('broadcast recipients are resumable and idempotent', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO notification_broadcasts(id,title,body,audience,status,created_by_user_id,created_at)
    VALUES('b1','Title','Body','active_users','processing','a1',1)`,
  ).run();
  db.prepare(
    `INSERT INTO notification_inbox(id,user_id,type,title,body,entity_id,created_at)
    VALUES('b1:u1','u1','broadcast','Title','Body','b1',1)`,
  ).run();
  db.prepare(
    `INSERT INTO notification_broadcast_recipients(broadcast_id,user_id,notification_id,created_at)
    VALUES('b1','u1','b1:u1',1)`,
  ).run();
  db.prepare(
    `INSERT OR IGNORE INTO notification_broadcast_recipients(broadcast_id,user_id,notification_id,created_at)
    VALUES('b1','u1','b1:u1',2)`,
  ).run();
  assert.equal(
    db
      .prepare(
        "SELECT COUNT(*) count FROM notification_broadcast_recipients WHERE broadcast_id='b1'",
      )
      .get().count,
    1,
  );
  db.close();
});

test('share history contains only persisted owned rows', () => {
  const db = database();
  seedIdentity(db);
  db.prepare(
    `INSERT INTO share_posts(id,user_id,body,status,created_at,updated_at)
    VALUES('s1','u1','A persisted story','published',1,1)`,
  ).run();
  assert.equal(
    db
      .prepare(
        "SELECT COUNT(*) count FROM share_posts WHERE user_id='u1' AND status='published'",
      )
      .get().count,
    1,
  );
  db.prepare(
    "UPDATE share_posts SET status='removed' WHERE id='s1' AND user_id='u1'",
  ).run();
  assert.equal(
    db
      .prepare(
        "SELECT COUNT(*) count FROM share_posts WHERE user_id='u1' AND status='published'",
      )
      .get().count,
    0,
  );
  db.close();
});

test('staff role middleware keeps support away from finance routes', () => {
  const source = readFileSync(
    new URL('../src/middleware/auth.ts', import.meta.url),
    'utf8',
  );
  assert.match(source, /role === 'support'/);
  assert.match(source, /path\.startsWith\('\/api\/v1\/admin\/support'\)/);
  assert.doesNotMatch(source, /role === 'support'[\s\S]{0,200}admin\/payments/);
});
