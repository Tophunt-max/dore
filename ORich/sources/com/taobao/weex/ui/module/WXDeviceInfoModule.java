package com.taobao.weex.ui.module;

import com.alibaba.fastjson.JSONObject;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;
import com.taobao.weex.utils.WXViewUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class WXDeviceInfoModule extends WXModule {
    @JSMethod(uiThread = false)
    public void enableFullScreenHeight(JSCallback jSCallback, JSONObject jSONObject) {
        if (this.mWXSDKInstance != null) {
            this.mWXSDKInstance.setEnableFullScreenHeight(true);
            if (jSCallback != null) {
                long screenHeight = WXViewUtils.getScreenHeight(this.mWXSDKInstance.getInstanceId());
                HashMap map = new HashMap();
                map.put("fullScreenHeight", String.valueOf(screenHeight));
                jSCallback.invoke(map);
            }
        }
    }
}
