package io.dcloud.feature.pdr;

import android.util.Log;
import io.dcloud.common.adapter.util.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class b extends Logger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f690a;
    private static File b;
    private static Boolean c = Boolean.TRUE;

    private static void WriteLogToSDcard(String str, String str2, String str3) throws Throwable {
        FileOutputStream fileOutputStream;
        String strGenerateLog = Logger.generateLog(str, str2, str3);
        if (b == null || strGenerateLog == null) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(b, true);
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(strGenerateLog.getBytes());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 == null) {
            } else {
                fileOutputStream2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static void a(String str) {
        if (c.booleanValue()) {
            f690a = str;
            storeLogToSDcard();
            c = Boolean.FALSE;
        }
    }

    public static void d(String str, String str2) throws Throwable {
        Log.d(str, str2);
        WriteLogToSDcard(Logger.D, str, str2);
    }

    public static void e(String str, String str2) throws Throwable {
        Log.e(str, str2);
        WriteLogToSDcard(Logger.E, str, str2);
    }

    public static void i(String str, String str2) throws Throwable {
        Log.i(str, str2);
        WriteLogToSDcard(Logger.I, str, str2);
    }

    public static void storeLogToSDcard() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f690a);
        stringBuffer.append(File.separatorChar);
        stringBuffer.append(Logger.generateTimeStamp(Boolean.FALSE));
        stringBuffer.append(".log");
        File file = new File(f690a);
        b = new File(stringBuffer.toString());
        if (file.exists()) {
            Logger.deleteOldLog(file);
        } else {
            file.mkdirs();
        }
        if (b.exists()) {
            return;
        }
        try {
            b.createNewFile();
        } catch (IOException e) {
            b = null;
            e.printStackTrace();
        }
    }

    public static void a(String str, String str2) throws Throwable {
        Log.i(str, str2);
        WriteLogToSDcard(Logger.W, str, str2);
    }
}
