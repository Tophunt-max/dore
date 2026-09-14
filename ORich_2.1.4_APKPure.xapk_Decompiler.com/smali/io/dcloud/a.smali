###### Class io.dcloud.a (io.dcloud.a)
.class public Lio/dcloud/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 28
    invoke-static {}, Lio/dcloud/a;->a()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const-string p0, "onCreateAdSplash"

    .line 29
    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a()Lio/dcloud/common/DHInterface/IWaiter;
    .registers 5

    .line 19
    invoke-static {}, Lio/dcloud/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 21
    :try_start_7
    sget-object v0, Lio/dcloud/a;->a:Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_1f

    const-string v2, "self"

    const/4 v3, 0x0

    :try_start_c
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    instance-of v2, v0, Lio/dcloud/common/DHInterface/IWaiter;

    if-eqz v2, :cond_23

    .line 24
    check-cast v0, Lio/dcloud/common/DHInterface/IWaiter;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 8
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 13
    :cond_8
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/dcloud/g/b/b;->c()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "~l)gj"

    invoke-interface {v2, v4, v3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->decryptStr(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    return-object v1

    .line 17
    :cond_24
    invoke-static {}, Lio/dcloud/a;->a()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p3, v1, p0

    .line 18
    invoke-interface {v0, p2, v1}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/a;->a()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "onAppCreate"

    .line 3
    invoke-interface {v0, v1, p0}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .line 4
    invoke-static {}, Lio/dcloud/a;->a()Lio/dcloud/common/DHInterface/IWaiter;

    move-result-object v0

    .line 6
    sput-object p0, Lio/dcloud/common/adapter/util/DeviceInfo;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    const-string v1, "onAppAttachBaseContext"

    .line 7
    invoke-interface {v0, v1, p0}, Lio/dcloud/common/DHInterface/IWaiter;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public static b()Z
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/a;->a:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    const-string v0, "io.dcloud.feature.gg.AdFeatureImplMgr"

    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/dcloud/a;->a:Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    nop

    .line 8
    :goto_10
    sget-object v0, Lio/dcloud/a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method
