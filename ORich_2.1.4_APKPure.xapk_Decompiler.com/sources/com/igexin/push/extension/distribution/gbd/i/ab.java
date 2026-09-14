package com.igexin.push.extension.distribution.gbd.i;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f397a = Uri.parse("content://com.sina.weibo.sdkProvider/query/deviceId");
    private static ab b;
    private Context c = com.igexin.push.core.f.f;

    private ab() {
    }

    public static ab a() {
        if (b == null) {
            b = new ab();
        }
        return b;
    }

    public String b() {
        StringBuilder sb;
        Context context = this.c;
        String string = "none";
        if (context == null) {
            sb = new StringBuilder();
            sb.append("weibo divecid = ");
            sb.append("none");
            sb.append("context = null");
        } else {
            Cursor cursorQuery = null;
            try {
                cursorQuery = context.getContentResolver().query(f397a, new String[]{"device_id"}, null, null, null);
                while (cursorQuery != null) {
                    if (!cursorQuery.moveToNext()) {
                        break;
                    }
                    string = cursorQuery.getString(cursorQuery.getColumnIndex("device_id"));
                }
            } catch (Throwable th) {
                try {
                    j.a("GBD_weibo", th.toString());
                    if (cursorQuery != null) {
                    }
                    sb = new StringBuilder();
                    sb.append("weibo divecid = ");
                    sb.append(string);
                } finally {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            }
            sb = new StringBuilder();
            sb.append("weibo divecid = ");
            sb.append(string);
        }
        j.a("GBD_weibo", sb.toString());
        return string;
    }
}
