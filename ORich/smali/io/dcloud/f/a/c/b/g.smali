###### Class io.dcloud.f.a.c.b.g (io.dcloud.f.a.c.b.g)
.class public Lio/dcloud/f/a/c/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "0"

.field private static b:Ljava/lang/String; = "1"

.field private static c:Ljava/lang/String; = "3"

.field private static d:Ljava/lang/String; = "4"

.field private static e:Ljava/lang/String; = "5"

.field private static f:Ljava/lang/String; = "6"

.field private static g:Ljava/lang/String; = "7"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "device"

    .line 3
    :try_start_7
    invoke-static {p0}, Lio/dcloud/f/a/c/b/g;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_20

    const-string v1, "net"

    .line 4
    :try_start_10
    invoke-static {p0}, Lio/dcloud/f/a/c/b/g;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_20

    const-string v1, "gps"

    .line 5
    :try_start_19
    invoke-static {p0}, Lio/dcloud/f/a/c/b/g;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_20

    :catch_20
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    const-string v0, ""

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "os"

    const-string v3, "Android"

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_db

    const-string v2, "osv"

    .line 5
    :try_start_16
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_db

    const-string v2, "vendor"

    .line 6
    :try_start_1d
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_db

    const-string v2, "model"

    .line 7
    :try_start_24
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_db

    const-string v2, "w"

    .line 8
    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_db

    const-string v2, "h"

    .line 9
    :try_start_3a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_db

    const-string v2, "ip"

    .line 10
    :try_start_49
    invoke-static {p0}, Lio/dcloud/f/a/c/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac"

    .line 11
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_db

    const-string v2, "dpi"

    .line 12
    :try_start_57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_db

    const-string v2, "density"

    .line 13
    :try_start_66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_74} :catch_db

    const-string v2, "lan"

    .line 14
    :try_start_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_81} :catch_db

    const-string v2, "country"

    .line 15
    :try_start_83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 18
    array-length v3, v2

    if-lez v3, :cond_9e

    const-string v3, ","

    .line 19
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9f

    :cond_9e
    move-object v2, v0

    :goto_9f
    const-string v3, "imei"

    .line 21
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-static {}, Lio/dcloud/f/a/c/b/e;->a()Lio/dcloud/f/a/c/b/e;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/dcloud/f/a/c/b/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oaid"

    .line 23
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bc

    move-object v2, v0

    :cond_bc
    const-string v3, "aid"

    .line 27
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-static {p0}, Lio/dcloud/f/a/c/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cc

    goto :goto_cd

    :cond_cc
    move-object v0, v2

    :goto_cd
    const-string v2, "imsi"

    .line 32
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_d2} :catch_db

    const-string v0, "ua"

    .line 35
    :try_start_d4
    invoke-static {p0}, Lio/dcloud/f/a/c/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_db} :catch_db

    :catch_db
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "location"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_bf

    .line 7
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_bf

    const-string v2, "getLastKnownLocation"

    const/4 v3, 0x1

    :try_start_16
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "gps"

    aput-object v4, v2, v6

    .line 9
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    if-nez v2, :cond_4d

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "network"

    aput-object v4, v2, v6

    .line 11
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    if-nez v2, :cond_4d

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "passive"

    aput-object v4, v2, v6

    .line 13
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/location/Location;

    :cond_4d
    if-eqz v2, :cond_bf

    const-string p0, "android.location.Location"

    .line 16
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_55} :catch_bf

    if-eqz p0, :cond_bf

    const-string v1, "getLongitude"

    :try_start_59
    new-array v4, v6, [Ljava/lang/Class;

    .line 17
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_bf

    const-string v4, "getLatitude"

    :try_start_61
    new-array v5, v6, [Ljava/lang/Class;

    .line 18
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_bf

    const-string v5, "getAccuracy"

    :try_start_69
    new-array v7, v6, [Ljava/lang/Class;

    .line 19
    invoke-virtual {p0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6f} :catch_bf

    const-string v7, "getTime"

    :try_start_71
    new-array v8, v6, [Ljava/lang/Class;

    .line 20
    invoke-virtual {p0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_bf

    const-string v7, "lon"

    :try_start_7c
    new-array v8, v6, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8c} :catch_bf

    const-string v1, "lat"

    :try_start_8e
    new-array v7, v6, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9e} :catch_bf

    const-string v1, "accuracy"

    :try_start_a0
    new-array v4, v6, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b0} :catch_bf

    const-string v1, "ts"

    :try_start_b2
    new-array v3, v6, [Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_bf} :catch_bf

    :catch_bf
    :cond_bf
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 10

    const-string v0, "10"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "460"

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "phone"

    .line 8
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 11
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_b0

    .line 13
    :try_start_16
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_19

    .line 16
    :catch_19
    :try_start_19
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_30

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_30

    .line 18
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2f} :catch_b0

    goto :goto_31

    :cond_30
    move-object v5, v0

    .line 22
    :goto_31
    :try_start_31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ac

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    const-string v0, "03"

    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "05"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_90

    :cond_4e
    const-string v0, "01"

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "06"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_7b

    :cond_5f
    const-string v0, "00"

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "02"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "07"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_75} :catch_af

    if-eqz v0, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v7, 0x4

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v7, 0x1

    .line 41
    :cond_7b
    :goto_7b
    :try_start_7b
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 42
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_85} :catch_8d

    .line 43
    :try_start_85
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_8c

    move v0, v4

    move v4, v3

    goto :goto_b4

    :catch_8c
    move v3, v4

    :catch_8d
    move-object v0, v5

    const/4 v4, 0x0

    goto :goto_b2

    .line 44
    :cond_90
    :goto_90
    :try_start_90
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 45
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9a} :catch_af

    .line 46
    :try_start_9a
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9e} :catch_aa

    .line 47
    :try_start_9e
    div-int/lit8 v3, v0, 0x10
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a0} :catch_a5

    const/4 v0, 0x2

    move v0, v4

    move v4, v3

    const/4 v3, 0x2

    goto :goto_b5

    :catch_a5
    move v3, v4

    const/4 v7, 0x0

    move v4, v0

    move-object v0, v5

    goto :goto_b2

    :catch_aa
    move v3, v4

    goto :goto_af

    :cond_ac
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_b5

    :catch_af
    :goto_af
    move-object v0, v5

    :catch_b0
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_b2
    move-object v5, v0

    move v0, v3

    :goto_b4
    move v3, v7

    :goto_b5
    const-string v6, "type"

    .line 70
    :try_start_b7
    invoke-static {p0}, Lio/dcloud/f/a/c/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mcc"

    .line 71
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "mnc"

    .line 72
    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "carrier"

    .line 73
    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "cid"

    .line 74
    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "lac"

    .line 75
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_d7} :catch_d7

    :catch_d7
    return-object v1
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/f/a/c/b/g;->b:Ljava/lang/String;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_5a

    .line 5
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 6
    sget-object v0, Lio/dcloud/f/a/c/b/g;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 8
    sget-object v0, Lio/dcloud/f/a/c/b/g;->c:Ljava/lang/String;

    goto :goto_5a

    .line 9
    :cond_22
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_5a

    .line 10
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_5c

    .line 47
    :pswitch_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5a

    .line 48
    :pswitch_49
    sget-object v0, Lio/dcloud/f/a/c/b/g;->g:Ljava/lang/String;

    goto :goto_5a

    .line 49
    :pswitch_4c
    sget-object v0, Lio/dcloud/f/a/c/b/g;->e:Ljava/lang/String;

    goto :goto_5a

    .line 56
    :pswitch_4f
    sget-object v0, Lio/dcloud/f/a/c/b/g;->f:Ljava/lang/String;

    goto :goto_5a

    .line 57
    :pswitch_52
    sget-object v0, Lio/dcloud/f/a/c/b/g;->e:Ljava/lang/String;

    goto :goto_5a

    .line 62
    :pswitch_55
    sget-object v0, Lio/dcloud/f/a/c/b/g;->e:Ljava/lang/String;

    goto :goto_5a

    .line 63
    :pswitch_58
    sget-object v0, Lio/dcloud/f/a/c/b/g;->d:Ljava/lang/String;

    :cond_5a
    :goto_5a
    return-object v0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_58
        :pswitch_58
        :pswitch_55
        :pswitch_58
        :pswitch_52
        :pswitch_52
        :pswitch_58
        :pswitch_55
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_52
        :pswitch_4f
        :pswitch_37
        :pswitch_4c
        :pswitch_4c
        :pswitch_37
        :pswitch_49
    .end packed-switch
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "dcloud-ads"

    const-string v1, "u-a"

    .line 1
    invoke-static {p0, v0, v1}, Lio/dcloud/f/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 6
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 9
    invoke-static {p0, v0, v1, v3}, Lio/dcloud/f/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :cond_26
    return-object v2
.end method
