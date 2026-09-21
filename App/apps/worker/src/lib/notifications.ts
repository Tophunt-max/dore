import type { NotificationType } from '@oriva/shared';

export interface NotificationInput {
  userId: string;
  type: NotificationType;
  title: string;
  body: string;
  entityId?: string | null;
}

export function notificationStatements(
  db: D1Database,
  input: NotificationInput,
  now: number,
  notificationId: string = crypto.randomUUID(),
): { id: string; statements: D1PreparedStatement[] } {
  const outboxId = crypto.randomUUID();
  return {
    id: notificationId,
    statements: [
      db
        .prepare(
          `INSERT OR IGNORE INTO notification_inbox
         (id,user_id,type,title,body,entity_id,created_at) VALUES(?,?,?,?,?,?,?)`,
        )
        .bind(
          notificationId,
          input.userId,
          input.type,
          input.title,
          input.body,
          input.entityId ?? null,
          now,
        ),
      db
        .prepare(
          `INSERT OR IGNORE INTO outbox_events
         (id,event_type,aggregate_type,aggregate_id,payload_json,status,attempts,available_at,created_at)
         VALUES(?,'notification.dispatch','notification',?,?,'pending',0,?,?)`,
        )
        .bind(
          outboxId,
          notificationId,
          JSON.stringify({ notificationId }),
          now,
          now,
        ),
    ],
  };
}
