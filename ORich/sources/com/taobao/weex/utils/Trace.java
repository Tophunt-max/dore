package com.taobao.weex.utils;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class Trace {
    private static final String TAG = "Weex_Trace";
    private static final boolean sEnabled = false;
    private static final AbstractTrace sTrace;

    private static abstract class AbstractTrace {
        abstract void beginSection(String str);

        abstract void endSection();

        private AbstractTrace() {
        }
    }

    static {
        if (0 == 1 && OsVersion.isAtLeastJB_MR2()) {
            sTrace = new TraceJBMR2();
        } else {
            sTrace = new TraceDummy();
        }
    }

    public static final boolean getTraceEnabled() {
        return sEnabled;
    }

    public static void beginSection(String str) {
        Log.i(TAG, "beginSection() " + str);
        sTrace.beginSection(str);
    }

    public static void endSection() {
        sTrace.endSection();
        Log.i(TAG, "endSection()");
    }

    private static final class TraceJBMR2 extends AbstractTrace {
        private TraceJBMR2() {
            super();
        }

        @Override // com.taobao.weex.utils.Trace.AbstractTrace
        void beginSection(String str) {
            android.os.Trace.beginSection(str);
        }

        @Override // com.taobao.weex.utils.Trace.AbstractTrace
        void endSection() {
            android.os.Trace.endSection();
        }
    }

    private static final class TraceDummy extends AbstractTrace {
        @Override // com.taobao.weex.utils.Trace.AbstractTrace
        void beginSection(String str) {
        }

        @Override // com.taobao.weex.utils.Trace.AbstractTrace
        void endSection() {
        }

        private TraceDummy() {
            super();
        }
    }
}
