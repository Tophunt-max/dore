package com.igexin.assist.control.fcm;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GTJobService f69a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private c(GTJobService gTJobService, Looper looper) {
        super(looper);
        this.f69a = gTJobService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f69a.a((Intent) message.obj);
        this.f69a.stopSelf(message.arg1);
    }
}
