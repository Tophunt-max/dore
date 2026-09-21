package com.taobao.weex.appfram.navigator;

import android.app.Activity;

/* JADX INFO: loaded from: classes.dex */
public interface INavigator {
    boolean pop(Activity activity, String str);

    boolean push(Activity activity, String str);
}
