###### Class com.igexin.push.extension.distribution.basic.j.a (com.igexin.push.extension.distribution.basic.j.a)
.class public Lcom/igexin/push/extension/distribution/basic/j/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 7

    sget v0, Lcom/igexin/push/extension/distribution/basic/j/a;->b:I

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
    const-string v0, "com.igexin.assist.control.xiaomi.MiuiPushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkXMDevice"

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

    if-eqz v2, :cond_37

    sget p0, Lcom/igexin/push/extension/distribution/basic/j/a;->b:I

    or-int/lit8 p0, p0, 0x2

    sput p0, Lcom/igexin/push/extension/distribution/basic/j/a;->b:I
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_37

    :catchall_37
    :cond_37
    sget p0, Lcom/igexin/push/extension/distribution/basic/j/a;->b:I

    or-int/2addr p0, v3

    sput p0, Lcom/igexin/push/extension/distribution/basic/j/a;->b:I

    return v2
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 7

    sget v0, Lcom/igexin/push/extension/distribution/basic/j/a;->a:I

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
    const-string v0, "com.igexin.assist.control.meizu.FlymePushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "checkMZDevice"

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

    if-eqz v2, :cond_37

    sget p0, Lcom/igexin/push/extension/distribution/basic/j/a;->a:I

    or-int/lit8 p0, p0, 0x2

    sput p0, Lcom/igexin/push/extension/distribution/basic/j/a;->a:I
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_37

    :catchall_37
    :cond_37
    sget p0, Lcom/igexin/push/extension/distribution/basic/j/a;->a:I

    or-int/2addr p0, v3

    sput p0, Lcom/igexin/push/extension/distribution/basic/j/a;->a:I

    return v2
.end method

.method public static c(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/basic/j/a;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_48

    const/4 v1, 0x0

    const-string v2, "clearNotification"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_28

    :try_start_b
    const-string v0, "com.xiaomi.mipush.sdk.MiPushClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AssistUtil | cancelAllAssistNotification() XM "

    :goto_24
    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_61

    :cond_28
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/basic/j/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "com.meizu.cloud.pushsdk.PushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AssistUtil | cancelAllAssistNotification() MZ "
    :try_end_47
    .catchall {:try_start_b .. :try_end_47} :catchall_48

    goto :goto_24

    :catchall_48
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistUtil | cancelAllAssistNotification() err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_61
    :goto_61
    return-void
.end method
