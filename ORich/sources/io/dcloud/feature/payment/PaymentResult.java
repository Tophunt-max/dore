package io.dcloud.feature.payment;

import io.dcloud.common.DHInterface.IReflectAble;
import io.dcloud.common.util.PdrUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class PaymentResult implements IReflectAble {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AbsPaymentChannel f676a;
    public String description;
    public String rawDataJson;
    public String signature;
    public String tradeno;
    public String url;

    public PaymentResult(AbsPaymentChannel absPaymentChannel) {
        this.f676a = absPaymentChannel;
    }

    public JSONObject toJSONObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("channel", this.f676a.toJSONObject());
            jSONObject.put("description", this.description);
            jSONObject.put("url", this.url);
            jSONObject.put("signature", this.signature);
            jSONObject.put("tradeno", this.tradeno);
            if (!PdrUtil.isEmpty(this.rawDataJson)) {
                jSONObject.put("rawdata", new JSONObject(this.rawDataJson).toString());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }
}
