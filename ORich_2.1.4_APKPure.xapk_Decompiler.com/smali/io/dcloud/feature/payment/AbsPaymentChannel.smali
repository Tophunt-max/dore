###### Class io.dcloud.feature.payment.AbsPaymentChannel (io.dcloud.feature.payment.AbsPaymentChannel)
.class public abstract Lio/dcloud/feature/payment/AbsPaymentChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# instance fields
.field private a:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected featureName:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected final mListener:Lio/dcloud/feature/payment/IPaymentListener;

.field protected mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field protected name:Ljava/lang/String;

.field protected serviceReady:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lio/dcloud/feature/payment/AbsPaymentChannel$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/payment/AbsPaymentChannel$a;-><init>(Lio/dcloud/feature/payment/AbsPaymentChannel;)V

    iput-object v0, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->mListener:Lio/dcloud/feature/payment/IPaymentListener;

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/payment/AbsPaymentChannel;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    iput-object p2, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/feature/payment/AbsPaymentChannel;->request(Ljava/lang/String;)V

    return-void
.end method

.method public getFullDescription()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected abstract installService()V
.end method

.method protected abstract request(Ljava/lang/String;)V
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_1b

    const-string v1, "description"

    .line 4
    :try_start_e
    iget-object v2, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_1b

    const-string v1, "serviceReady"

    .line 5
    :try_start_15
    iget-boolean v2, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->serviceReady:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1f
    return-object v0
.end method

.method public updateWebview(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

###### Class io.dcloud.feature.payment.AbsPaymentChannel.a (io.dcloud.feature.payment.AbsPaymentChannel$a)
.class Lio/dcloud/feature/payment/AbsPaymentChannel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/payment/IPaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/payment/AbsPaymentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/payment/AbsPaymentChannel;


# direct methods
.method constructor <init>(Lio/dcloud/feature/payment/AbsPaymentChannel;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel$a;->a:Lio/dcloud/feature/payment/AbsPaymentChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 9

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/payment/AbsPaymentChannel$a;->a:Lio/dcloud/feature/payment/AbsPaymentChannel;

    iget-object v0, p1, Lio/dcloud/feature/payment/AbsPaymentChannel;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p1}, Lio/dcloud/feature/payment/AbsPaymentChannel;->a(Lio/dcloud/feature/payment/AbsPaymentChannel;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onSuccess(Lio/dcloud/feature/payment/PaymentResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/payment/AbsPaymentChannel$a;->a:Lio/dcloud/feature/payment/AbsPaymentChannel;

    iget-object v1, v0, Lio/dcloud/feature/payment/AbsPaymentChannel;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {v0}, Lio/dcloud/feature/payment/AbsPaymentChannel;->a(Lio/dcloud/feature/payment/AbsPaymentChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/payment/PaymentResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    invoke-static {v1, v0, p1, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    return-void
.end method
