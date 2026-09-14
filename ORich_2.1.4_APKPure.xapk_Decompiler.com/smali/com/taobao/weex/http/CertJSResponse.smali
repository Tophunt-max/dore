###### Class com.taobao.weex.http.CertJSResponse (com.taobao.weex.http.CertJSResponse)
.class public Lcom/taobao/weex/http/CertJSResponse;
.super Ljava/lang/Object;
.source "CertJSResponse.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# instance fields
.field public code:I

.field public message:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainFail(ILjava/lang/String;)Lcom/taobao/weex/http/CertJSResponse;
    .registers 4

    .line 41
    new-instance v0, Lcom/taobao/weex/http/CertJSResponse;

    invoke-direct {v0}, Lcom/taobao/weex/http/CertJSResponse;-><init>()V

    const-string v1, "fail"

    .line 42
    iput-object v1, v0, Lcom/taobao/weex/http/CertJSResponse;->type:Ljava/lang/String;

    .line 43
    iput p0, v0, Lcom/taobao/weex/http/CertJSResponse;->code:I

    .line 44
    iput-object p1, v0, Lcom/taobao/weex/http/CertJSResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public static obtainSuccess()Lcom/taobao/weex/http/CertJSResponse;
    .registers 2

    .line 31
    new-instance v0, Lcom/taobao/weex/http/CertJSResponse;

    invoke-direct {v0}, Lcom/taobao/weex/http/CertJSResponse;-><init>()V

    const-string v1, "success"

    .line 32
    iput-object v1, v0, Lcom/taobao/weex/http/CertJSResponse;->type:Ljava/lang/String;

    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/taobao/weex/http/CertJSResponse;->code:I

    const-string v1, ""

    .line 34
    iput-object v1, v0, Lcom/taobao/weex/http/CertJSResponse;->message:Ljava/lang/String;

    return-object v0
.end method
