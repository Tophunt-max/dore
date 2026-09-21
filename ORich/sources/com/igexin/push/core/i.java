package com.igexin.push.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.igexin.sdk.PushConsts;

/* JADX INFO: loaded from: classes.dex */
public class i implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f245a;
    private int b;

    private void a(Activity activity) {
        try {
            com.igexin.b.a.c.b.a("GALC|" + activity.getComponentName().getClassName() + " onAStart " + this.b);
            if (this.b == 0) {
                com.igexin.b.a.c.b.a("GALC|>>>>>> FG");
                Context applicationContext = activity.getApplicationContext();
                if (com.igexin.push.util.g.a(applicationContext) || System.currentTimeMillis() - this.f245a <= 60000) {
                    return;
                }
                Intent intent = new Intent(applicationContext, (Class<?>) com.igexin.push.core.a.f.a().a(applicationContext));
                intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_ONRESUME);
                s.a().a(applicationContext, intent);
                com.igexin.b.a.c.b.a("GALC|on fg, start>>>>>>");
                this.f245a = System.currentTimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (activity == null) {
            return;
        }
        a(activity);
        this.b++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity == null) {
            return;
        }
        int i = this.b - 1;
        this.b = i;
        if (i < 0) {
            i = 0;
        }
        this.b = i;
        com.igexin.b.a.c.b.a("GALC|" + activity.getComponentName().getClassName() + " onAStopp " + this.b);
    }
}
