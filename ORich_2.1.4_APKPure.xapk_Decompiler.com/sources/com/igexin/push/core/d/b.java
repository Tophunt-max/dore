package com.igexin.push.core.d;

import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.core.r;
import com.igexin.push.util.u;
import com.igexin.sdk.PushConsts;
import java.util.Timer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.igexin.push.g.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f222a;
    private String g;
    private com.igexin.push.e.c.a h;
    private PushTaskBean i;

    public b(String str, com.igexin.push.e.c.a aVar, PushTaskBean pushTaskBean) {
        super(str);
        this.g = str;
        this.f222a = pushTaskBean.getMessageId();
        this.h = aVar;
        this.i = pushTaskBean;
    }

    protected void a(PushTaskBean pushTaskBean, com.igexin.push.e.c.a aVar) {
        com.igexin.push.e.c.c cVar = new com.igexin.push.e.c.c();
        cVar.a();
        cVar.c = "RTV" + pushTaskBean.getMessageId() + "@" + pushTaskBean.getTaskId();
        cVar.d = com.igexin.push.core.f.s;
        cVar.f269a = (int) System.currentTimeMillis();
        com.igexin.push.core.e.a().g().a("C-" + com.igexin.push.core.f.s, cVar);
        com.igexin.b.a.c.b.a("cdnRetrieve|" + pushTaskBean.getMessageId() + "|" + pushTaskBean.getTaskId());
        if (aVar.c() < 2) {
            long jA = u.a();
            Timer timer = new Timer();
            timer.schedule(new d(this, pushTaskBean, aVar), jA);
            com.igexin.push.core.f.ag.put(pushTaskBean.getTaskId(), timer);
        }
    }

    @Override // com.igexin.push.g.a.b
    public void a(Exception exc) {
        if (this.h.a() >= 2) {
            a(this.i, this.h);
        } else {
            new Timer().schedule(new c(this), u.a());
        }
    }

    @Override // com.igexin.push.g.a.b
    public void a(byte[] bArr) throws Exception {
        if (bArr != null) {
            byte[] bArrD = com.igexin.b.a.b.f.d(com.igexin.b.a.a.a.c(bArr, com.igexin.push.core.f.c));
            if (bArrD == null) {
                throw new Exception("Get error CDNData, can not UnGzip it...");
            }
            JSONObject jSONObject = new JSONObject(new String(bArrD, "utf-8"));
            jSONObject.put("id", this.f222a);
            jSONObject.put("messageid", this.f222a);
            jSONObject.put("cdnType", true);
            try {
                if ("pushmessage".equals(jSONObject.getString(PushConsts.CMD_ACTION))) {
                    r.a().a(jSONObject, jSONObject.has("extraData") ? jSONObject.getString("extraData").getBytes() : null, true);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
