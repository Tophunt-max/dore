package com.igexin.sdk;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class c extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GTIntentService f461a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private c(GTIntentService gTIntentService, Looper looper) {
        super(looper);
        this.f461a = gTIntentService;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f461a.onHandleIntent((Intent) message.obj);
        this.f461a.stopSelf(message.arg1);
    }
}
