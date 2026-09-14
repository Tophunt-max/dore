package com.igexin.push.extension.distribution.gbd.d;

import com.taobao.weex.ui.component.WXBasicComponentType;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
class f implements com.igexin.push.extension.distribution.gbd.f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f378a;

    f(d dVar) {
        this.f378a = dVar;
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.c
    public void a(Object obj) {
        List<String> list;
        if (obj == null || !(obj instanceof HashMap) || (list = (List) ((Map) ((HashMap) obj).get(WXBasicComponentType.HEADER)).get("Date")) == null) {
            return;
        }
        for (String str : list) {
            if (str.contains(":") && str.contains("GMT")) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy hh:mm:ss z", Locale.ENGLISH);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                long time = simpleDateFormat.parse(str).getTime();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis != time) {
                    com.igexin.push.extension.distribution.gbd.c.c.T = time - jCurrentTimeMillis;
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_Logic", "localTimeByServerTimeDiff  = " + com.igexin.push.extension.distribution.gbd.c.c.T);
                }
            }
        }
    }
}
