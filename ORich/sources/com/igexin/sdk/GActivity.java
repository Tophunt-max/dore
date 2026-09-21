package com.igexin.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.igexin.push.core.s;

/* JADX INFO: loaded from: classes.dex */
public class GActivity extends Activity {
    public static final String TAG = "com.igexin.sdk.GActivity";

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Intent intent = new Intent(this, (Class<?>) com.igexin.push.core.a.f.a().a((Context) this));
        try {
            super.onCreate(bundle);
            Intent intent2 = getIntent();
            if (intent2 != null && intent2.hasExtra(PushConsts.CMD_ACTION) && intent2.hasExtra("isSlave")) {
                intent.putExtra(PushConsts.CMD_ACTION, intent2.getStringExtra(PushConsts.CMD_ACTION));
                intent.putExtra("isSlave", intent2.getBooleanExtra("isSlave", false));
                if (intent2.hasExtra("op_app")) {
                    intent.putExtra("op_app", intent2.getStringExtra("op_app"));
                }
                com.igexin.b.a.c.b.a("GActivity action = " + intent2.getStringExtra(PushConsts.CMD_ACTION) + ", isSlave = " + intent2.getBooleanExtra("isSlave", false));
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(TAG + "|put extra exception" + th.toString());
        }
        s.a().a(this, intent);
        com.igexin.b.a.c.b.a(TAG + "|start PushService from GActivity");
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }
}
