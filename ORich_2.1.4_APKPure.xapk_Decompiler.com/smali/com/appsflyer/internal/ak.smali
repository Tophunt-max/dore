###### Class com.appsflyer.internal.ak (com.appsflyer.internal.ak)
.class public final Lcom/appsflyer/internal/ak;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static valueOf:Lcom/appsflyer/internal/ak;


# instance fields
.field private AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field AFInAppEventType:Z

.field private AFKeystoreWrapper:Z

.field private AFLogger$LogLevel:I

.field private getLevel:Ljava/lang/String;

.field private init:Z

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ak;->values:Ljava/util/List;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper:Z

    const-string v1, "-1"

    .line 26
    iput-object v1, p0, Lcom/appsflyer/internal/ak;->getLevel:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "disableProxy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventType:Z

    .line 32
    iput v3, p0, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel:I

    .line 33
    iput-boolean v3, p0, Lcom/appsflyer/internal/ak;->init:Z

    return-void
.end method

.method public static AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_9

    new-array p1, v1, [Ljava/lang/String;

    aput-object p0, p1, v0

    return-object p1

    .line 217
    :cond_9
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 218
    aput-object p0, v2, v0

    .line 219
    :goto_f
    array-length p0, p1

    if-ge v1, p0, :cond_1d

    .line 220
    aget-object p0, p1, v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    return-object v2
.end method

.method private AFLogger$LogLevel()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventType:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/appsflyer/internal/ak;->init:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized AFVersionDeclaration()V
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/ak;->values:Ljava/util/List;

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 228
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_10

    .line 119
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 120
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    if-eqz p2, :cond_1f

    .line 122
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1f

    .line 123
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v0, "app_version"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz p3, :cond_2e

    .line 125
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2e

    .line 126
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "channel"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    if-eqz p4, :cond_40

    .line 128
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_40

    .line 129
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "preInstall"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3e

    goto :goto_40

    .line 133
    :catchall_3e
    monitor-exit p0

    return-void

    .line 132
    :cond_40
    :goto_40
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "platform_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_34

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_34

    .line 89
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "advertiserId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    if-eqz p2, :cond_43

    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_43

    .line 92
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v0, "imei"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    if-eqz p3, :cond_52

    .line 94
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_52

    .line 95
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "android_id"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 98
    :cond_52
    monitor-exit p0

    return-void

    .line 99
    :catchall_54
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 103
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "sdk_version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_17

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_17

    .line 105
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v0, "devkey"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-eqz p3, :cond_26

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_26

    .line 108
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "originalAppsFlyerId"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    if-eqz p4, :cond_35

    .line 110
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_35

    .line 111
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "uid"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 114
    :cond_35
    monitor-exit p0

    return-void

    .line 115
    :catchall_37
    monitor-exit p0

    return-void
.end method


# virtual methods
.method final declared-synchronized AFInAppEventParameterName()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "r_debugging_off"

    .line 53
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    iput-boolean v2, p0, Lcom/appsflyer/internal/ak;->init:Z

    .line 55
    iput-boolean v2, p0, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 56
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized AFInAppEventType()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    .line 48
    :try_start_2
    iput-boolean v0, p0, Lcom/appsflyer/internal/ak;->init:Z

    const-string v0, "r_debugging_on"

    .line 49
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 50
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized AFKeystoreWrapper()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v1, "data"

    iget-object v2, p0, Lcom/appsflyer/internal/ak;->values:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/appsflyer/internal/ak;->AFVersionDeclaration()V

    .line 177
    iget-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final varargs declared-synchronized AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 161
    :try_start_1
    invoke-direct {p0}, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel()Z

    move-result v0

    if-eqz v0, :cond_91

    iget v0, p0, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_93

    const v1, 0x18000

    if-lt v0, v1, :cond_10

    goto/16 :goto_91

    .line 163
    :cond_10
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, ", "

    .line 164
    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p1, :cond_51

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " _/AppsFlyer_6.4.2 ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7d

    .line 167
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/AppsFlyer_6.4.2 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    :goto_7d
    iget-object p2, p0, Lcom/appsflyer/internal/ak;->values:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget p2, p0, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/appsflyer/internal/ak;->AFLogger$LogLevel:I
    :try_end_8d
    .catchall {:try_start_10 .. :try_end_8d} :catchall_8f

    .line 171
    monitor-exit p0

    return-void

    .line 172
    :catchall_8f
    monitor-exit p0

    return-void

    .line 161
    :cond_91
    :goto_91
    monitor-exit p0

    return-void

    :catchall_93
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final AppsFlyer2dXConversionCallback()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Lcom/appsflyer/internal/ak;->init:Z

    return v0
.end method

.method final declared-synchronized valueOf()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 231
    :try_start_2
    iput-boolean v0, p0, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper:Z

    .line 232
    invoke-direct {p0}, Lcom/appsflyer/internal/ak;->AFVersionDeclaration()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 233
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized valueOf(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 44
    :try_start_1
    iput-object p1, p0, Lcom/appsflyer/internal/ak;->getLevel:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 45
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized values()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_2
    iput-object v0, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    .line 60
    sput-object v0, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    .line 61
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized values(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 9

    monitor-enter p0

    .line 181
    :try_start_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "remote_debug_static_data"

    .line 183
    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_89

    if-eqz v2, :cond_19

    .line 186
    :try_start_d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appsflyer/internal/n;->valueOf(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_7e

    goto :goto_7e

    .line 190
    :cond_19
    :try_start_19
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    .line 191
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v2

    const-string v3, "advertiserId"

    .line 193
    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/appsflyer/internal/ag;->init:Ljava/lang/String;

    iget-object v2, v2, Lcom/appsflyer/internal/ag;->getLevel:Ljava/lang/String;

    .line 192
    invoke-direct {p0, v3, v4, v2}, Lcom/appsflyer/internal/ak;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "6.4.2."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/appsflyer/internal/ag;->AFInAppEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppsFlyerKey"

    .line 198
    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KSAppsFlyerId"

    .line 199
    invoke-virtual {v0, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uid"

    .line 200
    invoke-virtual {v0, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/appsflyer/internal/ak;->values(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_19 .. :try_end_56} :catchall_89

    const/4 v2, 0x0

    .line 202
    :try_start_57
    invoke-virtual {p2, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v2, "channel"

    .line 203
    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preInstallName"

    .line 204
    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/appsflyer/internal/ak;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_70

    .line 208
    :catchall_70
    :try_start_70
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :catchall_7e
    :goto_7e
    iget-object p1, p0, Lcom/appsflyer/internal/ak;->AFInAppEventParameterName:Ljava/util/Map;

    const-string p2, "launch_counter"

    iget-object v0, p0, Lcom/appsflyer/internal/ak;->getLevel:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_89

    .line 211
    monitor-exit p0

    return-void

    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method
