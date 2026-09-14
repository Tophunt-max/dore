###### Class io.dcloud.feature.payment.PaymentFeatureImpl (io.dcloud.feature.payment.PaymentFeatureImpl)
.class public Lio/dcloud/feature/payment/PaymentFeatureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;


# instance fields
.field a:Ljava/lang/String;

.field b:Lio/dcloud/common/DHInterface/AbsMgr;

.field c:Landroid/content/Context;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/payment/AbsPaymentChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)Lio/dcloud/feature/payment/AbsPaymentChannel;
    .registers 5

    .line 32
    iget-object v0, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/payment/AbsPaymentChannel;

    .line 33
    iget-object v2, v1, Lio/dcloud/feature/payment/AbsPaymentChannel;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Lorg/json/JSONArray;
    .registers 5

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 28
    iget-object v1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    .line 30
    iget-object v3, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/payment/AbsPaymentChannel;

    .line 31
    invoke-virtual {v3}, Lio/dcloud/feature/payment/AbsPaymentChannel;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {p1, v0, v2, v1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_63

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    :try_start_2f
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lio/dcloud/feature/payment/AbsPaymentChannel;

    if-eqz v3, :cond_1d

    .line 10
    check-cast v2, Lio/dcloud/feature/payment/AbsPaymentChannel;

    .line 11
    iget-object v3, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lio/dcloud/feature/payment/AbsPaymentChannel;->init(Landroid/content/Context;)V

    .line 12
    iput-object v1, v2, Lio/dcloud/feature/payment/AbsPaymentChannel;->name:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a:Ljava/lang/String;

    iput-object v3, v2, Lio/dcloud/feature/payment/AbsPaymentChannel;->featureName:Ljava/lang/String;

    .line 14
    iget-object v3, v2, Lio/dcloud/feature/payment/AbsPaymentChannel;->id:Ljava/lang/String;

    if-nez v3, :cond_4e

    .line 15
    iput-object v1, v2, Lio/dcloud/feature/payment/AbsPaymentChannel;->id:Ljava/lang/String;

    .line 17
    :cond_4e
    iget-object v1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/InstantiationException; {:try_start_2f .. :try_end_53} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_53} :catch_59
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_53} :catch_54

    goto :goto_1d

    :catch_54
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1d

    :catch_59
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1d

    :catch_5e
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1d

    :cond_63
    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "getChannels"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 5
    :cond_14
    invoke-direct {p0}, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a()Lorg/json/JSONArray;

    move-result-object p2

    .line 6
    aget-object p3, p3, v1

    .line 7
    sget v0, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, v0, v1}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;IZ)V

    goto :goto_8c

    :cond_20
    const-string v0, "request"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 9
    aget-object p2, p3, v1

    .line 10
    invoke-direct {p0, p2}, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a(Ljava/lang/String;)Lio/dcloud/feature/payment/AbsPaymentChannel;

    move-result-object p2

    const/4 v0, 0x1

    .line 11
    aget-object v2, p3, v0

    const/4 v3, 0x2

    .line 12
    aget-object v5, p3, v3

    if-eqz p2, :cond_58

    .line 14
    iget-object p3, p2, Lio/dcloud/feature/payment/AbsPaymentChannel;->id:Ljava/lang/String;

    const-string v0, "wxpay"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 15
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p3

    .line 16
    instance-of v0, p3, Lio/dcloud/application/DCloudApplication;

    if-eqz v0, :cond_51

    .line 17
    check-cast p3, Lio/dcloud/application/DCloudApplication;

    invoke-virtual {p3}, Lio/dcloud/application/DCloudApplication;->stopB2FOnce()V

    .line 20
    :cond_51
    invoke-virtual {p2, p1}, Lio/dcloud/feature/payment/AbsPaymentChannel;->updateWebview(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 21
    invoke-virtual {p2, v2, v5}, Lio/dcloud/feature/payment/AbsPaymentChannel;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c

    :cond_58
    new-array p2, v3, [Ljava/lang/Object;

    const p3, 0xf239

    .line 23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "not found channel"

    aput-object p3, p2, v0

    const-string p3, "{code:%d,message:\'%s\'}"

    invoke-static {p3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 24
    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_8c

    :cond_76
    const-string v0, "installService"

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8c

    .line 27
    aget-object p2, p3, v1

    .line 28
    invoke-direct {p0, p2}, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a(Ljava/lang/String;)Lio/dcloud/feature/payment/AbsPaymentChannel;

    move-result-object p2

    if-eqz p2, :cond_8c

    .line 30
    invoke-virtual {p2, p1}, Lio/dcloud/feature/payment/AbsPaymentChannel;->updateWebview(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 31
    invoke-virtual {p2}, Lio/dcloud/feature/payment/AbsPaymentChannel;->installService()V

    :cond_8c
    :goto_8c
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->a:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 3
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->c:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/payment/PaymentFeatureImpl;->d:Ljava/util/ArrayList;

    return-void
.end method
