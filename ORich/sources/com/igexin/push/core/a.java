package com.igexin.push.core;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.bean.PushTaskBean;
import com.igexin.sdk.PushConsts;
import com.igexin.sdk.message.BindAliasCmdMessage;
import com.igexin.sdk.message.FeedbackCmdMessage;
import com.igexin.sdk.message.GTNotificationMessage;
import com.igexin.sdk.message.GTTransmitMessage;
import com.igexin.sdk.message.SetTagCmdMessage;
import com.igexin.sdk.message.UnBindAliasCmdMessage;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f139a;

    private a() {
    }

    public static a a() {
        if (f139a == null) {
            f139a = new a();
        }
        return f139a;
    }

    private void a(String str, String str2, String str3, byte[] bArr) {
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT >= 12) {
            intent.addFlags(32);
        }
        intent.setAction("com.igexin.sdk.action." + str3);
        Bundle bundle = new Bundle();
        bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_MSG_DATA);
        bundle.putString("taskid", str);
        bundle.putString("messageid", str2);
        bundle.putString("appid", str3);
        bundle.putString("payloadid", str2 + ":" + str);
        bundle.putString("packagename", f.e);
        bundle.putByteArray(AssistPushConsts.MSG_TYPE_PAYLOAD, bArr);
        intent.putExtras(bundle);
        intent.setPackage(f.f.getPackageName());
        f.f.sendBroadcast(intent);
    }

    private Intent d() {
        Intent intent = new Intent();
        if (Build.VERSION.SDK_INT >= 12) {
            intent.addFlags(32);
        }
        intent.setAction("com.igexin.sdk.action." + f.f238a);
        intent.setPackage(f.f.getPackageName());
        return intent;
    }

    public Class a(Context context) {
        return s.a().d(context);
    }

    public void a(int i) {
        if (f.f == null) {
            return;
        }
        Class clsA = a(f.f);
        if (clsA != null) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_SDKSERVICEPID);
            bundle.putInt(PushConsts.KEY_SERVICE_PIT, i);
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.GET_SDKSERVICEPID);
        bundle2.putInt(PushConsts.KEY_SERVICE_PIT, i);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void a(String str, String str2) {
        if (f.f == null) {
            return;
        }
        try {
            Class clsA = a(f.f);
            if (clsA != null) {
                Intent intent = new Intent(f.f, (Class<?>) clsA);
                Bundle bundle = new Bundle();
                bundle.putInt(PushConsts.CMD_ACTION, 10010);
                bundle.putSerializable(PushConsts.KEY_CMD_MSG, new SetTagCmdMessage(str, str2, PushConsts.SET_TAG_RESULT));
                intent.putExtras(bundle);
                s.a().b(f.f, intent);
            } else {
                Intent intentD = d();
                Bundle bundle2 = new Bundle();
                bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.SET_TAG_RESULT);
                bundle2.putString("sn", str);
                bundle2.putString("code", str2);
                intentD.putExtras(bundle2);
                f.f.sendBroadcast(intentD);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("Broadcaster|" + th.toString());
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (f.f == null) {
            return;
        }
        com.igexin.b.a.c.b.a("startapp|broadcastPayload");
        byte[] msgExtra = null;
        if (str4 != null) {
            msgExtra = str4.getBytes();
        } else {
            PushTaskBean pushTaskBean = f.ad.get(com.igexin.push.core.a.f.a().a(str, str2));
            if (pushTaskBean != null) {
                msgExtra = pushTaskBean.getMsgExtra();
            }
        }
        if (msgExtra == null) {
            com.igexin.b.a.c.b.a("startapp|broadcast|payload is empty!");
            return;
        }
        com.igexin.b.a.c.b.a("startapp|broadcast|payload = " + new String(msgExtra));
        Class clsA = a(f.f);
        if (clsA != null && f.f238a != null && f.f238a.equals(str3)) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_MSG_DATA);
            bundle.putSerializable(PushConsts.KEY_MESSAGE_DATA, new GTTransmitMessage(str, str2, str2 + ":" + str, msgExtra));
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
        }
        a(str, str2, str3, msgExtra);
    }

    public void a(String str, String str2, String str3, String str4, long j) {
        if (f.f == null) {
            return;
        }
        Class clsA = a(f.f);
        if (clsA != null && f.f238a != null && f.f238a.equals(str)) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, 10010);
            bundle.putSerializable(PushConsts.KEY_CMD_MSG, new FeedbackCmdMessage(str2, str3, str4, j, PushConsts.THIRDPART_FEEDBACK));
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.THIRDPART_FEEDBACK);
        bundle2.putString("appid", str);
        bundle2.putString("taskid", str2);
        bundle2.putString("actionid", str3);
        bundle2.putString("result", str4);
        bundle2.putLong("timestamp", j);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void b() {
        if (f.f == null) {
            return;
        }
        Class clsA = a(f.f);
        if (clsA != null) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_SDKONLINESTATE);
            bundle.putBoolean(PushConsts.KEY_ONLINE_STATE, f.l);
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.GET_SDKONLINESTATE);
        bundle2.putBoolean(PushConsts.KEY_ONLINE_STATE, f.l);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void b(String str, String str2) {
        if (f.f == null) {
            return;
        }
        Class clsA = a(f.f);
        if (clsA != null) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, 10010);
            bundle.putSerializable(PushConsts.KEY_CMD_MSG, new BindAliasCmdMessage(str, str2, 10010));
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
            return;
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, 10010);
        bundle2.putString("sn", str);
        bundle2.putString("code", str2);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void b(String str, String str2, String str3, String str4) {
        Class clsA;
        if (f.f == null || (clsA = a(f.f)) == null || f.f238a == null) {
            return;
        }
        Intent intent = new Intent(f.f, (Class<?>) clsA);
        Bundle bundle = new Bundle();
        bundle.putInt(PushConsts.CMD_ACTION, 10011);
        bundle.putSerializable(PushConsts.KEY_NOTIFICATION_ARRIVED, new GTNotificationMessage(str, str2, str3, str4));
        intent.putExtras(bundle);
        s.a().b(f.f, intent);
    }

    public void c() {
        if (f.f == null) {
            return;
        }
        Log.d("PushService", "clientid is " + f.s);
        com.igexin.b.a.c.b.a("broadcastClientId|" + f.s);
        Class clsA = a(f.f);
        if (clsA != null) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, PushConsts.GET_CLIENTID);
            bundle.putString(PushConsts.KEY_CLIENT_ID, f.s);
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, PushConsts.GET_CLIENTID);
        bundle2.putString(PushConsts.KEY_CLIENT_ID, f.s);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void c(String str, String str2) {
        if (f.f == null) {
            return;
        }
        Class clsA = a(f.f);
        if (clsA != null) {
            Intent intent = new Intent(f.f, (Class<?>) clsA);
            Bundle bundle = new Bundle();
            bundle.putInt(PushConsts.CMD_ACTION, 10010);
            bundle.putSerializable(PushConsts.KEY_CMD_MSG, new UnBindAliasCmdMessage(str, str2, 10011));
            intent.putExtras(bundle);
            s.a().b(f.f, intent);
            return;
        }
        Intent intentD = d();
        Bundle bundle2 = new Bundle();
        bundle2.putInt(PushConsts.CMD_ACTION, 10011);
        bundle2.putString("sn", str);
        bundle2.putString("code", str2);
        intentD.putExtras(bundle2);
        f.f.sendBroadcast(intentD);
    }

    public void c(String str, String str2, String str3, String str4) {
        Class clsA;
        if (f.f == null || (clsA = a(f.f)) == null || f.f238a == null) {
            return;
        }
        Intent intent = new Intent(f.f, (Class<?>) clsA);
        Bundle bundle = new Bundle();
        bundle.putInt(PushConsts.CMD_ACTION, PushConsts.ACTION_NOTIFICATION_CLICKED);
        bundle.putSerializable(PushConsts.KEY_NOTIFICATION_CLICKED, new GTNotificationMessage(str, str2, str3, str4));
        intent.putExtras(bundle);
        s.a().b(f.f, intent);
    }
}
