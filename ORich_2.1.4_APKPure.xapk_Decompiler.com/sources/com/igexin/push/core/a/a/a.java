package com.igexin.push.core.a.a;

import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public interface a {
    BaseAction a(JSONObject jSONObject);

    com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction);

    boolean b(PushTaskBean pushTaskBean, BaseAction baseAction);
}
