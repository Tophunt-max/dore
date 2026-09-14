###### Class com.taobao.weex.adapter.IWXHttpAdapter (com.taobao.weex.adapter.IWXHttpAdapter)
.class public interface abstract Lcom/taobao/weex/adapter/IWXHttpAdapter;
.super Ljava/lang/Object;
.source "IWXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
    }
.end annotation


# virtual methods
.method public abstract sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end method

###### Class com.taobao.weex.adapter.IWXHttpAdapter.OnHttpListener (com.taobao.weex.adapter.IWXHttpAdapter$OnHttpListener)
.class public interface abstract Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;
.super Ljava/lang/Object;
.source "IWXHttpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/adapter/IWXHttpAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHttpListener"
.end annotation


# virtual methods
.method public abstract onHeadersReceived(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
.end method

.method public abstract onHttpResponseProgress(I)V
.end method

.method public abstract onHttpStart()V
.end method

.method public abstract onHttpUploadProgress(I)V
.end method
