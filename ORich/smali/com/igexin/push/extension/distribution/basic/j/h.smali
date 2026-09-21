###### Class com.igexin.push.extension.distribution.basic.j.h (com.igexin.push.extension.distribution.basic.j.h)
.class public Lcom/igexin/push/extension/distribution/basic/j/h;
.super Ljava/lang/Object;


# direct methods
.method private static a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 6

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, v0}, Lcom/igexin/push/extension/distribution/basic/j/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_35

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/basic/j/h;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-ltz p0, :cond_35

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_35

    move-object v1, p0

    :catchall_35
    :cond_35
    return-object v1
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string v1, "getDeviceId"

    invoke-static {p0, v1, p1}, Lcom/igexin/push/extension/distribution/basic/j/h;->a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_d

    move-object v0, p0

    :catchall_d
    :cond_d
    return-object v0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Class;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_25

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    const/4 v4, 0x1

    if-lt v3, v4, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_25
    :cond_25
    :goto_25
    return-object v0
.end method
