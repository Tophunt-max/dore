package io.dcloud.common.util.emulator;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
public class CommandUtil {

    private static class SingletonHolder {
        private static final CommandUtil INSTANCE = new CommandUtil();

        private SingletonHolder() {
        }
    }

    public static final CommandUtil getSingleInstance() {
        return SingletonHolder.INSTANCE;
    }

    public String getProperty(String str) throws IllegalAccessException, InvocationTargetException {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private CommandUtil() {
    }
}
