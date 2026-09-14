package io.dcloud.feature.gg.dcloud;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Process;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alibaba.android.bindingx.core.internal.BindingXConstants;
import com.igexin.sdk.PushConsts;
import com.taobao.weex.common.Constants;
import io.dcloud.EntryProxy;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IMgr;
import io.dcloud.common.adapter.util.CanvasHelper;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.ui.c;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.feature.gg.AdSplashUtil;
import io.dcloud.feature.gg.dcloud.ADHandler;
import io.dcloud.feature.gg.dcloud.AdFeatureImpl;
import io.dcloud.feature.ui.nativeui.b;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ADResult {
    private String d;
    private IADReceiver[] receivers;

    public static class CADReceiver implements IADReceiver {
        private Context context;

        public CADReceiver(Context context) {
            this.context = context;
        }

        public void checkPromptData(JSONArray jSONArray) {
            try {
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null && jSONObject.length() > 0) {
                            if (jSONObject.optString(PushConsts.CMD_ACTION).equals("prompt")) {
                                final String strOptString = jSONObject.optString("onclose");
                                AlertDialog alertDialogCreate = new AlertDialog.Builder(this.context).setTitle(jSONObject.optString(AbsoluteConst.JSON_KEY_TITLE)).setMessage(jSONObject.optString("message")).setCancelable(false).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: io.dcloud.feature.gg.dcloud.ADResult.CADReceiver.2
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i2) {
                                        if (strOptString.equals(BindingXConstants.STATE_EXIT)) {
                                            Process.killProcess(Process.myPid());
                                        } else {
                                            dialogInterface.dismiss();
                                        }
                                    }
                                }).create();
                                alertDialogCreate.setCanceledOnTouchOutside(false);
                                alertDialogCreate.show();
                            } else if (jSONObject.optString(PushConsts.CMD_ACTION).equals("toast")) {
                                b bVar = new b((Activity) this.context, "");
                                TextView textView = new TextView(this.context);
                                textView.setAutoLinkMask(1);
                                textView.setClickable(true);
                                textView.setText(c.a(this.context).a(jSONObject.optString("message")));
                                LinearLayout linearLayout = new LinearLayout(this.context);
                                linearLayout.addView(textView);
                                bVar.a(linearLayout, textView);
                                bVar.setDuration(1);
                                bVar.setGravity(80, bVar.getXOffset(), bVar.getYOffset());
                                int iDip2px = CanvasHelper.dip2px(this.context, 10.0f);
                                int iDip2px2 = CanvasHelper.dip2px(this.context, 8.0f);
                                linearLayout.setPadding(iDip2px, iDip2px2, iDip2px, iDip2px2);
                                GradientDrawable gradientDrawable = new GradientDrawable();
                                gradientDrawable.setCornerRadius(iDip2px2);
                                gradientDrawable.setShape(0);
                                gradientDrawable.setColor(-1308622848);
                                linearLayout.setBackground(gradientDrawable);
                                textView.setGravity(17);
                                textView.setTextColor(Color.parseColor("#ffffffff"));
                                bVar.show();
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onError(String str, String str2) {
        }

        @Override // io.dcloud.feature.gg.dcloud.IADReceiver
        public void onReceiver(JSONObject jSONObject) {
            final JSONArray jSONArrayOptJSONArray;
            if (!jSONObject.has("data") || (jSONArrayOptJSONArray = jSONObject.optJSONArray("data")) == null || jSONArrayOptJSONArray.length() <= 0) {
                return;
            }
            ((Activity) this.context).runOnUiThread(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADResult.CADReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    CADReceiver.this.checkPromptData(jSONArrayOptJSONArray);
                }
            });
        }
    }

    public ADResult(IADReceiver... iADReceiverArr) {
        this.receivers = iADReceiverArr;
    }

    private String gd() {
        IApp iApp = (IApp) EntryProxy.getInstnace().getCoreHandler().dispatchEvent(IMgr.MgrType.AppMgr, 28, BaseInfo.sDefaultBootApp);
        if (iApp != null) {
            Activity activity = iApp.getActivity();
            this.d = ADHandler.bd(activity);
            this.receivers[0] = new ADHandler.ADReceiver(activity);
            this.receivers[1] = new CADReceiver(activity);
            this.receivers[2] = new AdFeatureImpl.AdReceiver(activity, new Object[]{null, null, ""}, iApp.obtainAppId());
        }
        return this.d;
    }

    public void cad(String str) {
        if (this.receivers != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("ret", -1);
                if (iOptInt == 0) {
                    for (IADReceiver iADReceiver : this.receivers) {
                        if ((iADReceiver instanceof CADReceiver) || (iADReceiver instanceof ADHandler.ADReceiver)) {
                            iADReceiver.onReceiver(jSONObject);
                        }
                    }
                    return;
                }
                for (IADReceiver iADReceiver2 : this.receivers) {
                    if ((iADReceiver2 instanceof CADReceiver) || (iADReceiver2 instanceof ADHandler.ADReceiver)) {
                        iADReceiver2.onError(String.valueOf(iOptInt), jSONObject.optString("desc"));
                    }
                }
            } catch (JSONException e) {
                for (IADReceiver iADReceiver3 : this.receivers) {
                    if ((iADReceiver3 instanceof CADReceiver) || (iADReceiver3 instanceof ADHandler.ADReceiver)) {
                        iADReceiver3.onError("Exception", e.getMessage());
                    }
                }
            }
        }
    }

    public void dc(String str, int i, int i2) {
        long j;
        IADReceiver[] iADReceiverArr = this.receivers;
        if (iADReceiverArr != null) {
            int i3 = 0;
            if (i != 0) {
                int length = iADReceiverArr.length;
                while (i3 < length) {
                    IADReceiver iADReceiver = iADReceiverArr[i3];
                    if (!(iADReceiver instanceof CADReceiver)) {
                        iADReceiver.onError("NotFountDataError", "net work error");
                    }
                    i3++;
                }
                return;
            }
            if (i2 != 200) {
                int length2 = iADReceiverArr.length;
                while (i3 < length2) {
                    IADReceiver iADReceiver2 = iADReceiverArr[i3];
                    if (!(iADReceiver2 instanceof CADReceiver)) {
                        iADReceiver2.onError("NotFountDataError", String.valueOf(i2));
                    }
                    i3++;
                }
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                int iOptInt = jSONObject.optInt("ret", -1);
                if (iOptInt != 0) {
                    for (IADReceiver iADReceiver3 : this.receivers) {
                        if (!(iADReceiver3 instanceof CADReceiver)) {
                            iADReceiver3.onError(String.valueOf(iOptInt), jSONObject.optString("desc"));
                        }
                    }
                    return;
                }
                if (jSONObject.has(Constants.Value.TIME)) {
                    try {
                        j = Long.parseLong(ADHandler.get("servertime"));
                    } catch (Exception unused) {
                        j = 0;
                    }
                    long jOptLong = jSONObject.optLong(Constants.Value.TIME);
                    SP.setBundleData(ADHandler.AdTag, "servertime", String.valueOf(jOptLong));
                    if (j > 0 && jOptLong > 0 && !PdrUtil.isSameDay(j * 1000, jOptLong * 1000)) {
                        SP.clearBundle(AdSplashUtil.showCountADReward);
                    }
                }
                for (IADReceiver iADReceiver4 : this.receivers) {
                    if (!(iADReceiver4 instanceof CADReceiver)) {
                        iADReceiver4.onReceiver(jSONObject);
                    }
                }
            } catch (JSONException e) {
                IADReceiver[] iADReceiverArr2 = this.receivers;
                int length3 = iADReceiverArr2.length;
                while (i3 < length3) {
                    IADReceiver iADReceiver5 = iADReceiverArr2[i3];
                    if (!(iADReceiver5 instanceof CADReceiver)) {
                        iADReceiver5.onError("Exception", e.getMessage());
                    }
                    i3++;
                }
            }
        }
    }
}
