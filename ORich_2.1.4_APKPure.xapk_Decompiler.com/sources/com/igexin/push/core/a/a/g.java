package com.igexin.push.core.a.a;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.core.s;
import com.igexin.sdk.PushConsts;
import io.dcloud.common.constant.AbsoluteConst;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Random;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f140a = com.igexin.push.config.j.f135a;

    private int a(com.igexin.push.core.bean.h hVar, boolean z) {
        if (z) {
            int identifier = 0;
            try {
                identifier = com.igexin.push.core.f.f.getResources().getIdentifier("push_small", "drawable", com.igexin.push.core.f.e);
                if (identifier == 0) {
                    identifier = com.igexin.push.core.f.f.getResources().getIdentifier("push_small", "mipmap", com.igexin.push.core.f.e);
                }
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a(f140a + "|" + th.toString());
            }
            if (identifier != 0) {
                return identifier;
            }
            com.igexin.b.a.c.b.a(f140a + "|push_small.png is missing");
        }
        int identifier2 = com.igexin.push.core.f.f.getResources().getIdentifier("push", "drawable", com.igexin.push.core.f.e);
        if (identifier2 == 0) {
            identifier2 = com.igexin.push.core.f.f.getResources().getIdentifier("push", "mipmap", com.igexin.push.core.f.e);
        }
        if (TextUtils.isEmpty(hVar.g())) {
            return identifier2 != 0 ? identifier2 : R.drawable.sym_def_app_icon;
        }
        if ("null".equals(hVar.g())) {
            return R.drawable.sym_def_app_icon;
        }
        if (hVar.g().startsWith("@")) {
            String strG = hVar.g();
            return strG.substring(1, strG.length()).endsWith("email") ? R.drawable.sym_action_email : R.drawable.sym_def_app_icon;
        }
        int identifier3 = com.igexin.push.core.f.f.getResources().getIdentifier(hVar.g(), "drawable", com.igexin.push.core.f.e);
        if (identifier3 == 0) {
            identifier3 = com.igexin.push.core.f.f.getResources().getIdentifier(hVar.g(), "mipmap", com.igexin.push.core.f.e);
        }
        return identifier3 != 0 ? identifier3 : identifier2 != 0 ? identifier2 : R.drawable.sym_def_app_icon;
    }

    private int a(String str) {
        int iCharAt = 0;
        for (int i = 0; i != str.length(); i++) {
            iCharAt = (iCharAt * 131) + str.charAt(i);
        }
        if (iCharAt == Integer.MIN_VALUE) {
            iCharAt = 1;
        }
        return Math.abs(iCharAt);
    }

    private Notification.Builder a(com.igexin.push.core.bean.h hVar) {
        Notification.Builder builder = new Notification.Builder(com.igexin.push.core.f.f);
        NotificationManager notificationManager = (NotificationManager) com.igexin.push.core.f.f.getSystemService("notification");
        try {
            Class<?> cls = Class.forName("android.app.NotificationChannel");
            Constructor<?> constructor = cls.getConstructor(String.class, CharSequence.class, Integer.TYPE);
            if (constructor != null) {
                Class<?> cls2 = notificationManager.getClass();
                if (((Parcelable) cls2.getMethod("getNotificationChannel", String.class).invoke(notificationManager, hVar.k())) == null) {
                    Parcelable parcelable = (Parcelable) constructor.newInstance(hVar.k(), hVar.l(), Integer.valueOf(hVar.m()));
                    Method method = cls2.getMethod("createNotificationChannel", Class.forName("android.app.NotificationChannel"));
                    Method method2 = cls.getMethod("enableVibration", Boolean.TYPE);
                    Method method3 = cls.getMethod("setSound", Uri.class, AudioAttributes.class);
                    method2.invoke(parcelable, Boolean.valueOf(hVar.e()));
                    if (!hVar.f()) {
                        method3.invoke(parcelable, null, null);
                    }
                    method.invoke(notificationManager, parcelable);
                }
                builder.getClass().getMethod("setChannelId", String.class).invoke(builder, hVar.k());
            }
        } catch (Throwable unused) {
        }
        return builder;
    }

    private PendingIntent a(String str, String str2, String str3, int i, String str4, String str5) {
        Intent intent = new Intent(com.igexin.push.core.b.b);
        intent.putExtra("taskid", str);
        intent.putExtra("messageid", str2);
        if (str4 == null) {
            str4 = "";
        }
        intent.putExtra(AbsoluteConst.JSON_KEY_TITLE, str4);
        if (str5 == null) {
            str5 = "";
        }
        intent.putExtra("content", str5);
        intent.putExtra("appid", com.igexin.push.core.f.f238a);
        intent.putExtra("actionid", str3);
        intent.putExtra("accesstoken", com.igexin.push.core.f.ao);
        intent.putExtra("notifID", i);
        Intent intent2 = new Intent(com.igexin.push.core.f.f, (Class<?>) s.a().c(com.igexin.push.core.f.f));
        intent2.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_NOTIFICATION_CLICK);
        intent2.putExtra("broadcast_intent", intent);
        return PendingIntent.getService(com.igexin.push.core.f.f, new Random().nextInt(1000), intent2, 134217728);
    }

    @Override // com.igexin.push.core.a.a.a
    public BaseAction a(JSONObject jSONObject) {
        String str;
        try {
            com.igexin.push.core.bean.h hVar = new com.igexin.push.core.bean.h();
            hVar.setType("notification");
            hVar.setActionId(jSONObject.getString("actionid"));
            hVar.setDoActionId(jSONObject.getString("do"));
            String string = jSONObject.getString(AbsoluteConst.JSON_KEY_TITLE);
            String string2 = jSONObject.getString("text");
            hVar.a(string);
            hVar.b(string2);
            if (jSONObject.has("logo") && !"".equals(jSONObject.getString("logo"))) {
                String string3 = jSONObject.getString("logo");
                String str2 = "";
                if (string3.lastIndexOf(".png") == -1 && string3.lastIndexOf(".jpeg") == -1) {
                    str = str2;
                } else {
                    int iIndexOf = string3.indexOf(".png");
                    if (iIndexOf == -1) {
                        iIndexOf = string3.indexOf(".jpeg");
                    }
                    if (iIndexOf != -1) {
                        String strSubstring = string3.substring(0, iIndexOf);
                        if (!Pattern.compile("^\\d+$").matcher(strSubstring).matches()) {
                            str2 = strSubstring;
                        }
                    } else {
                        str2 = string3;
                    }
                    str = str2;
                }
                hVar.c(str);
            }
            if (jSONObject.has("is_noclear")) {
                hVar.b(!jSONObject.getBoolean("is_noclear"));
            }
            if (jSONObject.has("is_novibrate")) {
                hVar.c(!jSONObject.getBoolean("is_novibrate"));
            }
            if (jSONObject.has("is_noring")) {
                hVar.d(!jSONObject.getBoolean("is_noring"));
            }
            if (jSONObject.has("is_chklayout")) {
                hVar.e(jSONObject.getBoolean("is_chklayout"));
            }
            if (jSONObject.has("logo_url")) {
                hVar.d(jSONObject.getString("logo_url"));
            }
            if (jSONObject.has("banner_url")) {
                hVar.e(jSONObject.getString("banner_url"));
            }
            if (jSONObject.has("channel")) {
                hVar.f(jSONObject.getString("channel"));
            }
            if (jSONObject.has("channelName")) {
                hVar.g(jSONObject.getString("channelName"));
            }
            if (jSONObject.has("channelLevel")) {
                hVar.a(jSONObject.getInt("channelLevel"));
            }
            if (jSONObject.has("notifyid")) {
                try {
                    hVar.b(Integer.parseInt(jSONObject.optString("notifyid")));
                    hVar.a(true);
                } catch (NumberFormatException unused) {
                    com.igexin.b.a.c.b.a(f140a + (" NotificationAction.parseAction() : " + jSONObject.optString("notifyid") + "_"));
                }
            }
            return hVar;
        } catch (JSONException unused2) {
            return null;
        }
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        return com.igexin.push.core.c.success;
    }

    public void a(String str, String str2, com.igexin.push.core.bean.h hVar) {
        Notification notification;
        int iA = !hVar.a() ? a(str) : hVar.n();
        com.igexin.push.core.f.ae.put(str, Integer.valueOf(iA));
        com.igexin.push.core.f.af.add(str);
        PendingIntent pendingIntentA = a(str, str2, hVar.getDoActionId(), iA, hVar.b(), hVar.c());
        NotificationManager notificationManager = (NotificationManager) com.igexin.push.core.f.f.getSystemService("notification");
        int iA2 = a(hVar, false);
        if (Build.VERSION.SDK_INT < 11) {
            notification = new Notification();
            notification.icon = iA2;
            try {
                Method method = Class.forName("android.app.Notification").getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class);
                method.setAccessible(true);
                method.invoke(notification, com.igexin.push.core.f.f, hVar.b(), hVar.c(), pendingIntentA);
            } catch (Exception unused) {
                com.igexin.b.a.c.b.a(f140a + "reflect invoke setLatestEventInfo failed!");
                return;
            }
        } else {
            notification = (Build.VERSION.SDK_INT >= 26 ? a(hVar) : new Notification.Builder(com.igexin.push.core.f.f)).setContentTitle(hVar.b()).setContentText(hVar.c()).setSmallIcon(a(hVar, true)).setLargeIcon(BitmapFactory.decodeResource(com.igexin.push.core.f.f.getResources(), iA2)).setContentIntent(pendingIntentA).getNotification();
            if (com.igexin.push.util.a.f() && Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT < 24) {
                try {
                    Field field = Class.forName("com.android.internal.R$id").getField("right_icon");
                    field.setAccessible(true);
                    int i = field.getInt(null);
                    if (notification.contentView != null && i != 0) {
                        notification.contentView.setViewVisibility(i, 8);
                    }
                } catch (Exception unused2) {
                }
            }
        }
        notification.tickerText = hVar.c();
        notification.defaults = 4;
        notification.ledARGB = -16711936;
        notification.ledOnMS = 1000;
        notification.ledOffMS = PathInterpolatorCompat.MAX_NUM_POINTS;
        notification.flags = 1;
        notification.flags = hVar.d() ? notification.flags | 16 : notification.flags | 32;
        if (hVar.f()) {
            notification.defaults |= 1;
        }
        if (hVar.e()) {
            notification.defaults |= 2;
        }
        if (!(hVar.i() == null && hVar.h() == null) && hVar.j()) {
            return;
        }
        notificationManager.notify(iA, notification);
        com.igexin.push.core.a.a().b(str, str2, hVar.b() == null ? "" : hVar.b(), hVar.c() != null ? hVar.c() : "");
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        if (pushTaskBean == null || !(baseAction instanceof com.igexin.push.core.bean.h)) {
            return true;
        }
        com.igexin.push.core.bean.h hVar = (com.igexin.push.core.bean.h) baseAction;
        if (TextUtils.isEmpty(hVar.b()) && TextUtils.isEmpty(hVar.c())) {
            return true;
        }
        a(pushTaskBean.getTaskId(), pushTaskBean.getMessageId(), hVar);
        return true;
    }
}
