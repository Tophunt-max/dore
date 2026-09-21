package com.igexin.push.core.e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static boolean f233a = false;
    private static String c;
    protected boolean b = false;
    private String d;
    private String e;
    private String[] f;

    public g(String str, String str2) {
        this.d = str;
        this.e = str2;
    }

    protected void a(String[] strArr) {
        this.f = strArr;
    }

    @Override // com.igexin.push.core.e.c
    public boolean a(Context context) {
        if (this.b) {
            return f233a;
        }
        if (context == null) {
            return false;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            f233a = (packageManager == null || packageManager.resolveContentProvider(this.d, 0) == null) ? false : true;
        } catch (Throwable unused) {
            f233a = false;
        }
        this.b = true;
        return f233a;
    }

    @Override // com.igexin.push.core.e.c
    public String b(Context context) {
        if (TextUtils.isEmpty(c)) {
            try {
                Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://" + this.d + Operators.DIV + this.e), null, null, this.f, null);
                if (cursorQuery != null) {
                    cursorQuery.moveToFirst();
                    c = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                }
            } catch (Throwable unused) {
                c = null;
            }
        }
        return c;
    }

    @Override // com.igexin.push.core.e.c
    public boolean c(Context context) {
        return true;
    }
}
