package com.igexin.push.extension.distribution.gbd.a.c;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f352a;

    private i(f fVar) {
        this.f352a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f352a.f != null) {
                do {
                    Thread.sleep(8000L);
                } while (this.f352a.f.getCompletedTaskCount() != this.f352a.f.getTaskCount() - 1);
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                StringBuilder sb3 = new StringBuilder();
                StringBuilder sb4 = new StringBuilder();
                for (String str : this.f352a.g.keySet()) {
                    sb.append((String) this.f352a.g.get(str));
                    sb.append(",");
                    sb2.append(str);
                    sb2.append("#");
                    sb2.append((String) this.f352a.g.get(str));
                    sb2.append(",");
                }
                if (sb.toString().endsWith(",")) {
                    sb = sb.deleteCharAt(sb.length() - 1);
                }
                if (sb2.toString().endsWith(",")) {
                    sb2 = sb2.deleteCharAt(sb2.length() - 1);
                }
                for (String str2 : this.f352a.h.keySet()) {
                    sb3.append(str2);
                    sb3.append("#");
                    sb3.append((String) this.f352a.h.get(str2));
                    sb3.append(",");
                }
                if (sb3.toString().endsWith(",")) {
                    sb3 = sb3.deleteCharAt(sb3.length() - 1);
                }
                for (String str3 : this.f352a.i.keySet()) {
                    sb4.append(str3);
                    sb4.append("#");
                    String strTrim = "";
                    sb4.append(TextUtils.isEmpty(((com.igexin.push.extension.distribution.gbd.b.h) this.f352a.i.get(str3)).a()) ? "" : ((com.igexin.push.extension.distribution.gbd.b.h) this.f352a.i.get(str3)).a());
                    sb4.append("#");
                    if (!TextUtils.isEmpty(((com.igexin.push.extension.distribution.gbd.b.h) this.f352a.i.get(str3)).b().trim())) {
                        strTrim = ((com.igexin.push.extension.distribution.gbd.b.h) this.f352a.i.get(str3)).b().trim();
                    }
                    sb4.append(strTrim);
                    sb4.append(",");
                }
                if (sb4.toString().endsWith(",")) {
                    sb4 = sb4.deleteCharAt(sb4.length() - 1);
                }
                this.f352a.a(sb.toString(), sb2.toString(), sb3.toString(), sb4.toString());
                this.f352a.h.clear();
                this.f352a.g.clear();
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
