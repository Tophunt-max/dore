###### Class com.appsflyer.internal.j (com.appsflyer.internal.j)
.class public final Lcom/appsflyer/internal/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final AFInAppEventParameterName:I

.field public static AFInAppEventType:Landroid/content/Intent;

.field static AFLogger$LogLevel:[Ljava/lang/String;

.field private static init:Lcom/appsflyer/internal/j;

.field static valueOf:[Ljava/lang/String;

.field static volatile values:Z


# instance fields
.field public AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

.field public AFVersionDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public AppsFlyer2dXConversionCallback:Ljava/lang/String;

.field public getLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/appsflyer/internal/j;->AFInAppEventParameterName:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/j;->getLevel:Ljava/util/List;

    return-void
.end method

.method private AFInAppEventParameterName(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 5279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5280
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    .line 171
    :goto_15
    sget-object v3, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    if-eqz v3, :cond_28

    .line 6279
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6280
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v1

    .line 7215
    :goto_29
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 7216
    iget-object v4, p0, Lcom/appsflyer/internal/j;->getLevel:Ljava/util/List;

    if-eqz v4, :cond_8f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8f

    if-nez v3, :cond_3a

    goto :goto_8f

    .line 7219
    :cond_3a
    iget-object v4, p0, Lcom/appsflyer/internal/j;->getLevel:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_50

    :goto_4e
    move-object v6, v1

    goto :goto_6c

    .line 7235
    :cond_50
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 7236
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5b

    goto :goto_4e

    .line 7239
    :cond_5b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_68

    goto :goto_4e

    .line 7243
    :cond_68
    invoke-direct {p0, v7, v6}, Lcom/appsflyer/internal/j;->AFInAppEventType(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;

    move-result-object v6

    :goto_6c
    if-eqz v6, :cond_40

    .line 7222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Found deeplink in push payload at "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 7223
    invoke-static {p3}, Lcom/appsflyer/internal/ag;->values(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/appsflyer/internal/j;->getLevel:Ljava/util/List;

    const-string v4, "payloadKey"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    :cond_8f
    :goto_8f
    const/4 v3, 0x1

    const-string v4, " w/af_consumed"

    const/4 v5, 0x0

    const-string v6, "af_consumed"

    if-eqz v2, :cond_c1

    .line 174
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, p2, p3, v2}, Lcom/appsflyer/internal/j;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return v3

    .line 179
    :cond_a8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return v5

    :cond_c1
    if-eqz v0, :cond_f1

    .line 186
    sget-object p1, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d8

    .line 187
    sget-object p1, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, p2, p3, v0}, Lcom/appsflyer/internal/j;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return v3

    .line 191
    :cond_d8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed trampoline deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return v5

    :cond_f1
    if-eqz v1, :cond_11d

    .line 197
    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_104

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, p2, p3, v1}, Lcom/appsflyer/internal/j;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return v3

    .line 202
    :cond_104
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link from push: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    return v5

    :cond_11d
    const-string p1, "No deep link detected"

    .line 208
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return v5
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Z
    .registers 4

    .line 74
    sget-object v0, Lcom/appsflyer/internal/j;->valueOf:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v0, "af_tranid="

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 82
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate if link "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " belongs to ESP domains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/appsflyer/internal/j;->valueOf:[Ljava/lang/String;

    .line 83
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 85
    :try_start_2e
    sget-object v0, Lcom/appsflyer/internal/j;->valueOf:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_41
    .catch Ljava/net/MalformedURLException; {:try_start_2e .. :try_end_41} :catch_42

    return p0

    :catch_42
    return v1
.end method

.method private AFInAppEventType(Ljava/lang/Object;Ljava/util/Iterator;)Landroid/net/Uri;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 248
    :goto_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return-object v1

    .line 251
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_24

    .line 252
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 253
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_23

    return-object p1

    :cond_23
    return-object v1

    .line 261
    :cond_24
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_37} :catch_38

    goto :goto_0

    :catch_38
    return-object v1
.end method

.method public static AFInAppEventType()Lcom/appsflyer/internal/j;
    .registers 1

    .line 51
    sget-object v0, Lcom/appsflyer/internal/j;->init:Lcom/appsflyer/internal/j;

    if-nez v0, :cond_b

    .line 52
    new-instance v0, Lcom/appsflyer/internal/j;

    invoke-direct {v0}, Lcom/appsflyer/internal/j;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/j;->init:Lcom/appsflyer/internal/j;

    .line 54
    :cond_b
    sget-object v0, Lcom/appsflyer/internal/j;->init:Lcom/appsflyer/internal/j;

    return-object v0
.end method

.method static AFKeystoreWrapper(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    if-eqz p0, :cond_13

    .line 279
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 280
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method static synthetic valueOf(Ljava/lang/String;)Z
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/appsflyer/internal/j;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method final values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 97
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/j;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 98
    sput-boolean v0, Lcom/appsflyer/internal/j;->values:Z

    .line 5045
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    if-nez v0, :cond_18

    .line 5046
    new-instance v0, Lcom/appsflyer/internal/l;

    invoke-direct {v0}, Lcom/appsflyer/internal/l;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 5048
    :cond_18
    sget-object v0, Lcom/appsflyer/internal/l;->AFKeystoreWrapper:Lcom/appsflyer/internal/l;

    .line 5052
    iget-object v1, v0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_26

    .line 5053
    iget-object v1, v0, Lcom/appsflyer/internal/l;->AFInAppEventParameterName:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5055
    :cond_26
    iget-object v0, v0, Lcom/appsflyer/internal/l;->values:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    new-instance v1, Lcom/appsflyer/internal/j$3;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/appsflyer/internal/j$3;-><init>(Lcom/appsflyer/internal/j;Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_38

    .line 159
    :cond_31
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    :goto_38
    const/4 p1, 0x0

    .line 162
    sput-object p1, Lcom/appsflyer/internal/j;->AFInAppEventType:Landroid/content/Intent;

    return-void
.end method

.method final values(Ljava/util/Map;Lcom/appsflyer/internal/au;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/au;",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-static {p4}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-direct {p0, p3, p4, p1}, Lcom/appsflyer/internal/j;->AFInAppEventParameterName(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)Z

    move-result p1

    const-string p3, "ddl_sent"

    if-nez p1, :cond_97

    iget-object p1, p0, Lcom/appsflyer/internal/j;->AFKeystoreWrapper:Lcom/appsflyer/deeplink/DeepLinkListener;

    if-eqz p1, :cond_97

    .line 64
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    const-string p1, "appsFlyerCount"

    const/4 v1, 0x0

    .line 3774
    invoke-static {v0, p1, v1}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_97

    .line 65
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_97

    .line 66
    new-instance p1, Lcom/appsflyer/internal/ao;

    invoke-direct {p1, p4, p2}, Lcom/appsflyer/internal/ao;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/au;)V

    const-string p2, "[DDL] start"

    .line 4074
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 4075
    new-instance p2, Ljava/util/concurrent/FutureTask;

    new-instance p4, Lcom/appsflyer/internal/ao$2;

    invoke-direct {p4, p1}, Lcom/appsflyer/internal/ao$2;-><init>(Lcom/appsflyer/internal/ao;)V

    invoke-direct {p2, p4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4084
    new-instance p4, Ljava/lang/Thread;

    invoke-direct {p4, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    const/4 p4, 0x0

    .line 4086
    :try_start_3f
    sget-wide v1, Lcom/appsflyer/internal/ao;->onDeepLinkingNative:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 4087
    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/ao;->values(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3f .. :try_end_4c} :catch_7c
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_4c} :catch_7a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3f .. :try_end_4c} :catch_4d

    goto :goto_97

    .line 4096
    :catch_4d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[DDL] Timeout, didn\'t manage to find deferred deep link after "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/appsflyer/internal/ao;->onInstallConversionFailureNative:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attempt(s) within "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/appsflyer/internal/ao;->onDeepLinkingNative:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " milliseconds"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 4098
    new-instance p2, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {p2, p4, v1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/ao;->values(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_97

    :catch_7a
    move-exception p2

    goto :goto_7d

    :catch_7c
    move-exception p2

    :goto_7d
    const-string v1, "[DDL] Error occurred"

    .line 4089
    invoke-static {v1, p2}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4090
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    .line 4091
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_8f

    .line 4092
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    goto :goto_91

    .line 4093
    :cond_8f
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    :goto_91
    invoke-direct {v1, p4, p2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 4094
    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/ao;->values(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 68
    :cond_97
    :goto_97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

###### Class com.appsflyer.internal.j.AnonymousClass3 (com.appsflyer.internal.j$3)
.class final Lcom/appsflyer/internal/j$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/j;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic AFInAppEventParameterName:Landroid/content/Context;

.field private synthetic AFInAppEventType:Ljava/util/Map;

.field private synthetic AFKeystoreWrapper:Landroid/net/Uri;

.field private synthetic values:Lcom/appsflyer/internal/j;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/j;Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/appsflyer/internal/j$3;->values:Lcom/appsflyer/internal/j;

    iput-object p2, p0, Lcom/appsflyer/internal/j$3;->AFKeystoreWrapper:Landroid/net/Uri;

    iput-object p3, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventType:Ljava/util/Map;

    iput-object p4, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventParameterName:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static values(Landroid/net/Uri;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ESP deeplink resolving is started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 141
    sget v1, Lcom/appsflyer/internal/j;->AFInAppEventParameterName:I

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 142
    sget v1, Lcom/appsflyer/internal/j;->AFInAppEventParameterName:I

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v1, "User-agent"

    const-string v2, "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)"

    .line 143
    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "af-esp"

    const-string v2, "6.4.2"

    .line 144
    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const-string v2, "status"

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x12c

    if-gt v2, v1, :cond_65

    const/16 v2, 0x131

    if-gt v1, v2, :cond_65

    const-string v1, "res"

    const-string v2, "Location"

    .line 148
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_65
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string p0, "ESP deeplink resolving is finished"

    .line 150
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_6e

    goto :goto_7f

    :catchall_6e
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7f
    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    iget-object v2, p0, Lcom/appsflyer/internal/j$3;->AFKeystoreWrapper:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    const/4 v7, 0x0

    :goto_13
    const/4 v8, 0x5

    if-ge v7, v8, :cond_4f

    .line 112
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/j$3;->values(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const-string v5, "res"

    .line 113
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "status"

    .line 114
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v8, "error"

    .line 115
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_4b

    .line 116
    invoke-static {v5}, Lcom/appsflyer/internal/j;->valueOf(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4b

    const/4 v8, 0x4

    if-ge v7, v8, :cond_44

    .line 117
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v7, v7, 0x1

    move-object v10, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v10

    goto :goto_13

    :cond_4b
    move-object v10, v6

    move-object v6, v2

    move-object v2, v5

    move-object v5, v10

    .line 120
    :cond_4f
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "res"

    if-eqz v2, :cond_5a

    move-object v9, v2

    goto :goto_5c

    :cond_5a
    const-string v9, ""

    .line 121
    :goto_5c
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "status"

    if-eqz v5, :cond_68

    .line 122
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    goto :goto_69

    :cond_68
    const/4 v5, -0x1

    :goto_69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_77

    const-string v5, "error"

    .line 123
    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_77
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "redirects"

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_82
    const-string v3, "latency"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventType:Ljava/util/Map;

    monitor-enter v0

    .line 127
    :try_start_93
    iget-object v1, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "af_deeplink_r"

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "af_deeplink"

    iget-object v5, p0, Lcom/appsflyer/internal/j$3;->AFKeystoreWrapper:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_93 .. :try_end_a8} :catchall_bf

    .line 130
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventParameterName:Landroid/content/Context;

    iget-object v3, p0, Lcom/appsflyer/internal/j$3;->AFInAppEventType:Ljava/util/Map;

    if-eqz v2, :cond_b7

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_b9

    :cond_b7
    iget-object v2, p0, Lcom/appsflyer/internal/j$3;->AFKeystoreWrapper:Landroid/net/Uri;

    :goto_b9
    invoke-virtual {v0, v1, v3, v2}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    .line 132
    sput-boolean v4, Lcom/appsflyer/internal/j;->values:Z

    return-void

    :catchall_bf
    move-exception v1

    .line 129
    monitor-exit v0

    throw v1
.end method

###### Class com.appsflyer.internal.ao.AnonymousClass2 (com.appsflyer.internal.ao$2)
.class public final Lcom/appsflyer/internal/ao$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/appsflyer/deeplink/DeepLinkResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic valueOf:Lcom/appsflyer/internal/ao;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/ao;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/ao$2;->valueOf:Lcom/appsflyer/internal/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/appsflyer/internal/ao$2;->valueOf:Lcom/appsflyer/internal/ao;

    invoke-static {v0}, Lcom/appsflyer/internal/ao;->AFInAppEventType(Lcom/appsflyer/internal/ao;)Landroid/app/Application;

    move-result-object v0

    .line 1079
    iget-object v1, p0, Lcom/appsflyer/internal/ao$2;->valueOf:Lcom/appsflyer/internal/ao;

    invoke-static {v1}, Lcom/appsflyer/internal/ao;->valueOf(Lcom/appsflyer/internal/ao;)V

    .line 1080
    iget-object v1, p0, Lcom/appsflyer/internal/ao$2;->valueOf:Lcom/appsflyer/internal/ao;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ao;->valueOf(Lcom/appsflyer/internal/ao;Landroid/content/Context;)V

    .line 1081
    iget-object v1, p0, Lcom/appsflyer/internal/ao$2;->valueOf:Lcom/appsflyer/internal/ao;

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ao;->values(Lcom/appsflyer/internal/ao;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;

    move-result-object v0

    return-object v0
.end method
