package io.dcloud.invocation;

import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.feature.internal.sdk.SDK;

/* JADX INFO: loaded from: classes2.dex */
public class Invocation implements IFeature {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f799a;

    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
        this.f799a.a(str);
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public String execute(IWebview iWebview, String str, String[] strArr) {
        return (!SDK.isUniMPSDK() || SDK.isNJS) ? this.f799a.a(iWebview, str, strArr) : "";
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        this.f799a = new a(absMgr);
    }
}
