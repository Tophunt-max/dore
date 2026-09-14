###### Class com.igexin.push.extension.distribution.gbd.i.al (com.igexin.push.extension.distribution.gbd.i.al)
.class public Lcom/igexin/push/extension/distribution/gbd/i/al;
.super Ljava/lang/Object;


# direct methods
.method private static a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 6

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    :try_start_c
    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3c

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/al;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-ltz p0, :cond_3c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_38

    move-object v1, p0

    goto :goto_3c

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const-string v3, ""

    if-ge v1, v2, :cond_3b

    if-eqz v0, :cond_20

    goto :goto_3b

    :cond_20
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    return-object v3

    :cond_2b
    :try_start_2b
    const-string v0, "getDeviceId"

    invoke-static {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/al;->a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3b

    check-cast p0, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_37

    move-object v3, p0

    goto :goto_3b

    :catchall_37
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    return-object v3
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    if-nez v0, :cond_2c

    move-object v1, p0

    goto :goto_2c

    :catchall_28
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-object v1
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

    if-ge v2, v3, :cond_29

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

    goto :goto_29

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catchall_25
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_29
    :goto_29
    return-object v0
.end method

.method public static b(ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    const-string v0, "getSubscriberId"

    invoke-static {p0, v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/al;->a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_24

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_20

    move-object v1, p0

    goto :goto_24

    :catchall_20
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_9

    return-object v1

    :cond_9
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    if-nez v0, :cond_2c

    move-object v1, p0

    goto :goto_2c

    :catchall_28
    move-exception p0

    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-object v1
.end method

.method public static c(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string v1, "getSimSerialNumber"

    invoke-static {p0, v1, p1}, Lcom/igexin/push/extension/distribution/gbd/i/al;->a(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_23

    goto :goto_e

    :cond_d
    move-object p0, v0

    :goto_e
    :try_start_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    const/16 v1, 0x14

    if-ge p1, v1, :cond_1d

    goto :goto_27

    :cond_1d
    move-object v0, p0

    goto :goto_27

    :catchall_1f
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_24

    :catchall_23
    move-exception p0

    :goto_24
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_27
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_35

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    move-object p0, v1

    :goto_21
    :try_start_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    const/16 v2, 0x14

    if-ge v0, v2, :cond_30

    goto :goto_39

    :cond_30
    move-object v1, p0

    goto :goto_39

    :catchall_32
    move-exception v0

    move-object v1, p0

    goto :goto_36

    :catchall_35
    move-exception v0

    :goto_36
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_39
    return-object v1
.end method

.method public static d(ILandroid/content/Context;)I
    .registers 10

    const-string v0, "_id"

    const-string v1, "content://telephony/siminfo"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_18

    return v1

    :cond_18
    const/4 p1, 0x0

    :try_start_19
    const-string v4, "sim_id"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "sim_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_46

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_40
    .catchall {:try_start_19 .. :try_end_40} :catchall_49

    if-eqz p1, :cond_45

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_45
    return p0

    :cond_46
    if-eqz p1, :cond_52

    goto :goto_4f

    :catchall_49
    move-exception p0

    :try_start_4a
    invoke-static {p0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    if-eqz p1, :cond_52

    :goto_4f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_52
    return v1

    :catchall_53
    move-exception p0

    if-eqz p1, :cond_59

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_59
    throw p0
.end method
