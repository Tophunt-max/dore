package io.dcloud.feature.uniapp;

import android.content.Context;
import com.taobao.weex.WXSDKInstance;

/* JADX INFO: loaded from: classes2.dex */
public class UniSDKInstance extends WXSDKInstance {
    private boolean isCompilerWithUniapp;

    public UniSDKInstance(Context context) {
        super(context);
        this.isCompilerWithUniapp = true;
    }

    public UniSDKInstance() {
        this.isCompilerWithUniapp = true;
    }

    public UniSDKInstance(Context context, String str) {
        super(context, str);
        this.isCompilerWithUniapp = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.taobao.weex.WXSDKInstance
    public UniSDKInstance newNestedInstance() {
        return new UniSDKInstance(this.mContext);
    }

    public void setCompilerWithUniapp(boolean z) {
        this.isCompilerWithUniapp = z;
    }

    @Override // com.taobao.weex.WXSDKInstance, io.dcloud.feature.uniapp.AbsSDKInstance
    public boolean isCompilerWithUniapp() {
        return this.isCompilerWithUniapp;
    }
}
