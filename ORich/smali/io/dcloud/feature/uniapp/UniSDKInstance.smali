###### Class io.dcloud.feature.uniapp.UniSDKInstance (io.dcloud.feature.uniapp.UniSDKInstance)
.class public Lio/dcloud/feature/uniapp/UniSDKInstance;
.super Lcom/taobao/weex/WXSDKInstance;
.source "UniSDKInstance.java"


# instance fields
.field private isCompilerWithUniapp:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method


# virtual methods
.method public isCompilerWithUniapp()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return v0
.end method

.method protected bridge synthetic newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lio/dcloud/feature/uniapp/UniSDKInstance;->newNestedInstance()Lio/dcloud/feature/uniapp/UniSDKInstance;

    move-result-object v0

    return-object v0
.end method

.method protected newNestedInstance()Lio/dcloud/feature/uniapp/UniSDKInstance;
    .registers 3

    .line 42
    new-instance v0, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-object v1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setCompilerWithUniapp(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lio/dcloud/feature/uniapp/UniSDKInstance;->isCompilerWithUniapp:Z

    return-void
.end method
