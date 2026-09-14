###### Class com.appsflyer.internal.aj (com.appsflyer.internal.aj)
.class public abstract Lcom/appsflyer/internal/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static AFKeystoreWrapper:Ljava/lang/String; = null

.field private static AFVersionDeclaration:[C = null

.field private static getLevel:J = 0x0L

.field private static onAppOpenAttributionNative:I = 0x1

.field private static onAttributionFailureNative:I

.field private static valueOf:Ljava/lang/String;


# instance fields
.field private final AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

.field public AFInAppEventType:Ljava/lang/String;

.field public final AFLogger$LogLevel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final AppsFlyer2dXConversionCallback:Ljava/lang/String;

.field private final init:Landroid/content/Context;

.field public final values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/appsflyer/internal/aj;->AFKeystoreWrapper()V

    const-string v0, "v2"

    .line 28
    sput-object v0, Lcom/appsflyer/internal/aj;->valueOf:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%sonelink.%s/shortlink-sdk/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/aj;->valueOf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/aj;->AFKeystoreWrapper:Ljava/lang/String;

    sget v0, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/ag;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName:Lcom/appsflyer/internal/ag;

    .line 42
    iput-object p2, p0, Lcom/appsflyer/internal/aj;->init:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/appsflyer/internal/aj;->values:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/aj;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/appsflyer/internal/aj;->AFInAppEventType()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/aj;->AFLogger$LogLevel:Ljava/util/Map;

    return-void
.end method

.method private AFInAppEventType()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_number"

    const-string v2, "6.4.2"

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lcom/appsflyer/internal/aj;->init:Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "appsFlyerCount"

    const/4 v3, 0x0

    .line 3774
    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v1

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "counter"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3b
    const-string v1, "app_version_name"

    .line 124
    iget-object v2, p0, Lcom/appsflyer/internal/aj;->init:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/appsflyer/internal/aj;->init:Landroid/content/Context;

    .line 125
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3b .. :try_end_52} :catch_52

    .line 129
    :catch_52
    iget-object v1, p0, Lcom/appsflyer/internal/aj;->init:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v1, Lcom/appsflyer/internal/an;

    invoke-direct {v1}, Lcom/appsflyer/internal/an;-><init>()V

    invoke-virtual {v1}, Lcom/appsflyer/internal/an;->AFInAppEventType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "platformextension"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget v1, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v3, 0x1

    :goto_79
    if-eqz v3, :cond_7c

    return-object v0

    :cond_7c
    const/4 v1, 0x0

    :try_start_7d
    array-length v1, v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7f

    return-object v0

    :catchall_7f
    move-exception v0

    throw v0
.end method

