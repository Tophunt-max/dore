package io.dcloud.ads.base.entry;

import android.content.Context;
import android.content.Intent;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.core.app.JobIntentService;
import io.dcloud.ads.base.service.DownloadService;
import io.dcloud.f.a.c.b.f;
import io.dcloud.f.a.c.b.g;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdData implements Parcelable {
    public static final Parcelable.Creator<AdData> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f505a;
    private String action;
    private byte[] b;
    private String bundle;
    private String c;
    private String d;
    private String downloadAppName;
    private String dplk;
    private String e;
    private String expires;
    private String f;
    private String g;
    private List<TrackerBean> h;
    private List<TrackerBean> i;
    private List<TrackerBean> j;
    private MotionEvent k;
    private MotionEvent l;
    private boolean m;
    private RectF n;
    protected Context o;
    private String price;
    private String provider;
    private String src;
    private String tid;
    private String ua;
    private String url;

    public static class ExtBean implements Parcelable {
        public static final Parcelable.Creator<ExtBean> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f506a;
        private int b;

        static class a implements Parcelable.Creator<ExtBean> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExtBean createFromParcel(Parcel parcel) {
                return new ExtBean(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ExtBean[] newArray(int i) {
                return new ExtBean[i];
            }
        }

        public ExtBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f506a);
            parcel.writeInt(this.b);
        }

        protected ExtBean(Parcel parcel) {
            this.f506a = parcel.readString();
            this.b = parcel.readInt();
        }
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f508a;
        final /* synthetic */ e b;

        a(String str, e eVar) {
            this.f508a = str;
            this.b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            byte[] bArrA = io.dcloud.f.a.d.d.a(AdData.this.src, (HashMap<String, String>) null, true, new String[1]);
            if (bArrA == null) {
                e eVar = this.b;
                if (eVar != null) {
                    eVar.a(60009, "图片下载失败");
                    return;
                }
                return;
            }
            AdData.this.b = bArrA;
            io.dcloud.f.a.d.c.a(AdData.this.b, 0, this.f508a);
            AdData.this.f505a = this.f508a;
            e eVar2 = this.b;
            if (eVar2 != null) {
                eVar2.a();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f509a;

        b(Context context) {
            this.f509a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context = this.f509a;
            if (context != null) {
                io.dcloud.f.a.c.b.b.a(context, AdData.this.e, AdData.this.tid, "", 50, AdData.this.d, AdData.this.g, AdData.this.f, null);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TrackerBean f510a;

        c(TrackerBean trackerBean) {
            this.f510a = trackerBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                io.dcloud.f.a.d.d.a(AdData.this.a(this.f510a.f507a), null, true);
            } catch (Exception unused) {
            }
        }
    }

    static class d implements Parcelable.Creator<AdData> {
        d() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdData createFromParcel(Parcel parcel) {
            return new AdData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AdData[] newArray(int i) {
            return new AdData[i];
        }
    }

    public interface e {
        void a();

        void a(int i, String str);
    }

    public AdData() {
        this.d = "";
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.m = false;
        this.n = new RectF();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String h() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("expires", this.expires);
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public String i() {
        return this.tid;
    }

    public String j() {
        return this.c;
    }

    public String k() {
        return this.url;
    }

    public boolean l() {
        if (this.o == null) {
            return false;
        }
        return new File(this.o.getCacheDir().getAbsolutePath() + "/dcloud_ad/" + this.src.hashCode()).exists();
    }

    public boolean m() {
        return (TextUtils.isEmpty(this.src) || TextUtils.isEmpty(this.action) || TextUtils.isEmpty(this.url)) ? false : true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.provider);
        parcel.writeString(this.ua);
        parcel.writeString(this.src);
        parcel.writeString(this.action);
        parcel.writeString(this.url);
        parcel.writeString(this.bundle);
        parcel.writeString(this.downloadAppName);
        parcel.writeString(this.dplk);
        parcel.writeString(this.price);
        parcel.writeString(this.tid);
        parcel.writeString(this.expires);
        parcel.writeString(this.f505a);
        parcel.writeByteArray(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeTypedList(this.h);
        parcel.writeTypedList(this.i);
        parcel.writeTypedList(this.j);
        parcel.writeParcelable(this.k, i);
        parcel.writeParcelable(this.l, i);
        parcel.writeByte(this.m ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.n, i);
    }

    public static class TrackerBean implements Parcelable {
        public static final Parcelable.Creator<TrackerBean> CREATOR = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f507a;

        static class a implements Parcelable.Creator<TrackerBean> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public TrackerBean createFromParcel(Parcel parcel) {
                return new TrackerBean(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public TrackerBean[] newArray(int i) {
                return new TrackerBean[i];
            }
        }

        public TrackerBean(String str) {
            this.f507a = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f507a);
        }

        protected TrackerBean(Parcel parcel) {
            this.f507a = parcel.readString();
        }
    }

    void b(JSONObject jSONObject) {
        f.a().a(this.o, this, jSONObject.toString());
    }

    public void c(Context context) {
        this.o = context;
    }

    public String d() {
        return this.f;
    }

    public String e() {
        return this.e;
    }

    public String f() {
        return this.f505a;
    }

    public byte[] g() {
        return this.b;
    }

    public void b(MotionEvent motionEvent) {
        this.l = motionEvent;
    }

    public String c() {
        return this.d;
    }

    private void a(JSONObject jSONObject, e eVar) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
        if (jSONObjectOptJSONObject == null) {
            if (eVar != null) {
                eVar.a(60007, "无广告填充");
                return;
            }
            return;
        }
        ArrayList<Field> arrayList = new ArrayList(Arrays.asList(getClass().getDeclaredFields()));
        if (getClass().getSuperclass() != null) {
            Field[] declaredFields = getClass().getSuperclass().getDeclaredFields();
            if (declaredFields.length > 0) {
                arrayList.addAll(Arrays.asList(declaredFields));
            }
        }
        for (Field field : arrayList) {
            try {
                if (field.getType() == String.class && jSONObjectOptJSONObject.has(field.getName())) {
                    String strOptString = jSONObjectOptJSONObject.optString(field.getName());
                    field.setAccessible(true);
                    field.set(this, strOptString);
                }
            } catch (IllegalAccessException | Exception unused) {
            }
        }
        if (TextUtils.isEmpty(this.src)) {
            if (eVar != null) {
                eVar.a(60008, "图片资源路径异常");
                return;
            }
            return;
        }
        String str = this.o.getCacheDir().getAbsolutePath() + "/dcloud_ad/img/" + this.src.hashCode();
        if (new File(str).exists()) {
            this.f505a = str;
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        io.dcloud.f.a.d.f.a().a(new a(str, eVar));
    }

    private void b(Context context) {
        a(this.i);
        if (!TextUtils.isEmpty(this.dplk) && io.dcloud.f.a.d.b.c(context, this.dplk)) {
            a(this.j);
            io.dcloud.f.a.d.f.a().a(new b(context));
        }
        String str = this.action;
        str.hashCode();
        str.hashCode();
        switch (str) {
            case "url":
                try {
                    Intent intent = new Intent();
                    intent.setClass(context, Class.forName("io.dcloud.WebviewActivity"));
                    intent.putExtra("url", this.url);
                    intent.setData(Uri.parse(this.url));
                    intent.setAction("android.intent.action.VIEW");
                    intent.setFlags(268435456);
                    context.startActivity(intent);
                    break;
                } catch (Exception unused) {
                    return;
                }
                break;
            case "browser":
                io.dcloud.f.a.d.b.b(context, this.url);
                break;
            case "download":
                Intent intent2 = new Intent();
                intent2.putExtra("url", this.url);
                intent2.putExtra("data", this);
                JobIntentService.enqueueWork(context, DownloadService.class, 10010, intent2);
                break;
        }
    }

    protected AdData(Parcel parcel) {
        this.d = "";
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.m = false;
        this.n = new RectF();
        this.provider = parcel.readString();
        this.ua = parcel.readString();
        this.src = parcel.readString();
        this.action = parcel.readString();
        this.url = parcel.readString();
        this.bundle = parcel.readString();
        this.downloadAppName = parcel.readString();
        this.dplk = parcel.readString();
        this.price = parcel.readString();
        this.tid = parcel.readString();
        this.expires = parcel.readString();
        this.f505a = parcel.readString();
        this.b = parcel.createByteArray();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        Parcelable.Creator<TrackerBean> creator = TrackerBean.CREATOR;
        this.h = parcel.createTypedArrayList(creator);
        this.i = parcel.createTypedArrayList(creator);
        this.j = parcel.createTypedArrayList(creator);
        this.k = (MotionEvent) parcel.readParcelable(MotionEvent.class.getClassLoader());
        this.l = (MotionEvent) parcel.readParcelable(MotionEvent.class.getClassLoader());
        this.m = parcel.readByte() != 0;
        this.n = (RectF) parcel.readParcelable(RectF.class.getClassLoader());
    }

    public String b() {
        return this.g;
    }

    private void a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("report");
        if (jSONObjectOptJSONObject != null) {
            a(jSONObjectOptJSONObject.optJSONArray("imptracker"), this.h);
            a(jSONObjectOptJSONObject.optJSONArray("clktracker"), this.i);
            a(jSONObjectOptJSONObject.optJSONArray("dptracker"), this.j);
        }
    }

    private void a(JSONArray jSONArray, List<TrackerBean> list) {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    list.add(new TrackerBean(jSONObjectOptJSONObject.optString("url")));
                }
            }
        }
    }

    public void a(JSONObject jSONObject, e eVar, boolean z) {
        this.c = String.valueOf(jSONObject.hashCode());
        a(jSONObject);
        a(jSONObject, eVar);
        this.d = jSONObject.optString("appid", "");
        this.g = jSONObject.optString("adpid", "");
        this.tid = jSONObject.optString("tid", "");
        this.f = jSONObject.optString("adid", "");
        this.e = jSONObject.optString("did", "");
        if (m() && z && !TextUtils.isEmpty(this.expires)) {
            b(jSONObject);
        }
    }

    public void a(MotionEvent motionEvent) {
        this.k = motionEvent;
    }

    public void a(Context context) {
        b(context);
    }

    String a(String str) {
        try {
            String strReplace = str.replace("${User-Agent}", URLEncoder.encode(g.f(this.o), "utf-8")).replace("${click_id}", "");
            MotionEvent motionEvent = this.k;
            String strReplace2 = strReplace.replace("${down_x}", String.valueOf(motionEvent != null ? Math.round(motionEvent.getX()) : -999));
            MotionEvent motionEvent2 = this.k;
            String strReplace3 = strReplace2.replace("${down_y}", String.valueOf(motionEvent2 != null ? Math.round(motionEvent2.getY()) : -999));
            MotionEvent motionEvent3 = this.l;
            String strReplace4 = strReplace3.replace("${up_x}", String.valueOf(motionEvent3 != null ? Math.round(motionEvent3.getX()) : -999));
            MotionEvent motionEvent4 = this.l;
            String strReplace5 = strReplace4.replace("${up_y}", String.valueOf(motionEvent4 != null ? Math.round(motionEvent4.getY()) : -999));
            MotionEvent motionEvent5 = this.k;
            String strReplace6 = strReplace5.replace("${relative_down_x}", String.valueOf(motionEvent5 != null ? Math.round(motionEvent5.getX() - this.n.left) : -999));
            MotionEvent motionEvent6 = this.k;
            String strReplace7 = strReplace6.replace("${relative_down_y}", String.valueOf(motionEvent6 != null ? Math.round(motionEvent6.getY() - this.n.top) : -999));
            MotionEvent motionEvent7 = this.l;
            String strReplace8 = strReplace7.replace("${relative_up_x}", String.valueOf(motionEvent7 != null ? Math.round(motionEvent7.getX() - this.n.left) : -999));
            MotionEvent motionEvent8 = this.l;
            return strReplace8.replace("${relative_up_y}", String.valueOf(motionEvent8 != null ? Math.round(motionEvent8.getY() - this.n.top) : -999)).replace("${ts}", String.valueOf(System.currentTimeMillis()));
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    private void a(List<TrackerBean> list) {
        Iterator<TrackerBean> it = list.iterator();
        while (it.hasNext()) {
            io.dcloud.f.a.d.f.a().a(new c(it.next()));
        }
    }

    public void a() {
        a(this.h);
    }

    public void a(RectF rectF) {
        this.n = rectF;
    }
}
