package io.dcloud.feature.ui.navigator;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.dcloud.android.widget.toast.ToastCompat;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.DHInterface.ISysEventListener;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.adapter.util.PermissionUtil;
import io.dcloud.common.adapter.util.SP;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.constant.IntentConst;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.common.util.ShortCutUtil;
import io.dcloud.common.util.ShortcutCreateUtil;
import io.dcloud.common.util.StringUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NavigatorUIFeatureImpl implements IFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    AbsMgr f741a;

    class a extends PermissionUtil.StreamPermissionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWebview f742a;
        final /* synthetic */ String[] b;
        final /* synthetic */ IApp c;
        final /* synthetic */ String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(IApp iApp, IWebview iWebview, String[] strArr, IApp iApp2, String str) {
            super(iApp);
            this.f742a = iWebview;
            this.b = strArr;
            this.c = iApp2;
            this.d = str;
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onDenied(String str) {
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onGranted(String str) {
            NavigatorUIFeatureImpl.this.a(this.f742a, this.b, this.c, this.d);
        }
    }

    class b implements ISysEventListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f743a;
        final /* synthetic */ IApp b;
        final /* synthetic */ IWebview c;
        final /* synthetic */ String d;
        final /* synthetic */ String e;

        b(NavigatorUIFeatureImpl navigatorUIFeatureImpl, int i, IApp iApp, IWebview iWebview, String str, String str2) {
            this.f743a = i;
            this.b = iApp;
            this.c = iWebview;
            this.d = str;
            this.e = str2;
        }

        @Override // io.dcloud.common.DHInterface.ISysEventListener
        public boolean onExecute(ISysEventListener.SysEventType sysEventType, Object obj) {
            Object[] objArr = (Object[]) obj;
            int iIntValue = ((Integer) objArr[0]).intValue();
            int[] iArr = (int[]) objArr[2];
            ISysEventListener.SysEventType sysEventType2 = ISysEventListener.SysEventType.onRequestPermissionsResult;
            if (sysEventType2 == sysEventType && iIntValue == this.f743a) {
                this.b.unregisterSysEventListener(this, sysEventType2);
                Deprecated_JSUtil.execCallback(this.c, this.e, StringUtil.format("{result:'%s'}", PermissionUtil.convert5PlusValue(iArr.length > 0 ? iArr[0] : this.c.obtainApp().checkSelfPermission(this.d, this.c.obtainApp().obtainAppName()))), JSUtil.OK, true, false);
            }
            return true;
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f744a;
        final /* synthetic */ String b;
        final /* synthetic */ IWebview c;
        final /* synthetic */ String d;

        c(NavigatorUIFeatureImpl navigatorUIFeatureImpl, Context context, String str, IWebview iWebview, String str2) {
            this.f744a = context;
            this.b = str;
            this.c = iWebview;
            this.d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                JSUtil.execCallback(this.c, this.d, new JSONObject(StringUtil.format(DOMException.JSON_SHORTCUT_SUCCESS_INFO, ShortCutUtil.SHORT_CUT_EXISTING.equals(ShortCutUtil.requestShortCutForCommit(this.f744a, this.b)) ? AbsoluteConst.TRUE : AbsoluteConst.FALSE)), JSUtil.OK, false);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    private void b(Context context, IWebview iWebview, String str, String str2) {
        String strRequestShortCut = ShortCutUtil.requestShortCut(context, str2);
        try {
            JSUtil.execCallback(iWebview, str, new JSONObject(ShortCutUtil.SHORT_CUT_EXISTING.equals(strRequestShortCut) ? StringUtil.format(DOMException.JSON_SHORTCUT_RESULT_INFO, "existing") : ShortCutUtil.SHORT_CUT_NONE.equals(strRequestShortCut) ? StringUtil.format(DOMException.JSON_SHORTCUT_RESULT_INFO, "none") : ShortCutUtil.NOPERMISSIONS.equals(strRequestShortCut) ? StringUtil.format(DOMException.JSON_SHORTCUT_RESULT_INFO, ShortCutUtil.NOPERMISSIONS) : StringUtil.format(DOMException.JSON_SHORTCUT_RESULT_INFO, "unknown")), JSUtil.OK, false);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01bf  */
    @Override // io.dcloud.common.DHInterface.IFeature
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String execute(io.dcloud.common.DHInterface.IWebview r17, java.lang.String r18, java.lang.String[] r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1682
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.execute(io.dcloud.common.DHInterface.IWebview, java.lang.String, java.lang.String[]):java.lang.String");
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        this.f741a = absMgr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a1 A[Catch: Exception -> 0x00d5, TRY_LEAVE, TryCatch #4 {Exception -> 0x00d5, blocks: (B:28:0x009b, B:30:0x00a1), top: B:59:0x009b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00db A[PHI: r7
      0x00db: PHI (r7v5 android.graphics.Bitmap) = (r7v4 android.graphics.Bitmap), (r7v9 android.graphics.Bitmap), (r7v9 android.graphics.Bitmap) binds: [B:47:0x00d8, B:39:0x00bf, B:40:0x00c1] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(io.dcloud.common.DHInterface.IWebview r17, java.lang.String[] r18, io.dcloud.common.DHInterface.IApp r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.ui.navigator.NavigatorUIFeatureImpl.a(io.dcloud.common.DHInterface.IWebview, java.lang.String[], io.dcloud.common.DHInterface.IApp, java.lang.String):boolean");
    }

    private String b(IApp iApp) {
        Intent intentObtainWebAppIntent = iApp.obtainWebAppIntent();
        return intentObtainWebAppIntent != null ? intentObtainWebAppIntent.getStringExtra(IntentConst.WEBAPP_ACTIVITY_APPICON) : "";
    }

    private void a(Context context, IWebview iWebview, String str, String str2) {
        MessageHandler.postDelayed(new c(this, context, str2, iWebview, str), 500L);
    }

    private Bitmap a(IApp iApp) {
        String strB = b(iApp);
        if (strB != null) {
            return BitmapFactory.decodeFile(strB);
        }
        return null;
    }

    private void a(IWebview iWebview, String str, Bitmap bitmap, String str2, String str3, JSONObject jSONObject, boolean z, boolean z2, String str4) {
        Intent intentObtainWebAppIntent;
        IApp iAppObtainApp = iWebview.obtainApp();
        String strObtainAppId = iAppObtainApp.obtainAppId();
        Activity activity = iWebview.getActivity();
        SharedPreferences orCreateBundle = SP.getOrCreateBundle(iWebview.getContext(), "pdr");
        String strObtainAppName = PdrUtil.isEmpty(str) ? iAppObtainApp.obtainAppName() : str;
        boolean z3 = orCreateBundle.getBoolean(strObtainAppId + SP.K_CREATED_SHORTCUT, false);
        String stringExtra = (!TextUtils.isEmpty(str2) || (intentObtainWebAppIntent = iWebview.obtainApp().obtainWebAppIntent()) == null) ? str2 : intentObtainWebAppIntent.getStringExtra(IntentConst.WEBAPP_SHORT_CUT_CLASS_NAME);
        if (ShortcutCreateUtil.isDuplicateLauncher(activity)) {
            if (ShortCutUtil.createShortcutToDeskTop(activity, strObtainAppId, strObtainAppName, bitmap, stringExtra, jSONObject, true)) {
                if (!TextUtils.isEmpty(str3) && ShortcutCreateUtil.needToast(activity)) {
                    ToastCompat.makeText(activity.getApplicationContext(), (CharSequence) str3, 1).show();
                }
                ShortCutUtil.commitShortcut(iAppObtainApp, 11, 1);
            }
        } else if (!ShortCutUtil.hasShortcut(activity, strObtainAppName)) {
            if (z) {
                if (!TextUtils.isEmpty(str3) && ShortcutCreateUtil.needToast(activity)) {
                    ToastCompat.makeText(activity.getApplicationContext(), (CharSequence) str3, 1).show();
                }
                ShortCutUtil.createShortcutToDeskTop(activity, strObtainAppId, strObtainAppName, bitmap, stringExtra, jSONObject, true);
                ShortCutUtil.commitShortcut(iAppObtainApp, 11, 1);
            } else {
                if (z3) {
                    return;
                }
                if (ShortCutUtil.createShortcutToDeskTop(activity, strObtainAppId, strObtainAppName, bitmap, stringExtra, jSONObject, true)) {
                    if (!TextUtils.isEmpty(str3) && ShortcutCreateUtil.needToast(activity)) {
                        ToastCompat.makeText(activity.getApplicationContext(), (CharSequence) str3, 1).show();
                    }
                    ShortCutUtil.commitShortcut(iAppObtainApp, 11, 1);
                }
            }
        }
        a(iWebview.getContext(), iWebview, str4, strObtainAppName);
    }
}
