package com.igexin.push.core.stub;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.IBinder;
import android.os.Message;
import android.view.KeyEvent;
import android.view.Menu;
import com.igexin.push.core.e;
import com.igexin.push.core.g.a;
import com.igexin.push.core.g.b;
import com.igexin.push.core.s;
import com.igexin.sdk.IPushCore;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class PushCore implements IPushCore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f256a;
    private Map<Activity, a> b = new HashMap();

    @Override // com.igexin.sdk.IPushCore
    public void onActivityConfigurationChanged(Activity activity, Configuration configuration) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.a(configuration);
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public boolean onActivityCreateOptionsMenu(Activity activity, Menu menu) {
        a aVar = this.b.get(activity);
        return aVar != null && aVar.a(menu);
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityDestroy(Activity activity) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.h();
            this.b.remove(activity);
            b.a().c(aVar);
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public boolean onActivityKeyDown(Activity activity, int i, KeyEvent keyEvent) {
        a aVar = this.b.get(activity);
        return aVar != null && aVar.a(i, keyEvent);
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityNewIntent(Activity activity, Intent intent) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.a(intent);
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityPause(Activity activity) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityRestart(Activity activity) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityResume(Activity activity) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityStart(Activity activity, Intent intent) {
        if (activity == null || intent == null || !intent.hasExtra("activityid")) {
            return;
        }
        a aVarA = b.a().a(Long.valueOf(intent.getLongExtra("activityid", 0L)));
        if (aVarA == null) {
            activity.finish();
            return;
        }
        aVarA.a(activity);
        this.b.put(activity, aVarA);
        aVarA.c();
    }

    @Override // com.igexin.sdk.IPushCore
    public void onActivityStop(Activity activity) {
        a aVar = this.b.get(activity);
        if (aVar != null) {
            aVar.g();
        }
    }

    @Override // com.igexin.sdk.IPushCore
    public IBinder onServiceBind(Intent intent) {
        return null;
    }

    @Override // com.igexin.sdk.IPushCore
    public void onServiceDestroy() {
    }

    @Override // com.igexin.sdk.IPushCore
    public int onServiceStartCommand(Intent intent, int i, int i2) {
        if (this.f256a != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = com.igexin.push.core.b.e;
            messageObtain.obj = intent;
            this.f256a.a(messageObtain);
        }
        return s.a().d();
    }

    @Override // com.igexin.sdk.IPushCore
    public boolean start(Context context) {
        e eVarA = e.a();
        this.f256a = eVarA;
        eVarA.a(context);
        return true;
    }
}
