package io.dcloud.feature.unipush;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes2.dex */
public class PrivacyActivity extends Activity {
    private WebView webView;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.webView = new WebView(this);
        this.webView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        setContentView(this.webView);
        this.webView.setWebViewClient(new WebViewClient() { // from class: io.dcloud.feature.unipush.PrivacyActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                webView.loadUrl(str);
                return true;
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: io.dcloud.feature.unipush.PrivacyActivity.2
            @Override // android.webkit.WebChromeClient
            public void onReceivedTitle(WebView webView, String str) {
                PrivacyActivity.this.setTitle(str);
            }
        });
        this.webView.loadUrl(getString(R.string.unipush_privacy_detail_url));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        WebView webView = this.webView;
        if (webView != null && webView.canGoBack()) {
            this.webView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
