package com.igexin.push.extension.distribution.basic.j;

import android.app.Notification;
import android.app.NotificationManager;

/* JADX INFO: loaded from: classes.dex */
public class k {
    public static void a(NotificationManager notificationManager, int i, Notification notification, int i2) {
        try {
            if (notification.icon == 0 || com.igexin.push.core.f.f.getResources().getDrawable(notification.icon) != null) {
                notificationManager.notify(i, notification);
                return;
            }
            com.igexin.b.a.c.b.a("NotificationShow|showNotification smallIconId: " + notification.icon + " couldn't find resource");
        } catch (Throwable unused) {
        }
    }
}
