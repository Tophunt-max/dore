package com.taobao.weex.http;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.taobao.weex.WXEnvironment;
import com.taobao.weex.WXSDKInstance;
import com.taobao.weex.WXSDKManager;
import com.taobao.weex.adapter.IWXHttpAdapter;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.bridge.WXBridgeManager;
import com.taobao.weex.common.WXModule;
import com.taobao.weex.common.WXRequest;
import com.taobao.weex.common.WXResponse;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.http.Options;
import com.taobao.weex.ui.component.WXBasicComponentType;
import com.taobao.weex.utils.WXLogUtils;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.net.NetWork;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class WXStreamModule extends WXModule {
    public static final String STATUS = "status";
    public static final String STATUS_TEXT = "statusText";
    final IWXHttpAdapter mAdapter;
    static final Pattern CHARSET_PATTERN = Pattern.compile("charset=([a-z0-9-]+)");
    public static HashMap<String, CertDTO> certMap = new HashMap<>();

    private interface ResponseCallback {
        void onResponse(WXResponse wXResponse, Map<String, String> map);
    }

    public WXStreamModule() {
        this(null);
    }

    public WXStreamModule(IWXHttpAdapter iWXHttpAdapter) {
        this.mAdapter = iWXHttpAdapter;
    }

    @JSMethod(uiThread = false)
    @Deprecated
    public void sendHttp(JSONObject jSONObject, final String str) {
        String string = jSONObject.getString("method");
        String string2 = jSONObject.getString("url");
        JSONObject jSONObject2 = jSONObject.getJSONObject(WXBasicComponentType.HEADER);
        String string3 = jSONObject.getString("body");
        int intValue = jSONObject.getIntValue("timeout");
        boolean booleanValue = jSONObject.getBooleanValue("sslVerify");
        boolean booleanValue2 = jSONObject.getBooleanValue("firstIpv4");
        JSONObject jSONObject3 = jSONObject.getJSONObject("tls");
        if (string != null) {
            string = string.toUpperCase();
        }
        Options.Builder builder = new Options.Builder();
        if (!"GET".equals(string) && !"POST".equals(string) && !"PUT".equals(string) && !"DELETE".equals(string) && !"HEAD".equals(string) && !"PATCH".equals(string)) {
            string = "GET";
        }
        Options.Builder firstIpv4 = builder.setMethod(string).setUrl(string2).setBody(string3).setTimeout(intValue).setSslVerify(booleanValue).setAndroidTlsConfig(jSONObject3).setFirstIpv4(booleanValue2);
        extractHeaders(jSONObject2, firstIpv4);
        final Options optionsCreateOptions = firstIpv4.createOptions();
        sendRequest(firstIpv4.createOptions(), new ResponseCallback() { // from class: com.taobao.weex.http.WXStreamModule.1
            @Override // com.taobao.weex.http.WXStreamModule.ResponseCallback
            public void onResponse(WXResponse wXResponse, Map<String, String> map) {
                String asString;
                if (str == null || WXStreamModule.this.mWXSDKInstance == null) {
                    return;
                }
                WXBridgeManager wXBridgeManager = WXBridgeManager.getInstance();
                String instanceId = WXStreamModule.this.mWXSDKInstance.getInstanceId();
                String str2 = str;
                if (wXResponse == null || wXResponse.originalData == null) {
                    asString = "{}";
                } else {
                    asString = WXStreamModule.readAsString(wXResponse.originalData, map != null ? WXStreamModule.getHeader(map, NetWork.CONTENT_TYPE) : "", optionsCreateOptions.getType());
                }
                wXBridgeManager.callback(instanceId, str2, asString);
            }
        }, null, this.mWXSDKInstance.getInstanceId(), this.mWXSDKInstance.getBundleUrl());
    }

    @JSMethod(uiThread = false)
    public void fetch(JSONObject jSONObject, JSCallback jSCallback, JSCallback jSCallback2) {
        fetch(jSONObject, jSCallback, jSCallback2, this.mWXSDKInstance.getInstanceId(), this.mWXSDKInstance.getBundleUrl());
    }

    @JSMethod(uiThread = false)
    public void configMTLS(JSONArray jSONArray, JSCallback jSCallback) {
        if (jSCallback == null) {
            return;
        }
        if (jSONArray == null || jSONArray.isEmpty()) {
            jSCallback.invoke(CertJSResponse.obtainFail(-1, DOMException.MSG_PARAMETER_ERROR));
            return;
        }
        certMap.clear();
        for (int i = 0; i < jSONArray.size(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (jSONObject.containsKey("host")) {
                CertDTO certDTO = new CertDTO();
                String string = jSONObject.getString("host");
                certDTO.host = string;
                certDTO.client = jSONObject.getString("client");
                certDTO.clientPassword = jSONObject.getString("clientPassword");
                certDTO.server = (String[]) jSONObject.getJSONArray("server").toArray(new String[0]);
                certMap.put(string, certDTO);
            }
        }
        jSCallback.invoke(CertJSResponse.obtainSuccess());
    }

    public void fetch(JSONObject jSONObject, final JSCallback jSCallback, JSCallback jSCallback2, String str, String str2) {
        if (jSONObject == null || jSONObject.getString("url") == null) {
            if (jSCallback != null) {
                HashMap map = new HashMap();
                map.put("ok", false);
                map.put(STATUS_TEXT, Status.ERR_INVALID_REQUEST);
                jSCallback.invoke(map);
                return;
            }
            return;
        }
        String string = jSONObject.getString("method");
        String string2 = jSONObject.getString("url");
        JSONObject jSONObject2 = jSONObject.getJSONObject("headers");
        String string3 = jSONObject.getString("body");
        String string4 = jSONObject.getString("type");
        int intValue = jSONObject.getIntValue("timeout");
        JSONObject jSONObject3 = jSONObject.getJSONObject("tls");
        boolean booleanValue = jSONObject.getBooleanValue("sslVerify");
        boolean booleanValue2 = jSONObject.getBooleanValue("firstIpv4");
        WXSDKInstance sDKInstance = WXSDKManager.getInstance().getSDKInstance(str);
        if (sDKInstance != null && sDKInstance.getStreamNetworkHandler() != null) {
            String strFetchLocal = sDKInstance.getStreamNetworkHandler().fetchLocal(string2);
            if (!TextUtils.isEmpty(strFetchLocal)) {
                string2 = strFetchLocal;
            }
        }
        if (string != null) {
            string = string.toUpperCase();
        }
        Options.Builder builder = new Options.Builder();
        if (!"GET".equals(string) && !"POST".equals(string) && !"PUT".equals(string) && !"DELETE".equals(string) && !"HEAD".equals(string) && !"PATCH".equals(string)) {
            string = "GET";
        }
        Options.Builder firstIpv4 = builder.setMethod(string).setUrl(string2).setBody(string3).setType(string4).setTimeout(intValue).setSslVerify(booleanValue).setAndroidTlsConfig(jSONObject3).setFirstIpv4(booleanValue2);
        extractHeaders(jSONObject2, firstIpv4);
        final Options optionsCreateOptions = firstIpv4.createOptions();
        sendRequest(optionsCreateOptions, new ResponseCallback() { // from class: com.taobao.weex.http.WXStreamModule.2
            @Override // com.taobao.weex.http.WXStreamModule.ResponseCallback
            public void onResponse(WXResponse wXResponse, Map<String, String> map2) {
                if (jSCallback != null) {
                    HashMap map3 = new HashMap();
                    if (wXResponse == null || "-1".equals(wXResponse.statusCode)) {
                        map3.put("status", -1);
                        map3.put(WXStreamModule.STATUS_TEXT, Status.ERR_CONNECT_FAILED);
                        if (wXResponse != null) {
                            map3.put("errorMsg", wXResponse.errorMsg);
                        } else {
                            map3.put("errorMsg", "response 为空");
                        }
                    } else {
                        int i = Integer.parseInt(wXResponse.statusCode);
                        map3.put("status", Integer.valueOf(i));
                        map3.put("ok", Boolean.valueOf(i >= 200 && i <= 299));
                        if (wXResponse.originalData == null) {
                            map3.put("data", wXResponse.errorMsg);
                        } else {
                            try {
                                map3.put("data", WXStreamModule.this.parseData(WXStreamModule.readAsString(wXResponse.originalData, map2 != null ? WXStreamModule.getHeader(map2, NetWork.CONTENT_TYPE) : "", optionsCreateOptions.getType()), optionsCreateOptions.getType()));
                            } catch (JSONException e) {
                                WXLogUtils.e("", e);
                                map3.put("ok", false);
                                map3.put("data", "{'err':'Data parse failed!'}");
                            }
                        }
                        map3.put(WXStreamModule.STATUS_TEXT, Status.getStatusText(wXResponse.statusCode));
                    }
                    map3.put("headers", map2);
                    jSCallback.invoke(map3);
                }
            }
        }, jSCallback2, str, str2);
    }

    Object parseData(String str, Options.Type type) throws JSONException {
        if (type == Options.Type.json) {
            return JSONObject.parse(str);
        }
        if (type != Options.Type.jsonp) {
            return str;
        }
        if (str == null || str.isEmpty()) {
            return new JSONObject();
        }
        int iIndexOf = str.indexOf(Operators.BRACKET_START_STR) + 1;
        int iLastIndexOf = str.lastIndexOf(Operators.BRACKET_END_STR);
        if (iIndexOf == 0 || iIndexOf >= iLastIndexOf || iLastIndexOf <= 0) {
            return new JSONObject();
        }
        return JSONObject.parse(str.substring(iIndexOf, iLastIndexOf));
    }

    static String getHeader(Map<String, String> map, String str) {
        if (map == null || str == null) {
            return null;
        }
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return map.get(str.toLowerCase());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.lang.String readAsString(byte[] r1, java.lang.String r2, com.taobao.weex.http.Options.Type r3) {
        /*
            if (r2 == 0) goto L18
            java.util.regex.Pattern r0 = com.taobao.weex.http.WXStreamModule.CHARSET_PATTERN
            java.lang.String r2 = r2.toLowerCase()
            java.util.regex.Matcher r2 = r0.matcher(r2)
            boolean r0 = r2.find()
            if (r0 == 0) goto L18
            r0 = 1
            java.lang.String r2 = r2.group(r0)
            goto L1a
        L18:
            java.lang.String r2 = "utf-8"
        L1a:
            com.taobao.weex.http.Options$Type r0 = com.taobao.weex.http.Options.Type.base64     // Catch: java.lang.Exception -> L2a
            if (r3 != r0) goto L24
            r2 = 2
            java.lang.String r1 = android.util.Base64.encodeToString(r1, r2)     // Catch: java.lang.Exception -> L2a
            return r1
        L24:
            java.lang.String r3 = new java.lang.String     // Catch: java.lang.Exception -> L2a
            r3.<init>(r1, r2)     // Catch: java.lang.Exception -> L2a
            return r3
        L2a:
            r2 = move-exception
            java.lang.String r3 = ""
            com.taobao.weex.utils.WXLogUtils.e(r3, r2)
            java.lang.String r2 = new java.lang.String
            r2.<init>(r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taobao.weex.http.WXStreamModule.readAsString(byte[], java.lang.String, com.taobao.weex.http.Options$Type):java.lang.String");
    }

    private void extractHeaders(JSONObject jSONObject, Options.Builder builder) {
        String strAssembleUserAgent = WXHttpUtil.assembleUserAgent(WXEnvironment.getApplication(), WXEnvironment.getConfig());
        if (jSONObject != null) {
            for (String str : jSONObject.keySet()) {
                if (str.equals(WXHttpUtil.KEY_USER_AGENT)) {
                    strAssembleUserAgent = jSONObject.getString(str);
                } else {
                    builder.putHeader(str, jSONObject.getString(str));
                }
            }
        }
        builder.putHeader(WXHttpUtil.KEY_USER_AGENT, strAssembleUserAgent);
    }

    private void sendRequest(Options options, ResponseCallback responseCallback, JSCallback jSCallback, String str, String str2) {
        WXRequest wXRequest = new WXRequest();
        wXRequest.method = options.getMethod();
        wXRequest.url = WXSDKManager.getInstance().getURIAdapter().rewrite(str2, AbsURIAdapter.REQUEST, Uri.parse(options.getUrl())).toString();
        wXRequest.body = options.getBody();
        wXRequest.timeoutMs = options.getTimeout();
        wXRequest.instanceId = str;
        wXRequest.sslVerify = options.getSslVerify();
        wXRequest.isFirstIpv4 = options.isFirstIpv4();
        wXRequest.tls = options.getTlsConfig();
        if (options.getHeaders() != null) {
            if (wXRequest.paramMap == null) {
                wXRequest.paramMap = options.getHeaders();
            } else {
                wXRequest.paramMap.putAll(options.getHeaders());
            }
        }
        IWXHttpAdapter iWXHttpAdapter = this.mAdapter;
        if (iWXHttpAdapter == null) {
            iWXHttpAdapter = WXSDKManager.getInstance().getIWXHttpAdapter();
        }
        if (iWXHttpAdapter != null) {
            iWXHttpAdapter.sendRequest(wXRequest, new StreamHttpListener(responseCallback, jSCallback));
        } else {
            WXLogUtils.e("WXStreamModule", "No HttpAdapter found,request failed.");
        }
    }

    private static class StreamHttpListener implements IWXHttpAdapter.OnHttpListener {
        private ResponseCallback mCallback;
        private JSCallback mProgressCallback;
        private Map<String, String> mRespHeaders;
        private Map<String, Object> mResponse;

        @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
        public void onHttpUploadProgress(int i) {
        }

        private StreamHttpListener(ResponseCallback responseCallback, JSCallback jSCallback) {
            this.mResponse = new HashMap();
            this.mCallback = responseCallback;
            this.mProgressCallback = jSCallback;
        }

        @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
        public void onHttpStart() {
            if (this.mProgressCallback != null) {
                this.mResponse.put("readyState", 1);
                this.mResponse.put("length", 0);
                this.mProgressCallback.invokeAndKeepAlive(new HashMap(this.mResponse));
            }
        }

        @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
        public void onHeadersReceived(int i, Map<String, List<String>> map) {
            this.mResponse.put("readyState", 2);
            this.mResponse.put("status", Integer.valueOf(i));
            HashMap map2 = new HashMap();
            if (map != null) {
                for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                    if (entry.getValue().size() != 0) {
                        if (entry.getValue().size() == 1) {
                            map2.put(entry.getKey() != null ? entry.getKey() : "_", entry.getValue().get(0));
                        } else {
                            map2.put(entry.getKey() != null ? entry.getKey() : "_", entry.getValue().toString());
                        }
                    }
                }
            }
            this.mResponse.put("headers", map2);
            this.mRespHeaders = map2;
            JSCallback jSCallback = this.mProgressCallback;
            if (jSCallback != null) {
                jSCallback.invokeAndKeepAlive(new HashMap(this.mResponse));
            }
        }

        @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
        public void onHttpResponseProgress(int i) {
            this.mResponse.put("length", Integer.valueOf(i));
            JSCallback jSCallback = this.mProgressCallback;
            if (jSCallback != null) {
                jSCallback.invokeAndKeepAlive(new HashMap(this.mResponse));
            }
        }

        @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
        public void onHttpFinish(WXResponse wXResponse) {
            ResponseCallback responseCallback = this.mCallback;
            if (responseCallback != null) {
                responseCallback.onResponse(wXResponse, this.mRespHeaders);
            }
            if (WXEnvironment.isApkDebugable()) {
                WXLogUtils.d("WXStreamModule", (wXResponse == null || wXResponse.originalData == null) ? "response data is NUll!" : new String(wXResponse.originalData));
            }
        }
    }
}
