###### Class com.taobao.weex.common.WXJSExceptionInfo (com.taobao.weex.common.WXJSExceptionInfo)
.class public Lcom/taobao/weex/common/WXJSExceptionInfo;
.super Ljava/lang/Object;
.source "WXJSExceptionInfo.java"


# instance fields
.field private mBundleUrl:Ljava/lang/String;

.field private mErrCode:Lcom/taobao/weex/common/WXErrorCode;

.field private mException:Ljava/lang/String;

.field private mExtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFunction:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;

.field private mJsFrameworkVersion:Ljava/lang/String;

.field private mWeexVersion:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mWeexVersion:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mJsFrameworkVersion:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    .line 70
    iput-object p4, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->time:J

    return-void
.end method


# virtual methods
.method public getBundleUrl()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Lcom/taobao/weex/common/WXErrorCode;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFrameworkVersion()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mJsFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWeexVersion()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mWeexVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(Lcom/taobao/weex/common/WXErrorCode;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " errCode:"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    if-nez v1, :cond_11

    const-string v1, "unSetErrorCode"

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",function:"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string v1, "unSetFuncName"

    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",exception:"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    if-nez v1, :cond_31

    const-string v1, "unSetException"

    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
