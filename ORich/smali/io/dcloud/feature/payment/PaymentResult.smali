###### Class io.dcloud.feature.payment.PaymentResult (io.dcloud.feature.payment.PaymentResult)
.class public final Lio/dcloud/feature/payment/PaymentResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# instance fields
.field a:Lio/dcloud/feature/payment/AbsPaymentChannel;

.field public description:Ljava/lang/String;

.field public rawDataJson:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public tradeno:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/payment/AbsPaymentChannel;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/payment/PaymentResult;->a:Lio/dcloud/feature/payment/AbsPaymentChannel;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "channel"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/payment/PaymentResult;->a:Lio/dcloud/feature/payment/AbsPaymentChannel;

    invoke-virtual {v2}, Lio/dcloud/feature/payment/AbsPaymentChannel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_45

    const-string v1, "description"

    .line 4
    :try_start_12
    iget-object v2, p0, Lio/dcloud/feature/payment/PaymentResult;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_17} :catch_45

    const-string v1, "url"

    .line 5
    :try_start_19
    iget-object v2, p0, Lio/dcloud/feature/payment/PaymentResult;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_45

    const-string v1, "signature"

    .line 6
    :try_start_20
    iget-object v2, p0, Lio/dcloud/feature/payment/PaymentResult;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_25} :catch_45

    const-string v1, "tradeno"

    .line 7
    :try_start_27
    iget-object v2, p0, Lio/dcloud/feature/payment/PaymentResult;->tradeno:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/payment/PaymentResult;->rawDataJson:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_32} :catch_45

    if-nez v1, :cond_49

    const-string v1, "rawdata"

    .line 9
    :try_start_36
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/dcloud/feature/payment/PaymentResult;->rawDataJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v1

    .line 12
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_49
    :goto_49
    return-object v0
.end method
