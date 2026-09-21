###### Class com.taobao.weex.bridge.SimpleJSCallback (com.taobao.weex.bridge.SimpleJSCallback)
.class public Lcom/taobao/weex/bridge/SimpleJSCallback;
.super Ljava/lang/Object;
.source "SimpleJSCallback.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/bridge/UniJSCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;
    }
.end annotation


# instance fields
.field mCallbackId:Ljava/lang/String;

.field mInstanceId:Ljava/lang/String;

.field private mInvokerCallback:Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mCallbackId:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mInstanceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallbackId()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .registers 6

    .line 53
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mCallbackId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 54
    iget-object p1, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mInvokerCallback:Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;

    if-eqz p1, :cond_13

    .line 55
    invoke-interface {p1}, Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;->onInvokeSuccess()V

    :cond_13
    return-void
.end method

.method public invokeAndKeepAlive(Ljava/lang/Object;)V
    .registers 6

    .line 61
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mCallbackId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInvokerCallback(Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/taobao/weex/bridge/SimpleJSCallback;->mInvokerCallback:Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;

    return-void
.end method

###### Class com.taobao.weex.bridge.SimpleJSCallback.InvokerCallback (com.taobao.weex.bridge.SimpleJSCallback$InvokerCallback)
.class interface abstract Lcom/taobao/weex/bridge/SimpleJSCallback$InvokerCallback;
.super Ljava/lang/Object;
.source "SimpleJSCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/bridge/SimpleJSCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "InvokerCallback"
.end annotation


# virtual methods
.method public abstract onInvokeSuccess()V
.end method
