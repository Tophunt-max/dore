package io.dcloud;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
class d extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    io.dcloud.feature.internal.reflect.BroadcastReceiver f614a;
    IntentFilter b;

    d(io.dcloud.feature.internal.reflect.BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.f614a = null;
        this.b = null;
        this.f614a = broadcastReceiver;
        this.b = intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        IntentFilter intentFilter;
        if (this.f614a == null || (intentFilter = this.b) == null || !intentFilter.hasAction(intent.getAction())) {
            return;
        }
        this.f614a.onReceive(context, intent);
    }
}
