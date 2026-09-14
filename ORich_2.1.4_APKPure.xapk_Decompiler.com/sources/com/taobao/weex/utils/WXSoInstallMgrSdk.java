package com.taobao.weex.utils;

import android.app.Application;
import android.os.Build;
import android.text.TextUtils;
import com.taobao.weex.IWXStatisticsListener;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.adapter.IWXSoLoaderAdapter;
import com.taobao.weex.adapter.IWXUserTrackAdapter;
import com.taobao.weex.common.WXErrorCode;
import com.taobao.weex.el.parse.Operators;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class WXSoInstallMgrSdk {
    private static final String ARMEABI = "armeabi";
    static final String LOGTAG = "INIT_SO";
    private static final String MIPS = "mips";
    private static final String STARTUPSO = "/libweexjsb.so";
    private static final String STARTUPSOANDROID15 = "/libweexjst.so";
    private static final String X86 = "x86";
    private static String mAbi;
    static Application mContext;
    private static IWXSoLoaderAdapter mSoLoader;
    private static IWXStatisticsListener mStatisticsListener;

    public static void init(Application application, IWXSoLoaderAdapter iWXSoLoaderAdapter, IWXStatisticsListener iWXStatisticsListener) {
        mContext = application;
        mSoLoader = iWXSoLoaderAdapter;
        mStatisticsListener = iWXStatisticsListener;
    }

    public static boolean isX86() {
        return _cpuType().equalsIgnoreCase("x86");
    }

    public static boolean isCPUSupport() {
        return !_cpuType().equalsIgnoreCase(MIPS);
    }

    public static boolean initSo(String str, int i, IWXUserTrackAdapter iWXUserTrackAdapter) {
        String str_cpuType = _cpuType();
        if (str_cpuType.equalsIgnoreCase(MIPS)) {
            WXExceptionUtils.commitCriticalExceptionRT(null, WXErrorCode.WX_KEY_EXCEPTION_SDK_INIT, "initSo", "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is MIPS", null);
            return false;
        }
        if (WXEnvironment.CORE_SO_NAME.equals(str)) {
            copyStartUpSo();
        }
        try {
            IWXSoLoaderAdapter iWXSoLoaderAdapter = mSoLoader;
            if (iWXSoLoaderAdapter != null) {
                iWXSoLoaderAdapter.doLoadLibrary("c++_shared");
            } else {
                System.loadLibrary("c++_shared");
            }
        } catch (Error | Exception e) {
            WXExceptionUtils.commitCriticalExceptionRT(null, WXErrorCode.WX_KEY_EXCEPTION_SDK_INIT, "initSo", "load c++_shared failed Detail Error is: " + e.getMessage(), null);
            if (WXEnvironment.isApkDebugable()) {
                throw e;
            }
        }
        try {
            IWXSoLoaderAdapter iWXSoLoaderAdapter2 = mSoLoader;
            if (iWXSoLoaderAdapter2 != null) {
                iWXSoLoaderAdapter2.doLoadLibrary(str);
            } else {
                System.loadLibrary(str);
            }
            return true;
        } catch (Error | Exception e2) {
            if (str_cpuType.contains(ARMEABI) || str_cpuType.contains("x86")) {
                WXExceptionUtils.commitCriticalExceptionRT(null, WXErrorCode.WX_KEY_EXCEPTION_SDK_INIT, "initSo", str + "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is " + str_cpuType + "\n Detail Error is: " + e2.getMessage(), null);
            }
            if (WXEnvironment.isApkDebugable()) {
                throw e2;
            }
            return false;
        }
    }

    private static File _desSoCopyFile(String str) {
        String str_cpuType = _cpuType();
        String strCopySoDesDir = WXEnvironment.copySoDesDir();
        if (TextUtils.isEmpty(strCopySoDesDir)) {
            return null;
        }
        return new File(strCopySoDesDir, str + Operators.DIV + str_cpuType);
    }

    public static void copyStartUpSo() {
        String str;
        File file;
        try {
            String packageName = WXEnvironment.getApplication().getPackageName();
            String path = WXEnvironment.getApplication().getApplicationContext().getCacheDir().getPath();
            boolean z = true;
            String str2 = WXEnvironment.CORE_JSB_SO_NAME;
            if (Build.VERSION.SDK_INT < 16) {
                z = false;
                str2 = WXEnvironment.CORE_JST_SO_NAME;
                str = STARTUPSOANDROID15;
            } else {
                str = STARTUPSO;
            }
            File file_desSoCopyFile = _desSoCopyFile(str2);
            if (!file_desSoCopyFile.exists()) {
                file_desSoCopyFile.mkdirs();
            }
            File file2 = new File(file_desSoCopyFile, str);
            WXEnvironment.CORE_JSB_SO_PATH = file2.getAbsolutePath();
            String defaultSettingValue = WXEnvironment.getDefaultSettingValue(str2, "-1");
            if (file2.exists() && TextUtils.equals(WXEnvironment.getAppVersionName(), defaultSettingValue)) {
                return;
            }
            String strReplace = "/data/data/" + packageName + "/lib";
            if (path != null && path.indexOf("/cache") > 0) {
                strReplace = path.replace("/cache", "/lib");
            }
            if (z) {
                file = new File(strReplace, STARTUPSO);
            } else {
                file = new File(strReplace, STARTUPSOANDROID15);
            }
            if (!file.exists()) {
                try {
                    file = new File(((PathClassLoader) WXSoInstallMgrSdk.class.getClassLoader()).findLibrary(str2));
                } catch (Throwable unused) {
                }
            }
            if (!file.exists()) {
                WXEnvironment.extractSo();
                file = new File(WXEnvironment.copySoDesDir(), STARTUPSO);
            }
            if (file.exists()) {
                WXFileUtils.copyFile(file, file2);
            }
            WXEnvironment.writeDefaultSettingsValue(str2, WXEnvironment.getAppVersionName());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void copyJssRuntimeSo() {
        boolean zCheckGreyConfig = WXUtils.checkGreyConfig("wxapm", "use_runtime_api", "0");
        WXLogUtils.e("weex", "tryUseRunTimeApi ? " + zCheckGreyConfig);
        if (zCheckGreyConfig) {
            try {
                WXLogUtils.e("weex", "copyJssRuntimeSo: ");
                File file_desSoCopyFile = _desSoCopyFile(WXEnvironment.CORE_JSS_SO_NAME);
                if (!file_desSoCopyFile.exists()) {
                    file_desSoCopyFile.mkdirs();
                }
                File file = new File(file_desSoCopyFile, "libweexjss.so");
                String defaultSettingValue = WXEnvironment.getDefaultSettingValue("app_version_code_weex", "-1");
                if (file.exists()) {
                    if (!TextUtils.equals(WXEnvironment.getAppVersionName(), defaultSettingValue)) {
                        file.delete();
                    } else {
                        WXEnvironment.CORE_JSS_RUNTIME_SO_PATH = file.getAbsolutePath();
                        WXEnvironment.sUseRunTimeApi = true;
                        WXLogUtils.e("weex", "copyJssRuntimeSo exist:  return");
                        return;
                    }
                }
                String strFindLibrary = ((PathClassLoader) WXSoInstallMgrSdk.class.getClassLoader()).findLibrary("weexjssr");
                if (TextUtils.isEmpty(strFindLibrary)) {
                    return;
                }
                file.createNewFile();
                WXFileUtils.copyFileWithException(new File(strFindLibrary), file);
                WXEnvironment.CORE_JSS_RUNTIME_SO_PATH = file.getAbsolutePath();
                WXEnvironment.writeDefaultSettingsValue("app_version_code_weex", WXEnvironment.getAppVersionName());
                WXEnvironment.sUseRunTimeApi = true;
                WXLogUtils.e("weex", "copyJssRuntimeSo: cp end and return ");
            } catch (Throwable th) {
                th.printStackTrace();
                WXEnvironment.sUseRunTimeApi = false;
                WXLogUtils.e("weex", "copyJssRuntimeSo:  exception" + th);
            }
        }
    }

    private static String _getFieldReflectively(Build build, String str) {
        try {
            return Build.class.getField(str).get(build).toString();
        } catch (Exception unused) {
            return "Unknown";
        }
    }

    private static String _cpuType() {
        if (TextUtils.isEmpty(mAbi)) {
            try {
                mAbi = Build.CPU_ABI;
            } catch (Throwable th) {
                th.printStackTrace();
                mAbi = ARMEABI;
            }
            if (TextUtils.isEmpty(mAbi)) {
                mAbi = ARMEABI;
            }
            mAbi = mAbi.toLowerCase(Locale.ROOT);
        }
        return mAbi;
    }

    static boolean checkSoIsValid(String str, long j) {
        if (mContext == null) {
            return false;
        }
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (WXSoInstallMgrSdk.class.getClassLoader() instanceof PathClassLoader) {
                String strFindLibrary = ((PathClassLoader) WXSoInstallMgrSdk.class.getClassLoader()).findLibrary(str);
                if (TextUtils.isEmpty(strFindLibrary)) {
                    return false;
                }
                File file = new File(strFindLibrary);
                if (file.exists() && j != file.length()) {
                    return false;
                }
                WXLogUtils.w("weex so size check path :" + strFindLibrary + "   " + (System.currentTimeMillis() - jCurrentTimeMillis));
                return true;
            }
        } catch (Throwable th) {
            WXExceptionUtils.commitCriticalExceptionRT(null, WXErrorCode.WX_KEY_EXCEPTION_SDK_INIT, "checkSoIsValid", "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for weex so size check fail exception :" + th.getMessage(), null);
            WXLogUtils.e("weex so size check fail exception :" + th.getMessage());
        }
        return true;
    }

    static String _targetSoFile(String str, int i) {
        Application application = mContext;
        if (application == null) {
            return "";
        }
        String path = "/data/data/" + application.getPackageName() + "/files";
        File filesDir = application.getFilesDir();
        if (filesDir != null) {
            path = filesDir.getPath();
        }
        return path + "/lib" + str + "bk" + i + ".so";
    }

    static void removeSoIfExit(String str, int i) {
        File file = new File(_targetSoFile(str, i));
        if (file.exists()) {
            file.delete();
        }
    }

    static boolean isExist(String str, int i) {
        return new File(_targetSoFile(str, i)).exists();
    }

    static boolean _loadUnzipSo(String str, int i, IWXUserTrackAdapter iWXUserTrackAdapter) {
        try {
            if (isExist(str, i)) {
                IWXSoLoaderAdapter iWXSoLoaderAdapter = mSoLoader;
                if (iWXSoLoaderAdapter != null) {
                    iWXSoLoaderAdapter.doLoad(_targetSoFile(str, i));
                } else {
                    System.load(_targetSoFile(str, i));
                }
            }
            return true;
        } catch (Throwable th) {
            WXExceptionUtils.commitCriticalExceptionRT(null, WXErrorCode.WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT, "_loadUnzipSo", "[WX_KEY_EXCEPTION_SDK_INIT_WX_ERR_COPY_FROM_APK] \n Detail Msg is : " + th.getMessage(), null);
            WXLogUtils.e("", th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean unZipSelectedFiles(java.lang.String r10, int r11, com.taobao.weex.adapter.IWXUserTrackAdapter r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.utils.WXSoInstallMgrSdk.unZipSelectedFiles(java.lang.String, int, com.taobao.weex.adapter.IWXUserTrackAdapter):boolean");
    }
}
