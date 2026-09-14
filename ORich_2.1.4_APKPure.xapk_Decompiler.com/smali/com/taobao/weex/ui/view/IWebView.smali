###### Class com.taobao.weex.ui.view.IWebView (com.taobao.weex.ui.view.IWebView)
.class public interface abstract Lcom/taobao/weex/ui/view/IWebView;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;,
        Lcom/taobao/weex/ui/view/IWebView$OnPageListener;,
        Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract goBack()V
.end method

.method public abstract goForward()V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract postMessage(Ljava/lang/Object;)V
.end method

.method public abstract reload()V
.end method

.method public abstract setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
.end method

.method public abstract setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
.end method

.method public abstract setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
.end method

.method public abstract setShowLoading(Z)V
.end method

###### Class com.taobao.weex.ui.view.IWebView.OnErrorListener (com.taobao.weex.ui.view.IWebView$OnErrorListener)
.class public interface abstract Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/Object;)V
.end method

###### Class com.taobao.weex.ui.view.IWebView.OnMessageListener (com.taobao.weex.ui.view.IWebView$OnMessageListener)
.class public interface abstract Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMessageListener"
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.taobao.weex.ui.view.IWebView.OnPageListener (com.taobao.weex.ui.view.IWebView$OnPageListener)
.class public interface abstract Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/IWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageListener"
.end annotation


# virtual methods
.method public abstract onPageFinish(Ljava/lang/String;ZZ)V
.end method

.method public abstract onPageStart(Ljava/lang/String;)V
.end method

.method public abstract onReceivedTitle(Ljava/lang/String;)V
.end method
