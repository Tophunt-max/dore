package com.appsflyer;

import android.content.Context;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.aj;
import com.appsflyer.internal.n;
import com.appsflyer.share.LinkGenerator;
import com.taobao.weex.el.parse.Operators;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class CreateOneLinkHttpTask extends aj {
    public ResponseListener AFInAppEventParameterName;
    private String AFVersionDeclaration;
    private final String getLevel;
    private final Map<String, String> init;
    public String valueOf;

    public interface ResponseListener {
        void onResponse(String str);

        void onResponseError(String str);
    }

    public CreateOneLinkHttpTask(String str, Map<String, String> map, ag agVar, Context context) {
        super(agVar, context, "POST");
        this.AFVersionDeclaration = "";
        if (context != null) {
            this.AFVersionDeclaration = context.getPackageName();
        } else {
            AFLogger.init("CreateOneLinkHttpTask: context can't be null");
        }
        this.AFInAppEventType = str;
        this.getLevel = "-1";
        this.init = map;
    }

    @Override // com.appsflyer.internal.aj
    public final void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) throws IOException {
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setUseCaches(false);
        HashMap map = new HashMap();
        map.put("ttl", this.getLevel);
        map.put("uuid", this.AppsFlyer2dXConversionCallback);
        map.put("data", this.init);
        map.put("meta", this.AFLogger$LogLevel);
        String str = this.valueOf;
        if (str != null) {
            map.put("brand_domain", str);
        }
        String string = n.AFKeystoreWrapper(map).toString();
        values(httpsURLConnection, this.values, string);
        httpsURLConnection.connect();
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        dataOutputStream.writeBytes(string);
        dataOutputStream.flush();
        dataOutputStream.close();
    }

    @Override // com.appsflyer.internal.aj
    public final String values() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
        sb.append(Operators.DIV);
        sb.append(this.AFInAppEventType);
        return sb.toString();
    }

    @Override // com.appsflyer.internal.aj
    public final void values(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                this.AFInAppEventParameterName.onResponse(jSONObject.optString(itKeys.next()));
            }
        } catch (JSONException e) {
            this.AFInAppEventParameterName.onResponseError("Can't parse one link data");
            AFLogger.valueOf("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }

    @Override // com.appsflyer.internal.aj
    public final void AFInAppEventParameterName() {
        LinkGenerator linkGeneratorAddParameters = new LinkGenerator("af_app_invites").setBaseURL(this.AFInAppEventType, AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN), this.AFVersionDeclaration).addParameter("af_siteid", this.AFVersionDeclaration).addParameters(this.init);
        ag.AFInAppEventType();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            linkGeneratorAddParameters.setReferrerCustomerId(string);
        }
        this.AFInAppEventParameterName.onResponse(linkGeneratorAddParameters.generateLink());
    }
}
