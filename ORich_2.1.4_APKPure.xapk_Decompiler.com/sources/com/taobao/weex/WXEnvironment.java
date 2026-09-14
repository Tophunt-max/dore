package com.taobao.weex;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.taobao.weex.common.Constants;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.utils.FontDO;
import com.taobao.weex.utils.LogLevel;
import com.taobao.weex.utils.TypefaceUtil;
import com.taobao.weex.utils.WXFileUtils;
import com.taobao.weex.utils.WXLogUtils;
import com.taobao.weex.utils.WXSoInstallMgrSdk;
import com.taobao.weex.utils.WXUtils;
import com.taobao.weex.utils.WXViewUtils;
import dalvik.system.PathClassLoader;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.feature.uniapp.utils.AbsLogLevel;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class WXEnvironment {
    public static boolean AUTO_ADJUST_ENV_DEVICE_WIDTH = false;
    public static boolean AUTO_UPDATE_APPLICATION_SCREEN_SIZE = false;
    private static String COPY_SO_DES_DIR = null;
    public static final String CORE_JSB_SO_NAME = "weexjsb";
    public static String CORE_JSB_SO_PATH = null;
    public static final String CORE_JSC_SO_NAME = "jsc";
    private static String CORE_JSC_SO_PATH = null;
    private static String CORE_JSS_ICU_PATH = null;
    public static String CORE_JSS_RUNTIME_SO_PATH = null;
    public static final String CORE_JSS_SO_NAME = "weexjss";
    private static String CORE_JSS_SO_PATH = null;
    public static final String CORE_JST_SO_NAME = "weexjst";
    public static final String CORE_SO_NAME = "weexcore";
    public static final String DEV_Id;
    public static final String EAGLE = "eagle";
    public static final String ENVIRONMENT = "environment";
    public static String JS_LIB_SDK_VERSION = null;
    public static volatile boolean JsFrameworkInit = false;
    private static String LIB_LD_PATH = null;
    public static final String OS = "android";
    public static final String SETTING_EXCLUDE_X86SUPPORT = "env_exclude_x86";
    public static boolean SETTING_FORCE_VERTICAL_SCREEN = false;
    public static final String SYS_MODEL;
    public static String SYS_VERSION = null;
    public static final String WEEX_CURRENT_KEY = "wx_current_url";
    public static String WXSDK_VERSION = null;
    private static boolean isApkDebug = false;
    public static boolean isPerf = false;
    public static volatile boolean isWsFixMode = false;
    private static float mViewProt = 0.0f;
    private static WXDefaultSettings mWXDefaultSettings = null;
    private static boolean openDebugLog = false;
    private static Map<String, String> options = null;
    public static Application sApplication = null;
    public static long sComponentsAndModulesReadyTime = 0;
    private static boolean sDebugFlagInit = false;
    public static boolean sDebugMode = false;
    public static boolean sDebugNetworkEventReporterEnable = false;
    public static boolean sDebugServerConnectable = false;
    public static String sDebugWsUrl = null;

    @Deprecated
    public static int sDefaultWidth = 0;
    public static boolean sDynamicMode = false;
    public static String sDynamicUrl = null;
    public static final boolean sForceEnableDevTool = true;
    private static String sGlobalFontFamily;
    public static boolean sInAliWeex;
    public static long sJSFMStartListenerTime;
    public static long sJSLibInitTime;
    public static AbsLogLevel sLogLevel;
    public static boolean sRemoteDebugMode;
    public static String sRemoteDebugProxyUrl;
    public static long sSDKInitExecuteTime;
    public static long sSDKInitInvokeTime;
    public static long sSDKInitStart;
    public static long sSDKInitTime;
    public static volatile boolean sUseRunTimeApi;

    public static String getLibJScRealPath() {
        return "";
    }

    static {
        String str = Build.VERSION.RELEASE;
        SYS_VERSION = str;
        if (str != null && str.toUpperCase(Locale.ROOT).equals("P")) {
            SYS_VERSION = "9.0.0";
        }
        String str2 = SYS_VERSION;
        if (str2 != null && str2.toUpperCase(Locale.ROOT).equals("Q")) {
            SYS_VERSION = "10.0.0";
        }
        SYS_MODEL = Build.MODEL;
        JS_LIB_SDK_VERSION = BuildConfig.buildJavascriptFrameworkVersion;
        WXSDK_VERSION = BuildConfig.buildVersion;
        DEV_Id = getDevId();
        sDefaultWidth = 750;
        JsFrameworkInit = false;
        SETTING_FORCE_VERTICAL_SCREEN = false;
        AUTO_ADJUST_ENV_DEVICE_WIDTH = true;
        AUTO_UPDATE_APPLICATION_SCREEN_SIZE = true;
        sUseRunTimeApi = false;
        sDebugMode = false;
        sDebugWsUrl = "";
        sDebugServerConnectable = false;
        sRemoteDebugMode = false;
        sRemoteDebugProxyUrl = "";
        sDebugNetworkEventReporterEnable = false;
        sJSLibInitTime = 0L;
        sSDKInitStart = 0L;
        sSDKInitInvokeTime = 0L;
        sSDKInitExecuteTime = 0L;
        sSDKInitTime = 0L;
        sJSFMStartListenerTime = 0L;
        isWsFixMode = true;
        sComponentsAndModulesReadyTime = 0L;
        sInAliWeex = false;
        sLogLevel = LogLevel.DEBUG;
        isApkDebug = true;
        isPerf = false;
        sDebugFlagInit = false;
        openDebugLog = true;
        CORE_JSS_SO_PATH = null;
        CORE_JSS_RUNTIME_SO_PATH = null;
        CORE_JSS_ICU_PATH = null;
        CORE_JSC_SO_PATH = null;
        CORE_JSB_SO_PATH = null;
        COPY_SO_DES_DIR = null;
        LIB_LD_PATH = null;
        mViewProt = 750.0f;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        options = concurrentHashMap;
        concurrentHashMap.put(WXConfig.os, OS);
        options.put(WXConfig.osName, OS);
        sDynamicMode = false;
        sDynamicUrl = "";
    }

    public static float getViewProt() {
        return mViewProt;
    }

    public static void setViewProt(float f) {
        mViewProt = f;
    }

    public static synchronized WXDefaultSettings getWXDefaultSettings() {
        if (mWXDefaultSettings == null && getApplication() != null) {
            mWXDefaultSettings = new WXDefaultSettings(getApplication());
        }
        return mWXDefaultSettings;
    }

    public static synchronized String getDefaultSettingValue(String str, String str2) {
        WXDefaultSettings wXDefaultSettings = getWXDefaultSettings();
        if (wXDefaultSettings != null && !TextUtils.isEmpty(str)) {
            return wXDefaultSettings.getValue(str, str2);
        }
        return str2;
    }

    public static synchronized void writeDefaultSettingsValue(String str, String str2) {
        WXDefaultSettings wXDefaultSettings = getWXDefaultSettings();
        if (wXDefaultSettings != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            wXDefaultSettings.saveValue(str, str2);
        }
    }

    public static Map<String, String> getConfig() {
        Application application;
        HashMap map = new HashMap();
        map.put(WXConfig.os, OS);
        map.put(WXConfig.appVersion, getAppVersionName());
        map.put(WXConfig.cacheDir, getAppCacheFile());
        map.put(WXConfig.devId, DEV_Id);
        map.put(WXConfig.sysVersion, SYS_VERSION);
        map.put(WXConfig.sysModel, SYS_MODEL);
        map.put(WXConfig.weexVersion, String.valueOf(WXSDK_VERSION));
        if (sRemoteDebugMode) {
            map.put(WXConfig.logLevel, "log");
        } else {
            map.put(WXConfig.logLevel, sLogLevel.getName());
        }
        try {
            map.put(WXConfig.layoutDirection, isLayoutDirectionRTL() ? Constants.Name.RTL : "ltr");
        } catch (Exception unused) {
            map.put(WXConfig.layoutDirection, "ltr");
        }
        try {
            if (isApkDebugable()) {
                addCustomOptions(WXConfig.debugMode, AbsoluteConst.TRUE);
            }
            addCustomOptions("scale", Float.toString(sApplication.getResources().getDisplayMetrics().density));
            addCustomOptions(WXConfig.androidStatusBarHeight, Float.toString(WXViewUtils.getStatusBarHeight(sApplication)));
        } catch (NullPointerException e) {
            WXLogUtils.e("WXEnvironment scale Exception: ", e);
        }
        map.putAll(getCustomOptions());
        if (map.get(WXConfig.appName) == null && (application = sApplication) != null) {
            map.put(WXConfig.appName, application.getPackageName());
        }
        return map;
    }

    public static String getAppVersionName() {
        try {
            return sApplication.getPackageManager().getPackageInfo(sApplication.getPackageName(), 0).versionName;
        } catch (Exception e) {
            WXLogUtils.e("WXEnvironment getAppVersionName Exception: ", e);
            return "";
        }
    }

    private static String getAppCacheFile() {
        try {
            return sApplication.getApplicationContext().getCacheDir().getPath();
        } catch (Exception e) {
            WXLogUtils.e("WXEnvironment getAppCacheFile Exception: ", e);
            return "";
        }
    }

    @Deprecated
    public static Map<String, String> getCustomOptions() {
        return options;
    }

    public static void addCustomOptions(String str, String str2) {
        options.put(str, str2);
    }

    public static String getCustomOptions(String str) {
        return options.get(str);
    }

    public static String copySoDesDir() {
        File file;
        try {
            if (TextUtils.isEmpty(COPY_SO_DES_DIR)) {
                if (sApplication == null) {
                    WXLogUtils.e("sApplication is null, so copy path will be null");
                    return null;
                }
                String path = getApplication().getApplicationContext().getCacheDir().getPath();
                if (!TextUtils.isEmpty(path)) {
                    file = new File(path, "/cache/weex/libs");
                } else {
                    file = new File("/data/data/" + sApplication.getPackageName() + "/cache/weex/libs");
                }
                if (!file.exists()) {
                    file.mkdirs();
                }
                COPY_SO_DES_DIR = file.getAbsolutePath();
            }
        } catch (Throwable th) {
            WXLogUtils.e(WXLogUtils.getStackTrace(th));
        }
        return COPY_SO_DES_DIR;
    }

    @Deprecated
    public static boolean isSupport() {
        boolean zIsInitialized = WXSDKEngine.isInitialized();
        if (!zIsInitialized) {
            WXLogUtils.e("WXSDKEngine.isInitialized():" + zIsInitialized);
        }
        return isHardwareSupport() && zIsInitialized;
    }

    public static boolean isLayoutDirectionRTL() {
        if (Build.VERSION.SDK_INT >= 17) {
            return sApplication.getApplicationContext().getResources().getBoolean(R.bool.weex_is_right_to_left);
        }
        return false;
    }

    @Deprecated
    public static boolean isHardwareSupport() {
        if (isApkDebugable()) {
            WXLogUtils.d("isTableDevice:" + WXUtils.isTabletDevice());
        }
        return isCPUSupport();
    }

    public static boolean isCPUSupport() {
        boolean z = WXSoInstallMgrSdk.isX86() && AbsoluteConst.TRUE.equals(getCustomOptions().get(SETTING_EXCLUDE_X86SUPPORT));
        boolean z2 = WXSoInstallMgrSdk.isCPUSupport() && !z;
        if (isApkDebugable()) {
            WXLogUtils.d("WXEnvironment.sSupport:" + z2 + "isX86AndExclueded: " + z);
        }
        return z2;
    }

    public static boolean isApkDebugable() {
        return isApkDebugable(sApplication);
    }

    public static boolean isApkDebugable(Application application) {
        if (application == null || isPerf) {
            return false;
        }
        if (sDebugFlagInit) {
            return isApkDebug;
        }
        if (!isApkDebug && BaseInfo.SyncDebug) {
            isApkDebug = true;
        } else if (isApkDebug && !BaseInfo.SyncDebug) {
            isApkDebug = false;
        }
        sDebugFlagInit = true;
        return isApkDebug;
    }

    public static boolean isPerf() {
        return isPerf;
    }

    private static String getDevId() {
        Application application = sApplication;
        if (application != null) {
            try {
                return ((TelephonyManager) application.getSystemService("phone")).getDeviceId();
            } catch (NullPointerException | SecurityException e) {
                WXLogUtils.e(WXLogUtils.getStackTrace(e));
            }
        }
        return "";
    }

    public static Application getApplication() {
        return sApplication;
    }

    public void initMetrics() {
        if (sApplication == null) {
        }
    }

    public static String getDiskCacheDir(Context context) {
        String path;
        if (context == null) {
            return null;
        }
        try {
            if ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) {
                path = context.getExternalCacheDir().getPath();
            } else {
                path = context.getCacheDir().getPath();
            }
            return path;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getFilesDir(Context context) {
        if (context == null) {
            return "";
        }
        File filesDir = context.getFilesDir();
        if (filesDir != null) {
            return filesDir.getPath();
        }
        return (getApplication().getApplicationInfo().dataDir + File.separator) + "files";
    }

    public static String getCrashFilePath(Context context) {
        File dir;
        return (context == null || (dir = context.getDir("crash", 0)) == null) ? "" : dir.getAbsolutePath();
    }

    public static String getGlobalFontFamilyName() {
        return sGlobalFontFamily;
    }

    public static void setGlobalFontFamily(String str, Typeface typeface) {
        WXLogUtils.d("GlobalFontFamily", "Set global font family: " + str);
        sGlobalFontFamily = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (typeface == null) {
            TypefaceUtil.removeFontDO(str);
            return;
        }
        TypefaceUtil.putFontDO(new FontDO(str, typeface));
        WXLogUtils.d("TypefaceUtil", "Add new font: " + str);
    }

    public static boolean isOpenDebugLog() {
        return openDebugLog;
    }

    public static void setOpenDebugLog(boolean z) {
        openDebugLog = z;
    }

    public static void setApkDebugable(boolean z) {
        isApkDebug = z;
        if (z) {
            return;
        }
        openDebugLog = false;
    }

    public static String getCacheDir() {
        Application application = getApplication();
        if (application == null || application.getApplicationContext() == null) {
            return null;
        }
        return application.getApplicationContext().getCacheDir().getPath();
    }

    public static boolean extractSo() {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21 && (strArr = getApplication().getApplicationContext().getApplicationInfo().splitSourceDirs) != null) {
            for (String str : strArr) {
                if (str.contains(Build.CPU_ABI)) {
                    arrayList.add(0, str);
                } else {
                    arrayList.add(str);
                }
            }
        }
        File file = new File(getApplication().getApplicationContext().getApplicationInfo().sourceDir);
        if (file.exists()) {
            arrayList.add(file.getAbsolutePath());
        }
        String strCopySoDesDir = copySoDesDir();
        if (arrayList.size() > 0 && !TextUtils.isEmpty(strCopySoDesDir)) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext() && !WXFileUtils.extractSo((String) it.next(), strCopySoDesDir)) {
                }
                return true;
            } catch (IOException e) {
                WXLogUtils.e("extractSo error " + e.getMessage());
            }
        }
        return false;
    }

    private static String findIcuPath() throws Throwable {
        BufferedReader bufferedReader;
        String line;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File("/proc/self/maps")));
        } catch (IOException e) {
            e = e;
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
        }
        do {
            try {
                try {
                    line = bufferedReader.readLine();
                } catch (IOException e2) {
                    e = e2;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                    }
                    return null;
                }
                if (line == null) {
                    bufferedReader.close();
                    try {
                        bufferedReader.close();
                    } catch (IOException unused) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } while (!line.contains("icudt"));
        String strTrim = line.substring(line.indexOf(47)).trim();
        try {
            bufferedReader.close();
        } catch (IOException unused3) {
        }
        return strTrim;
    }

    public static String findSoPath(String str) {
        String strFindLibrary = ((PathClassLoader) WXEnvironment.class.getClassLoader()).findLibrary(str);
        if (!TextUtils.isEmpty(strFindLibrary)) {
            File file = new File(strFindLibrary);
            if (file.exists()) {
                WXLogUtils.e(str + "'s Path is" + strFindLibrary);
                return file.getAbsolutePath();
            }
            WXLogUtils.e(str + "'s Path is " + strFindLibrary + " but file does not exist");
        }
        String str2 = "lib" + str + ".so";
        String cacheDir = getCacheDir();
        if (TextUtils.isEmpty(cacheDir)) {
            WXLogUtils.e("cache dir is null");
            return "";
        }
        if (cacheDir.indexOf("/cache") > 0) {
            strFindLibrary = new File(cacheDir.replace("/cache", "/lib"), str2).getAbsolutePath();
        }
        if (new File(strFindLibrary).exists()) {
            WXLogUtils.e(str + "use lib so");
            return strFindLibrary;
        }
        File file2 = new File(copySoDesDir(), str2);
        if (file2.exists()) {
            return file2.getAbsolutePath();
        }
        return extractSo() ? new File(getCacheDir(), str2).getAbsolutePath() : strFindLibrary;
    }

    public static String getLibJssRealPath() {
        if (sUseRunTimeApi && !TextUtils.isEmpty(CORE_JSS_RUNTIME_SO_PATH)) {
            WXLogUtils.d("test-> findLibJssRuntimeRealPath " + CORE_JSS_RUNTIME_SO_PATH);
            return CORE_JSS_RUNTIME_SO_PATH;
        }
        if (TextUtils.isEmpty(CORE_JSS_SO_PATH)) {
            CORE_JSS_SO_PATH = findSoPath(CORE_JSS_SO_NAME);
            WXLogUtils.d("test-> findLibJssRealPath " + CORE_JSS_SO_PATH);
        }
        return CORE_JSS_SO_PATH;
    }

    public static String getLibJssIcuPath() {
        if (TextUtils.isEmpty(CORE_JSS_ICU_PATH)) {
            CORE_JSS_ICU_PATH = findIcuPath();
        }
        return CORE_JSS_ICU_PATH;
    }

    public static String getLibLdPath() {
        if (TextUtils.isEmpty(LIB_LD_PATH)) {
            ClassLoader classLoader = WXEnvironment.class.getClassLoader();
            try {
                LIB_LD_PATH = (String) classLoader.getClass().getMethod("getLdLibraryPath", new Class[0]).invoke(classLoader, new Object[0]);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        if (TextUtils.isEmpty(LIB_LD_PATH)) {
            try {
                String property = System.getProperty("java.library.path");
                String libJScRealPath = getLibJScRealPath();
                if (!TextUtils.isEmpty(libJScRealPath)) {
                    LIB_LD_PATH = new File(libJScRealPath).getParent() + ":" + property;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        WXLogUtils.d("getLibLdPath is " + LIB_LD_PATH);
        return LIB_LD_PATH;
    }

    public static class WXDefaultSettings {
        private String configName = "weex_default_settings";
        private SharedPreferences sharedPreferences;

        public WXDefaultSettings(Application application) {
            this.sharedPreferences = null;
            if (application != null) {
                this.sharedPreferences = application.getSharedPreferences("weex_default_settings", 0);
            }
        }

        public synchronized String getValue(String str, String str2) {
            if (this.sharedPreferences != null && !TextUtils.isEmpty(str)) {
                String string = this.sharedPreferences.getString(str, str2);
                WXLogUtils.i("get default settings " + str + " : " + string);
                return string;
            }
            WXLogUtils.i("get default settings " + str + " return default value :" + str2);
            return str2;
        }

        public synchronized void saveValue(String str, String str2) {
            if (this.sharedPreferences != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                WXLogUtils.i("save default settings " + str + ":" + str2);
                SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
                editorEdit.putString(str, str2);
                editorEdit.apply();
            }
        }
    }
}
