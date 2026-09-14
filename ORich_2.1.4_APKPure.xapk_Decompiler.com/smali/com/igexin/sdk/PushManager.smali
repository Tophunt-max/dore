###### Class com.igexin.sdk.PushManager (com.igexin.sdk.PushManager)
.class public Lcom/igexin/sdk/PushManager;
.super Ljava/lang/Object;


# static fields
.field private static j:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:[B

.field private e:Ljava/lang/Class;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/igexin/push/core/i;


# direct methods
.method static constructor <clinit>()V
    .registers 27

    const-string v0, "DE"

    const-string v1, "FR"

    const-string v2, "IT"

    const-string v3, "ES"

    const-string v4, "PL"

    const-string v5, "RO"

    const-string v6, "NL"

    const-string v7, "BE"

    const-string v8, "GR"

    const-string v9, "CZ"

    const-string v10, "PT"

    const-string v11, "SE"

    const-string v12, "HU"

    const-string v13, "AT"

    const-string v14, "BG"

    const-string v15, "DK"

    const-string v16, "FI"

    const-string v17, "SK"

    const-string v18, "IE"

    const-string v19, "HR"

    const-string v20, "LT"

    const-string v21, "SI"

    const-string v22, "LV"

    const-string v23, "EE"

    const-string v24, "CY"

    const-string v25, "LU"

    const-string v26, "MT"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/sdk/PushManager;->j:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/igexin/sdk/PushManager;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/sdk/f;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_35

    aget-byte v3, p1, v2

    if-gez v3, :cond_22

    add-int/lit16 v3, v3, 0x100

    :cond_22
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2b

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/sdk/PushManager;->j:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1c

    if-eqz v5, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :catchall_1c
    :cond_1c
    return v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p1, "PushManager"

    const-string p2, "EU countries not support !!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-static {p1}, Lcom/igexin/push/util/t;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/igexin/sdk/PushManager;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    const-string v0, "pri_alert"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;

    if-nez v0, :cond_39

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1e

    goto :goto_39

    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->d(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    :cond_25
    monitor-enter p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_39

    :try_start_26
    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;

    if-nez v0, :cond_34

    new-instance v0, Lcom/igexin/push/core/i;

    invoke-direct {v0}, Lcom/igexin/push/core/i;-><init>()V

    iput-object v0, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_34
    monitor-exit p0

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_36

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    :cond_39
    :goto_39
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;

    if-eqz v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_b

    goto :goto_1a

    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->d(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/igexin/sdk/PushManager;->i:Lcom/igexin/push/core/i;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1a

    :catchall_1a
    :cond_1a
    :goto_1a
    return-void
.end method

.method private d(Landroid/content/Context;)Landroid/app/Application;
    .registers 3

    if-eqz p1, :cond_17

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_17

    :cond_9
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_10

    check-cast p1, Landroid/app/Application;

    return-object p1

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    return-object p1

    :cond_17
    :goto_17
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-nez v3, :cond_16

    return v0

    :cond_16
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_44

    :cond_23
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_27

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v1, :cond_27

    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_44

    return p1

    :catchall_44
    :cond_44
    :goto_44
    return v0
.end method

.method public static getInstance()Lcom/igexin/sdk/PushManager;
    .registers 1

    invoke-static {}, Lcom/igexin/sdk/g;->a()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    return-object v0
.end method

.method private registerPushActivity(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v0

    const-string v1, "PushManager"

    if-eqz v0, :cond_e

    const-string p1, "EU countries not support !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "PushManager|registerPushActiviy|"

    if-eqz p2, :cond_59

    :try_start_12
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_29
    .catchall {:try_start_12 .. :try_end_19} :catchall_27

    :try_start_19
    invoke-static {p1, p2}, Lcom/igexin/push/util/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_24
    iput-object p2, p0, Lcom/igexin/sdk/PushManager;->g:Ljava/lang/String;

    goto :goto_61

    :catchall_27
    move-exception p1

    goto :goto_8a

    :catch_29
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load activity = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_59
    const-string p2, "call -> registerPushActiviy, parameter [activity] is null"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    goto :goto_24

    :goto_61
    iget-object p2, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    if-eqz p2, :cond_a0

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ua"

    iget-object v2, p0, Lcom/igexin/sdk/PushManager;->g:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/igexin/sdk/PushManager;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_86

    const-string v2, "pri_authorized"

    if-nez v1, :cond_82

    const/4 v1, 0x1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_86
    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_89
    .catchall {:try_start_19 .. :try_end_89} :catchall_27

    goto :goto_a0

    :goto_8a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_a0
    :goto_a0
    return-void
.end method


# virtual methods
.method public bindAlias(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindAlias_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/sdk/PushManager;->bindAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bindAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "PushManager|call bindAlias"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/sdk/PushManager;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    const-string p1, "PushManager"

    const-string p2, "call - > bindAlias failed, it be called too frequently"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1c
    iput-wide v0, p0, Lcom/igexin/sdk/PushManager;->c:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "bindAlias"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sn"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bundle"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public getClientid(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->d:[B

    if-nez v0, :cond_93

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_93

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_93

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "PUSH_APPID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "PUSH_APPSECRET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "PUSH_APPKEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_36
    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_3c
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_93

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/sdk/PushManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushManager;->d:[B
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_79} :catch_7a

    goto :goto_93

    :catch_7a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushManager|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->d:[B

    if-eqz v0, :cond_dc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "init.pid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/push/util/g;->a(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->d:[B

    if-eqz v0, :cond_dc

    if-eqz p1, :cond_dc

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_dc

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_c7
    if-ge v2, v0, :cond_d6

    iget-object v3, p0, Lcom/igexin/sdk/PushManager;->d:[B

    aget-byte v3, v3, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    :cond_d6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_dc
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p1, "4.3.9.0"

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Service;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "PushManager"

    if-nez p1, :cond_a

    const-string p1, "context is null"

    :goto_6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string p1, "EU countries not support !!!"

    goto :goto_6

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2}, Lcom/igexin/push/util/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string p1, "PushManager|init checkServiceSetCorrectly false"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/util/a;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_3c

    sget-object v0, Lcom/igexin/push/core/b;->s:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const-class p2, Lcom/igexin/sdk/PushService;

    :cond_3e
    iput-object p2, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "action"

    sget-object v3, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "op_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "us"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/igexin/sdk/PushManager;->h:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_6d

    const-string v1, "pri_authorized"

    if-nez p2, :cond_69

    const/4 p2, 0x1

    goto :goto_6a

    :cond_69
    const/4 p2, 0x0

    :goto_6a
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6d
    iget-object p2, p0, Lcom/igexin/sdk/PushManager;->f:Ljava/lang/String;

    if-eqz p2, :cond_76

    const-string v1, "uis"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_76
    iget-object p2, p0, Lcom/igexin/sdk/PushManager;->g:Ljava/lang/String;

    if-eqz p2, :cond_7f

    const-string v1, "ua"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7f
    invoke-direct {p0, p1, v0}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->b(Landroid/content/Context;)V
    :try_end_85
    .catchall {:try_start_13 .. :try_end_85} :catchall_86

    goto :goto_9f

    :catchall_86
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PushManager|initialize|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public isPushTurnedOn(Landroid/content/Context;)Z
    .registers 3

    new-instance v0, Lcom/igexin/sdk/a/d;

    invoke-direct {v0, p1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->c()Z

    move-result p1

    return p1
.end method

.method public registerPushIntentService(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/igexin/sdk/GTIntentService;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v0

    const-string v1, "PushManager"

    if-eqz v0, :cond_e

    const-string p1, "EU countries not support !!!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "PushManager|call registerPushIntentService"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-string v0, "PushManager|registerPushIntentService|"

    if-eqz p2, :cond_80

    :try_start_17
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_50
    .catchall {:try_start_17 .. :try_end_1e} :catchall_4e

    :try_start_1e
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, p1}, Lcom/igexin/push/util/a;->b(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_47

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call - > registerPushIntentService, parameter [userIntentService] is set, but didn\'t find class \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", please check your AndroidManifest"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_4b
    iput-object p2, p0, Lcom/igexin/sdk/PushManager;->f:Ljava/lang/String;

    goto :goto_88

    :catchall_4e
    move-exception p1

    goto :goto_b1

    :catch_50
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t load IntentService = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_80
    const-string p2, "call -> registerPushIntentService, parameter [userIntentService] is null, use default Receiver"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    goto :goto_4b

    :goto_88
    iget-object p2, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    if-eqz p2, :cond_c7

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uis"

    iget-object v2, p0, Lcom/igexin/sdk/PushManager;->f:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p0, Lcom/igexin/sdk/PushManager;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ad

    const-string v2, "pri_authorized"

    if-nez v1, :cond_a9

    const/4 v1, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v1, 0x0

    :goto_aa
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_ad
    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_b0
    .catchall {:try_start_1e .. :try_end_b0} :catchall_4e

    goto :goto_c7

    :goto_b1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public sendApplinkFeedback(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "PushManager"

    const-string p2, "call - > sendApplinkFeedback failed, parameter is illegal"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "sendApplinkFeedback"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bundle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public sendFeedbackMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    if-eqz p2, :cond_4a

    if-eqz p3, :cond_4a

    const v0, 0x15f91

    if-lt p4, v0, :cond_4a

    const v0, 0x16377

    if-le p4, v0, :cond_f

    goto :goto_4a

    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "sendFeedbackMessage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "messageid"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "actionid"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bundle"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_4a
    :goto_4a
    const-string p1, "PushManager"

    const-string p2, "call - > sendFeedbackMessage failed, parameter is illegal"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public sendMessage(Landroid/content/Context;Ljava/lang/String;[B)Z
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_4f

    if-eqz p3, :cond_4f

    array-length v2, p3

    int-to-long v2, v2

    const-wide/16 v4, 0x1000

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4f

    iget-wide v2, p0, Lcom/igexin/sdk/PushManager;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1b

    goto :goto_4f

    :cond_1b
    iput-wide v0, p0, Lcom/igexin/sdk/PushManager;->b:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "sendMessage"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extraData"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bundle"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_4f
    :goto_4f
    const-string p1, "PushManager"

    const-string p2, "call - > sendMessage failed, parameter is illegal or it be called too frequently"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setHeartbeatInterval(Landroid/content/Context;I)Z
    .registers 7

    if-gez p2, :cond_b

    const-string p1, "PushManager"

    const-string p2, "call -> setHeartbeatInterval failed, parameter [interval] < 0, illegal"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "setHeartbeatInterval"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "interval"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bundle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setPrivacyPolicyStrategy(Landroid/content/Context;Z)V
    .registers 5

    xor-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/igexin/sdk/PushManager;->h:I

    iget-object v0, p0, Lcom/igexin/sdk/PushManager;->e:Ljava/lang/Class;

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, v0}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "pri_alert"

    invoke-static {p1, v1, v0}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "pri_authorized"

    invoke-static {p1, v0, p2}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSilentTime(Landroid/content/Context;II)Z
    .registers 7

    if-ltz p2, :cond_3f

    const/16 v0, 0x18

    if-ge p2, v0, :cond_3f

    if-ltz p3, :cond_3f

    const/16 v0, 0x17

    if-le p3, v0, :cond_d

    goto :goto_3f

    :cond_d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "setSilentTime"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "beginHour"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "duration"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p2, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bundle"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_3f
    :goto_3f
    const-string p1, "PushManager"

    const-string p2, "call - > setSilentTime failed, parameter [beginHour] or [duration] value exceeding"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setSocketTimeout(Landroid/content/Context;I)Z
    .registers 7

    if-gez p2, :cond_b

    const-string p1, "PushManager"

    const-string p2, "call - > setSocketTimeout failed, parameter [timeout] < 0, illegal"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "setSocketTimeout"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timeout"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bundle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setTag(Landroid/content/Context;[Lcom/igexin/sdk/Tag;Ljava/lang/String;)I
    .registers 15

    const/16 v0, 0x4e26

    const-string v1, "PushManager"

    if-nez p2, :cond_11

    const-string p1, "call -> setTag failed, parameter [tags] is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PushManager|tags is null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    :cond_11
    if-nez p3, :cond_20

    const-string p1, "call -> setTag failed, parameter [sn] is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PushManager|sn is null"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/16 p1, 0x4e27

    return p1

    :cond_20
    array-length v2, p2

    int-to-long v2, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-lez v6, :cond_35

    const-string p1, "call -> setTag failed, parameter [tags] len > 200 is exceeds"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PushManager|tags len > 200 is exceeds"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/16 p1, 0x4e21

    return p1

    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/igexin/sdk/PushManager;->a:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gez v8, :cond_4b

    const-string p1, "call - > setTag failed, it be called too frequently"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4e22

    return p1

    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_53
    if-ge v7, v5, :cond_ab

    aget-object v8, p2, v7

    if-eqz v8, :cond_a8

    invoke-virtual {v8}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a8

    invoke-virtual {v8}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_83

    invoke-virtual {v8}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_78

    goto :goto_83

    :cond_78
    invoke-virtual {v8}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a8

    :cond_83
    :goto_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call -> setTag failed, the tag ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/igexin/sdk/Tag;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not illegal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4e2b

    return p1

    :cond_a8
    :goto_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_ab
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_f1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "setTag"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "tags"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sn"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/igexin/sdk/PushManager;->a:J

    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "bundle"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p3}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return v6

    :cond_f1
    return v0
.end method

.method public turnOffPush(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "PushManager"

    const-string v0, "EU countries not support !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "PushManager|call turnOffPush"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "turnOffPush"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bundle"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, v2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->c(Landroid/content/Context;)V

    return-void
.end method

.method public turnOnPush(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/igexin/sdk/PushManager;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "PushManager"

    const-string v0, "EU countries not support !!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const-string v0, "PushManager|call turnOnPush"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action"

    const-string v2, "com.igexin.action.initialize.slave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "op_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "isSlave"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->b(Landroid/content/Context;)V

    return-void
.end method

.method public unBindAlias(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unBindAlias_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/igexin/sdk/PushManager;->unBindAlias(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unBindAlias(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 12

    const-string v0, "PushManager|call unBindAlias"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/sdk/PushManager;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_1c

    const-string p1, "PushManager"

    const-string p2, "call - > unBindAlias failed, it be called too frequently"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1c
    iput-wide v0, p0, Lcom/igexin/sdk/PushManager;->c:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "unbindAlias"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "isSeft"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "sn"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "bundle"

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/igexin/sdk/PushManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
