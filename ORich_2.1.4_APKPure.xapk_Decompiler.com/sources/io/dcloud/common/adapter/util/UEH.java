package io.dcloud.common.adapter.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import io.dcloud.common.constant.StringConst;
import io.dcloud.common.util.AppRuntime;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.NetTool;
import io.dcloud.common.util.NetworkTypeUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.TelephonyUtil;
import io.dcloud.common.util.ThreadPool;
import io.dcloud.common.util.net.NetWork;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.lang.Thread;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class UEH {
    private static final String CRASH_DIRECTORY = "crash/";
    private static final boolean SAVE_CRASH_LOG = true;
    private static DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.CHINESE);
    public static boolean sInited = false;

    public static void catchUncaughtException(final Context context) {
        if (sInited) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.dcloud.common.adapter.util.UEH.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                UEH.handleUncaughtException(context, th);
                try {
                    if (BaseInfo.getCmitInfo(BaseInfo.sLastRunApp).rptCrs) {
                        UEH.commitUncatchException(context, th);
                    }
                    Thread.sleep(3000L);
                } catch (Exception e) {
                    e.printStackTrace();
                    Logger.e("UncaughtExceptionHandler", "commitUncatchException");
                }
                th.printStackTrace();
                Logger.e("UncaughtExceptionHandler", th.toString());
                Process.killProcess(Process.myPid());
            }
        });
        sInited = true;
    }

    private static void commitBaseUncatchInfo(Context context, StringBuffer stringBuffer) {
        String strEncode;
        String imei = TelephonyUtil.getIMEI(context);
        int networkType = NetworkTypeUtil.getNetworkType(context);
        try {
            strEncode = URLEncoder.encode(Build.MODEL, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            strEncode = null;
        }
        int i = Build.VERSION.SDK_INT;
        stringBuffer.append("s=99");
        stringBuffer.append("&imei=" + imei);
        stringBuffer.append("&md=" + strEncode);
        stringBuffer.append("&os=" + i);
        stringBuffer.append("&appid=" + BaseInfo.sLastRunApp);
        stringBuffer.append("&net=" + networkType);
        stringBuffer.append("&vb=1.9.9.81128");
        stringBuffer.append("&appcount=" + BaseInfo.s_Runing_App_Count);
        stringBuffer.append("&wvcount=" + BaseInfo.s_Webview_Count);
        stringBuffer.append("&pn=" + context.getPackageName());
        stringBuffer.append("&mem=" + getAppUseMem(context));
        stringBuffer.append("&vd=" + PdrUtil.encodeURL(Build.MANUFACTURER));
    }

    private static void commitErrorLog(final String str) {
        ThreadPool.self().addThreadTask(new Runnable() { // from class: io.dcloud.common.adapter.util.UEH.2
            @Override // java.lang.Runnable
            public void run() {
                HashMap map = new HashMap();
                map.put(NetWork.CONTENT_TYPE, "application/x-www-form-urlencoded");
                NetTool.httpPost(StringConst.STREAMAPP_KEY_BASESERVICEURL() + "collect/crash", str, map);
            }
        });
    }

    public static void commitUncatchException(Context context, String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        commitBaseUncatchInfo(context, stringBuffer);
        stringBuffer.append("etype=2");
        stringBuffer.append("&log=" + PdrUtil.encodeURL(str2));
        stringBuffer.append("&eurl=" + PdrUtil.encodeURL(str));
        commitErrorLog(stringBuffer.toString());
    }

    private static void commitUncatchException(File file) {
    }

    private static String getAppUseMem(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (context.getApplicationInfo().uid == runningAppProcessInfo.uid) {
                    int i = runningAppProcessInfo.pid;
                    String str = runningAppProcessInfo.processName;
                    return activityManager.getProcessMemoryInfo(new int[]{i})[0].dalvikPrivateDirty + "kb";
                }
            }
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File handleUncaughtException(Context context, Throwable th) {
        File file = null;
        try {
            Field[] declaredFields = Build.class.getDeclaredFields();
            StringBuffer stringBuffer = new StringBuffer();
            for (Field field : declaredFields) {
                try {
                    field.setAccessible(true);
                    stringBuffer.append(field.getName() + ":" + field.get(null) + "\n");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            File file2 = "mounted".equalsIgnoreCase(Environment.getExternalStorageState()) ? new File(BaseInfo.getCrashLogsPath(context) + CRASH_DIRECTORY) : new File(context.getCacheDir().getAbsolutePath() + CRASH_DIRECTORY);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File file3 = new File(file2.getAbsolutePath(), "crash_" + System.currentTimeMillis() + "_" + formatter.format(new Date()) + ".log");
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                stringBuffer.append(string);
                fileOutputStream.write(stringBuffer.toString().getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
                return file3;
            } catch (Exception e2) {
                e = e2;
                file = file3;
                e.printStackTrace();
                return file;
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return file;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void commitUncatchException(Context context, Throwable th) {
        if (AppRuntime.hasPrivacyForNotShown(context)) {
            return;
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        StringBuffer stringBuffer = new StringBuffer();
        commitBaseUncatchInfo(context, stringBuffer);
        stringBuffer.append("etype=1");
        stringBuffer.append("&log=" + PdrUtil.encodeURL(string));
        commitErrorLog(stringBuffer.toString());
    }
}
