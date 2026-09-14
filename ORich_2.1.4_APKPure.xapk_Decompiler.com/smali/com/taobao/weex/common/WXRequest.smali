###### Class com.taobao.weex.common.WXRequest (com.taobao.weex.common.WXRequest)
.class public Lcom/taobao/weex/common/WXRequest;
.super Ljava/lang/Object;
.source "WXRequest.java"


# static fields
.field public static final DEFAULT_TIMEOUT_MS:I = 0xea60


# instance fields
.field public body:Ljava/lang/String;

.field public instanceId:Ljava/lang/String;

.field public isFirstIpv4:Z

.field public method:Ljava/lang/String;

.field public paramMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sslVerify:Z

.field public timeoutMs:I

.field public tls:Lcom/alibaba/fastjson/JSONObject;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xea60

    .line 49
    iput v0, p0, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    .line 65
    iput-boolean v0, p0, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
