package com.igexin.push.e.a;

import com.igexin.b.a.b.d;
import com.igexin.push.e.c.e;
import com.igexin.push.e.c.h;
import com.igexin.push.e.c.j;
import com.igexin.push.e.c.m;
import com.igexin.push.e.c.n;
import com.igexin.push.e.c.o;
import com.igexin.push.e.c.q;
import com.igexin.sdk.PushConsts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.igexin.b.a.b.b {
    public a(String str, com.igexin.b.a.b.b bVar) {
        super(str, true);
        a(bVar);
    }

    private boolean a(com.igexin.push.e.c.b bVar, e eVar) {
        String string;
        if (bVar.b != 26) {
            return false;
        }
        o oVar = (o) eVar;
        if (oVar.a() && oVar.e != null) {
            try {
                JSONObject jSONObject = new JSONObject((String) oVar.e);
                if (jSONObject.has(PushConsts.CMD_ACTION) && (string = jSONObject.getString(PushConsts.CMD_ACTION)) != null) {
                    if (string.equals("redirect_server")) {
                        return true;
                    }
                }
            } catch (Exception e) {
                com.igexin.b.a.c.b.a("CommandFilter|" + e.toString());
            }
        }
        return false;
    }

    @Override // com.igexin.b.a.b.b
    public Object a(com.igexin.b.a.b.e eVar, d dVar, Object obj) {
        if (obj instanceof e) {
            e eVar2 = (e) obj;
            com.igexin.push.e.c.b bVar = new com.igexin.push.e.c.b();
            bVar.b = (byte) eVar2.i;
            bVar.a(eVar2.d());
            bVar.c = eVar2.j;
            bVar.d = eVar2.k;
            return bVar;
        }
        if (!(obj instanceof e[])) {
            return null;
        }
        e[] eVarArr = (e[]) obj;
        com.igexin.push.e.c.b[] bVarArr = new com.igexin.push.e.c.b[eVarArr.length];
        for (int i = 0; i < eVarArr.length; i++) {
            bVarArr[i] = new com.igexin.push.e.c.b();
            bVarArr[i].b = (byte) eVarArr[i].i;
            bVarArr[i].a(eVarArr[i].d());
        }
        return bVarArr;
    }

    @Override // com.igexin.b.a.b.b
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.igexin.b.a.d.a.e c(com.igexin.b.a.b.e eVar, d dVar, Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof h) {
            return (com.igexin.b.a.d.a.e) obj;
        }
        com.igexin.push.e.c.b bVar = (com.igexin.push.e.c.b) obj;
        byte b = bVar.b;
        e jVar = b != 5 ? b != 9 ? b != 26 ? b != 28 ? b != 37 ? b != 97 ? null : new j() : new n() : new com.igexin.push.e.c.a() : new o() : new q() : new m();
        if ((bVar.f != 1 && bVar.f != 7) || jVar == null) {
            return null;
        }
        jVar.a(bVar.e);
        if (bVar.f != 7) {
            if (a(bVar, jVar)) {
                return jVar;
            }
            return null;
        }
        if (bVar.g != 32 || a(bVar, jVar)) {
            return jVar;
        }
        return null;
    }
}
