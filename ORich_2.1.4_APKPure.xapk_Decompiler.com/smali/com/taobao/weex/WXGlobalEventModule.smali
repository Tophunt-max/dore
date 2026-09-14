###### Class com.taobao.weex.WXGlobalEventModule (com.taobao.weex.WXGlobalEventModule)
.class public Lcom/taobao/weex/WXGlobalEventModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXGlobalEventModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/common/WXModule;->addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/WXGlobalEventModule;->addEventListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeEventListener(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/taobao/weex/WXGlobalEventModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->removeEventListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
