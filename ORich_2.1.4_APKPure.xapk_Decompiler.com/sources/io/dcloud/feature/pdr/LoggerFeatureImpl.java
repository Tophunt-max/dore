package io.dcloud.feature.pdr;

import com.taobao.weex.common.WXConfig;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.io.DHFile;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class LoggerFeatureImpl implements IFeature {
    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public String execute(IWebview iWebview, String str, String[] strArr) throws Throwable {
        if (!str.equals(WXConfig.logLevel)) {
            if (!str.equals("clear")) {
                return null;
            }
            try {
                DHFile.deleteFile(iWebview.obtainFrameView().obtainApp().obtainAppLog());
                return null;
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
        b.a(iWebview.obtainFrameView().obtainApp().obtainAppLog());
        if (strArr[0].equals("LOG")) {
            b.d("LOG", strArr[1]);
            return null;
        }
        if (strArr[0].equals("ERROR")) {
            b.e("ERROR", strArr[1]);
            return null;
        }
        if (strArr[0].equals("WARN")) {
            b.a("WARN", strArr[1]);
            return null;
        }
        if (strArr[0].equals("INFO")) {
            b.i("INFO", strArr[1]);
            return null;
        }
        strArr[0].equals("ASSERT");
        return null;
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
    }
}
