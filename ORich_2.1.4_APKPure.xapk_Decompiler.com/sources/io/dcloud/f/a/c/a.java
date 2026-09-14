package io.dcloud.f.a.c;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.ui.component.WXBasicComponentType;
import io.dcloud.ads.base.entry.AdData;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.net.NetWork;
import io.dcloud.f.a.b.a;
import io.dcloud.f.a.c.b.f;
import io.dcloud.f.a.c.b.g;
import io.dcloud.f.a.c.b.h;
import io.dcloud.f.a.d.d;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a extends io.dcloud.f.a.b.a {
    ExecutorService e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private JSONObject k;
    private HashMap<String, String> l;
    private String m;
    private String n;

    /* JADX INFO: renamed from: io.dcloud.f.a.c.a$a, reason: collision with other inner class name */
    class RunnableC0039a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f619a;

        RunnableC0039a(String str) {
            this.f619a = str;
        }

        /* JADX INFO: renamed from: io.dcloud.f.a.c.a$a$a, reason: collision with other inner class name */
        class C0040a implements AdData.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AdData f620a;

            C0040a(AdData adData) {
                this.f620a = adData;
            }

            @Override // io.dcloud.ads.base.entry.AdData.e
            public void a() {
                ((io.dcloud.f.a.b.a) a.this).d = this.f620a;
                a.this.a();
            }

            @Override // io.dcloud.ads.base.entry.AdData.e
            public void a(int i, String str) {
                try {
                } catch (Exception unused) {
                }
                for (io.dcloud.ads.base.entry.a aVar : f.a().b(a.this.b()).values()) {
                    if (!aVar.b()) {
                        AdData adData = new AdData();
                        aVar.a(a.this.b(), adData);
                        if (adData.m() && adData.l() && adData.c().equals(a.this.f) && adData.i().equals(a.this.h) && ((io.dcloud.f.a.b.a) a.this).d == null) {
                            ((io.dcloud.f.a.b.a) a.this).d = adData;
                            a.this.a();
                            return;
                        }
                        a.this.a(i, str);
                    }
                    f.a().b(a.this.b(), aVar.a());
                }
                a.this.a(i, str);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            String[] strArr = new String[1];
            byte[] bArrA = d.a(a.this.g, this.f619a, (HashMap<String, String>) a.this.l, strArr);
            if (bArrA == null) {
                a aVar = a.this;
                StringBuilder sb = new StringBuilder();
                sb.append("网络请求失败：");
                sb.append(strArr[0] == null ? "data null" : strArr[0]);
                aVar.a(60003, sb.toString());
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArrA));
                AdData adData = new AdData();
                adData.c(a.this.b());
                jSONObject.put("appid", a.this.f);
                jSONObject.put("adpid", ((io.dcloud.f.a.b.a) a.this).c);
                jSONObject.put("tid", a.this.h);
                jSONObject.put("did", a.this.m);
                jSONObject.put("adid", a.this.n);
                adData.a(jSONObject, new C0040a(adData), true);
            } catch (JSONException e) {
                a.this.a(60006, e.getMessage());
            }
        }
    }

    public a(a.c cVar, Context context, String str, String str2, String str3, String str4) {
        this(cVar, context, str2);
        this.i = str3;
        this.j = str4;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.m = jSONObject.optString("did");
            this.n = jSONObject.optString("adid");
            this.g = jSONObject.optString("url");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(AbsoluteConst.XML_APP);
            this.k = jSONObjectOptJSONObject;
            this.f = jSONObjectOptJSONObject.optString("app_id");
            this.h = jSONObject.optString("tid");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(WXBasicComponentType.HEADER);
            if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() <= 0) {
                return;
            }
            this.l = new HashMap<>();
            Iterator<String> itKeys = jSONObjectOptJSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                this.l.put(next, jSONObjectOptJSONObject2.optString(next));
            }
        } catch (JSONException unused) {
        }
    }

    public void c() {
        if (TextUtils.isEmpty(this.g)) {
            a(60001, "广告请求地址出错");
            return;
        }
        JSONObject jSONObject = this.k;
        if (jSONObject != null && jSONObject.length() > 0) {
            if (!TextUtils.isEmpty(this.c)) {
                try {
                    this.k.put("adp_id", this.c);
                } catch (JSONException unused) {
                }
            }
            JSONObject jSONObjectA = g.a(b());
            try {
                jSONObjectA.put(AbsoluteConst.XML_APP, this.k);
            } catch (JSONException unused2) {
            }
            String string = jSONObjectA.toString();
            if (AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT.equals(this.i)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(this.j);
                    jSONObject2.optString("method");
                    String strEncodeToString = Base64.encodeToString(io.dcloud.f.a.c.b.a.a(h.a(string), jSONObject2.optString(IApp.ConfigProperty.CONFIG_KEY), jSONObject2.optString("iv")), 2);
                    try {
                        strEncodeToString = URLEncoder.encode(strEncodeToString, "utf-8");
                    } catch (UnsupportedEncodingException unused3) {
                    }
                    string = "edata=" + strEncodeToString;
                } catch (Exception unused4) {
                }
            } else {
                if (this.l == null) {
                    this.l = new HashMap<>();
                }
                if (!this.l.containsKey(NetWork.CONTENT_TYPE)) {
                    this.l.put(NetWork.CONTENT_TYPE, "application/json");
                }
            }
            this.e.execute(new RunnableC0039a(string));
            return;
        }
        a(60002, "广告配置异常");
    }

    private a(a.c cVar, Context context, String str) {
        super(cVar, context, str);
        this.e = Executors.newSingleThreadExecutor();
        this.f = "";
        this.g = "";
        this.i = "";
        this.j = "";
    }
}
