package com.taobao.weex.ui.module;

import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.common.WXModule;
import com.taobao.weex.utils.LogLevel;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.feature.uniapp.utils.AbsLogLevel;

/* JADX INFO: loaded from: classes.dex */
public class ConsoleLogModule extends WXModule {
    @JSMethod(uiThread = false)
    public void switchLogLevel(String str, JSCallback jSCallback) {
        AbsLogLevel logLevel = getLogLevel(str);
        ArrayMap arrayMap = new ArrayMap();
        if (logLevel != null) {
            WXEnvironment.sLogLevel = logLevel;
            WXBridgeManager.getInstance().setLogLevel(WXEnvironment.sLogLevel.getValue(), WXEnvironment.isPerf());
            Log.e("shutao", "switchLogLevel--------" + WXEnvironment.isPerf());
            arrayMap.put("status", "success");
        } else {
            arrayMap.put("status", "failure");
        }
        if (jSCallback != null) {
            jSCallback.invoke(arrayMap);
        }
    }

    @JSMethod(uiThread = false)
    public void setPerfMode(String str) {
        WXEnvironment.isPerf = AbsoluteConst.TRUE.equals(str);
        WXBridgeManager.getInstance().setLogLevel(WXEnvironment.sLogLevel.getValue(), WXEnvironment.isPerf());
    }

    private AbsLogLevel getLogLevel(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.hashCode();
            switch (str) {
                case "off":
                    return LogLevel.OFF;
                case "info":
                    return LogLevel.INFO;
                case "debug":
                    return LogLevel.DEBUG;
                case "error":
                    return LogLevel.ERROR;
                case "warning":
                    return LogLevel.WARN;
            }
        }
        return null;
    }
}
