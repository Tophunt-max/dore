package com.igexin.assist.sdk;

import android.content.Context;
import com.igexin.assist.control.AbstractPushManager;
import com.igexin.push.core.c.h;
import com.igexin.push.core.f;

/* JADX INFO: loaded from: classes.dex */
public class AssistPushManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AbstractPushManager f70a;

    private AssistPushManager() {
    }

    public static boolean checkSupportDevice(Context context) {
        return a.c(context);
    }

    public static AssistPushManager getInstance() {
        return c.f72a;
    }

    public static String getToken() {
        return f.y;
    }

    public AbstractPushManager getPushManager() {
        return this.f70a;
    }

    public String getSpToken() {
        try {
            return new com.igexin.push.core.c.c(f.f).e();
        } catch (Throwable unused) {
            return null;
        }
    }

    public void initialize(Context context) {
        this.f70a = a.a(context);
    }

    public void register(Context context) {
        AbstractPushManager abstractPushManager = this.f70a;
        if (abstractPushManager != null) {
            abstractPushManager.register(context);
        }
    }

    public void saveToken(String str) {
        h.a().d(str);
    }

    public void setSilentTime(Context context, int i, int i2) {
        AbstractPushManager abstractPushManager = this.f70a;
        if (abstractPushManager != null) {
            abstractPushManager.setSilentTime(context, i, i2);
        }
    }

    public void turnOffPush(Context context) {
        AbstractPushManager abstractPushManager = this.f70a;
        if (abstractPushManager != null) {
            abstractPushManager.turnOffPush(context);
            new com.igexin.push.core.c.c(context).f();
        }
    }

    public void turnOnPush(Context context) {
        AbstractPushManager abstractPushManager = this.f70a;
        if (abstractPushManager != null) {
            abstractPushManager.turnOnPush(context);
        }
    }

    public void unregister(Context context) {
        AbstractPushManager abstractPushManager = this.f70a;
        if (abstractPushManager != null) {
            abstractPushManager.unregister(context);
            new com.igexin.push.core.c.c(context).f();
        }
    }
}
