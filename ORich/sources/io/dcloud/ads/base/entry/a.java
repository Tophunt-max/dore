package io.dcloud.ads.base.entry;

import android.content.Context;
import io.dcloud.f.a.c.b.f;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f511a;
    private String b;

    public a(String str) {
        this.b = str;
    }

    public void a(AdData adData) {
    }

    public void a(String str) {
        try {
            Date date = new SimpleDateFormat("yy-MM-dd HH:mm:ss", Locale.ENGLISH).parse(new JSONObject(str).optString("expires"));
            if (date != null) {
                this.f511a = date.getTime();
            }
        } catch (ParseException | JSONException unused) {
        }
    }

    public boolean b() {
        return System.currentTimeMillis() > this.f511a;
    }

    public void a(Context context, AdData adData) {
        if (adData != null) {
            adData.c(context);
            String strA = f.a().a(context, this.b);
            if (strA != null) {
                try {
                    adData.a(new JSONObject(strA), null, false);
                } catch (JSONException unused) {
                }
            }
        }
    }

    public String a() {
        return this.b;
    }
}
