package io.dcloud.feature.gg.dcloud;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import io.dcloud.common.adapter.ui.webview.WebViewFactory;
import io.dcloud.common.adapter.util.DeviceInfo;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class ADWebView {
    ViewGroup mRootView;
    WebView mWebView;

    public ADWebView(Context context) {
        if (context instanceof Activity) {
            this.mRootView = (ViewGroup) ((Activity) context).getWindow().getDecorView();
        } else {
            this.mRootView = (ViewGroup) ((Activity) DeviceInfo.sApplicationContext).getWindow().getDecorView();
        }
        WebView webView = new WebView(context);
        this.mWebView = webView;
        webView.setVisibility(4);
        this.mRootView.addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheMaxSize(8388608L);
        settings.setAppCachePath(context.getApplicationContext().getCacheDir().getAbsolutePath());
        WebViewFactory.setFileAccess(settings, true);
        settings.setAppCacheEnabled(true);
        settings.setSavePassword(false);
        this.mWebView.removeJavascriptInterface("searchBoxJavaBridge_");
        this.mWebView.removeJavascriptInterface("accessibilityTraversal");
        this.mWebView.removeJavascriptInterface("accessibility");
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: io.dcloud.feature.gg.dcloud.ADWebView.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, final String str) {
                super.onPageFinished(webView2, str);
                ADHandler.log("shutao", "onPageFinished---url=" + str);
                ADWebView.this.mRootView.postDelayed(new Runnable() { // from class: io.dcloud.feature.gg.dcloud.ADWebView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ADWebView.this.mWebView == null) {
                            return;
                        }
                        ADHandler.log("shutao", "onPageFinished-remove--url=" + str);
                        ADWebView aDWebView = ADWebView.this;
                        ViewGroup viewGroup = aDWebView.mRootView;
                        if (viewGroup != null) {
                            viewGroup.removeView(aDWebView.mWebView);
                            ADWebView.this.mWebView = null;
                        }
                    }
                }, (long) ADSim.getRandomInt(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT));
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedSslError(WebView webView2, final SslErrorHandler sslErrorHandler, final SslError sslError) {
                if (sslErrorHandler != null) {
                    String str = BaseInfo.untrustedca;
                    if (PdrUtil.isEquals(str, "refuse")) {
                        sslErrorHandler.cancel();
                        return;
                    }
                    if (!PdrUtil.isEquals(str, "warning")) {
                        WebViewFactory.setSslHandlerState(sslErrorHandler, 1);
                        return;
                    }
                    Context context2 = webView2.getContext();
                    final AlertDialog alertDialogCreate = new AlertDialog.Builder(context2).create();
                    alertDialogCreate.setIcon(R.drawable.ic_secure);
                    alertDialogCreate.setTitle("安全警告");
                    alertDialogCreate.setCanceledOnTouchOutside(false);
                    String url = Build.VERSION.SDK_INT >= 14 ? sslError.getUrl() : null;
                    String str2 = "此站点安全证书存在问题,是否继续?";
                    if (!TextUtils.isEmpty(url)) {
                        str2 = url + "\n此站点安全证书存在问题,是否继续?";
                    }
                    alertDialogCreate.setMessage(str2);
                    DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: io.dcloud.feature.gg.dcloud.ADWebView.1.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            if (i == -2) {
                                alertDialogCreate.cancel();
                                alertDialogCreate.dismiss();
                            } else if (i == -3) {
                                sslError.getCertificate().getIssuedBy();
                            } else if (i == -1) {
                                WebViewFactory.setSslHandlerState(sslErrorHandler, 1);
                                alertDialogCreate.dismiss();
                            }
                        }
                    };
                    alertDialogCreate.setButton(-2, context2.getResources().getString(R.string.cancel), onClickListener);
                    alertDialogCreate.setButton(-1, context2.getResources().getString(R.string.ok), onClickListener);
                    alertDialogCreate.show();
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                return TextUtils.isEmpty(str) || !str.toLowerCase().startsWith("http");
            }
        });
        removeUnSafeJavascriptInterface();
        this.mWebView.setDownloadListener(new DownloadListener() { // from class: io.dcloud.feature.gg.dcloud.ADWebView.2
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            }
        });
    }

    private void removeUnSafeJavascriptInterface() {
        try {
            int i = Build.VERSION.SDK_INT;
            if (i < 11 || i >= 17) {
                return;
            }
            Method method = getClass().getMethod("removeJavascriptInterface", String.class);
            WebView webView = this.mWebView;
            String[] strArr = {"searchBoxJavaBridge_", "accessibility", "ccessibilityaversal"};
            for (int i2 = 0; i2 < 3; i2++) {
                method.invoke(webView, strArr[i2]);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void loadUrl(String str) {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }
}
