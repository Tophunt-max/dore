package com.igexin.push.extension.distribution.gbd.i;

import com.igexin.push.core.bean.PushTaskBean;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f407a = "GBD-FeedbackUtils";

    public static void a(String str, String str2, String str3) {
        PushTaskBean pushTaskBean = new PushTaskBean();
        pushTaskBean.setTaskId(str);
        pushTaskBean.setMessageId(str2);
        pushTaskBean.setAppid(com.igexin.push.core.f.f238a);
        pushTaskBean.setAppKey(com.igexin.push.core.f.b);
        j.a(f407a, "actionID = " + str3);
        com.igexin.push.core.a.f.a().b(pushTaskBean, str3);
    }
}
