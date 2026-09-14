package io.dcloud.feature.aps;

import android.os.Bundle;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IReflectAble;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.adapter.util.PlatformUtil;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class PushMessage implements IReflectAble {
    protected static int mNotificationId = 1;
    public int nID;
    private boolean needCreateNotifcation = true;
    public String mMessageAppid = null;
    public String mUUID = null;
    public String mContent = null;
    public String mPayload = null;
    public JSONObject mPayloadJSON = null;
    public String sound = "system";
    public long mWhen = 0;
    public String mTitle = null;
    protected boolean isCover = PlatformUtil.APS_COVER;
    protected long mDelay = 0;
    public String mIconPath = null;
    public boolean mIsStreamApp = false;

    public PushMessage(String str, String str2, String str3) {
        init(str, null, str2, str3);
    }

    public PushMessage(String str, IApp iApp) {
        init(str, iApp, iApp != null ? iApp.obtainAppId() : null, iApp != null ? iApp.obtainAppName() : null);
    }

    private void init(String str, IApp iApp, String str2, String str3) {
        this.mIsStreamApp = false;
        this.mUUID = getMessageUUID();
        parseJson(str, iApp, str2, str3);
        setNotificationID();
    }

    public PushMessage(Bundle bundle) {
        parse(bundle);
    }

    public boolean needCreateNotifcation() {
        return this.needCreateNotifcation;
    }

    public String getMessageUUID() {
        return "androidPushMsg" + hashCode();
    }

    private void setNotificationID() {
        if (!this.isCover) {
            mNotificationId++;
        }
        this.nID = mNotificationId;
    }

    private void parseJson(String str, IApp iApp, String str2, String str3) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            e.printStackTrace();
            jSONObject = null;
        }
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("appid");
            if (jSONObject.has("content")) {
                this.mContent = jSONObject.optString("content");
            } else if (jSONObject.has("message")) {
                this.mContent = jSONObject.optString("message");
            } else {
                this.needCreateNotifcation = false;
                this.mContent = str;
            }
            if (jSONObject.has(AssistPushConsts.MSG_TYPE_PAYLOAD)) {
                if (!PdrUtil.isEmpty(jSONObject.optJSONObject(AssistPushConsts.MSG_TYPE_PAYLOAD))) {
                    this.mPayloadJSON = jSONObject.optJSONObject(AssistPushConsts.MSG_TYPE_PAYLOAD);
                } else {
                    this.mPayload = jSONObject.optString(AssistPushConsts.MSG_TYPE_PAYLOAD);
                }
            } else if (jSONObject.has("Payload")) {
                if (!PdrUtil.isEmpty(jSONObject.optJSONObject("Payload"))) {
                    this.mPayloadJSON = jSONObject.optJSONObject("Payload");
                } else {
                    this.mPayload = jSONObject.optString("Payload");
                }
            } else {
                this.needCreateNotifcation = false;
                this.mPayload = str;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("options");
            if (jSONObject.has(AbsoluteConst.JSON_KEY_TITLE)) {
                this.mTitle = jSONObject.optString(AbsoluteConst.JSON_KEY_TITLE);
            } else if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has(AbsoluteConst.JSON_KEY_TITLE)) {
                this.mTitle = jSONObjectOptJSONObject.optString(AbsoluteConst.JSON_KEY_TITLE);
            } else {
                this.needCreateNotifcation = false;
                this.mTitle = str3;
            }
            if (jSONObjectOptJSONObject != null) {
                this.isCover = jSONObjectOptJSONObject.optBoolean(IApp.ConfigProperty.CONFIG_COVER);
                if ("none".equals(jSONObjectOptJSONObject.optString("sound"))) {
                    this.sound = "none";
                }
                this.mWhen = jSONObjectOptJSONObject.optLong("when");
                this.mDelay = jSONObjectOptJSONObject.optLong(IApp.ConfigProperty.CONFIG_DELAY);
                if (TextUtils.isEmpty(strOptString)) {
                    strOptString = jSONObjectOptJSONObject.optString("appid");
                }
            }
            if (!TextUtils.isEmpty(strOptString)) {
                str2 = strOptString;
            }
            this.mMessageAppid = str2;
            if (jSONObjectOptJSONObject != null) {
                String strOptString2 = jSONObjectOptJSONObject.optString(AbsoluteConst.JSON_KEY_ICON);
                this.mIconPath = iApp != null ? iApp.convert2AbsFullPath(strOptString2) : convert2AbsFullPath(strOptString2, this.mMessageAppid);
                return;
            }
            return;
        }
        this.needCreateNotifcation = false;
        this.mContent = str;
        this.mPayload = str;
        this.mTitle = str3;
    }

    public String convert2AbsFullPath(String str, String str2) {
        try {
            if (!PdrUtil.isEmpty(str)) {
                if (DHFile.isExist(str)) {
                    return str;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (PdrUtil.isEmpty(str)) {
            return str;
        }
        int iIndexOf = str.indexOf(Operators.CONDITION_IF_STRING);
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        if (str.startsWith("_documents/")) {
            return BaseInfo.sDocumentFullPath + str.substring(11);
        }
        if (str.startsWith(BaseInfo.REL_PUBLIC_DOCUMENTS_DIR)) {
            return BaseInfo.sDocumentFullPath + str.substring(10);
        }
        if (str.startsWith(AbsoluteConst.MINI_SERVER_APP_DOC)) {
            return BaseInfo.sBaseFsAppsPath + str2 + Operators.DIV + BaseInfo.REAL_PRIVATE_DOC_DIR + str.substring(5);
        }
        if (str.startsWith(BaseInfo.REL_PRIVATE_DOC_DIR)) {
            return BaseInfo.sBaseFsAppsPath + str2 + Operators.DIV + BaseInfo.REAL_PRIVATE_DOC_DIR + str.substring(4);
        }
        if (str.startsWith("_downloads/")) {
            return BaseInfo.sDownloadFullPath + str.substring(11);
        }
        if (str.startsWith(BaseInfo.REL_PUBLIC_DOWNLOADS_DIR)) {
            return BaseInfo.sDownloadFullPath + str.substring(10);
        }
        if (str.startsWith(AbsoluteConst.MINI_SERVER_APP_WWW)) {
            String str3 = BaseInfo.sCacheFsAppsPath + str2 + "/www/" + str.substring(5);
            try {
                if (DHFile.isExist(str3)) {
                    return str3;
                }
                return BaseInfo.sBaseResAppsPath + str2 + Operators.DIV + BaseInfo.APP_WWW_FS_DIR + str3.substring(5);
            } catch (IOException e2) {
                e2.printStackTrace();
                return str3;
            }
        }
        if (str.startsWith(BaseInfo.REL_PRIVATE_WWW_DIR)) {
            String str4 = BaseInfo.sCacheFsAppsPath + str2 + "/www/" + str.substring(4);
            try {
                if (DHFile.isExist(str4)) {
                    return str4;
                }
                return BaseInfo.sBaseResAppsPath + str2 + Operators.DIV + BaseInfo.APP_WWW_FS_DIR + str4.substring(4);
            } catch (IOException e3) {
                e3.printStackTrace();
                return str4;
            }
        }
        if (str.startsWith(DeviceInfo.FILE_PROTOCOL)) {
            return str.substring(7);
        }
        if (str.startsWith(DeviceInfo.sDeviceRootDir)) {
        }
        return str;
    }

    public void parse(Bundle bundle) {
        this.mTitle = bundle.getString(AbsoluteConst.JSON_KEY_TITLE);
        this.mContent = bundle.getString("content");
        this.nID = bundle.getInt("nId");
        this.mWhen = bundle.getLong("when");
        this.sound = bundle.getString("sound");
        this.mMessageAppid = bundle.getString("appid");
        this.mUUID = bundle.getString("uuid");
        this.mPayload = bundle.getString(AssistPushConsts.MSG_TYPE_PAYLOAD);
        this.mIconPath = bundle.getString(AbsoluteConst.JSON_KEY_ICON);
        this.mIsStreamApp = bundle.getBoolean("isstreamapp");
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(AbsoluteConst.JSON_KEY_TITLE, this.mTitle);
        bundle.putString("content", this.mContent);
        bundle.putInt("nId", this.nID);
        bundle.putLong("when", this.mWhen);
        bundle.putString("sound", this.sound);
        bundle.putString("appid", this.mMessageAppid);
        bundle.putString("uuid", this.mUUID);
        if (!PdrUtil.isEmpty(this.mPayloadJSON)) {
            bundle.putString(AssistPushConsts.MSG_TYPE_PAYLOAD, this.mPayloadJSON.toString());
        } else {
            bundle.putString(AssistPushConsts.MSG_TYPE_PAYLOAD, this.mPayload);
        }
        bundle.putString(AbsoluteConst.JSON_KEY_ICON, this.mIconPath);
        bundle.putBoolean("isstreamapp", this.mIsStreamApp);
        return bundle;
    }

    public String toJSON() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(AbsoluteConst.JSON_KEY_UUID, this.mUUID);
            jSONObject2.put(AbsoluteConst.JSON_KEY_TITLE, this.mTitle);
            jSONObject2.put("appid", this.mMessageAppid);
            jSONObject2.put("content", this.mContent);
            if (!PdrUtil.isEmpty(this.mPayloadJSON)) {
                jSONObject2.put(AssistPushConsts.MSG_TYPE_PAYLOAD, this.mPayloadJSON);
            } else {
                try {
                    jSONObject = new JSONObject(this.mPayload);
                } catch (Exception unused) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    jSONObject2.put(AssistPushConsts.MSG_TYPE_PAYLOAD, jSONObject);
                } else {
                    jSONObject2.put(AssistPushConsts.MSG_TYPE_PAYLOAD, this.mPayload);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject2.toString();
    }
}
