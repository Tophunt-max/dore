package com.igexin.assist.action;

import android.text.TextUtils;
import com.igexin.assist.MessageBean;
import com.igexin.assist.sdk.AssistPushConsts;

/* JADX INFO: loaded from: classes.dex */
class b extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    MessageBean f62a;
    final /* synthetic */ MessageManger b;

    b(MessageManger messageManger, MessageBean messageBean) {
        this.b = messageManger;
        this.f62a = messageBean;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            MessageBean messageBean = this.f62a;
            if (messageBean != null) {
                if (messageBean.getMessageType().equals("token")) {
                    this.b.a(this.f62a.getContext(), this.f62a.getStringMessage());
                } else if (this.f62a.getMessageType().equals(AssistPushConsts.MSG_TYPE_PAYLOAD)) {
                    if (!TextUtils.isEmpty(this.f62a.getStringMessage())) {
                        d dVar = new d();
                        dVar.a(this.f62a);
                        if (dVar.a() && dVar.f().equals(AssistPushConsts.MSG_VALUE_PAYLOAD)) {
                            this.b.a(dVar, this.f62a.getContext());
                        }
                    }
                } else if (this.f62a.getMessageType().equals(AssistPushConsts.MSG_TYPE_ACTIONS) && !TextUtils.isEmpty(this.f62a.getStringMessage())) {
                    d dVar2 = new d();
                    dVar2.a(this.f62a);
                    if (dVar2.a() && dVar2.f().equals(AssistPushConsts.MSG_VALUE_PAYLOAD)) {
                        this.b.a(this.f62a.getContext(), dVar2);
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
