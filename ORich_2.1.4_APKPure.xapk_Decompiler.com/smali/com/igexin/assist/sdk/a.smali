###### Class com.igexin.assist.sdk.a (com.igexin.assist.sdk.a)
.class public Lcom/igexin/assist/sdk/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static a(Landroid/content/Context;)Lcom/igexin/assist/control/AbstractPushManager;
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/igexin/assist/sdk/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/igexin/push/config/k;->T:Z

    if-eqz v0, :cond_2e

    const-string v0, "Assist_PushMangerFactory|FcmPushManager checkDevice flag = true"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_3c

    :try_start_f
    const-string v0, "com.igexin.assist.control.fcm.FcmPushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/assist/control/AbstractPushManager;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_3c
    .catchall {:try_start_f .. :try_end_2d} :catchall_3c

    return-object p0

    :cond_2e
    :try_start_2e
    const-string p0, "Assist_PushMangerFactory|getPushManager = null, setToken = false"

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object p0

    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/c/h;->d(Ljava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3c

    :catch_3c
    :catchall_3c
    :cond_3c
    const-string p0, "Assist_PushMangerFactory|OtherPushManager = null"

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    sget v0, Lcom/igexin/assist/sdk/a;->a:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_d

    const/4 v2, 0x1

    :cond_d
    return v2

    :cond_e
    :try_start_e
    const-string v0, "com.igexin.assist.control.fcm.FcmPushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkFcmDevice"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget p0, Lcom/igexin/assist/sdk/a;->a:I

    or-int/2addr p0, v3

    sput p0, Lcom/igexin/assist/sdk/a;->a:I

    if-eqz v2, :cond_3a

    or-int/lit8 p0, p0, 0x2

    sput p0, Lcom/igexin/assist/sdk/a;->a:I
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_3a

    :catchall_3a
    :cond_3a
    sget p0, Lcom/igexin/assist/sdk/a;->a:I

    or-int/2addr p0, v3

    sput p0, Lcom/igexin/assist/sdk/a;->a:I

    return v2
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
