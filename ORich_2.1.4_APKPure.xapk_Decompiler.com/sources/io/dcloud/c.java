package io.dcloud;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.dcloud.android.widget.toast.ToastCompat;
import io.dcloud.common.DHInterface.IActivityHandler;
import io.dcloud.common.DHInterface.IReflectAble;
import io.dcloud.common.adapter.util.AndroidResources;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.constant.DataInterface;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.ImageLoaderUtil;
import io.dcloud.feature.internal.reflect.BroadcastReceiver;
import io.src.dcloud.adapter.DCloudBaseActivity;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
abstract class c extends DCloudBaseActivity implements IActivityHandler, IReflectAble {
    private static String d = "www/";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f523a = 0;
    private HashMap<String, d> b = new HashMap<>();
    private HashMap<String, d> c = new HashMap<>();

    c() {
    }

    private void b() {
        Iterator<d> it = this.b.values().iterator();
        while (it.hasNext()) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(it.next());
        }
        this.b.clear();
        Iterator<d> it2 = this.c.values().iterator();
        while (it2.hasNext()) {
            unregisterReceiver(it2.next());
        }
        this.c.clear();
    }

    public void callBack(String str, Bundle bundle) {
    }

    public int getActivityState() {
        return this.f523a;
    }

    public Context getContext() {
        return this.that;
    }

    public String getUrlByFilePath(String str, String str2) {
        return DataInterface.getBaseUrl() + str2.substring(str2.indexOf(d) + d.length());
    }

    public boolean isMultiProcessMode() {
        return false;
    }

    public void onAsyncStartAppEnd(String str, Object obj) {
    }

    public Object onAsyncStartAppStart(String str) {
        return null;
    }

    @Override // io.src.dcloud.adapter.DCloudBaseActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f523a = 1;
        super.onCreate(bundle);
        AndroidResources.initAndroidResources(this.that);
        BaseInfo.parseControl(getContext(), null, null);
        if (BaseInfo.SyncDebug && !getPackageName().equals(getResources().getString(PdrR.DCLOUD_PACKAGE_NAME_BASE))) {
            ToastCompat.makeText((Context) this, PdrR.DCLOUD_SYNC_DEBUD_MESSAGE, 0).show();
        }
        DeviceInfo.initPath(this.that);
        ImageLoaderUtil.initImageLoader(this.that);
        ImageLoaderUtil.initImageLoaderL(this.that);
    }

    @Override // io.src.dcloud.adapter.DCloudBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f523a = 0;
        super.onDestroy();
        try {
            b();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        this.f523a = 2;
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        this.f523a = 1;
        super.onResume();
    }

    public void registerLocalReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        d dVar = new d(broadcastReceiver, intentFilter);
        try {
            LocalBroadcastManager.getInstance(this).registerReceiver(dVar, intentFilter);
            this.b.put(broadcastReceiver.toString(), dVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        Intent intentRegisterReceiver;
        d dVar = new d(broadcastReceiver, intentFilter);
        try {
            intentRegisterReceiver = registerReceiver(dVar, intentFilter, str, handler);
        } catch (Exception e) {
            e = e;
            intentRegisterReceiver = null;
        }
        try {
            this.c.put(broadcastReceiver.toString(), dVar);
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
        }
        return intentRegisterReceiver;
    }

    public void sendLocalBroadcast(Intent intent) {
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        d dVarRemove = this.b.remove(broadcastReceiver.toString());
        if (dVarRemove != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(dVarRemove);
        }
        d dVarRemove2 = this.c.remove(broadcastReceiver.toString());
        if (dVarRemove2 != null) {
            unregisterReceiver(dVarRemove2);
        }
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        d dVar = new d(broadcastReceiver, intentFilter);
        try {
            registerReceiver(dVar, intentFilter);
            this.c.put(broadcastReceiver.toString(), dVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
