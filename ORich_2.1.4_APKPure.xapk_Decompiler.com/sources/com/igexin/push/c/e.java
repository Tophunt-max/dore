package com.igexin.push.c;

import com.taobao.weex.el.parse.Operators;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f113a;
    public long b;

    public e a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return this;
        }
        try {
            this.f113a = jSONObject.getString("address");
            this.b = jSONObject.getLong("outdateTime");
        } catch (Exception unused) {
        }
        return this;
    }

    public JSONObject a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("address", this.f113a);
            jSONObject.put("outdateTime", this.b);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString() {
        return "ServerAddress{address='" + this.f113a + Operators.SINGLE_QUOTE + ", outdateTime=" + this.b + Operators.BLOCK_END;
    }
}
