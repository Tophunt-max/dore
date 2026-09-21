###### Class com.igexin.push.extension.distribution.basic.a.a (com.igexin.push.extension.distribution.basic.a.a)
.class public Lcom/igexin/push/extension/distribution/basic/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/extension/distribution/basic/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/igexin/push/extension/distribution/basic/b/a;Z)I
    .registers 9

    const-string v0, "mipmap"

    const-string v1, "drawable"

    if-eqz p2, :cond_51

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const-string v3, "push_small"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_22

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {p2, v3, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_22
    if-eqz p2, :cond_3b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|push_small.png is set, use default push_small"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return p2

    :cond_3b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|push_small.png is missing"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_51
    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const-string v3, "push"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_6d

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {p2, v3, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    :cond_6d
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x1080093

    if-eqz v2, :cond_81

    if-eqz p2, :cond_7d

    goto :goto_80

    :cond_7d
    const p2, 0x1080093

    :goto_80
    return p2

    :cond_81
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object v2

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    return v3

    :cond_8e
    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "email"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b2

    const v3, 0x108008f

    :cond_b2
    return v3

    :cond_b3
    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d5

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->t()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :cond_d5
    if-eqz v1, :cond_d8

    return v1

    :cond_d8
    if-eqz p2, :cond_db

    return p2

    :cond_db
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

.method private a(Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification$Builder;
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

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->c()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-virtual {v10, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Parcelable;

    if-nez v10, :cond_bd

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->d()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v8

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->e()I

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

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->r()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->s()Z

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

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/b/a;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_d8} :catch_d8

    :catch_d8
    :cond_d8
    return-object v1
.end method

.method private a(Landroid/app/Notification;Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification;
    .registers 5

    const/4 v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    const v0, -0xff0100

    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    const/16 v0, 0x3e8

    iput v0, p1, Landroid/app/Notification;->ledOnMS:I

    const/16 v0, 0xbb8

    iput v0, p1, Landroid/app/Notification;->ledOffMS:I

    const/4 v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->s()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget v1, p1, Landroid/app/Notification;->defaults:I

    or-int/2addr v1, v0

    iput v1, p1, Landroid/app/Notification;->defaults:I

    :cond_1e
    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->q()Z

    move-result v1

    if-eqz v1, :cond_29

    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    goto :goto_2d

    :cond_29
    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    :goto_2d
    iput v1, p1, Landroid/app/Notification;->flags:I

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->r()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v1, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/app/Notification;->defaults:I

    :cond_3b
    invoke-direct {p0, p2, v0}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Lcom/igexin/push/extension/distribution/basic/b/a;Z)I

    move-result p2

    iput p2, p1, Landroid/app/Notification;->icon:I

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/igexin/push/extension/distribution/basic/b/a;Z)Landroid/app/PendingIntent;
    .registers 13

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "messageid"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->getDoActionId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "actionid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/c/g;->d:Ljava/lang/String;

    const-string p2, "accesstoken"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notifID"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->C()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "notifyStyle"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "id"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->j()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "bigStyle"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isFloat"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "checkpackage"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->getActionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->getActionId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p5, 0x1

    sub-int/2addr p3, p5

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "feedbackid"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->o()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a5

    move-object p1, p2

    :cond_a5
    const-string p3, "title"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b1

    goto :goto_b2

    :cond_b1
    move-object p2, p1

    :goto_b2
    const-string p1, "content"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "4.3.9.0"

    const-string p2, "2.11.0.0"

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 p2, 0x8000000

    const/16 p3, 0x3e8

    if-gez p1, :cond_d5

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    new-instance p4, Ljava/util/Random;

    invoke-direct {p4}, Ljava/util/Random;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_d5
    :try_start_d5
    new-instance p1, Landroid/content/Intent;

    sget-object p4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/basic/j/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "action"

    const-string v1, "com.igexin.action.notification.click"

    invoke-virtual {p1, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "broadcast_intent"

    invoke-virtual {p1, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_f2
    .catchall {:try_start_d5 .. :try_end_f2} :catchall_151

    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p4, v0, :cond_141

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/j/e;->a()Z

    move-result p4

    if-eqz p4, :cond_141

    :try_start_fe
    const-class p4, Landroid/app/PendingIntent;

    const-string v0, "getForegroundService"

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p5

    const-class v3, Landroid/content/Intent;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    invoke-virtual {p4, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    aput-object v2, v1, v4

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p5

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, v6

    invoke-virtual {p4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/PendingIntent;
    :try_end_140
    .catchall {:try_start_fe .. :try_end_140} :catchall_141

    return-object p4

    :catchall_141
    :cond_141
    sget-object p4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    new-instance p5, Ljava/util/Random;

    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-static {p4, p3, p1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :catchall_151
    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    new-instance p4, Ljava/util/Random;

    invoke-direct {p4}, Ljava/util/Random;-><init>()V

    invoke-virtual {p4, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    move-object v1, p0

    const-string v2, "4.3.9.0"

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_8

    return-void

    :cond_8
    const/4 v3, 0x0

    const v4, 0x71603a60

    :try_start_c
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/a/a;->b(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_da

    sget-object v5, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    if-eqz v5, :cond_da

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_a7

    :try_start_1f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "action"

    const/16 v6, 0x271b

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "com.igexin.sdk.message.GTNotificationMessage"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "2.12.0.0"

    invoke-static {v2, v6}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-nez v6, :cond_5c

    new-array v6, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v8

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v6, "notification_arrive"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v8

    aput-object p2, v9, v7

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_89

    :cond_5c
    const/4 v6, 0x4

    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v8

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    const-class v11, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v10, "notification_arrived"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v7

    aput-object p3, v6, v9

    aput-object p4, v6, v12

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_89
    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/a;->a()Lcom/igexin/push/extension/distribution/basic/c/a;

    move-result-object v0

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v3, v5, v4}, Lcom/igexin/push/extension/distribution/basic/c/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    goto :goto_da

    :cond_9e
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a3
    .catchall {:try_start_1f .. :try_end_a3} :catchall_a4

    goto :goto_da

    :catchall_a4
    move-exception v0

    move-object v3, v5

    goto :goto_a8

    :catchall_a7
    move-exception v0

    :goto_a8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_da

    const-string v0, "2.13.1.0"

    invoke-static {v2, v0}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_da

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/a;->a()Lcom/igexin/push/extension/distribution/basic/c/a;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v4}, Lcom/igexin/push/extension/distribution/basic/c/a;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    :cond_da
    :goto_da
    return-void
.end method

.method private a()Z
    .registers 15

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Landroid/content/Context;)Lcom/igexin/push/extension/distribution/basic/i/a;

    move-result-object v0

    const-string v1, "getui_notification"

    const-string v2, "layout"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    const-string v1, "getui_notification_style1"

    const-string v3, "id"

    invoke-virtual {v0, v1, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v4, "getui_notification_style2"

    invoke-virtual {v0, v4, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "getui_notification_style3"

    invoke-virtual {v0, v5, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "getui_notification_icon"

    invoke-virtual {v0, v6, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "getui_notification_bg"

    invoke-virtual {v0, v7, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "getui_notification_date"

    invoke-virtual {v0, v8, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v9, "getui_notification_icon2"

    invoke-virtual {v0, v9, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v10, "getui_notification_style1_title"

    invoke-virtual {v0, v10, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string v11, "getui_notification_style1_content"

    invoke-virtual {v0, v11, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string v12, "getui_notification__style2_title"

    invoke-virtual {v0, v12, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const-string v13, "getui_notification_style3_content"

    invoke-virtual {v0, v13, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_6d

    if-eqz v4, :cond_6d

    if-eqz v5, :cond_6d

    if-eqz v6, :cond_6d

    if-eqz v7, :cond_6d

    if-eqz v8, :cond_6d

    if-eqz v9, :cond_6d

    if-eqz v10, :cond_6d

    if-eqz v11, :cond_6d

    if-eqz v12, :cond_6d

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    return v0

    :cond_6d
    return v2
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "4.3.9.0"

    const-string v1, "2.13.1.0"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1c

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/j/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/basic/j/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private b()I
    .registers 3

    :try_start_0
    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/Class;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/a;->a()Lcom/igexin/push/extension/distribution/basic/d/a;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "isFloat"

    const-string v2, "priority"

    const-string v3, "getui_notification.xml doesn\'t exist"

    const-string v4, "bigStyle"

    const-string v5, "text"

    const-string v6, "title"

    const-string v7, "id"

    const-string v8, "notifyStyle"

    const-string v9, "notifyid"

    const-string v10, "big_text"

    const-string v11, "big_image_url"

    const-string v12, "logo"

    const-string v13, "logo_url"

    const-string v14, "banner_url"

    :try_start_1e
    new-instance v15, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-direct {v15}, Lcom/igexin/push/extension/distribution/basic/b/a;-><init>()V

    move-object/from16 v16, v9

    const-string v9, "notification"

    invoke-virtual {v15, v9}, Lcom/igexin/push/extension/distribution/basic/b/a;->setType(Ljava/lang/String;)V

    const-string v9, "actionid"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/igexin/push/extension/distribution/basic/b/a;->setActionId(Ljava/lang/String;)V

    const-string v9, "do"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/igexin/push/extension/distribution/basic/b/a;->setDoActionId(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_40} :catch_2c4

    move-object/from16 v17, v1

    const/4 v1, 0x0

    if-eqz v9, :cond_4a

    :try_start_45
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    :cond_4a
    const/4 v8, 0x0

    :goto_4b
    :try_start_4b
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/igexin/push/extension/distribution/basic/b/a;->c(Ljava/lang/String;)V

    :cond_58
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/igexin/push/extension/distribution/basic/b/a;->g(Ljava/lang/String;)V

    :cond_65
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/igexin/push/extension/distribution/basic/b/a;->h(Ljava/lang/String;)V

    :cond_72
    invoke-virtual {v15}, Lcom/igexin/push/extension/distribution/basic/b/a;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_a1

    invoke-virtual {v15}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    if-eq v8, v6, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|title and content is empty, not support"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_9f} :catch_2c4

    const/4 v0, 0x0

    return-object v0

    :cond_a1
    const-string v5, "http"

    if-ne v8, v6, :cond_e4

    :try_start_a5
    sget-object v7, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    const-string v8, "parse notify style 4"

    invoke-static {v7, v8}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Lcom/igexin/push/extension/distribution/basic/b/a;->h(I)V

    invoke-direct/range {p0 .. p0}, Lcom/igexin/push/extension/distribution/basic/a/a;->a()Z

    move-result v8

    if-eqz v8, :cond_cd

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ee

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/igexin/push/extension/distribution/basic/b/a;->k(Ljava/lang/String;)V

    goto :goto_ee

    :cond_cd
    invoke-static {v7, v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_e4
    sget-object v3, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    const-string v7, "parse notify style 0"

    invoke-static {v3, v7}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->h(I)V

    :cond_ee
    :goto_ee
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_f2} :catch_2c4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v3, :cond_100

    :try_start_f6
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    const/4 v3, 0x0

    :goto_fc
    if-gt v3, v7, :cond_100

    if-ge v3, v8, :cond_101

    :cond_100
    const/4 v3, 0x0

    :cond_101
    :try_start_101
    invoke-virtual {v15, v3}, Lcom/igexin/push/extension/distribution/basic/b/a;->d(I)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11b

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11b

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/igexin/push/extension/distribution/basic/b/a;->j(Ljava/lang/String;)V

    :cond_11b
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_11f} :catch_2c4

    const-string v9, ""

    if-eqz v4, :cond_16d

    :try_start_123
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16d

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, ".png"

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_145

    const-string v12, ".jpeg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v13, :cond_143

    goto :goto_145

    :cond_143
    :goto_143
    move-object v4, v9

    goto :goto_16a

    :cond_145
    :goto_145
    const-string v12, ".png"

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ne v12, v13, :cond_153

    const-string v12, ".jpeg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    :cond_153
    if-eq v12, v13, :cond_16a

    invoke-virtual {v4, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v12, "^\\d+$"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_16a

    goto :goto_143

    :cond_16a
    :goto_16a
    invoke-virtual {v15, v4}, Lcom/igexin/push/extension/distribution/basic/b/a;->i(Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_16d} :catch_2c4

    :cond_16d
    :try_start_16d
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_187

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x3

    if-le v2, v4, :cond_180

    if-ge v2, v7, :cond_180

    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->c(I)V

    goto :goto_187

    :cond_180
    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->c(I)V
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_183} :catch_184

    goto :goto_187

    :catch_184
    :try_start_184
    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->c(I)V

    :cond_187
    :goto_187
    if-ne v3, v8, :cond_1a1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->f(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_1a1
    const/4 v2, 0x2

    if-ne v3, v2, :cond_1bc

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bc

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->d(Ljava/lang/String;)V

    goto :goto_1d6

    :cond_1bc
    if-ne v3, v7, :cond_1d6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "big style = 3 doesn\'t support"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1d6
    :goto_1d6
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1eb

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1eb

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->b(Z)V

    :cond_1eb
    const-string v2, "is_noclear"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_201

    const-string v2, "is_noclear"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1fd

    const/4 v2, 0x1

    goto :goto_1fe

    :cond_1fd
    const/4 v2, 0x0

    :goto_1fe
    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->d(Z)V

    :cond_201
    const-string v2, "is_novibrate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    const-string v2, "is_novibrate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_213

    const/4 v2, 0x1

    goto :goto_214

    :cond_213
    const/4 v2, 0x0

    :goto_214
    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->e(Z)V

    :cond_217
    const-string v2, "is_noring"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22b

    const-string v2, "is_noring"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_228

    const/4 v1, 0x1

    :cond_228
    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->f(Z)V

    :cond_22b
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23c

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->n(Ljava/lang/String;)V

    :cond_23c
    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24d

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->a(Ljava/lang/String;)V

    :cond_24d
    const-string v1, "channelName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25e

    const-string v1, "channelName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->b(Ljava/lang/String;)V

    :cond_25e
    const-string v1, "channelLevel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26f

    const-string v1, "channelLevel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/igexin/push/extension/distribution/basic/b/a;->b(I)V

    :cond_26f
    invoke-virtual {v15}, Lcom/igexin/push/extension/distribution/basic/b/a;->e()I

    move-result v1

    if-gt v1, v6, :cond_27b

    invoke-virtual {v15}, Lcom/igexin/push/extension/distribution/basic/b/a;->e()I

    move-result v1

    if-gez v1, :cond_27e

    :cond_27b
    invoke-virtual {v15, v7}, Lcom/igexin/push/extension/distribution/basic/b/a;->b(I)V

    :cond_27e
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_284} :catch_2c4

    if-eqz v2, :cond_2c3

    :try_start_286
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->a(I)V

    invoke-virtual {v15, v8}, Lcom/igexin/push/extension/distribution/basic/b/a;->a(Z)V
    :try_end_294
    .catch Ljava/lang/NumberFormatException; {:try_start_286 .. :try_end_294} :catch_295
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_294} :catch_2c4

    goto :goto_2c3

    :catch_295
    :try_start_295
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

    sget-object v2, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_2c3
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2c3} :catch_2c4

    :cond_2c3
    :goto_2c3
    return-object v15

    :catch_2c4
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;
    .registers 15

    instance-of v0, p2, Lcom/igexin/push/extension/distribution/basic/b/a;

    if-eqz v0, :cond_98

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v7, :cond_37

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v0, v4}, Lcom/igexin/push/extension/distribution/basic/b/a;->c(Z)V

    const/4 v10, 0x1

    goto :goto_38

    :cond_34
    invoke-virtual {v0, v5}, Lcom/igexin/push/extension/distribution/basic/b/a;->e(Ljava/lang/String;)V

    :cond_37
    const/4 v10, 0x0

    :goto_38
    if-eqz v1, :cond_50

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-virtual {v0, v4}, Lcom/igexin/push/extension/distribution/basic/b/a;->g(Z)V

    const/4 v5, 0x1

    goto :goto_51

    :cond_4d
    invoke-virtual {v0, v5}, Lcom/igexin/push/extension/distribution/basic/b/a;->l(Ljava/lang/String;)V

    :cond_50
    const/4 v5, 0x0

    :goto_51
    if-eqz v6, :cond_69

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/d;->a()Lcom/igexin/push/extension/distribution/basic/c/d;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v0, v4}, Lcom/igexin/push/extension/distribution/basic/b/a;->h(Z)V

    const/4 v11, 0x1

    goto :goto_6a

    :cond_66
    invoke-virtual {v0, v11}, Lcom/igexin/push/extension/distribution/basic/b/a;->m(Ljava/lang/String;)V

    :cond_69
    const/4 v11, 0x0

    :goto_6a
    if-nez v5, :cond_74

    if-nez v11, :cond_74

    if-eqz v10, :cond_71

    goto :goto_74

    :cond_71
    sget-object v0, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    return-object v0

    :cond_74
    :goto_74
    if-eqz v5, :cond_7e

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;I)V

    :cond_7e
    if-eqz v11, :cond_89

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object v3, v9

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;I)V

    :cond_89
    if-eqz v10, :cond_95

    const/16 v5, 0x8

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;I)V

    :cond_95
    sget-object v0, Lcom/igexin/push/core/c;->b:Lcom/igexin/push/core/c;

    return-object v0

    :cond_98
    sget-object v0, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/extension/distribution/basic/b/a;I)V
    .registers 17

    move-object v6, p0

    move-object v7, p1

    move-object v4, p3

    sget-object v0, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2a

    invoke-direct {p0, p3}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_2a
    invoke-virtual {p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p3}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Landroid/app/Notification;Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Landroid/content/Context;)Lcom/igexin/push/extension/distribution/basic/i/a;

    move-result-object v1

    const-string v2, "getui_notification"

    const-string v3, "layout"

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "getui_notification_bg"

    const-string v5, "id"

    invoke-virtual {v1, v3, v5}, Lcom/igexin/push/extension/distribution/basic/i/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v5, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_8d

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/j/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v2, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILcom/igexin/push/extension/distribution/basic/b/a;Z)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x4

    move/from16 v1, p4

    invoke-static {v8, v1, v9, v0}, Lcom/igexin/push/extension/distribution/basic/j/k;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;I)V

    const-string v0, "4.3.9.0"

    const-string v1, "2.12.0.0"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8d

    move-object v0, p2

    invoke-direct {p0, p1, p2, v10, v11}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;I)V
    .registers 18

    move-object v7, p1

    move/from16 v8, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/igexin/push/extension/distribution/basic/c/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/igexin/push/extension/distribution/basic/c/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    move-object v9, v0

    goto :goto_58

    :cond_57
    move-object v9, v7

    :goto_58
    new-instance v10, Lcom/igexin/push/extension/distribution/basic/f/d;

    new-instance v11, Lcom/igexin/push/extension/distribution/basic/a/b;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/extension/distribution/basic/a/b;-><init>(Lcom/igexin/push/extension/distribution/basic/a/a;Lcom/igexin/push/core/bean/BaseAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v10

    move-object v1, v9

    move-object v2, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/extension/distribution/basic/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/core/bean/BaseAction;ILcom/igexin/push/extension/distribution/basic/f/g;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v8, v0, :cond_84

    move-object/from16 v0, p4

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->A()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->f(I)V

    goto :goto_a4

    :cond_84
    const/4 v0, 0x3

    if-ne v8, v0, :cond_94

    move-object/from16 v0, p4

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->B()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->g(I)V

    goto :goto_a4

    :cond_94
    const/16 v0, 0x8

    if-ne v8, v0, :cond_a4

    move-object/from16 v0, p4

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/a;->m()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/igexin/push/extension/distribution/basic/b/a;->e(I)V

    :cond_a4
    :goto_a4
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v2, Lcom/igexin/push/extension/distribution/basic/f/a;

    invoke-direct {v2, v10}, Lcom/igexin/push/extension/distribution/basic/f/a;-><init>(Lcom/igexin/push/extension/distribution/basic/f/f;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/extension/distribution/basic/b/a;I)V
    .registers 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    sget-object v0, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;ILcom/igexin/push/extension/distribution/basic/b/a;Z)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3b

    invoke-direct {v6, v8}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    :cond_3b
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v6, v2, v8}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Landroid/app/Notification;Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->p()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    if-eqz v3, :cond_7f

    const-string v13, ""

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7f

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/basic/j/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "|use net logo bitmap is null = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_73

    const/4 v14, 0x1

    goto :goto_74

    :cond_73
    const/4 v14, 0x0

    :goto_74
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_80

    :cond_7f
    const/4 v3, 0x0

    :goto_80
    if-nez v3, :cond_90

    invoke-direct {v6, v8, v12}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Lcom/igexin/push/extension/distribution/basic/b/a;Z)I

    move-result v3

    sget-object v13, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v13, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_90
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0xb

    const/4 v15, 0x2

    if-lt v13, v14, :cond_1cf

    new-instance v13, Landroid/app/Notification$Builder;

    sget-object v14, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v4, :cond_a6

    invoke-direct {v6, v8}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification$Builder;

    move-result-object v13

    :cond_a6
    iget v4, v2, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_d9

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v14, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_d9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|showNotification smallIconId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " couldn\'t find resource"

    :goto_ce
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_d9
    iget v4, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v2, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_119

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_119

    :try_start_10c
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_117
    .catchall {:try_start_10c .. :try_end_117} :catchall_118

    goto :goto_119

    :catchall_118
    nop

    :cond_119
    :goto_119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_175

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->j()I

    move-result v0

    sget-object v3, Lcom/igexin/push/extension/distribution/basic/g/a;->b:Lcom/igexin/push/extension/distribution/basic/g/a;

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/basic/g/a;->a()I

    move-result v3

    if-ne v0, v3, :cond_14c

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_175

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/j/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_175

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->f()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    goto :goto_172

    :cond_14c
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->j()I

    move-result v0

    sget-object v3, Lcom/igexin/push/extension/distribution/basic/g/a;->c:Lcom/igexin/push/extension/distribution/basic/g/a;

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/basic/g/a;->a()I

    move-result v3

    if-ne v0, v3, :cond_175

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_175

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->f()I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    :goto_172
    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_175
    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->h()Z

    move-result v0

    const/16 v3, 0x15

    if-eqz v0, :cond_190

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_190

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->r()Z

    move-result v0

    if-nez v0, :cond_18d

    invoke-virtual/range {p3 .. p3}, Lcom/igexin/push/extension/distribution/basic/b/a;->s()Z

    move-result v0

    if-eqz v0, :cond_190

    :cond_18d
    invoke-virtual {v13, v15}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :cond_190
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {v6, v0, v8}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Landroid/app/Notification;Lcom/igexin/push/extension/distribution/basic/b/a;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/j/c;->b()Z

    move-result v8

    if-nez v8, :cond_1cb

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_1cb

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_1cb

    :try_start_1a6
    const-string v2, "com.android.internal.R$id"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "right_icon"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_1cb

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v4, 0x8

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v3, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1cb} :catch_1cb

    :catch_1cb
    :cond_1cb
    move-object v2, v0

    :goto_1cc
    move/from16 v0, p4

    goto :goto_215

    :cond_1cf
    :try_start_1cf
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_1e0

    if-eqz v3, :cond_1e0

    invoke-direct/range {p0 .. p0}, Lcom/igexin/push/extension/distribution/basic/a/a;->b()I

    move-result v4

    if-lez v4, :cond_1e0

    iget-object v8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v8, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_1e0
    const-string v3, "android.app.Notification"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setLatestEventInfo"

    const/4 v8, 0x4

    new-array v10, v8, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v12

    const-class v11, Ljava/lang/CharSequence;

    const/4 v13, 0x1

    aput-object v11, v10, v13

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v15

    const-class v11, Landroid/app/PendingIntent;

    const/4 v13, 0x3

    aput-object v11, v10, v13

    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v10, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    aput-object v10, v8, v12

    aput-object v5, v8, v4

    aput-object v9, v8, v15

    aput-object v0, v8, v13

    invoke-virtual {v3, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_214} :catch_228

    goto :goto_1cc

    :goto_215
    invoke-static {v1, v0, v2, v12}, Lcom/igexin/push/extension/distribution/basic/j/k;->a(Landroid/app/NotificationManager;ILandroid/app/Notification;I)V

    const-string v0, "4.3.9.0"

    const-string v1, "2.12.0.0"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/basic/j/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_227

    move-object/from16 v0, p2

    invoke-direct {v6, v7, v0, v5, v9}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_227
    return-void

    :catch_228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "reflect invoke setLatestEventInfo failed!"

    goto/16 :goto_ce
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 10

    const/4 v0, 0x1

    if-eqz p1, :cond_b3

    instance-of v1, p2, Lcom/igexin/push/extension/distribution/basic/b/a;

    if-eqz v1, :cond_b3

    check-cast p2, Lcom/igexin/push/extension/distribution/basic/b/a;

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_1c

    :cond_18
    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->b()I

    move-result v1

    :goto_1c
    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->getActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->getActionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_35

    add-int/lit16 v2, v2, 0x7530

    goto :goto_36

    :catch_35
    nop

    :goto_36
    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->C()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "notifyStyle:"

    const-string v6, ""

    if-ne v3, v4, :cond_67

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p2, v1}, Lcom/igexin/push/extension/distribution/basic/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/extension/distribution/basic/b/a;I)V

    if-eqz v2, :cond_9d

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8c

    :cond_67
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p2, v1}, Lcom/igexin/push/extension/distribution/basic/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/push/extension/distribution/basic/b/a;I)V

    if-eqz v2, :cond_9d

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->C()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->getActionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setPerActionid(I)V

    invoke-virtual {p2}, Lcom/igexin/push/extension/distribution/basic/b/a;->getDoActionId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    :cond_b3
    return v0
.end method
