###### Class com.taobao.weex.common.WXInstanceWrap (com.taobao.weex.common.WXInstanceWrap)
.class public Lcom/taobao/weex/common/WXInstanceWrap;
.super Lcom/taobao/weex/common/WXModule;
.source "WXInstanceWrap.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/taobao/weex/common/WXInstanceWrap;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_32

    .line 32
    iget-object v0, p0, Lcom/taobao/weex/common/WXInstanceWrap;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p3, :cond_1b

    const-string v1, "downgrade_to_root"

    .line 33
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 34
    :goto_10
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getParentInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 35
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getParentInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    goto :goto_10

    .line 38
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method
