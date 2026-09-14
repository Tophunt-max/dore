package com.taobao.weex;

import android.net.Uri;
import android.text.TextUtils;
import com.taobao.weex.adapter.IWXHttpAdapter;
import com.taobao.weex.adapter.IWXUserTrackAdapter;
import com.taobao.weex.common.WXErrorCode;
import com.taobao.weex.common.WXPerformance;
import com.taobao.weex.common.WXRenderStrategy;
import com.taobao.weex.common.WXResponse;
import com.taobao.weex.performance.WXInstanceApm;
import com.taobao.weex.tracing.WXTracing;
import com.taobao.weex.utils.WXLogUtils;
import com.taobao.weex.utils.tools.LogDetail;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WXHttpListener implements IWXHttpAdapter.OnHttpListener {
    private WXRenderStrategy flag;
    private WXSDKInstance instance;
    private boolean isInstanceReady;
    public boolean isPreDownLoadMode;
    private boolean isResponseHasWait;
    private String jsonInitData;
    private WXInstanceApm mApmForInstance;
    private String mBundleUrl;
    private LogDetail mLogDetail;
    private WXResponse mResponse;
    private IWXUserTrackAdapter mUserTrackAdapter;
    private WXPerformance mWXPerformance;
    private Map<String, Object> options;
    private String pageName;
    private long startRequestTime;
    private int traceId;

    public void onFail(WXResponse wXResponse) {
    }

    @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
    public void onHttpUploadProgress(int i) {
    }

    public WXHttpListener(WXSDKInstance wXSDKInstance) {
        this.isPreDownLoadMode = false;
        this.isInstanceReady = false;
        this.isResponseHasWait = false;
        if (wXSDKInstance != null) {
            this.mLogDetail = wXSDKInstance.mTimeCalculator.createLogDetail("downloadBundleJS");
        }
        this.instance = wXSDKInstance;
        this.traceId = WXTracing.nextId();
        this.mWXPerformance = wXSDKInstance.getWXPerformance();
        this.mApmForInstance = wXSDKInstance.getApmForInstance();
        this.mUserTrackAdapter = WXSDKManager.getInstance().getIWXUserTrackAdapter();
        if (WXTracing.isAvailable()) {
            WXTracing.TraceEvent traceEventNewEvent = WXTracing.newEvent("downloadBundleJS", wXSDKInstance.getInstanceId(), -1);
            traceEventNewEvent.iid = wXSDKInstance.getInstanceId();
            traceEventNewEvent.tname = "Network";
            traceEventNewEvent.ph = "B";
            traceEventNewEvent.traceId = this.traceId;
            traceEventNewEvent.submit();
        }
    }

    public WXHttpListener(WXSDKInstance wXSDKInstance, String str) {
        this(wXSDKInstance);
        this.startRequestTime = System.currentTimeMillis();
        this.mBundleUrl = str;
    }

    public WXHttpListener(WXSDKInstance wXSDKInstance, String str, Map<String, Object> map, String str2, WXRenderStrategy wXRenderStrategy, long j) {
        this(wXSDKInstance);
        this.pageName = str;
        this.options = map;
        this.jsonInitData = str2;
        this.flag = wXRenderStrategy;
        this.startRequestTime = j;
        this.mBundleUrl = wXSDKInstance.getBundleUrl();
    }

    public void setSDKInstance(WXSDKInstance wXSDKInstance) {
        this.instance = wXSDKInstance;
    }

    protected WXSDKInstance getInstance() {
        return this.instance;
    }

    @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
    public void onHttpStart() {
        WXSDKInstance wXSDKInstance = this.instance;
        if (wXSDKInstance == null || wXSDKInstance.getWXStatisticsListener() == null) {
            return;
        }
        this.instance.getWXStatisticsListener().onHttpStart();
        LogDetail logDetail = this.mLogDetail;
        if (logDetail != null) {
            logDetail.taskStart();
        }
    }

    @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
    public void onHeadersReceived(int i, Map<String, List<String>> map) {
        WXSDKInstance wXSDKInstance = this.instance;
        if (wXSDKInstance != null && wXSDKInstance.getWXStatisticsListener() != null) {
            this.instance.getWXStatisticsListener().onHeadersReceived();
            this.instance.onHttpStart();
        }
        WXSDKInstance wXSDKInstance2 = this.instance;
        if (wXSDKInstance2 == null || wXSDKInstance2.responseHeaders == null || map == null) {
            return;
        }
        this.instance.responseHeaders.putAll(map);
    }

    @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
    public void onHttpResponseProgress(int i) {
        this.instance.getApmForInstance().extInfo.put(WXInstanceApm.VALUE_BUNDLE_LOAD_LENGTH, Integer.valueOf(i));
    }

    @Override // com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener
    public void onHttpFinish(WXResponse wXResponse) {
        LogDetail logDetail = this.mLogDetail;
        if (logDetail != null) {
            logDetail.taskEnd();
        }
        WXSDKInstance wXSDKInstance = this.instance;
        if (wXSDKInstance != null && wXSDKInstance.getWXStatisticsListener() != null) {
            this.instance.getWXStatisticsListener().onHttpFinish();
        }
        if (WXTracing.isAvailable()) {
            WXTracing.TraceEvent traceEventNewEvent = WXTracing.newEvent("downloadBundleJS", this.instance.getInstanceId(), -1);
            traceEventNewEvent.traceId = this.traceId;
            traceEventNewEvent.tname = "Network";
            traceEventNewEvent.ph = "E";
            traceEventNewEvent.extParams = new HashMap();
            if (wXResponse != null && wXResponse.originalData != null) {
                traceEventNewEvent.extParams.put("BundleSize", Integer.valueOf(wXResponse.originalData.length));
            }
            traceEventNewEvent.submit();
        }
        this.mWXPerformance.networkTime = System.currentTimeMillis() - this.startRequestTime;
        if (wXResponse != null && wXResponse.extendParams != null) {
            this.mApmForInstance.updateRecordInfo(wXResponse.extendParams);
            Object obj = wXResponse.extendParams.get("actualNetworkTime");
            this.mWXPerformance.actualNetworkTime = obj instanceof Long ? ((Long) obj).longValue() : 0L;
            Object obj2 = wXResponse.extendParams.get("pureNetworkTime");
            this.mWXPerformance.pureNetworkTime = obj2 instanceof Long ? ((Long) obj2).longValue() : 0L;
            Object obj3 = wXResponse.extendParams.get("connectionType");
            this.mWXPerformance.connectionType = obj3 instanceof String ? (String) obj3 : "";
            Object obj4 = wXResponse.extendParams.get("packageSpendTime");
            this.mWXPerformance.packageSpendTime = obj4 instanceof Long ? ((Long) obj4).longValue() : 0L;
            Object obj5 = wXResponse.extendParams.get("syncTaskTime");
            this.mWXPerformance.syncTaskTime = obj5 instanceof Long ? ((Long) obj5).longValue() : 0L;
            Object obj6 = wXResponse.extendParams.get("requestType");
            this.mWXPerformance.requestType = obj6 instanceof String ? (String) obj6 : "none";
            Object obj7 = wXResponse.extendParams.get(WXPerformance.Dimension.cacheType.toString());
            if (obj7 instanceof String) {
                this.mWXPerformance.cacheType = (String) obj7;
            }
            Object obj8 = wXResponse.extendParams.get("zCacheInfo");
            this.mWXPerformance.zCacheInfo = obj8 instanceof String ? (String) obj8 : "";
            if (isNet(this.mWXPerformance.requestType) && this.mUserTrackAdapter != null) {
                WXPerformance wXPerformance = new WXPerformance(this.instance.getInstanceId());
                if (!TextUtils.isEmpty(this.mBundleUrl)) {
                    try {
                        wXPerformance.args = Uri.parse(this.mBundleUrl).buildUpon().clearQuery().toString();
                    } catch (Exception unused) {
                        wXPerformance.args = this.pageName;
                    }
                }
                if (!"200".equals(wXResponse.statusCode)) {
                    wXPerformance.errCode = WXErrorCode.WX_ERR_JSBUNDLE_DOWNLOAD.getErrorCode();
                    wXPerformance.appendErrMsg(wXResponse.errorCode);
                    wXPerformance.appendErrMsg("|");
                    wXPerformance.appendErrMsg(wXResponse.errorMsg);
                } else if ("200".equals(wXResponse.statusCode) && (wXResponse.originalData == null || wXResponse.originalData.length <= 0)) {
                    wXPerformance.errCode = WXErrorCode.WX_ERR_JSBUNDLE_DOWNLOAD.getErrorCode();
                    wXPerformance.appendErrMsg(wXResponse.statusCode);
                    wXPerformance.appendErrMsg("|template is null!");
                } else {
                    wXPerformance.errCode = WXErrorCode.WX_SUCCESS.getErrorCode();
                }
                IWXUserTrackAdapter iWXUserTrackAdapter = this.mUserTrackAdapter;
                if (iWXUserTrackAdapter != null) {
                    iWXUserTrackAdapter.commit(this.instance.getContext(), null, IWXUserTrackAdapter.JS_DOWNLOAD, wXPerformance, null);
                }
            }
        }
        if (this.isPreDownLoadMode) {
            if (this.isInstanceReady) {
                WXLogUtils.e("test->", "DownLoad didHttpFinish on http");
                didHttpFinish(wXResponse);
                return;
            } else {
                WXLogUtils.e("test->", "DownLoad end before activity created");
                this.mResponse = wXResponse;
                this.isResponseHasWait = true;
                return;
            }
        }
        didHttpFinish(wXResponse);
    }

    public void onInstanceReady() {
        if (this.isPreDownLoadMode) {
            this.isInstanceReady = true;
            if (this.isResponseHasWait) {
                WXLogUtils.e("test->", "preDownLoad didHttpFinish on ready");
                didHttpFinish(this.mResponse);
            }
        }
    }

    private void didHttpFinish(WXResponse wXResponse) {
        String errorCode;
        if (wXResponse != null && wXResponse.originalData != null && TextUtils.equals("200", wXResponse.statusCode)) {
            this.mApmForInstance.onStage(WXInstanceApm.KEY_PAGE_STAGES_DOWN_BUNDLE_END);
            onSuccess(wXResponse);
            errorCode = "0";
        } else if (TextUtils.equals(WXErrorCode.WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR.getErrorCode(), wXResponse.statusCode)) {
            WXLogUtils.e("user intercept: WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR");
            errorCode = WXErrorCode.WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR.getErrorCode();
            this.instance.onRenderError(errorCode, "|response.errorMsg==" + wXResponse.errorMsg + "|instance bundleUrl = \n" + this.instance.getBundleUrl() + "|instance requestUrl = \n" + Uri.decode(WXSDKInstance.requestUrl));
            onFail(wXResponse);
        } else if (wXResponse != null && wXResponse.originalData != null && TextUtils.equals("-206", wXResponse.statusCode)) {
            WXLogUtils.e("user intercept: WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED");
            errorCode = WXErrorCode.WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED.getErrorCode();
            this.instance.onRenderError(errorCode, WXErrorCode.WX_DEGRAD_ERR_NETWORK_CHECK_CONTENT_LENGTH_FAILED.getErrorCode() + "|response.errorMsg==" + wXResponse.errorMsg);
            onFail(wXResponse);
        } else {
            errorCode = WXErrorCode.WX_DEGRAD_ERR_NETWORK_BUNDLE_DOWNLOAD_FAILED.getErrorCode();
            this.instance.onRenderError(errorCode, wXResponse.errorMsg);
            onFail(wXResponse);
        }
        if ("0".equals(errorCode)) {
            return;
        }
        this.mApmForInstance.addProperty(WXInstanceApm.KEY_PROPERTIES_ERROR_CODE, errorCode);
    }

    private boolean isNet(String str) {
        return "network".equals(str) || "2g".equals(str) || "3g".equals(str) || "4g".equals(str) || "wifi".equals(str) || "other".equals(str) || "unknown".equals(str);
    }

    public void onSuccess(WXResponse wXResponse) {
        if (this.flag == WXRenderStrategy.DATA_RENDER_BINARY) {
            this.instance.render(this.pageName, wXResponse.originalData, this.options, this.jsonInitData);
        } else {
            this.instance.render(this.pageName, new String(wXResponse.originalData), this.options, this.jsonInitData, this.flag);
        }
    }
}
