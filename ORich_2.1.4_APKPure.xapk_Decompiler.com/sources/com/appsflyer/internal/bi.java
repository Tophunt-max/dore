package com.appsflyer.internal;

import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public final class bi<Body> {
    final int AFKeystoreWrapper;
    private final boolean valueOf;
    final Body values;

    public bi(Body body, int i, boolean z) {
        this.values = body;
        this.AFKeystoreWrapper = i;
        this.valueOf = z;
    }

    public final boolean AFInAppEventType() {
        return this.valueOf;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            bi biVar = (bi) obj;
            if (this.AFKeystoreWrapper != biVar.AFKeystoreWrapper || this.valueOf != biVar.valueOf) {
                return false;
            }
            Body body = this.values;
            Body body2 = biVar.values;
            if (body != null) {
                return body.equals(body2);
            }
            if (body2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Body body = this.values;
        return ((((body != null ? body.hashCode() : 0) * 31) + this.AFKeystoreWrapper) * 31) + (this.valueOf ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Response{body=");
        sb.append(this.values);
        sb.append(", statusCode=");
        sb.append(this.AFKeystoreWrapper);
        sb.append(", isSuccessful=");
        sb.append(this.valueOf);
        sb.append(Operators.BLOCK_END);
        return sb.toString();
    }
}
