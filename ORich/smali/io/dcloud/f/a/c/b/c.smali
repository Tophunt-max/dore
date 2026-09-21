###### Class io.dcloud.f.a.c.b.c (io.dcloud.f.a.c.b.c)
.class public Lio/dcloud/f/a/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILandroid/content/Context;)Ljava/lang/Object;
    .registers 8

    :try_start_0
    const-string v0, "phone"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_48

    const-string v0, "getSubscriberId"

    .line 4
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_2b

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_49

    :cond_2b
    if-ne v1, v2, :cond_48

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    :cond_48
    const/4 p0, 0x0

    :goto_49
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 11
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "00000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static b(ILandroid/content/Context;)I
    .registers 10

    const-string v0, "_id"

    const-string v1, "content://telephony/siminfo"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p1, 0x0

    :try_start_d
    const-string v1, "sim_id"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_3a
    .catchall {:try_start_d .. :try_end_13} :catchall_3f

    const-string v5, "sim_id = ?"

    const/4 v1, 0x1

    :try_start_16
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_3a
    .catchall {:try_start_16 .. :try_end_34} :catchall_3f

    if-eqz p1, :cond_39

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return p0

    :catch_3a
    nop

    goto :goto_46

    :cond_3c
    if-eqz p1, :cond_4b

    goto :goto_48

    :catchall_3f
    move-exception p0

    if-eqz p1, :cond_45

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_45
    throw p0

    :goto_46
    if-eqz p1, :cond_4b

    .line 19
    :goto_48
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4b
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 1
    :try_start_6
    invoke-static {v0, p0}, Lio/dcloud/f/a/c/b/c;->b(ILandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p0}, Lio/dcloud/f/a/c/b/c;->b(ILandroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    if-ne v1, v2, :cond_19

    .line 4
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5c

    .line 6
    :cond_19
    invoke-static {v0, p0}, Lio/dcloud/f/a/c/b/c;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-static {v1, p0}, Lio/dcloud/f/a/c/b/c;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_5b

    if-nez v2, :cond_4e

    .line 10
    :try_start_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4b} :catch_4c

    goto :goto_5c

    :catch_4c
    :cond_4c
    move-object p0, v0

    goto :goto_5c

    .line 13
    :cond_4e
    :try_start_4e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    move-object p0, v1

    goto :goto_5c

    .line 16
    :cond_56
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5b

    goto :goto_5c

    :catch_5b
    const/4 p0, 0x0

    :goto_5c
    return-object p0
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .registers 12

    const-string v0, "getImei"

    const-string v1, "phone"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, p0, v4, v5}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_5c

    const-string v5, "getImei2"

    :try_start_28
    new-array v6, v2, [Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, p0, v6, v7}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_5c

    if-nez v5, :cond_39

    goto :goto_3a

    :cond_39
    move-object v3, v1

    .line 10
    :goto_3a
    :try_start_3a
    invoke-static {v4}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3e} :catch_5a

    if-nez v5, :cond_5a

    .line 12
    :try_start_40
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 13
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-static {v5}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5e

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_54} :catch_58

    if-nez v6, :cond_5e

    move-object v3, v5

    goto :goto_5e

    :catch_58
    nop

    goto :goto_5e

    :catch_5a
    :cond_5a
    move-object v4, v1

    goto :goto_5e

    :catch_5c
    move-object v3, v1

    move-object v4, v3

    .line 23
    :cond_5e
    :goto_5e
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_6b

    invoke-static {v4}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    .line 25
    :cond_6b
    :try_start_6b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v5, v0, p0, v7, v9}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v9, v6, [Ljava/lang/Class;

    aput-object v8, v9, v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v7, v0, p0, v9, v8}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v5, :cond_aa

    .line 27
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_aa

    move-object v3, v5

    :cond_aa
    if-eqz v0, :cond_cf

    .line 30
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_e2

    if-nez v7, :cond_cf

    .line 32
    :try_start_b2
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 33
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-static {v5}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_cb

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_cd

    if-nez v4, :cond_cb

    move-object v4, v0

    move-object v3, v5

    goto :goto_cf

    :cond_cb
    move-object v4, v0

    goto :goto_cf

    :catch_cd
    nop

    goto :goto_e3

    :cond_cf
    :goto_cf
    if-nez v5, :cond_e2

    if-nez v0, :cond_e2

    if-nez v3, :cond_e2

    if-nez v4, :cond_e2

    .line 40
    :try_start_d7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_df} :catch_e2

    if-nez v0, :cond_e2

    move-object v3, p0

    :catch_e2
    :cond_e2
    move-object v0, v4

    .line 50
    :goto_e3
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f7

    invoke-static {v0}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_f7

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    aput-object v3, p0, v2

    aput-object v0, p0, v6

    return-object p0

    .line 52
    :cond_f7
    invoke-static {v3}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_102

    new-array p0, v6, [Ljava/lang/String;

    aput-object v3, p0, v2

    return-object p0

    .line 54
    :cond_102
    invoke-static {v0}, Lio/dcloud/f/a/c/b/c;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10d

    new-array p0, v6, [Ljava/lang/String;

    aput-object v0, p0, v2

    return-object p0

    :cond_10d
    return-object v1
.end method
