package com.igexin.push.extension.distribution.basic.a;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher;
import com.igexin.push.core.bean.BaseAction;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.push.extension.distribution.basic.j.i;
import com.igexin.push.extension.distribution.basic.j.j;
import com.igexin.push.extension.distribution.basic.j.k;
import com.igexin.sdk.PushBuildConfig;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.Constants;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.constant.AbsoluteConst;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.igexin.push.core.a.a.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f284a = "EXT-" + a.class.getName();

    private int a(com.igexin.push.extension.distribution.basic.b.a aVar, boolean z) {
        if (z) {
            int identifier = com.igexin.push.core.f.f.getResources().getIdentifier("push_small", "drawable", com.igexin.push.core.f.e);
            if (identifier == 0) {
                identifier = com.igexin.push.core.f.f.getResources().getIdentifier("push_small", "mipmap", com.igexin.push.core.f.e);
            }
            if (identifier != 0) {
                com.igexin.b.a.c.b.a(f284a + "|push_small.png is set, use default push_small");
                return identifier;
            }
            com.igexin.b.a.c.b.a(f284a + "|push_small.png is missing");
        }
        int identifier2 = com.igexin.push.core.f.f.getResources().getIdentifier("push", "drawable", com.igexin.push.core.f.e);
        if (identifier2 == 0) {
            identifier2 = com.igexin.push.core.f.f.getResources().getIdentifier("push", "mipmap", com.igexin.push.core.f.e);
        }
        if (TextUtils.isEmpty(aVar.t())) {
            return identifier2 != 0 ? identifier2 : R.drawable.sym_def_app_icon;
        }
        if ("null".equals(aVar.t())) {
            return R.drawable.sym_def_app_icon;
        }
        if (aVar.t().startsWith("@")) {
            String strT = aVar.t();
            return strT.substring(1, strT.length()).endsWith("email") ? R.drawable.sym_action_email : R.drawable.sym_def_app_icon;
        }
        int identifier3 = com.igexin.push.core.f.f.getResources().getIdentifier(aVar.t(), "drawable", com.igexin.push.core.f.e);
        if (identifier3 == 0) {
            identifier3 = com.igexin.push.core.f.f.getResources().getIdentifier(aVar.t(), "mipmap", com.igexin.push.core.f.e);
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

    private Notification.Builder a(com.igexin.push.extension.distribution.basic.b.a aVar) {
        Notification.Builder builder = new Notification.Builder(com.igexin.push.core.f.f);
        NotificationManager notificationManager = (NotificationManager) com.igexin.push.core.f.f.getSystemService("notification");
        try {
            Class<?> cls = Class.forName("android.app.NotificationChannel");
            Constructor<?> constructor = cls.getConstructor(String.class, CharSequence.class, Integer.TYPE);
            if (constructor != null) {
                Class<?> cls2 = notificationManager.getClass();
                if (((Parcelable) cls2.getMethod("getNotificationChannel", String.class).invoke(notificationManager, aVar.c())) == null) {
                    Parcelable parcelable = (Parcelable) constructor.newInstance(aVar.c(), aVar.d(), Integer.valueOf(aVar.e()));
                    Method method = cls2.getMethod("createNotificationChannel", Class.forName("android.app.NotificationChannel"));
                    Method method2 = cls.getMethod("enableVibration", Boolean.TYPE);
                    Method method3 = cls.getMethod("setSound", Uri.class, AudioAttributes.class);
                    method2.invoke(parcelable, Boolean.valueOf(aVar.r()));
                    if (!aVar.s()) {
                        method3.invoke(parcelable, null, null);
                    }
                    method.invoke(notificationManager, parcelable);
                }
                builder.getClass().getMethod("setChannelId", String.class).invoke(builder, aVar.c());
            }
        } catch (Exception unused) {
        }
        return builder;
    }

    private Notification a(Notification notification, com.igexin.push.extension.distribution.basic.b.a aVar) {
        notification.defaults = 4;
        notification.ledARGB = -16711936;
        notification.ledOnMS = 1000;
        notification.ledOffMS = PathInterpolatorCompat.MAX_NUM_POINTS;
        notification.flags = 1;
        if (aVar.s()) {
            notification.defaults |= 1;
        }
        notification.flags = aVar.q() ? notification.flags | 16 : notification.flags | 32;
        if (aVar.r()) {
            notification.defaults |= 2;
        }
        notification.icon = a(aVar, true);
        return notification;
    }

    private PendingIntent a(String str, String str2, int i, com.igexin.push.extension.distribution.basic.b.a aVar, boolean z) {
        Intent intent = new Intent(com.igexin.push.extension.distribution.basic.c.b.f299a);
        intent.putExtra("taskid", str);
        intent.putExtra("messageid", str2);
        intent.putExtra("appid", com.igexin.push.core.f.f238a);
        intent.putExtra("actionid", aVar.getDoActionId());
        intent.putExtra("accesstoken", com.igexin.push.extension.distribution.basic.c.g.d);
        intent.putExtra("notifID", i);
        intent.putExtra("notifyStyle", aVar.C() + "");
        intent.putExtra("id", aVar.g() + "");
        intent.putExtra("bigStyle", aVar.j() + "");
        intent.putExtra("isFloat", z);
        intent.putExtra("checkpackage", com.igexin.push.core.f.f.getPackageName());
        intent.putExtra("feedbackid", aVar.getActionId().substring(aVar.getActionId().length() - 1));
        String strO = aVar.o();
        if (strO == null) {
            strO = "";
        }
        intent.putExtra(AbsoluteConst.JSON_KEY_TITLE, strO);
        String strP = aVar.p();
        intent.putExtra("content", strP != null ? strP : "");
        if (com.igexin.push.extension.distribution.basic.j.f.a(PushBuildConfig.sdk_conf_version, "2.11.0.0") < 0) {
            return PendingIntent.getBroadcast(com.igexin.push.core.f.f, new Random().nextInt(1000), intent, 134217728);
        }
        try {
            Intent intent2 = new Intent(com.igexin.push.core.f.f, Class.forName(i.a(com.igexin.push.extension.distribution.basic.c.g.f304a)));
            intent2.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_NOTIFICATION_CLICK);
            intent2.putExtra("broadcast_intent", intent);
            if (Build.VERSION.SDK_INT >= 26 && com.igexin.push.extension.distribution.basic.j.e.a()) {
                try {
                    return (PendingIntent) PendingIntent.class.getDeclaredMethod("getForegroundService", Context.class, Integer.TYPE, Intent.class, Integer.TYPE).invoke(null, com.igexin.push.core.f.f, Integer.valueOf(new Random().nextInt(1000)), intent2, 134217728);
                } catch (Throwable unused) {
                }
            }
            return PendingIntent.getService(com.igexin.push.core.f.f, new Random().nextInt(1000), intent2, 134217728);
        } catch (Throwable unused2) {
            return PendingIntent.getBroadcast(com.igexin.push.core.f.f, new Random().nextInt(1000), intent, 134217728);
        }
    }

    private void a(String str, String str2, String str3, String str4) {
        if (com.igexin.push.core.f.f == null) {
            return;
        }
        Intent intent = null;
        try {
            Class clsB = b(com.igexin.push.core.f.f);
            if (clsB == null || com.igexin.push.core.f.f238a == null) {
                return;
            }
            Intent intent2 = new Intent(com.igexin.push.core.f.f, (Class<?>) clsB);
            try {
                Bundle bundle = new Bundle();
                bundle.putInt(PushConsts.CMD_ACTION, 10011);
                Class<?> cls = Class.forName("com.igexin.sdk.message.GTNotificationMessage");
                if (com.igexin.push.extension.distribution.basic.j.f.a(PushBuildConfig.sdk_conf_version, "2.12.0.0") == 0) {
                    bundle.putSerializable("notification_arrive", (Serializable) cls.getConstructor(String.class, String.class).newInstance(str, str2));
                } else {
                    bundle.putSerializable(PushConsts.KEY_NOTIFICATION_ARRIVED, (Serializable) cls.getConstructor(String.class, String.class, String.class, String.class).newInstance(str, str2, str3, str4));
                }
                intent2.putExtras(bundle);
                if (a(com.igexin.push.core.f.f)) {
                    com.igexin.push.extension.distribution.basic.c.a.a().a(com.igexin.push.core.f.f, intent2, 1902131808);
                    return;
                } else {
                    com.igexin.push.core.f.f.startService(intent2);
                    return;
                }
            } catch (Throwable th) {
                th = th;
                intent = intent2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        com.igexin.b.a.c.b.a(f284a + "|" + th.toString());
        if (!(th instanceof IllegalStateException) || com.igexin.push.extension.distribution.basic.j.f.a(PushBuildConfig.sdk_conf_version, "2.13.1.0") < 0) {
            return;
        }
        com.igexin.push.extension.distribution.basic.c.a.a().a(com.igexin.push.core.f.f, intent, 1902131808);
    }

    private boolean a() {
        com.igexin.push.extension.distribution.basic.i.a aVarA = com.igexin.push.extension.distribution.basic.i.a.a(com.igexin.push.extension.distribution.basic.c.g.f304a);
        if (aVarA.a("getui_notification", Constants.Name.LAYOUT) != 0) {
            int iA = aVarA.a("getui_notification_style1", "id");
            int iA2 = aVarA.a("getui_notification_style2", "id");
            int iA3 = aVarA.a("getui_notification_style3", "id");
            int iA4 = aVarA.a("getui_notification_icon", "id");
            int iA5 = aVarA.a("getui_notification_bg", "id");
            int iA6 = aVarA.a("getui_notification_date", "id");
            int iA7 = aVarA.a("getui_notification_icon2", "id");
            int iA8 = aVarA.a("getui_notification_style1_title", "id");
            int iA9 = aVarA.a("getui_notification_style1_content", "id");
            int iA10 = aVarA.a("getui_notification__style2_title", "id");
            int iA11 = aVarA.a("getui_notification_style3_content", "id");
            if (iA != 0 && iA2 != 0 && iA3 != 0 && iA4 != 0 && iA5 != 0 && iA6 != 0 && iA7 != 0 && iA8 != 0 && iA9 != 0 && iA10 != 0 && iA11 != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean a(Context context) {
        return com.igexin.push.extension.distribution.basic.j.f.a(PushBuildConfig.sdk_conf_version, "2.13.1.0") >= 0 && com.igexin.push.extension.distribution.basic.j.c.d() && !com.igexin.push.extension.distribution.basic.j.c.b(context.getPackageName());
    }

    private int b() {
        try {
            Field field = Class.forName("com.android.internal.R$id").getField(AbsoluteConst.JSON_KEY_ICON);
            field.setAccessible(true);
            return field.getInt(null);
        } catch (Exception unused) {
            return 0;
        }
    }

    private Class b(Context context) {
        try {
            com.igexin.push.extension.distribution.basic.d.a.a();
            String strD = com.igexin.push.extension.distribution.basic.d.a.d();
            if (TextUtils.isEmpty(strD)) {
                return null;
            }
            return Class.forName(strD);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a(f284a + "|" + th.toString());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0100  */
    @Override // com.igexin.push.core.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.igexin.push.core.bean.BaseAction a(org.json.JSONObject r19) {
        /*
            Method dump skipped, instruction units count: 710
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.a.a(org.json.JSONObject):com.igexin.push.core.bean.BaseAction");
    }

    @Override // com.igexin.push.core.a.a.a
    public com.igexin.push.core.c a(PushTaskBean pushTaskBean, BaseAction baseAction) {
        boolean z;
        boolean z2;
        boolean z3;
        if (!(baseAction instanceof com.igexin.push.extension.distribution.basic.b.a)) {
            return com.igexin.push.core.c.stop;
        }
        com.igexin.push.extension.distribution.basic.b.a aVar = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
        String strU = aVar.u();
        String strV = aVar.v();
        String strN = aVar.n();
        String taskId = pushTaskBean.getTaskId();
        String messageId = pushTaskBean.getMessageId();
        if (strN != null) {
            String strA = com.igexin.push.extension.distribution.basic.c.d.a().a(strN);
            if (strA.equals("")) {
                aVar.c(false);
                z = true;
            } else {
                aVar.e(strA);
                z = false;
            }
        } else {
            z = false;
        }
        if (strU != null) {
            String strA2 = com.igexin.push.extension.distribution.basic.c.d.a().a(strU);
            if (strA2.equals("")) {
                aVar.g(false);
                z2 = true;
            } else {
                aVar.l(strA2);
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (strV != null) {
            String strA3 = com.igexin.push.extension.distribution.basic.c.d.a().a(strV);
            if (strA3.equals("")) {
                aVar.h(false);
                z3 = true;
            } else {
                aVar.m(strA3);
                z3 = false;
            }
        } else {
            z3 = false;
        }
        if (!z2 && !z3 && !z) {
            return com.igexin.push.core.c.success;
        }
        if (z2) {
            a(strU, taskId, messageId, baseAction, 2);
        }
        if (z3) {
            a(strV, taskId, messageId, baseAction, 3);
        }
        if (z) {
            a(strN, taskId, messageId, baseAction, 8);
        }
        return com.igexin.push.core.c.wait;
    }

    public void a(String str, String str2, com.igexin.push.extension.distribution.basic.b.a aVar, int i) {
        Bitmap bitmapA;
        com.igexin.push.core.f.ae.put(str, Integer.valueOf(i));
        NotificationManager notificationManager = (NotificationManager) com.igexin.push.core.f.f.getSystemService("notification");
        Notification notification = new Notification();
        if (Build.VERSION.SDK_INT >= 26) {
            notification = a(aVar).build();
        }
        notification.tickerText = aVar.p();
        Notification notificationA = a(notification, aVar);
        String strX = aVar.x();
        String strO = aVar.o();
        String strP = aVar.p();
        com.igexin.push.extension.distribution.basic.i.a aVarA = com.igexin.push.extension.distribution.basic.i.a.a(com.igexin.push.core.f.f);
        int iA = aVarA.a("getui_notification", Constants.Name.LAYOUT);
        int iA2 = aVarA.a("getui_notification_bg", "id");
        notificationA.contentView = new RemoteViews(com.igexin.push.core.f.e, iA);
        if (strX == null || (bitmapA = j.a(strX)) == null) {
            return;
        }
        notificationA.contentView.setImageViewBitmap(iA2, bitmapA);
        notificationA.contentIntent = a(str, str2, i, aVar, false);
        k.a(notificationManager, i, notificationA, 4);
        if (com.igexin.push.extension.distribution.basic.j.f.a(PushBuildConfig.sdk_conf_version, "2.12.0.0") >= 0) {
            a(str, str2, strO, strP);
        }
    }

    public void a(String str, String str2, String str3, BaseAction baseAction, int i) {
        String str4;
        String str5;
        String str6 = "width=" + com.igexin.push.extension.distribution.basic.c.g.c + "&height=" + com.igexin.push.extension.distribution.basic.c.g.b;
        if (str.contains(str6)) {
            str4 = str;
        } else {
            if (str.indexOf(Operators.CONDITION_IF_STRING) > 0) {
                str5 = str + "&" + str6;
            } else {
                str5 = str + Operators.CONDITION_IF_STRING + str6;
            }
            str4 = str5;
        }
        com.igexin.push.extension.distribution.basic.f.d dVar = new com.igexin.push.extension.distribution.basic.f.d(str4, str, str2, baseAction, i, new b(this, baseAction, str2, str3, str, i));
        if (i == 2) {
            com.igexin.push.extension.distribution.basic.b.a aVar = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
            aVar.f(aVar.A() + 1);
        } else if (i == 3) {
            com.igexin.push.extension.distribution.basic.b.a aVar2 = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
            aVar2.g(aVar2.B() + 1);
        } else if (i == 8) {
            com.igexin.push.extension.distribution.basic.b.a aVar3 = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
            aVar3.e(aVar3.m() + 1);
        }
        com.igexin.b.a.b.c.b().a(new com.igexin.push.extension.distribution.basic.f.a(dVar), false, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.String r17, java.lang.String r18, com.igexin.push.extension.distribution.basic.b.a r19, int r20) {
        /*
            Method dump skipped, instruction units count: 566
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.a.a.b(java.lang.String, java.lang.String, com.igexin.push.extension.distribution.basic.b.a, int):void");
    }

    @Override // com.igexin.push.core.a.a.a
    public boolean b(PushTaskBean pushTaskBean, BaseAction baseAction) {
        com.igexin.push.core.a.f fVarA;
        String str;
        StringBuilder sb;
        if (pushTaskBean != null && (baseAction instanceof com.igexin.push.extension.distribution.basic.b.a)) {
            com.igexin.push.extension.distribution.basic.b.a aVar = (com.igexin.push.extension.distribution.basic.b.a) baseAction;
            int iA = !aVar.a() ? a(pushTaskBean.getTaskId()) : aVar.b();
            int i = 0;
            try {
                i = Integer.parseInt(aVar.getActionId().substring(aVar.getActionId().length() - 1)) + HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT;
            } catch (Exception unused) {
            }
            if (aVar.C() == 4) {
                a(pushTaskBean.getTaskId(), pushTaskBean.getMessageId(), aVar, iA);
                if (i != 0) {
                    fVarA = com.igexin.push.core.a.f.a();
                    str = i + "";
                    sb = new StringBuilder();
                    sb.append("notifyStyle:");
                    sb.append(aVar.C());
                    fVarA.a(pushTaskBean, str, sb.toString());
                }
                pushTaskBean.setPerActionid(Integer.parseInt(aVar.getActionId()));
                pushTaskBean.setCurrentActionid(Integer.parseInt(aVar.getDoActionId()));
            } else {
                b(pushTaskBean.getTaskId(), pushTaskBean.getMessageId(), aVar, iA);
                if (i != 0) {
                    fVarA = com.igexin.push.core.a.f.a();
                    str = i + "";
                    sb = new StringBuilder();
                    sb.append("notifyStyle:");
                    sb.append(aVar.C());
                    fVarA.a(pushTaskBean, str, sb.toString());
                }
                pushTaskBean.setPerActionid(Integer.parseInt(aVar.getActionId()));
                pushTaskBean.setCurrentActionid(Integer.parseInt(aVar.getDoActionId()));
            }
        }
        return true;
    }
}
