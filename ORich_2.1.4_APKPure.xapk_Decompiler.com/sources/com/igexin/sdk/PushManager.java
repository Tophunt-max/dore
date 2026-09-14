package com.igexin.sdk;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.core.i;
import com.igexin.push.core.s;
import com.igexin.push.util.t;
import com.taobao.weex.common.Constants;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.util.Md5Utils;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class PushManager {
    private static String[] j = {"DE", "FR", "IT", "ES", "PL", "RO", "NL", "BE", "GR", "CZ", AssistPushConsts.MSG_VALUE_PAYLOAD, "SE", "HU", "AT", "BG", "DK", "FI", "SK", "IE", "HR", "LT", "SI", "LV", "EE", "CY", "LU", "MT"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f450a;
    private long b;
    private long c;
    private byte[] d;
    private Class e;
    private String f;
    private String g;
    private int h;
    private i i;

    private PushManager() {
        this.h = -1;
    }

    private Class a(Context context) {
        Class cls = this.e;
        return cls != null ? cls : s.a().c(context);
    }

    private String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(Md5Utils.ALGORITHM);
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder("");
            int length = bArrDigest.length;
            for (int i = 0; i < length; i++) {
                int i2 = bArrDigest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean a() {
        try {
            String country = Locale.getDefault().getCountry();
            for (String str : j) {
                if (country.equalsIgnoreCase(str)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private boolean a(Context context, Intent intent) {
        if (a()) {
            Log.e("PushManager", "EU countries not support !!!");
            return false;
        }
        if (t.b(context) || this.h != -1) {
            return s.a().a(context, intent);
        }
        return false;
    }

    private void b(Context context) {
        if (((Boolean) t.c(context, "pri_alert", false)).booleanValue() && this.i == null && Build.VERSION.SDK_INT >= 14) {
            try {
                Application applicationD = d(context);
                if (applicationD == null) {
                    return;
                }
                synchronized (this) {
                    if (this.i == null) {
                        i iVar = new i();
                        this.i = iVar;
                        applicationD.registerActivityLifecycleCallbacks(iVar);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void c(Context context) {
        if (this.i == null || Build.VERSION.SDK_INT < 14) {
            return;
        }
        try {
            Application applicationD = d(context);
            if (applicationD == null) {
                return;
            }
            applicationD.unregisterActivityLifecycleCallbacks(this.i);
            this.i = null;
        } catch (Throwable unused) {
        }
    }

    private Application d(Context context) {
        if (context == null || !e(context)) {
            return null;
        }
        return context instanceof Application ? (Application) context : (Application) context.getApplicationContext();
    }

    private boolean e(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            int iMyPid = Process.myPid();
            String str = "";
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && !runningAppProcesses.isEmpty()) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next != null && next.pid == iMyPid) {
                        str = next.processName;
                        break;
                    }
                }
                return str.equals(context.getPackageName());
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static PushManager getInstance() {
        return g.f463a;
    }

    private <T extends Activity> void registerPushActivity(Context context, Class<T> cls) {
        String name;
        if (a()) {
            Log.e("PushManager", "EU countries not support !!!");
            return;
        }
        try {
            if (cls != null) {
                try {
                    Class.forName(cls.getName());
                    if (!com.igexin.push.util.a.a(context, cls)) {
                        return;
                    } else {
                        name = cls.getName();
                    }
                } catch (Exception e) {
                    Log.e("PushManager", "can't load activity = " + e.toString());
                    com.igexin.b.a.c.b.a("PushManager|registerPushActiviy|" + e.toString());
                    return;
                }
            } else {
                Log.d("PushManager", "call -> registerPushActiviy, parameter [activity] is null");
                name = "";
            }
            this.g = name;
            if (this.e != null) {
                Intent intent = new Intent(context.getApplicationContext(), (Class<?>) this.e);
                intent.putExtra("ua", this.g);
                int i = this.h;
                if (i != -1) {
                    intent.putExtra("pri_authorized", i == 0);
                }
                a(context, intent);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("PushManager|registerPushActiviy|" + th.toString());
        }
    }

    public boolean bindAlias(Context context, String str) {
        return bindAlias(context, str, "bindAlias_" + System.currentTimeMillis());
    }

    public boolean bindAlias(Context context, String str, String str2) {
        com.igexin.b.a.c.b.a("PushManager|call bindAlias");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.c < 1000) {
            Log.e("PushManager", "call - > bindAlias failed, it be called too frequently");
            return false;
        }
        this.c = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "bindAlias");
        bundle.putString(Constants.Name.Recycler.LIST_DATA_ITEM, str);
        bundle.putString("sn", str2);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public String getClientid(Context context) {
        if (this.d == null) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null && applicationInfo.metaData != null) {
                    String string = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPID);
                    String string2 = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPSECRET);
                    String string3 = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPKEY);
                    if (string != null) {
                        string = string.trim();
                    }
                    if (string2 != null) {
                        string2 = string2.trim();
                    }
                    if (string3 != null) {
                        string3 = string3.trim();
                    }
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                        String strA = a(string + string2 + string3 + context.getPackageName());
                        if (strA != null) {
                            this.d = strA.getBytes();
                        }
                    }
                }
            } catch (Exception e) {
                com.igexin.b.a.c.b.a("PushManager|" + e.toString());
            }
        }
        if (this.d == null) {
            return null;
        }
        byte[] bArrA = com.igexin.push.util.g.a(context.getFilesDir().getPath() + Operators.DIV + "init.pid");
        byte[] bArr = this.d;
        if (bArr == null || bArrA == null || bArr.length != bArrA.length) {
            return null;
        }
        int length = bArrA.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr2[i] = (byte) (this.d[i] ^ bArrA[i]);
        }
        return new String(bArr2);
    }

    public String getVersion(Context context) {
        return PushBuildConfig.sdk_conf_version;
    }

    public <T extends Service> void initialize(Context context, Class<T> cls) {
        String str;
        if (context == null) {
            str = "context is null";
        } else {
            if (!a()) {
                try {
                    String packageName = context.getApplicationContext().getPackageName();
                    if (!com.igexin.push.util.a.a("PushManager", context, cls)) {
                        com.igexin.b.a.c.b.a("PushManager|init checkServiceSetCorrectly false");
                        return;
                    }
                    com.igexin.push.util.a.a(context.getApplicationContext());
                    if (cls == null || com.igexin.push.core.b.s.equals(cls.getName())) {
                        cls = PushService.class;
                    }
                    this.e = cls;
                    Intent intent = new Intent(context.getApplicationContext(), (Class<?>) cls);
                    intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_INITIALIZE);
                    intent.putExtra("op_app", packageName);
                    intent.putExtra("us", cls.getName());
                    int i = this.h;
                    if (i != -1) {
                        intent.putExtra("pri_authorized", i == 0);
                    }
                    String str2 = this.f;
                    if (str2 != null) {
                        intent.putExtra("uis", str2);
                    }
                    String str3 = this.g;
                    if (str3 != null) {
                        intent.putExtra("ua", str3);
                    }
                    a(context, intent);
                    b(context);
                    return;
                } catch (Throwable th) {
                    com.igexin.b.a.c.b.a("PushManager|initialize|" + th.toString());
                    return;
                }
            }
            str = "EU countries not support !!!";
        }
        Log.e("PushManager", str);
    }

    public boolean isPushTurnedOn(Context context) {
        return new com.igexin.sdk.a.d(context).c();
    }

    public <T extends GTIntentService> void registerPushIntentService(Context context, Class<T> cls) {
        String name;
        if (a()) {
            Log.e("PushManager", "EU countries not support !!!");
            return;
        }
        com.igexin.b.a.c.b.a("PushManager|call registerPushIntentService");
        try {
            if (cls != null) {
                try {
                    Class.forName(cls.getName());
                    if (!com.igexin.push.util.a.b(new Intent(context, (Class<?>) cls), context)) {
                        Log.e("PushManager", "call - > registerPushIntentService, parameter [userIntentService] is set, but didn't find class \"" + cls.getName() + "\", please check your AndroidManifest");
                        return;
                    }
                    name = cls.getName();
                } catch (Exception e) {
                    Log.e("PushManager", "can't load IntentService = " + e.toString());
                    com.igexin.b.a.c.b.a("PushManager|registerPushIntentService|" + e.toString());
                    return;
                }
            } else {
                Log.d("PushManager", "call -> registerPushIntentService, parameter [userIntentService] is null, use default Receiver");
                name = "";
            }
            this.f = name;
            if (this.e != null) {
                Intent intent = new Intent(context.getApplicationContext(), (Class<?>) this.e);
                intent.putExtra("uis", this.f);
                int i = this.h;
                if (i != -1) {
                    intent.putExtra("pri_authorized", i == 0);
                }
                a(context, intent);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("PushManager|registerPushIntentService|" + th.toString());
        }
    }

    public boolean sendApplinkFeedback(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e("PushManager", "call - > sendApplinkFeedback failed, parameter is illegal");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "sendApplinkFeedback");
        bundle.putString("url", str);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public boolean sendFeedbackMessage(Context context, String str, String str2, int i) {
        if (str == null || str2 == null || i < 90001 || i > 90999) {
            Log.e("PushManager", "call - > sendFeedbackMessage failed, parameter is illegal");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "sendFeedbackMessage");
        bundle.putString("taskid", str);
        bundle.putString("messageid", str2);
        bundle.putString("actionid", String.valueOf(i));
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public boolean sendMessage(Context context, String str, byte[] bArr) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (str == null || bArr == null || bArr.length > PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM || jCurrentTimeMillis - this.b < 1000) {
            Log.e("PushManager", "call - > sendMessage failed, parameter is illegal or it be called too frequently");
            return false;
        }
        this.b = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "sendMessage");
        bundle.putString("taskid", str);
        bundle.putByteArray("extraData", bArr);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public boolean setHeartbeatInterval(Context context, int i) {
        if (i < 0) {
            Log.e("PushManager", "call -> setHeartbeatInterval failed, parameter [interval] < 0, illegal");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "setHeartbeatInterval");
        bundle.putInt("interval", i);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public void setPrivacyPolicyStrategy(Context context, boolean z) {
        this.h = !z ? 1 : 0;
        Class cls = this.e;
        if (cls != null) {
            initialize(context, cls);
        }
        t.a(context, "pri_alert", true);
        t.a(context, "pri_authorized", Boolean.valueOf(z));
    }

    public boolean setSilentTime(Context context, int i, int i2) {
        if (i < 0 || i >= 24 || i2 < 0 || i2 > 23) {
            Log.e("PushManager", "call - > setSilentTime failed, parameter [beginHour] or [duration] value exceeding");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "setSilentTime");
        bundle.putInt("beginHour", i);
        bundle.putInt("duration", i2);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public boolean setSocketTimeout(Context context, int i) {
        if (i < 0) {
            Log.e("PushManager", "call - > setSocketTimeout failed, parameter [timeout] < 0, illegal");
            return false;
        }
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "setSocketTimeout");
        bundle.putInt("timeout", i);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }

    public int setTag(Context context, Tag[] tagArr, String str) {
        if (tagArr == null) {
            Log.e("PushManager", "call -> setTag failed, parameter [tags] is null");
            com.igexin.b.a.c.b.a("PushManager|tags is null");
            return PushConsts.SETTAG_ERROR_NULL;
        }
        if (str == null) {
            Log.e("PushManager", "call -> setTag failed, parameter [sn] is null");
            com.igexin.b.a.c.b.a("PushManager|sn is null");
            return PushConsts.SETTAG_SN_NULL;
        }
        if (tagArr.length > 200) {
            Log.e("PushManager", "call -> setTag failed, parameter [tags] len > 200 is exceeds");
            com.igexin.b.a.c.b.a("PushManager|tags len > 200 is exceeds");
            return PushConsts.SETTAG_ERROR_COUNT;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f450a < 1000) {
            Log.e("PushManager", "call - > setTag failed, it be called too frequently");
            return PushConsts.SETTAG_ERROR_FREQUENCY;
        }
        StringBuilder sb = new StringBuilder();
        for (Tag tag : tagArr) {
            if (tag != null && tag.getName() != null) {
                if (tag.getName().contains(Operators.SPACE_STR) || tag.getName().contains(",")) {
                    Log.e("PushManager", "call -> setTag failed, the tag [" + tag.getName() + Operators.ARRAY_END_STR + " is not illegal");
                    return PushConsts.SETTAG_TAG_ILLEGAL;
                }
                sb.append(tag.getName());
                sb.append(",");
            }
        }
        if (sb.length() <= 0) {
            return PushConsts.SETTAG_ERROR_NULL;
        }
        sb.deleteCharAt(sb.length() - 1);
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "setTag");
        bundle.putString("tags", sb.toString());
        bundle.putString("sn", str);
        this.f450a = jCurrentTimeMillis;
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        a(context, intent);
        return 0;
    }

    public void turnOffPush(Context context) {
        if (a()) {
            Log.e("PushManager", "EU countries not support !!!");
            return;
        }
        com.igexin.b.a.c.b.a("PushManager|call turnOffPush");
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "turnOffPush");
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        a(context, intent);
        c(context);
    }

    public void turnOnPush(Context context) {
        if (a()) {
            Log.e("PushManager", "EU countries not support !!!");
            return;
        }
        com.igexin.b.a.c.b.a("PushManager|call turnOnPush");
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_SERVICE_INITIALIZE_SLAVE);
        intent.putExtra("op_app", context.getApplicationContext().getPackageName());
        intent.putExtra("isSlave", true);
        a(context, intent);
        b(context);
    }

    public boolean unBindAlias(Context context, String str, boolean z) {
        return unBindAlias(context, str, z, "unBindAlias_" + System.currentTimeMillis());
    }

    public boolean unBindAlias(Context context, String str, boolean z, String str2) {
        com.igexin.b.a.c.b.a("PushManager|call unBindAlias");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.c < 1000) {
            Log.e("PushManager", "call - > unBindAlias failed, it be called too frequently");
            return false;
        }
        this.c = jCurrentTimeMillis;
        Bundle bundle = new Bundle();
        bundle.putString(PushConsts.CMD_ACTION, "unbindAlias");
        bundle.putString(Constants.Name.Recycler.LIST_DATA_ITEM, str);
        bundle.putBoolean("isSeft", z);
        bundle.putString("sn", str2);
        Intent intent = new Intent(context.getApplicationContext(), (Class<?>) a(context));
        intent.putExtra(PushConsts.CMD_ACTION, PushConsts.ACTION_BROADCAST_PUSHMANAGER);
        intent.putExtra(AbsURIAdapter.BUNDLE, bundle);
        return a(context, intent);
    }
}
