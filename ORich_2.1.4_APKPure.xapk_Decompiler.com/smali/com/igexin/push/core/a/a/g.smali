###### Class com.igexin.push.core.a.a.g (com.igexin.push.core.a.a.g)
.class public Lcom/igexin/push/core/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/config/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/igexin/push/core/bean/h;Z)I
    .registers 9

    const-string v0, "push_small"

    const-string v1, "mipmap"

    const-string v2, "drawable"

    if-eqz p2, :cond_5b

    const/4 p2, 0x0

    :try_start_9
    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_42

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_24

    goto :goto_42

    :catchall_24
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/igexin/push/core/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_42
    :goto_42
    if-eqz p2, :cond_45

    return p2

    :cond_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/core/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|push_small.png is missing"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_5b
    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const-string v3, "push"

    invoke-virtual {p2, v3, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_77

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v0, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {p2, v3, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_77
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x1080093

    if-eqz v0, :cond_8b

    if-eqz p2, :cond_87

    goto :goto_8a

    :cond_87
    const p2, 0x1080093

    :goto_8a
    return p2

    :cond_8b
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    return v3

    :cond_98
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "email"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_bc

    const v3, 0x108008f

    :cond_bc
    return v3

    :cond_bd
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->g()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_df
    if-eqz v0, :cond_e2

    return v0

    :cond_e2
    if-eqz p2, :cond_e5

    return p2

    :cond_e5
    return v3
.end method

.method private a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_12

    mul-int/lit16 v1, v1, 0x83

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    const/high16 p1, -0x80000000

    if-ne v1, p1, :cond_17

    const/4 v1, 0x1

    :cond_17
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1
.end method

.method private a(Lcom/igexin/push/core/bean/h;)Landroid/app/Notification$Builder;
    .registers 15

    const-string v0, "android.app.NotificationChannel"

    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    :try_start_13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    if-eqz v5, :cond_d8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v10, "getNotificationChannel"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->k()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    if-nez v10, :cond_bd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->k()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->l()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->m()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "createNotificationChannel"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v10, v7

    invoke-virtual {v6, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v5, "enableVibration"

    new-array v6, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "setSound"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/net/Uri;

    aput-object v11, v10, v7

    const-class v11, Landroid/media/AudioAttributes;

    aput-object v11, v10, v8

    invoke-virtual {v3, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->e()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->f()Z

    move-result v5

    if-nez v5, :cond_b6

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setChannelId"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/h;->k()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catchall {:try_start_13 .. :try_end_d8} :catchall_d8

    :catchall_d8
    :cond_d8
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "messageid"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ""

    if-nez p5, :cond_16

    move-object p5, p1

    :cond_16
    const-string p2, "title"

    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p6, :cond_1e

    move-object p6, p1

    :cond_1e
    const-string p1, "content"

    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "actionid"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    const-string p2, "accesstoken"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notifID"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p3

    sget-object p4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "action"

    const-string p3, "com.igexin.action.notification.click"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "broadcast_intent"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    const/16 p4, 0x3e8

    invoke-virtual {p3, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    const/high16 p4, 0x8000000

    invoke-static {p2, p3, p1, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "channelLevel"

    const-string v2, "channelName"

    const-string v3, "channel"

    const-string v4, "banner_url"

    const-string v5, "logo_url"

    const-string v6, "is_chklayout"

    const-string v7, ".png"

    const-string v8, "is_noring"

    const-string v9, "is_novibrate"

    const-string v10, "is_noclear"

    const-string v11, "notifyid"

    const-string v12, ""

    const-string v13, "logo"

    :try_start_1c
    new-instance v14, Lcom/igexin/push/core/bean/h;

    invoke-direct {v14}, Lcom/igexin/push/core/bean/h;-><init>()V

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Lcom/igexin/push/core/bean/h;->setType(Ljava/lang/String;)V

    const-string v15, "actionid"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/igexin/push/core/bean/h;->setActionId(Ljava/lang/String;)V

    const-string v15, "do"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/igexin/push/core/bean/h;->setDoActionId(Ljava/lang/String;)V

    const-string v15, "title"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v11

    const-string v11, "text"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15}, Lcom/igexin/push/core/bean/h;->a(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/igexin/push/core/bean/h;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a4

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a4

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_64} :catch_170

    const-string v15, ".jpeg"

    move-object/from16 v17, v12

    const/4 v12, -0x1

    if-ne v13, v12, :cond_76

    :try_start_6b
    invoke-virtual {v11, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v12, :cond_72

    goto :goto_76

    :cond_72
    move-object/from16 v7, v17

    const/4 v12, 0x0

    goto :goto_a0

    :cond_76
    :goto_76
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v12, :cond_80

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    :cond_80
    if-eq v7, v12, :cond_9b

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "^\\d+$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_98

    goto :goto_9e

    :cond_98
    move-object/from16 v17, v7

    goto :goto_9e

    :cond_9b
    const/4 v12, 0x0

    move-object/from16 v17, v11

    :goto_9e
    move-object/from16 v7, v17

    :goto_a0
    invoke-virtual {v14, v7}, Lcom/igexin/push/core/bean/h;->c(Ljava/lang/String;)V

    goto :goto_a5

    :cond_a4
    const/4 v12, 0x0

    :goto_a5
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x1

    if-eqz v7, :cond_b8

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b4

    const/4 v7, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v7, 0x0

    :goto_b5
    invoke-virtual {v14, v7}, Lcom/igexin/push/core/bean/h;->b(Z)V

    :cond_b8
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c6

    const/4 v7, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v7, 0x0

    :goto_c7
    invoke-virtual {v14, v7}, Lcom/igexin/push/core/bean/h;->c(Z)V

    :cond_ca
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_dc

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d8

    const/4 v15, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v15, 0x0

    :goto_d9
    invoke-virtual {v14, v15}, Lcom/igexin/push/core/bean/h;->d(Z)V

    :cond_dc
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v14, v6}, Lcom/igexin/push/core/bean/h;->e(Z)V

    :cond_e9
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f6

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/igexin/push/core/bean/h;->d(Ljava/lang/String;)V

    :cond_f6
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/igexin/push/core/bean/h;->e(Ljava/lang/String;)V

    :cond_103
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/igexin/push/core/bean/h;->f(Ljava/lang/String;)V

    :cond_110
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/igexin/push/core/bean/h;->g(Ljava/lang/String;)V

    :cond_11d
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12a

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/igexin/push/core/bean/h;->a(I)V

    :cond_12a
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_130
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_130} :catch_170

    if-eqz v2, :cond_16f

    :try_start_132
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/igexin/push/core/bean/h;->b(I)V

    invoke-virtual {v14, v11}, Lcom/igexin/push/core/bean/h;->a(Z)V
    :try_end_140
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_140} :catch_141
    .catch Lorg/json/JSONException; {:try_start_132 .. :try_end_140} :catch_170

    goto :goto_16f

    :catch_141
    :try_start_141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NotificationAction.parseAction() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_16f
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_16f} :catch_170

    :cond_16f
    :goto_16f
    return-object v14

    :catch_170
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;
    .registers 3

    sget-object p1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->a()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/igexin/push/core/a/a/g;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_15

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->n()I

    move-result v0

    :goto_15
    move v10, v0

    sget-object v0, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->af:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->getDoActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-direct {v7, v9, v2}, Lcom/igexin/push/core/a/a/g;->a(Lcom/igexin/push/core/bean/h;Z)I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ge v4, v5, :cond_ac

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput v3, v4, Landroid/app/Notification;->icon:I

    :try_start_5a
    const-string v3, "android.app.Notification"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setLatestEventInfo"

    new-array v13, v11, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    aput-object v14, v13, v2

    const-class v14, Ljava/lang/CharSequence;

    aput-object v14, v13, v12

    const-class v14, Ljava/lang/CharSequence;

    aput-object v14, v13, v6

    const-class v14, Landroid/app/PendingIntent;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    invoke-virtual {v3, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v11, [Ljava/lang/Object;

    sget-object v13, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    aput-object v13, v5, v2

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v12

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    aput-object v0, v5, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_93} :catch_95

    goto/16 :goto_121

    :catch_95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reflect invoke setLatestEventInfo failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_ac
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_b7

    invoke-direct {v7, v9}, Lcom/igexin/push/core/a/a/g;->a(Lcom/igexin/push/core/bean/h;)Landroid/app/Notification$Builder;

    move-result-object v2

    goto :goto_be

    :cond_b7
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_be
    invoke-direct {v7, v9, v12}, Lcom/igexin/push/core/a/a/g;->a(Lcom/igexin/push/core/bean/h;Z)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {}, Lcom/igexin/push/util/a;->f()Z

    move-result v0

    if-eqz v0, :cond_121

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_121

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_121

    :try_start_fe
    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "right_icon"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_121

    if-eqz v0, :cond_121

    iget-object v2, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v3, 0x8

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_11f} :catch_120

    goto :goto_121

    :catch_120
    nop

    :cond_121
    :goto_121
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v11, v4, Landroid/app/Notification;->defaults:I

    const v0, -0xff0100

    iput v0, v4, Landroid/app/Notification;->ledARGB:I

    const/16 v0, 0x3e8

    iput v0, v4, Landroid/app/Notification;->ledOnMS:I

    const/16 v0, 0xbb8

    iput v0, v4, Landroid/app/Notification;->ledOffMS:I

    iput v12, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->d()Z

    move-result v0

    if-eqz v0, :cond_143

    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_147

    :cond_143
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_147
    iput v0, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->f()Z

    move-result v0

    if-eqz v0, :cond_154

    iget v0, v4, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v12

    iput v0, v4, Landroid/app/Notification;->defaults:I

    :cond_154
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->e()Z

    move-result v0

    if-eqz v0, :cond_15f

    iget v0, v4, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v6

    iput v0, v4, Landroid/app/Notification;->defaults:I

    :cond_15f
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16b

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_172

    :cond_16b
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->j()Z

    move-result v0

    if-eqz v0, :cond_172

    return-void

    :cond_172
    invoke-virtual {v1, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_183

    move-object v1, v2

    goto :goto_187

    :cond_183
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v1

    :goto_187
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18e

    goto :goto_192

    :cond_18e
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v2

    :goto_192
    move-object/from16 v3, p2

    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/igexin/push/core/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 4

    if-eqz p1, :cond_27

    instance-of v0, p2, Lcom/igexin/push/core/bean/h;

    if-eqz v0, :cond_27

    check-cast p2, Lcom/igexin/push/core/bean/h;

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1c
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/igexin/push/core/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/h;)V

    :cond_27
    const/4 p1, 0x1

    return p1
.end method
