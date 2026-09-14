package com.igexin.push.extension.distribution.gbd.stub;

import android.content.Context;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.core.c;
import com.igexin.push.extension.distribution.gbd.d.d;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.stub.IPushExtension;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PushExtension implements IPushExtension {
    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean executeAction(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return false;
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean init(Context context) {
        try {
            j.b("GBD_PushExtension", "init gbd ...");
            d.a().a(context);
            return true;
        } catch (Exception e) {
            j.a(e);
            j.b("GBD_PushExtension", e.toString());
            return false;
        }
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public boolean isActionSupported(String str) {
        return false;
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public void onDestroy() {
        d.a().d();
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public BaseAction parseAction(JSONObject jSONObject) {
        return null;
    }

    @Override // com.igexin.push.extension.stub.IPushExtension
    public c prepareExecuteAction(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return c.stop;
    }
}
