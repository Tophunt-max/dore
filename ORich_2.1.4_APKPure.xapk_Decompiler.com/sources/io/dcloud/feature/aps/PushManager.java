package io.dcloud.feature.aps;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.taobao.weex.common.Constants;
import io.dcloud.common.DHInterface.BaseFeature;
import io.dcloud.common.DHInterface.IEventCallback;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.ui.AdaFrameItem;
import io.dcloud.common.adapter.ui.AdaFrameView;
import io.dcloud.common.adapter.ui.AdaUniWebView;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.StringUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class PushManager {
    protected static PushManager mPushManager;
    APSFeatureImpl apsFeatureImpl;
    private AbsPushService mBaseAbsPushService = null;
    public HashMap<String, ArrayList<PushMessage>> mAppsmMessages = new HashMap<>();
    protected HashMap<IWebview, HashMap<String, ArrayList<String>>> mWebViewCallbackIds = new HashMap<>();
    protected ArrayList<PushMessage> mNeedExecMessages = new ArrayList<>();
    protected ArrayList<PushMessage> mNeedExecMessages_receive = new ArrayList<>();

    public static PushManager getInstance(Context context) {
        APSFeatureImpl.initNotification(context);
        if (mPushManager == null) {
            mPushManager = new PushManager();
        }
        return mPushManager;
    }

    protected PushManager() {
    }

    public void sendCreateNotificationBroadcast(Context context, String str, PushMessage pushMessage) {
        Intent intent = new Intent(APSFeatureImpl.CREATE_NOTIFICATION);
        intent.putExtras(pushMessage.toBundle());
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public String execute(IWebview iWebview, String str, JSONArray jSONArray, BaseFeature baseFeature) throws Exception {
        String strObtainAppId;
        Activity activity;
        AbsPushService absPushService;
        strObtainAppId = iWebview.obtainFrameView().obtainApp().obtainAppId();
        activity = iWebview.getActivity();
        if (!baseFeature.loadModules().isEmpty()) {
            absPushService = (AbsPushService) baseFeature.loadModules().get(0);
        } else {
            if (this.mBaseAbsPushService == null) {
                this.mBaseAbsPushService = new AbsPushService() { // from class: io.dcloud.feature.aps.PushManager.1
                    @Override // io.dcloud.feature.aps.AbsPushService, io.dcloud.common.DHInterface.BaseFeature.BaseModule
                    public JSONObject toJSONObject() throws JSONException {
                        return super.toJSONObject();
                    }

                    @Override // io.dcloud.feature.aps.AbsPushService
                    public void getClientInfoAsync(IWebview iWebview2, String str2) {
                        Deprecated_JSUtil.execCallback(iWebview2, str2, "{code:-1,message:'no push platform'}", JSUtil.ERROR, true, false);
                    }
                };
            }
            absPushService = this.mBaseAbsPushService;
        }
        str.hashCode();
        switch (str) {
            case "createMessage":
                if (absPushService != null) {
                    return absPushService.createMessage(iWebview, jSONArray, strObtainAppId, activity);
                }
                return null;
            case "setAutoNotification":
                if (absPushService != null) {
                    absPushService.setAutoNotification(iWebview, jSONArray, strObtainAppId);
                }
                return null;
            case "remove":
                if (absPushService != null) {
                    absPushService.remove(activity, jSONArray, strObtainAppId);
                }
                return null;
            case "addEventListener":
                if (absPushService != null) {
                    absPushService.addEventListener(activity, iWebview, jSONArray);
                }
                return null;
            case "clear":
                if (absPushService != null) {
                    absPushService.clear(activity, strObtainAppId);
                }
                return null;
            case "getClientInfo":
                if (absPushService != null) {
                    return absPushService.getClientInfo(iWebview.getContext());
                }
                return null;
            case "getClientInfoAsync":
                if (absPushService != null) {
                    absPushService.getClientInfoAsync(iWebview, jSONArray.optString(0));
                } else {
                    Deprecated_JSUtil.execCallback(iWebview, jSONArray.optString(0), "{code:-1,message:'no push platform'}", JSUtil.ERROR, true, false);
                }
                return null;
            case "getAllMessage":
                return getAllMessages(strObtainAppId);
            default:
                return null;
        }
    }

    protected void dispatchEvent(IWebview iWebview, String str, String str2) {
        String str3 = "window.__Mkey__Push__.execCallback_Push('%s', '%s', %s);";
        if (iWebview instanceof AdaUniWebView) {
            str3 = "plus.push.__Mkey__Push__.execCallback_Push('%s', '%s', %s);";
        }
        if (Constants.Event.CLICK.equals(str2)) {
            if (this.mNeedExecMessages.isEmpty()) {
                return;
            }
            Iterator<PushMessage> it = this.mNeedExecMessages.iterator();
            while (it.hasNext()) {
                iWebview.executeScript(StringUtil.format(str3, str, str2, it.next().toJSON()));
            }
            this.mNeedExecMessages.clear();
            return;
        }
        if (!"receive".equals(str2) || this.mNeedExecMessages_receive.isEmpty()) {
            return;
        }
        Iterator<PushMessage> it2 = this.mNeedExecMessages_receive.iterator();
        while (it2.hasNext()) {
            iWebview.executeScript(StringUtil.format(str3, str, str2, it2.next().toJSON()));
        }
        this.mNeedExecMessages_receive.clear();
    }

    public void addPushMessage(String str, PushMessage pushMessage) {
        if (str == null) {
            str = BaseInfo.PDR;
        }
        ArrayList<PushMessage> arrayList = this.mAppsmMessages.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mAppsmMessages.put(str, arrayList);
        }
        arrayList.add(pushMessage);
    }

    public void addNeedExecMessage(PushMessage pushMessage) {
        ArrayList<PushMessage> arrayList = this.mNeedExecMessages;
        if (arrayList != null && arrayList.size() > 0) {
            this.mNeedExecMessages.clear();
        }
        this.mNeedExecMessages.add(pushMessage);
    }

    public void addNeedExecReceiveMessage(PushMessage pushMessage) {
        this.mNeedExecMessages_receive.add(pushMessage);
    }

    public void removePushMessage(String str, PushMessage pushMessage) {
        if (str == null) {
            str = BaseInfo.PDR;
        }
        ArrayList<PushMessage> arrayList = this.mAppsmMessages.get(str);
        if (arrayList == null || !arrayList.contains(pushMessage)) {
            return;
        }
        arrayList.remove(pushMessage);
        Logger.d("push", "removePushMessage" + arrayList.size());
    }

    public PushMessage findPushMessage(String str, String str2) {
        if (str == null) {
            str = BaseInfo.PDR;
        }
        PushMessage pushMessage = null;
        ArrayList<PushMessage> arrayList = this.mAppsmMessages.get(str);
        if (arrayList != null) {
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                PushMessage pushMessage2 = arrayList.get(i);
                if (str2.equals(pushMessage2.mUUID)) {
                    return pushMessage2;
                }
            }
            return null;
        }
        Iterator<String> it = this.mAppsmMessages.keySet().iterator();
        while (it.hasNext()) {
            ArrayList<PushMessage> arrayList2 = this.mAppsmMessages.get(it.next());
            int size2 = arrayList2.size();
            int i2 = 0;
            while (true) {
                if (i2 < size2) {
                    PushMessage pushMessage3 = arrayList2.get(i2);
                    if (str2.equals(pushMessage3.mUUID)) {
                        pushMessage = pushMessage3;
                        break;
                    }
                    i2++;
                }
            }
        }
        return pushMessage;
    }

    public ArrayList<String> findWebViewCallbacks(IWebview iWebview, String str) {
        HashMap<String, ArrayList<String>> map = this.mWebViewCallbackIds.get(iWebview);
        if (map != null) {
            if (map.get(str) != null) {
                ArrayList<String> arrayList = map.get(str);
                addWindowCloseListener(iWebview);
                return arrayList;
            }
            ArrayList<String> arrayList2 = new ArrayList<>();
            map.put(str, arrayList2);
            return arrayList2;
        }
        HashMap<String, ArrayList<String>> map2 = new HashMap<>();
        ArrayList<String> arrayList3 = new ArrayList<>();
        map2.put(str, arrayList3);
        addWindowCloseListener(iWebview);
        this.mWebViewCallbackIds.put(iWebview, map2);
        return arrayList3;
    }

    public void removeWebviewCallback(IWebview iWebview) {
        this.mWebViewCallbackIds.remove(iWebview);
    }

    private void addWindowCloseListener(IWebview iWebview) {
        ((AdaFrameView) iWebview.obtainFrameView()).addFrameViewListener(new IEventCallback() { // from class: io.dcloud.feature.aps.PushManager.2
            @Override // io.dcloud.common.DHInterface.IEventCallback
            public Object onCallBack(String str, Object obj) {
                if ((!PdrUtil.isEquals(str, AbsoluteConst.EVENTS_WINDOW_CLOSE) && !PdrUtil.isEquals(str, AbsoluteConst.EVENTS_CLOSE)) || !(obj instanceof IWebview)) {
                    return null;
                }
                IWebview iWebview2 = (IWebview) obj;
                PushManager.this.removeWebviewCallback(iWebview2);
                ((AdaFrameView) iWebview2.obtainFrameView()).removeFrameViewListener(this);
                return null;
            }
        });
    }

    protected String getAllMessages(String str) {
        ArrayList<PushMessage> arrayList = this.mAppsmMessages.get(str);
        StringBuffer stringBuffer = new StringBuffer();
        if (arrayList != null && arrayList.size() > 0) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                stringBuffer.append("arr[" + i + "]=");
                stringBuffer.append(arrayList.get(i).toJSON());
                stringBuffer.append(";");
            }
        }
        return StringUtil.format("(function(){var arr = new Array;%s;return arr;})();", stringBuffer.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean execScript(String str, String str2) {
        boolean z = false;
        for (IWebview iWebview : this.mWebViewCallbackIds.keySet()) {
            if (!((AdaFrameItem) iWebview).isDisposed()) {
                String str3 = "window.__Mkey__Push__.execCallback_Push('%s', '%s', %s);";
                if (iWebview instanceof AdaUniWebView) {
                    str3 = "plus.push.__Mkey__Push__.execCallback_Push('%s', '%s', %s);";
                }
                ArrayList<String> arrayList = this.mWebViewCallbackIds.get(iWebview).get(str);
                if (arrayList != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str4 = arrayList.get(size);
                        String str5 = StringUtil.format(str3, str4, str, str2);
                        if (str4.startsWith(str)) {
                            iWebview.executeScript(str5);
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }
}
