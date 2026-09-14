package com.igexin.push.core.a;

import com.igexin.push.core.bean.PushTaskBean;

/* JADX INFO: loaded from: classes.dex */
public class e extends a {
    private void a(String str, com.igexin.push.e.c.a aVar) {
        if (str != null) {
            String strSubstring = str.substring(3, str.length());
            if (strSubstring.contains("@")) {
                String[] strArrSplit = strSubstring.split("\\@");
                String str2 = strArrSplit[0];
                if (strArrSplit[1].contains("|")) {
                    String[] strArrSplit2 = strArrSplit[1].split("\\|");
                    String str3 = strArrSplit2[0];
                    String str4 = strArrSplit2[1];
                    if (str2 == null || str3 == null || str4 == null) {
                        return;
                    }
                    PushTaskBean pushTaskBean = new PushTaskBean();
                    pushTaskBean.setAppid(com.igexin.push.core.f.f238a);
                    pushTaskBean.setMessageId(str2);
                    pushTaskBean.setTaskId(str3);
                    pushTaskBean.setId(str2);
                    pushTaskBean.setAppKey(com.igexin.push.core.f.b);
                    pushTaskBean.setCurrentActionid(1);
                    f.a().a(pushTaskBean);
                    f.a().a(str4, aVar, pushTaskBean);
                }
            }
        }
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return super.a(eVar);
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        com.igexin.push.g.b.b bVarE;
        if (!(obj instanceof com.igexin.push.e.c.a)) {
            return true;
        }
        com.igexin.push.e.c.a aVar = (com.igexin.push.e.c.a) obj;
        if (aVar.c == null) {
            return true;
        }
        String str = (String) aVar.c;
        com.igexin.b.a.c.b.a("cdnpushmessage|" + str);
        if (!str.startsWith("RCV")) {
            if (!str.contains("CDN")) {
                return true;
            }
            a(str, aVar);
            return true;
        }
        String strSubstring = str.substring(3, str.length());
        if (!com.igexin.push.core.f.ah.containsKey(strSubstring)) {
            return true;
        }
        com.igexin.push.e.c.c cVar = com.igexin.push.core.f.ah.get(strSubstring);
        com.igexin.push.core.f.ah.remove(strSubstring);
        if (cVar == null || (bVarE = cVar.e()) == null) {
            return true;
        }
        bVarE.t();
        return true;
    }
}