.method private static AFKeystoreWrapper(ICI)Ljava/lang/String;
    .registers 12

    .line 4096
    new-array v0, p2, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x3f

    if-ge v2, p2, :cond_b

    const/16 v4, 0x3f

    goto :goto_d

    :cond_b
    const/16 v4, 0x4b

    :goto_d
    if-eq v4, v3, :cond_1f

    .line 4107
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    sget p1, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_1f
    sget v3, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    add-int/lit8 v3, v3, 0x19

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    :goto_2f
    if-eq v3, v4, :cond_47

    .line 4101
    sget-object v3, Lcom/appsflyer/internal/aj;->AFVersionDeclaration:[C

    add-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/appsflyer/internal/aj;->getLevel:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_47
    sget-object v3, Lcom/appsflyer/internal/aj;->AFVersionDeclaration:[C

    div-int v4, p0, v2

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v2

    sget-wide v7, Lcom/appsflyer/internal/aj;->getLevel:J

    add-long/2addr v5, v7

    mul-long v3, v3, v5

    int-to-long v5, p1

    div-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v2

    add-int/lit8 v2, v2, 0x23

    goto :goto_4
.end method

.method static AFKeystoreWrapper()V
    .registers 2

    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/appsflyer/internal/aj;->AFVersionDeclaration:[C

    const-wide v0, -0x58459513d684f5b0L    # -2.619003902501689E-117

    sput-wide v0, Lcom/appsflyer/internal/aj;->getLevel:J

    return-void

    nop

    :array_12
    .array-data 2
        0x41s
        0xa36s
        0x148ds
        0x1ea3s
        0x2929s
        0x33f7s
        0x3d8es
        0x4851s
        0x52f4s
        0x5ca5s
        0x6752s
        0x7115s
    .end array-data
.end method


# virtual methods
.method protected abstract AFInAppEventParameterName()V
.end method

.method protected abstract AFKeystoreWrapper(Ljavax/net/ssl/HttpsURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .registers 9

    const-string v0, ""

    .line 3060
    invoke-virtual {p0}, Lcom/appsflyer/internal/aj;->values()Ljava/lang/String;

    move-result-object v1

    .line 3061
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oneLinkUrl: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3102
    :try_start_15
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3103
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    const-string v5, "content-type"

    const-string v6, "application/json"

    .line 3064
    invoke-virtual {v4, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xbb8

    .line 3065
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 3066
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 3067
    iget-object v5, p0, Lcom/appsflyer/internal/aj;->values:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {p0, v4}, Lcom/appsflyer/internal/aj;->AFKeystoreWrapper(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 3069
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 3070
    invoke-static {v4}, Lcom/appsflyer/internal/ag;->valueOf(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4
    :try_end_3f
    .catchall {:try_start_15 .. :try_end_3f} :catchall_71

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_45

    const/4 v6, 0x0

    goto :goto_46

    :cond_45
    const/4 v6, 0x1

    :goto_46
    if-eq v6, v3, :cond_58

    .line 3085
    sget v5, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    add-int/lit8 v5, v5, 0x27

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    rem-int/lit8 v5, v5, 0x2

    :try_start_52
    const-string v5, "Status 200 ok"

    .line 3072
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    goto :goto_9a

    .line 3074
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Response code = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " content = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catchall {:try_start_52 .. :try_end_6e} :catchall_6f

    goto :goto_9a

    :catchall_6f
    move-exception v0

    goto :goto_75

    :catchall_71
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    .line 3077
    :goto_75
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error while calling "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stacktrace: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3080
    :goto_9a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v5, 0x4e

    if-eqz v1, :cond_a5

    const/16 v1, 0x16

    goto :goto_a7

    :cond_a5
    const/16 v1, 0x4e

    :goto_a7
    if-eq v1, v5, :cond_ee

    .line 3085
    sget v0, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b6

    const/4 v2, 0x1

    :cond_b6
    const/4 v0, 0x0

    const-string v1, "Connection call succeeded: "

    if-eqz v2, :cond_cd

    .line 3081
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {p0, v4}, Lcom/appsflyer/internal/aj;->values(Ljava/lang/String;)V

    :try_start_c9
    array-length v1, v0
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_cb

    goto :goto_db

    :catchall_cb
    move-exception v0

    .line 3085
    throw v0

    .line 3081
    :cond_cd
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {p0, v4}, Lcom/appsflyer/internal/aj;->values(Ljava/lang/String;)V

    .line 3085
    :goto_db
    sget v1, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_ed

    :try_start_e7
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    return-void

    :catchall_eb
    move-exception v0

    throw v0

    :cond_ed
    return-void

    .line 3084
    :cond_ee
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection error: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {p0}, Lcom/appsflyer/internal/aj;->AFInAppEventParameterName()V

    .line 3082
    sget v0, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method protected abstract values()Ljava/lang/String;
.end method

.method protected abstract values(Ljava/lang/String;)V
.end method

.method protected final varargs values(Ljavax/net/ssl/HttpsURLConnection;[Ljava/lang/String;)V
    .registers 7

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p2, 0x1

    .line 109
    sget-object v1, Lcom/appsflyer/internal/aj;->valueOf:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 110
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "\u2063"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "AppsFlyerKey"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/aj;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/appsflyer/internal/aj;->valueOf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    int-to-char v2, v2

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0xc

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/aj;->AFKeystoreWrapper(ICI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0}, Lcom/appsflyer/internal/af;->values(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/aj;->onAppOpenAttributionNative:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/aj;->onAttributionFailureNative:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_6c

    const/4 p1, 0x0

    goto :goto_6e

    :cond_6c
    const/16 p1, 0x5b

    :goto_6e
    if-eqz p1, :cond_71

    return-void

    :cond_71
    const/16 p1, 0x38

    :try_start_73
    div-int/2addr p1, p2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_75

    return-void

    :catchall_75
    move-exception p1

    throw p1
.end method
