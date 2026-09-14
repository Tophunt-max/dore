package io.dcloud.js.geolocation;

import android.text.TextUtils;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.FeatureMessageDispatcher;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.util.PermissionUtil;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.ReflectUtils;

/* JADX INFO: loaded from: classes2.dex */
public class GeolocationFeatureImpl implements IFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private io.dcloud.js.geolocation.a f838a;
    private boolean b = false;

    class a extends PermissionUtil.StreamPermissionRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ IWebview f839a;
        final /* synthetic */ String b;
        final /* synthetic */ String[] c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(IApp iApp, IWebview iWebview, String str, String[] strArr) {
            super(iApp);
            this.f839a = iWebview;
            this.b = str;
            this.c = strArr;
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onDenied(String str) {
            Deprecated_JSUtil.execCallback(this.f839a, this.c[0], DOMException.toJSON(22, DOMException.MSG_GEOLOCATION_PERMISSION_ERROR), JSUtil.ERROR, true, false);
        }

        @Override // io.dcloud.common.adapter.util.PermissionUtil.Request
        public void onGranted(String str) {
            if (!GeolocationFeatureImpl.this.b) {
                GeolocationFeatureImpl.this.b = true;
                GeolocationFeatureImpl.this.f838a.a(this.f839a, this.b, this.c);
            }
            int i = ReflectUtils.getApplicationContext().getApplicationInfo().targetSdkVersion;
        }
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f838a.a();
        }
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public String execute(IWebview iWebview, String str, String[] strArr) {
        if (FeatureMessageDispatcher.contains("record_address")) {
            this.f838a.a(iWebview, str, strArr);
            return null;
        }
        this.b = false;
        PermissionUtil.usePermission(iWebview.getActivity(), IFeature.F_GEOLOCATION, "LOCATION", 2, new a(iWebview.obtainApp(), iWebview, str, strArr));
        return null;
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        this.f838a = new io.dcloud.js.geolocation.a(absMgr);
    }
}
