package com.igexin.push.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class t {
    public static void a(Context context, Intent intent) {
        try {
            if (intent.hasExtra("us")) {
                String stringExtra = intent.getStringExtra("us");
                String name = com.igexin.push.core.s.a().c(context).getName();
                if (!name.equals(stringExtra)) {
                    if (!stringExtra.equals(com.igexin.push.core.b.s)) {
                        a(context, "us", stringExtra);
                    } else if (!TextUtils.isEmpty(name)) {
                        a(context, "us", "");
                    }
                }
            }
            if (intent.hasExtra("uis")) {
                Class clsD = com.igexin.push.core.s.a().d(context);
                String stringExtra2 = intent.getStringExtra("uis");
                if (TextUtils.isEmpty(stringExtra2)) {
                    if (clsD != null) {
                        a(context, "uis", "");
                    }
                } else if (clsD == null || !stringExtra2.equals(clsD.getName())) {
                    a(context, "uis", stringExtra2);
                }
            }
            if (intent.hasExtra("ua")) {
                a(context, "ua", intent.getStringExtra("ua"));
            }
            if (intent.hasExtra("pri_authorized")) {
                a(context, "pri_alert", true);
                a(context, "pri_authorized", Boolean.valueOf(intent.getBooleanExtra("pri_authorized", false)));
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, String str, Object obj) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("getui_sp", 0).edit();
        if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        }
        editorEdit.apply();
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return ((Boolean) c(context, "pri_authorized", false)).booleanValue();
    }

    public static void b(Context context, String str, Object obj) {
        if (context == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = context.getApplicationContext().getSharedPreferences("getui_sp", 0).edit();
        if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editorEdit.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        }
        editorEdit.commit();
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        return ((Boolean) c(context, "pri_alert", false)).booleanValue();
    }

    public static Object c(Context context, String str, Object obj) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences("getui_sp", 0);
        return obj instanceof String ? sharedPreferences.getString(str, (String) obj) : obj instanceof Integer ? Integer.valueOf(sharedPreferences.getInt(str, ((Integer) obj).intValue())) : obj instanceof Boolean ? Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue())) : obj instanceof Float ? Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue())) : obj instanceof Long ? Long.valueOf(sharedPreferences.getLong(str, ((Long) obj).longValue())) : obj;
    }
}
