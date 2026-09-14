package io.dcloud.feature.unipush;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.sdk.PushManager;
import com.taobao.weex.common.Constants;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.ISysEventListener;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.util.AndroidResources;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.feature.aps.APSFeatureImpl;
import io.dcloud.feature.aps.AbsPushService;
import io.dcloud.feature.aps.PushMessage;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GTPushService extends AbsPushService implements ISysEventListener {
    public static final String ID = "unipush";
    boolean isRegisterNewIntent = false;
    IApp mApp;

    @Override // io.dcloud.feature.aps.AbsPushService
    public void onStart(Context context, Bundle bundle, String[] strArr) {
        this.id = ID;
        SharedPreferences orCreateBundle = SP.getOrCreateBundle("unipush_gp_per", false);
        String metaValue = AndroidResources.getMetaValue("DCLOUD_PUSH_PRIVACY");
        boolean z = !TextUtils.isEmpty(metaValue) && Boolean.parseBoolean(metaValue);
        PushManager.getInstance().registerPushIntentService(context.getApplicationContext(), GTNormalIntentService.class);
        PushManager.getInstance().initialize(context.getApplicationContext(), GTPushDevService.class);
        if (z) {
            if (!orCreateBundle.getBoolean("pri_alert", false)) {
                showPriDialog((Activity) context, orCreateBundle);
            }
        } else {
            showPermission((Activity) context);
        }
        this.clientid = context.getSharedPreferences("clientid_unipush", 0).getString(AbsPushService.PUSH_CLIENT_ID_NAME, this.clientid);
        this.appid = AndroidResources.getMetaValue(AssistPushConsts.GETUI_APPID);
        this.appkey = AndroidResources.getMetaValue(AssistPushConsts.GETUI_APPKEY);
        this.appsecret = AndroidResources.getMetaValue(AssistPushConsts.GETUI_APPSECRET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPermission(Activity activity) {
        PushManager.getInstance().setPrivacyPolicyStrategy(activity.getBaseContext(), true);
    }

    @Override // io.dcloud.feature.aps.AbsPushService
    public String getClientInfo(Context context) {
        if (this.clientid == null) {
            this.clientid = PushManager.getInstance().getClientid(context);
            saveClientId(context);
        }
        return super.getClientInfo(context);
    }

    @Override // io.dcloud.feature.aps.AbsPushService
    public void onStop() {
        super.onStop();
        if (this.isRegisterNewIntent) {
            this.isRegisterNewIntent = false;
            this.mApp.unregisterSysEventListener(this, ISysEventListener.SysEventType.onNewIntent);
            this.mApp = null;
        }
    }

    @Override // io.dcloud.feature.aps.AbsPushService
    public void addEventListener(Context context, IWebview iWebview, JSONArray jSONArray) throws JSONException {
        super.addEventListener(context, iWebview, jSONArray);
        Intent intent = iWebview.getActivity().getIntent();
        registerOnNewIntent(iWebview.obtainApp());
        fireClickEvent(intent);
    }

    private void registerOnNewIntent(IApp iApp) {
        if (this.isRegisterNewIntent) {
            return;
        }
        this.mApp = iApp;
        this.isRegisterNewIntent = true;
        iApp.registerSysEventListener(this, ISysEventListener.SysEventType.onNewIntent);
    }

    @Override // io.dcloud.common.DHInterface.ISysEventListener
    public boolean onExecute(ISysEventListener.SysEventType sysEventType, Object obj) {
        IApp iApp;
        if (sysEventType.equals(ISysEventListener.SysEventType.onNewIntent) && (iApp = this.mApp) != null) {
            fireClickEvent(iApp.getActivity().getIntent());
            return false;
        }
        if (!sysEventType.equals(ISysEventListener.SysEventType.onResume) || this.mApp == null) {
            return false;
        }
        PushManager.getInstance().initialize(this.mApp.getActivity().getApplicationContext(), null);
        return false;
    }

    private void fireClickEvent(Intent intent) {
        if (!intent.hasExtra("UP-OL-SU") || this.mApp == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbsoluteConst.JSON_KEY_TITLE, intent.getStringExtra(AbsoluteConst.JSON_KEY_TITLE));
            jSONObject.put("content", intent.getStringExtra("content"));
            jSONObject.put(AssistPushConsts.MSG_TYPE_PAYLOAD, intent.getStringExtra(AssistPushConsts.MSG_TYPE_PAYLOAD));
            intent.removeExtra("UP-OL-SU");
            intent.removeExtra(AbsoluteConst.JSON_KEY_TITLE);
            intent.removeExtra("content");
            intent.removeExtra(AssistPushConsts.MSG_TYPE_PAYLOAD);
            PushMessage pushMessage = new PushMessage(jSONObject.toString(), this.mApp.obtainAppId(), "");
            if (APSFeatureImpl.execScript(this.mApp.getActivity(), Constants.Event.CLICK, pushMessage.toJSON())) {
                return;
            }
            APSFeatureImpl.addNeedExecMessage(this.mApp.getActivity(), pushMessage);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void showPriDialog(final Activity activity, final SharedPreferences sharedPreferences) {
        final AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).setCancelable(false).setTitle(activity.getString(R.string.getui_privacy_alert_title)).setView(initDialogView(activity)).setPositiveButton(activity.getString(R.string.getui_privacy_alert_agree), new DialogInterface.OnClickListener() { // from class: io.dcloud.feature.unipush.GTPushService.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                GTPushService.this.showPermission(activity);
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean("pri_alert", true);
                editorEdit.commit();
            }
        }).setNegativeButton(activity.getString(R.string.getui_privacy_alert_refuse), new DialogInterface.OnClickListener() { // from class: io.dcloud.feature.unipush.GTPushService.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean("pri_alert", false);
                editorEdit.commit();
                PushManager.getInstance().setPrivacyPolicyStrategy(activity.getBaseContext(), false);
            }
        }).create();
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: io.dcloud.feature.unipush.GTPushService.3
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                alertDialogCreate.getButton(-2).setTextColor(-7829368);
            }
        });
        alertDialogCreate.show();
    }

    private View initDialogView(final Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(activity).inflate(R.layout.pri_dialog, (ViewGroup) null);
        View viewFindViewById = viewGroup.findViewById(R.id.scrollView);
        viewFindViewById.getLayoutParams().height = (int) (i * 0.5f);
        viewFindViewById.requestLayout();
        String string = activity.getString(R.string.getui_privacy_desc_user);
        String str = "《" + activity.getString(R.string.getui_privacy_name) + "》";
        SpannableString spannableString = new SpannableString(string + str);
        spannableString.setSpan(new URLSpan("") { // from class: io.dcloud.feature.unipush.GTPushService.4
            @Override // android.text.style.URLSpan, android.text.style.ClickableSpan
            public void onClick(View view) {
                activity.startActivity(new Intent(activity, (Class<?>) PrivacyActivity.class));
            }
        }, string.length(), string.length() + str.length(), 17);
        TextView textView = (TextView) viewGroup.findViewById(R.id.agreeTv);
        textView.setText(spannableString);
        textView.setPadding(25, 15, 25, 10);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        return viewGroup;
    }
}
