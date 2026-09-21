package com.igexin.sdk;

import android.app.Activity;
import com.igexin.push.core.s;

/* JADX INFO: loaded from: classes.dex */
public class GTServiceManager {
    private GTServiceManager() {
    }

    public static GTServiceManager getInstance() {
        return e.f462a;
    }

    public void onActivityCreate(Activity activity) {
        s.a().a(activity);
    }
}
