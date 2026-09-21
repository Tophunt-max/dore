###### Class io.dcloud.feature.gg.dcloud.ADBaseHandler (io.dcloud.feature.gg.dcloud.ADBaseHandler)
.class public abstract Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;
    }
.end annotation


# instance fields
.field public final AD_REQUESTING:I

.field public final AD_REQUEST_FAIL:I

.field public final AD_REQUEST_SUCCESS:I

.field public AD_TAD:Ljava/lang/String;

.field protected currentStatus:I

.field private errorJson:Lorg/json/JSONObject;

.field protected errorMsg:Ljava/lang/String;

.field private isBest:Z

.field private isShow:Z

.field protected listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

.field protected mContext:Landroid/content/Context;

.field private source:I

.field private startLoadTime:J

.field private totalLoadTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_REQUESTING:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_REQUEST_SUCCESS:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_REQUEST_FAIL:I

    .line 5
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow:Z

    .line 9
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isBest:Z

    .line 25
    iput-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRequestListener(Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    if-nez v0, :cond_6

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    :cond_6
    return-void
.end method

.method public clearListener()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    return-void
.end method

.method public endLoadAds()V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->startLoadTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->totalLoadTime:J

    return-void
.end method

.method public execFail(ILjava/lang/String;)V
    .registers 5

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    const-string v1, "gdt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x1770

    if-ne p1, v0, :cond_2d

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    goto :goto_33

    .line 5
    :cond_2d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    :goto_33
    const/16 v0, -0x270f

    if-eq p1, v0, :cond_4c

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorJson:Lorg/json/JSONObject;

    :try_start_3e
    const-string v1, "code"

    .line 10
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorJson:Lorg/json/JSONObject;

    const-string v0, "msg"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_4c

    :catch_4b
    nop

    .line 15
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    if-eqz p1, :cond_53

    .line 16
    invoke-interface {p1, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    :cond_53
    return-void
.end method

.method public execSuccess()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->listeners:Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;

    if-eqz v0, :cond_a

    .line 3
    invoke-interface {v0, p0}, Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;->success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V

    :cond_a
    return-void
.end method

.method public getAdRequestStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lorg/json/JSONObject;
    .registers 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "provider"

    .line 3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->AD_TAD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_2b

    const-string v1, "ret"

    .line 4
    :try_start_e
    iget v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    :cond_14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    if-ne v1, v3, :cond_24

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorJson:Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1d} :catch_2b

    if-eqz v1, :cond_24

    const-string v2, "errMsg"

    .line 6
    :try_start_21
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_24} :catch_2b

    :cond_24
    const-string v1, "time"

    .line 8
    :try_start_26
    iget-wide v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2b} :catch_2b

    :catch_2b
    return-object v0
.end method

.method public getSource()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->source:I

    return v0
.end method

.method public isBest()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isBest:Z

    return v0
.end method

.method public isHasContext()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isShow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow:Z

    return v0
.end method

.method public abstract onBack()V
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onCreateSplash(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)Landroid/view/View;
.end method

.method public abstract onSplashClose(Landroid/view/View;)Z
.end method

.method public pullAds(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->currentStatus:I

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public pullAds(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;)V
    .registers 4

    return-void
.end method

.method public setBest()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isBest:Z

    return-void
.end method

.method public setShowed()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->isShow:Z

    return-void
.end method

.method public setSource(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->source:I

    return-void
.end method

.method public startLoadAds()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseHandler;->startLoadTime:J

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADBaseHandler.OnAdsRequestListener (io.dcloud.feature.gg.dcloud.ADBaseHandler$OnAdsRequestListener)
.class public interface abstract Lio/dcloud/feature/gg/dcloud/ADBaseHandler$OnAdsRequestListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/ADBaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAdsRequestListener"
.end annotation


# virtual methods
.method public abstract fail(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
.end method

.method public abstract success(Lio/dcloud/feature/gg/dcloud/ADBaseHandler;)V
.end method
