package io.dcloud.feature.sensor;

import android.content.Context;
import com.taobao.weex.common.Constants;
import io.dcloud.common.DHInterface.IEventCallback;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.ui.AdaFrameView;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.PdrUtil;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class d implements IEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<IWebview, c> f697a = new HashMap<>();

    public d(Context context) {
    }

    public String a(IWebview iWebview, String str, String[] strArr) {
        if (str.equals("start")) {
            a(iWebview, strArr[0]);
            ((AdaFrameView) iWebview.obtainFrameView()).addFrameViewListener(this);
            return "";
        }
        if (!str.equals(Constants.Value.STOP)) {
            return "";
        }
        a(iWebview);
        return "";
    }

    @Override // io.dcloud.common.DHInterface.IEventCallback
    public Object onCallBack(String str, Object obj) {
        if ((!PdrUtil.isEquals(str, AbsoluteConst.EVENTS_WINDOW_CLOSE) && !PdrUtil.isEquals(str, AbsoluteConst.EVENTS_CLOSE)) || !(obj instanceof IWebview)) {
            return null;
        }
        IWebview iWebview = (IWebview) obj;
        a(iWebview);
        ((AdaFrameView) iWebview.obtainFrameView()).removeFrameViewListener(this);
        return null;
    }

    private void a(IWebview iWebview, String str) {
        c cVar = this.f697a.get(iWebview);
        if (cVar == null) {
            cVar = new c(iWebview, str);
            this.f697a.put(iWebview, cVar);
        }
        cVar.a();
    }

    private void a(IWebview iWebview) {
        c cVarRemove = this.f697a.remove(iWebview);
        if (cVarRemove != null) {
            cVarRemove.b();
        }
    }
}
