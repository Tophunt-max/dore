###### Class com.appsflyer.internal.e (com.appsflyer.internal.e)
.class public Lcom/appsflyer/internal/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AppsFlyerConversionListener:I = 0x0

.field public static final AppsFlyerInAppPurchaseValidatorListener:I = 0x0

.field private static onAppOpenAttribution:Ljava/lang/Object; = null

.field private static onAttributionFailure:J = 0x0L

.field private static onConversionDataFail:Ljava/lang/Object; = null

.field private static onConversionDataSuccess:B = 0x0t

.field public static onDeepLinking:[B = null

.field public static onInstallConversionFailureNative:[B = null

.field public static final onValidateInApp:[B = null

.field private static onValidateInAppFailure:I = 0x1


# direct methods
.method private static $$c(BIS)Ljava/lang/String;
    .registers 11

    sget v0, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v1, v0, 0x6f

    and-int/lit8 v0, v0, 0x6f

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x2d

    if-nez v1, :cond_16

    const/16 v1, 0x2d

    goto :goto_18

    :cond_16
    const/16 v1, 0x12

    :goto_18
    const/4 v4, 0x0

    if-eq v1, v3, :cond_3a

    add-int/lit8 p2, p2, 0x29

    sget-object v1, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    add-int/lit8 p1, p1, 0x4

    neg-int p0, p0

    not-int p0, p0

    rsub-int/lit8 p0, p0, 0x24

    sub-int/2addr p0, v2

    new-array v3, p0, [B

    add-int/lit8 p0, p0, 0x5c

    sub-int/2addr p0, v2

    or-int/lit8 v5, p0, -0x5c

    shl-int/2addr v5, v2

    xor-int/lit8 p0, p0, -0x5c

    sub-int/2addr v5, p0

    if-nez v1, :cond_35

    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    const/4 p0, 0x1

    :goto_36
    if-eqz p0, :cond_6c

    :goto_38
    const/4 v0, 0x0

    goto :goto_93

    :cond_3a
    xor-int/lit8 v1, p2, 0x5d

    and-int/lit8 p2, p2, 0x5d

    shl-int/2addr p2, v2

    add-int/2addr p2, v1

    sget-object v1, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    xor-int/lit16 v3, p1, 0x87

    and-int/lit16 p1, p1, 0x87

    shl-int/2addr p1, v2

    add-int/2addr v3, p1

    and-int/lit8 p1, v3, -0x3f

    or-int/lit8 v3, v3, -0x3f

    add-int/2addr p1, v3

    const/16 v3, 0x4a

    ushr-int p0, v3, p0

    new-array v3, p0, [B

    xor-int/lit8 v5, p0, 0x2e

    and-int/lit8 p0, p0, 0x2e

    shl-int/2addr p0, v2

    add-int/2addr v5, p0

    or-int/lit8 p0, v5, -0x4

    shl-int/2addr p0, v2

    xor-int/lit8 v5, v5, -0x4

    sub-int v5, p0, v5

    const/16 p0, 0x17

    if-nez v1, :cond_67

    const/16 v6, 0x17

    goto :goto_69

    :cond_67
    const/16 v6, 0x1a

    :goto_69
    if-eq v6, p0, :cond_6c

    goto :goto_38

    :cond_6c
    and-int/lit8 p0, v0, 0x5f

    or-int/lit8 p2, v0, 0x5f

    add-int/2addr p0, p2

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    rem-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p2, 0x29

    or-int/lit8 p2, p2, 0x29

    add-int/2addr p0, p2

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 p0, p0, 0x2

    move p0, p1

    move p2, v5

    const/4 v0, 0x0

    :goto_85
    neg-int v5, v5

    xor-int v6, p1, v5

    and-int/2addr p1, v5

    shl-int/2addr p1, v2

    add-int/2addr v6, p1

    and-int/lit8 p1, v6, -0x3

    or-int/lit8 v5, v6, -0x3

    add-int/2addr p1, v5

    move v5, p2

    move p2, p1

    move p1, p0

    :goto_93
    xor-int/lit8 p0, p1, 0x1

    and-int/2addr p1, v2

    shl-int/2addr p1, v2

    add-int/2addr p0, p1

    int-to-byte p1, p2

    aput-byte p1, v3, v0

    if-ne v0, v5, :cond_b0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    and-int/lit8 p2, p1, 0x49

    or-int/lit8 p1, p1, 0x49

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    rem-int/lit8 p2, p2, 0x2

    return-object p0

    :cond_b0
    add-int/lit8 v0, v0, 0x75

    sub-int/2addr v0, v2

    xor-int/lit8 p1, v0, -0x73

    and-int/lit8 v0, v0, -0x73

    shl-int/2addr v0, v2

    add-int/2addr v0, p1

    aget-byte p1, v1, p0

    move v7, v5

    move v5, p1

    move p1, p2

    move p2, v7

    goto :goto_85
.end method

.method static constructor <clinit>()V
    .registers 49

    const-class v1, [B

    invoke-static {}, Lcom/appsflyer/internal/e;->init$0()V

    const/16 v2, 0x39

    .line 1000
    sput-byte v2, Lcom/appsflyer/internal/e;->onConversionDataSuccess:B

    const-wide v2, 0xe29e2a521753920L

    sput-wide v2, Lcom/appsflyer/internal/e;->onAttributionFailure:J

    .line 77
    :try_start_10
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v3, 0x11

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v4, 0xa8

    int-to-short v4, v4

    const/16 v5, 0x87

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    .line 81
    sget-object v4, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    const/4 v6, 0x0

    if-nez v4, :cond_3e

    const/16 v4, 0xb

    aget-byte v4, v2, v4

    neg-int v4, v4

    int-to-byte v4, v4

    sget v7, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v8, v7, 0x380

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v7, v8

    int-to-short v7, v7

    aget-byte v8, v2, v5

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3d} :catch_1ae5

    goto :goto_3f

    :cond_3e
    move-object v4, v6

    :goto_3f
    const/16 v7, 0x11

    const/16 v8, 0x61

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1771
    :try_start_47
    aget-byte v7, v2, v7

    int-to-byte v7, v7

    or-int/lit16 v12, v7, 0x2b0

    int-to-short v12, v12

    const/16 v13, 0x223

    aget-byte v13, v2, v13

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v7, v12, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    .line 1772
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget v12, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    int-to-byte v12, v12

    const/16 v13, 0x13a

    aget-byte v13, v2, v13

    int-to-short v13, v13

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    invoke-static {v12, v13, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    new-array v12, v10, [Ljava/lang/Class;

    .line 1773
    invoke-virtual {v7, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    .line 1774
    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_77} :catch_7f

    if-eqz v2, :cond_7b

    const/4 v7, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v7, 0x0

    :goto_7c
    if-eqz v7, :cond_80

    goto :goto_b5

    :catch_7f
    move-object v2, v6

    .line 1785
    :cond_80
    :try_start_80
    sget-object v7, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v12, v7, v8

    int-to-byte v12, v12

    const/16 v13, 0x174

    int-to-short v13, v13

    const/16 v14, 0x223

    aget-byte v14, v7, v14

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v12

    .line 1786
    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/16 v13, 0x1d

    aget-byte v13, v7, v13

    neg-int v13, v13

    int-to-byte v13, v13

    or-int/lit16 v14, v13, 0x310

    int-to-short v14, v14

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    invoke-static {v13, v14, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    new-array v13, v10, [Ljava/lang/Class;

    .line 1787
    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v12, v6

    check-cast v12, [Ljava/lang/Object;

    .line 1788
    invoke-virtual {v7, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    nop

    :goto_b5
    const/4 v7, 0x2

    if-eqz v2, :cond_e5

    .line 3664
    sget v12, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    add-int/lit8 v12, v12, 0x49

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/2addr v12, v7

    .line 98
    :try_start_c1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v14, 0x320

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    const/16 v15, 0xc1

    int-to-short v15, v15

    aget-byte v13, v13, v9

    int-to-byte v13, v13

    invoke-static {v14, v15, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v13

    move-object v14, v6

    check-cast v14, [Ljava/lang/Class;

    .line 99
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v6

    check-cast v13, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v12, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_e4} :catch_e5

    goto :goto_e6

    :catch_e5
    :cond_e5
    move-object v12, v6

    :goto_e6
    if-eqz v2, :cond_10e

    .line 110
    :try_start_e8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v15, 0x163

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit16 v5, v5, 0x10c

    int-to-short v5, v5

    aget-byte v14, v14, v9

    int-to-byte v14, v14

    invoke-static {v15, v5, v14}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    move-object v14, v6

    check-cast v14, [Ljava/lang/Class;

    .line 111
    invoke-virtual {v13, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v13, v6

    check-cast v13, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v5, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_10d} :catch_10e

    goto :goto_10f

    :catch_10e
    :cond_10e
    move-object v5, v6

    :goto_10f
    if-eqz v2, :cond_114

    const/16 v13, 0x23

    goto :goto_116

    :cond_114
    const/16 v13, 0x36

    :goto_116
    const/16 v14, 0x36

    if-eq v13, v14, :cond_13e

    .line 122
    :try_start_11a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v15, 0x320

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v8, 0xd5

    int-to-short v8, v8

    aget-byte v14, v14, v9

    int-to-byte v14, v14

    invoke-static {v15, v8, v14}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    move-object v14, v6

    check-cast v14, [Ljava/lang/Class;

    .line 123
    invoke-virtual {v13, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v13, v6

    check-cast v13, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v8, v2, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_13d} :catch_13e

    goto :goto_13f

    :catch_13e
    :cond_13e
    move-object v2, v6

    :goto_13f
    if-eqz v12, :cond_143

    const/4 v8, 0x0

    goto :goto_144

    :cond_143
    const/4 v8, 0x1

    :goto_144
    const/4 v13, 0x4

    const/16 v14, 0x13

    if-eqz v8, :cond_1a9

    if-nez v4, :cond_14d

    const/4 v8, 0x1

    goto :goto_14e

    :cond_14d
    const/4 v8, 0x0

    :goto_14e
    if-eq v8, v11, :cond_1a8

    .line 130
    :try_start_150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v18, 0x320

    aget-byte v6, v12, v18

    int-to-byte v6, v6

    sget v9, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v7, v9, 0x20c

    and-int/lit16 v15, v9, 0x20c

    or-int/2addr v7, v15

    int-to-short v7, v7

    aget-byte v15, v12, v13

    int-to-byte v15, v15

    invoke-static {v6, v7, v15}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_175} :catch_1ae5

    :try_start_175
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aget-byte v4, v12, v14

    int-to-byte v4, v4

    xor-int/lit16 v7, v9, 0x321

    and-int/lit16 v8, v9, 0x321

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x38a

    aget-byte v9, v12, v8

    int-to-byte v8, v9

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v7, v11, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12
    :try_end_19d
    .catchall {:try_start_175 .. :try_end_19d} :catchall_19e

    goto :goto_1a9

    :catchall_19e
    move-exception v0

    move-object v1, v0

    :try_start_1a0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a7

    throw v2

    :cond_1a7
    throw v1

    :cond_1a8
    const/4 v12, 0x0

    :cond_1a9
    :goto_1a9
    if-eqz v2, :cond_1ae

    const/16 v4, 0x28

    goto :goto_1b0

    :cond_1ae
    const/16 v4, 0x4b

    :goto_1b0
    const/16 v6, 0x4b

    if-eq v4, v6, :cond_1b6

    goto/16 :goto_241

    .line 134
    :cond_1b6
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x198

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v6, 0x295

    int-to-short v6, v6

    const/16 v7, 0x38a

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1c9} :catch_1ae5

    .line 144
    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    add-int/lit8 v6, v6, 0x56

    sub-int/2addr v6, v11

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    :try_start_1d4
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v10

    const/16 v4, 0x145

    .line 134
    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v7, 0x320

    aget-byte v7, v2, v7

    int-to-short v7, v7

    const/16 v8, 0x38a

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x320

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x2a2

    int-to-short v8, v8

    const/16 v9, 0xa

    aget-byte v15, v2, v9

    int-to-byte v9, v15

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_20f
    .catchall {:try_start_1d4 .. :try_end_20f} :catchall_1adb

    .line 3664
    sget v6, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/16 v7, 0x61

    add-int/2addr v6, v7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    :try_start_21a
    new-array v6, v11, [Ljava/lang/Object;

    aput-object v4, v6, v10

    .line 134
    aget-byte v4, v2, v14

    int-to-byte v4, v4

    sget v7, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit16 v7, v7, 0x321

    int-to-short v7, v7

    const/16 v8, 0x38a

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v4, v7, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v4, v11, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v10

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_241
    .catchall {:try_start_21a .. :try_end_241} :catchall_1ad1

    :goto_241
    if-nez v5, :cond_246

    const/16 v4, 0x52

    goto :goto_248

    :cond_246
    const/16 v4, 0x15

    :goto_248
    const/16 v6, 0x15

    if-eq v4, v6, :cond_2e5

    if-eqz v12, :cond_2e5

    .line 2452
    sget v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    or-int/lit8 v5, v4, 0x47

    shl-int/2addr v5, v11

    xor-int/lit8 v4, v4, 0x47

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    if-eqz v5, :cond_260

    const/4 v4, 0x0

    goto :goto_261

    :cond_260
    const/4 v4, 0x1

    :goto_261
    if-eq v4, v11, :cond_27e

    .line 144
    :try_start_263
    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v5, 0x1958

    aget-byte v5, v4, v5

    neg-int v5, v5

    int-to-byte v5, v5

    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v7, v6, 0x5b0a

    and-int/lit16 v6, v6, 0x5b0a

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x499f

    aget-byte v4, v4, v7

    :goto_277
    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    goto :goto_293

    :cond_27e
    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v5, 0xd5

    aget-byte v5, v4, v5

    neg-int v5, v5

    int-to-byte v5, v5

    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v7, v6, 0xe4

    and-int/lit16 v6, v6, 0xe4

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x87

    aget-byte v4, v4, v7
    :try_end_292
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_292} :catch_1ae5

    goto :goto_277

    :goto_293
    :try_start_293
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v11

    aput-object v12, v6, v10

    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v5, v4, v14

    int-to-byte v5, v5

    sget v7, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v8, v7, 0x321

    and-int/lit16 v9, v7, 0x321

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x38a

    aget-byte v15, v4, v9

    int-to-byte v9, v15

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    aget-byte v8, v4, v14

    int-to-byte v8, v8

    xor-int/lit16 v15, v7, 0x321

    and-int/lit16 v7, v7, 0x321

    or-int/2addr v7, v15

    int-to-short v7, v7

    const/16 v15, 0x38a

    aget-byte v4, v4, v15

    int-to-byte v4, v4

    invoke-static {v8, v7, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v9, v10

    const-class v4, Ljava/lang/String;

    aput-object v4, v9, v11

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2da
    .catchall {:try_start_293 .. :try_end_2da} :catchall_2db

    goto :goto_2e5

    :catchall_2db
    move-exception v0

    move-object v1, v0

    :try_start_2dd
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2e4

    throw v2

    :cond_2e4
    throw v1
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e5} :catch_1ae5

    :cond_2e5
    :goto_2e5
    :try_start_2e5
    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v6, 0x61

    aget-byte v7, v4, v6

    int-to-byte v6, v7

    const/16 v7, 0x1f4

    int-to-short v7, v7

    const/16 v8, 0x223

    aget-byte v8, v4, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v7, 0x5c

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x180

    and-int/lit16 v9, v7, 0x180

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0xa

    aget-byte v15, v4, v9

    int-to-byte v9, v15

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_31a
    .catchall {:try_start_2e5 .. :try_end_31a} :catchall_1ac7

    const/16 v7, 0x9

    .line 148
    :try_start_31c
    aget-byte v8, v4, v14

    int-to-byte v8, v8

    sget v9, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v15, v9, 0x321

    and-int/lit16 v9, v9, 0x321

    or-int/2addr v9, v15

    int-to-short v9, v9

    const/16 v15, 0x38a

    aget-byte v14, v4, v15

    int-to-byte v14, v14

    invoke-static {v8, v9, v14}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v8, v7, v10

    aput-object v5, v7, v11

    const/4 v8, 0x2

    aput-object v12, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    aput-object v6, v7, v13

    const/4 v9, 0x5

    aput-object v5, v7, v9

    const/4 v5, 0x6

    aput-object v12, v7, v5

    const/4 v12, 0x7

    aput-object v2, v7, v12

    const/16 v2, 0x8

    aput-object v6, v7, v2

    const/16 v2, 0x9

    new-array v2, v2, [Z

    aput-boolean v10, v2, v10

    aput-boolean v11, v2, v11

    const/4 v6, 0x2

    aput-boolean v11, v2, v6

    aput-boolean v11, v2, v8

    aput-boolean v11, v2, v13

    aput-boolean v11, v2, v9

    aput-boolean v11, v2, v5

    aput-boolean v11, v2, v12

    const/16 v6, 0x8

    aput-boolean v11, v2, v6

    const/16 v6, 0x9

    new-array v6, v6, [Z

    aput-boolean v10, v6, v10

    aput-boolean v10, v6, v11

    const/4 v14, 0x2

    aput-boolean v10, v6, v14

    aput-boolean v10, v6, v8

    aput-boolean v10, v6, v13

    aput-boolean v11, v6, v9

    aput-boolean v11, v6, v5

    aput-boolean v11, v6, v12

    const/16 v14, 0x8

    aput-boolean v11, v6, v14

    const/16 v14, 0x9

    new-array v15, v14, [Z

    aput-boolean v10, v15, v10

    aput-boolean v10, v15, v11

    const/16 v19, 0x2

    aput-boolean v11, v15, v19

    aput-boolean v11, v15, v8

    aput-boolean v10, v15, v13

    aput-boolean v10, v15, v9

    aput-boolean v11, v15, v5

    aput-boolean v11, v15, v12

    const/16 v22, 0x8

    aput-boolean v10, v15, v22
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_3a0} :catch_1ae5

    const/16 v22, 0xd

    .line 204
    :try_start_3a2
    aget-byte v14, v4, v22

    int-to-byte v14, v14

    const/16 v23, 0x149

    aget-byte v23, v4, v23

    and-int/lit8 v24, v23, -0x1

    or-int/lit8 v23, v23, -0x1

    add-int v12, v24, v23

    int-to-short v12, v12

    const/16 v23, 0x223

    aget-byte v8, v4, v23

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v14, v12, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v12, 0x13f

    .line 205
    aget-byte v12, v4, v12

    int-to-byte v12, v12

    const/16 v14, 0x241

    int-to-short v14, v14

    const/16 v23, 0x137

    aget-byte v4, v4, v23

    int-to-byte v4, v4

    invoke-static {v12, v14, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const/16 v8, 0x1a

    if-lt v4, v8, :cond_3dd

    const/4 v8, 0x1

    goto :goto_3de

    :cond_3dd
    const/4 v8, 0x0

    :goto_3de
    aput-boolean v8, v15, v10

    const/16 v8, 0x15

    if-lt v4, v8, :cond_3e6

    const/4 v8, 0x1

    goto :goto_3e7

    :cond_3e6
    const/4 v8, 0x0

    :goto_3e7
    aput-boolean v8, v15, v11

    const/16 v8, 0x15

    if-lt v4, v8, :cond_3ef

    const/4 v8, 0x1

    goto :goto_3f0

    :cond_3ef
    const/4 v8, 0x0

    :goto_3f0
    aput-boolean v8, v15, v9

    const/16 v8, 0x10

    if-ge v4, v8, :cond_3f8

    const/4 v8, 0x2

    goto :goto_3fa

    :cond_3f8
    const/16 v8, 0x5a

    :goto_3fa
    const/16 v12, 0x5a

    if-eq v8, v12, :cond_400

    const/4 v8, 0x1

    goto :goto_401

    :cond_400
    const/4 v8, 0x0

    :goto_401
    aput-boolean v8, v15, v13
    :try_end_403
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a2 .. :try_end_403} :catch_41f
    .catch Ljava/lang/Exception; {:try_start_3a2 .. :try_end_403} :catch_1ae5

    const/16 v8, 0x8

    const/16 v12, 0x10

    if-ge v4, v12, :cond_41c

    .line 3664
    sget v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    xor-int/lit8 v12, v4, 0xd

    and-int/lit8 v4, v4, 0xd

    shl-int/2addr v4, v11

    add-int/2addr v12, v4

    rem-int/lit16 v4, v12, 0x80

    sput v4, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v4, 0x2

    rem-int/2addr v12, v4

    if-eqz v12, :cond_41a

    goto :goto_41c

    :cond_41a
    const/4 v4, 0x1

    goto :goto_41d

    :cond_41c
    :goto_41c
    const/4 v4, 0x0

    :goto_41d
    :try_start_41d
    aput-boolean v4, v15, v8
    :try_end_41f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41d .. :try_end_41f} :catch_41f
    .catch Ljava/lang/Exception; {:try_start_41d .. :try_end_41f} :catch_1ae5

    :catch_41f
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_421
    if-nez v4, :cond_1ac6

    const/16 v12, 0x9

    if-ge v8, v12, :cond_1ac6

    .line 229
    :try_start_427
    aget-boolean v12, v15, v8
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_427 .. :try_end_429} :catch_1ae5

    if-eqz v12, :cond_1a8a

    const/16 v12, 0x318

    const/16 v23, 0xb7

    .line 233
    :try_start_42f
    aget-boolean v26, v2, v8

    aget-object v9, v7, v8

    aget-boolean v28, v6, v8
    :try_end_435
    .catchall {:try_start_42f .. :try_end_435} :catchall_19b0

    if-eqz v26, :cond_43c

    const/16 v29, 0x4b

    const/16 v14, 0x4b

    goto :goto_440

    :cond_43c
    const/16 v29, 0x1a

    const/16 v14, 0x1a

    :goto_440
    const/16 v13, 0x4b

    const/16 v30, 0x129

    if-eq v14, v13, :cond_447

    goto :goto_495

    :cond_447
    if-eqz v9, :cond_44c

    const/16 v13, 0x54

    goto :goto_44d

    :cond_44c
    const/4 v13, 0x6

    :goto_44d
    if-eq v13, v5, :cond_192b

    .line 2452
    sget v13, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    add-int/lit8 v13, v13, 0x2f

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v14, 0x2

    rem-int/2addr v13, v14

    .line 2306
    :try_start_459
    sget-object v13, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v14, 0x13

    aget-byte v5, v13, v14

    int-to-byte v5, v5

    sget v14, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v10, v14, 0x321

    and-int/lit16 v14, v14, 0x321

    or-int/2addr v10, v14

    int-to-short v10, v10

    const/16 v14, 0x38a

    aget-byte v11, v13, v14

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v10, v13, v12

    int-to-byte v10, v10

    const/16 v11, 0x2ea

    int-to-short v11, v11

    const/16 v14, 0x87

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_493
    .catchall {:try_start_459 .. :try_end_493} :catchall_190d

    if-eqz v5, :cond_192b

    :goto_495
    if-eqz v26, :cond_894

    .line 2325
    :try_start_497
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V
    :try_end_49c
    .catchall {:try_start_497 .. :try_end_49c} :catchall_87c

    .line 2326
    :try_start_49c
    sget-object v10, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v11, 0x145

    aget-byte v11, v10, v11

    int-to-byte v11, v11

    const/16 v13, 0x320

    aget-byte v13, v10, v13

    int-to-short v13, v13

    const/16 v14, 0x38a

    aget-byte v12, v10, v14

    int-to-byte v12, v12

    invoke-static {v11, v13, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x15b

    aget-byte v12, v10, v12

    int-to-byte v12, v12

    const/16 v13, 0x342

    int-to-short v13, v13

    const/16 v14, 0x87

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    invoke-static {v12, v13, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_4d5
    .catchall {:try_start_49c .. :try_end_4d5} :catchall_866

    const-wide/32 v12, 0x3a9680e2

    xor-long/2addr v10, v12

    :try_start_4d9
    invoke-virtual {v5, v10, v11}, Ljava/util/Random;->setSeed(J)V
    :try_end_4dc
    .catchall {:try_start_4d9 .. :try_end_4dc} :catchall_87c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4e0
    if-nez v10, :cond_855

    .line 272
    sget v14, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    add-int/lit8 v14, v14, 0x4b

    move-object/from16 v34, v2

    rem-int/lit16 v2, v14, 0x80

    sput v2, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v2, 0x2

    rem-int/2addr v14, v2

    if-nez v11, :cond_4f3

    const/16 v2, 0x53

    goto :goto_4f5

    :cond_4f3
    const/16 v2, 0xa

    :goto_4f5
    const/16 v14, 0x53

    if-eq v2, v14, :cond_509

    if-nez v12, :cond_4fd

    const/4 v2, 0x5

    goto :goto_50a

    :cond_4fd
    if-nez v13, :cond_501

    const/4 v2, 0x0

    goto :goto_502

    :cond_501
    const/4 v2, 0x1

    :goto_502
    const/4 v14, 0x1

    if-eq v2, v14, :cond_507

    const/4 v2, 0x4

    goto :goto_50a

    :cond_507
    const/4 v2, 0x3

    goto :goto_50a

    :cond_509
    const/4 v2, 0x6

    .line 2344
    :goto_50a
    :try_start_50a
    new-instance v14, Ljava/lang/StringBuilder;
    :try_end_50c
    .catchall {:try_start_50a .. :try_end_50c} :catchall_853

    move-object/from16 v35, v3

    add-int/lit8 v3, v2, 0x1

    :try_start_510
    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2e

    .line 2346
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_518
    .catchall {:try_start_510 .. :try_end_518} :catchall_851

    const/4 v3, 0x0

    :goto_519
    if-ge v3, v2, :cond_589

    .line 144
    sget v36, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    move/from16 v37, v2

    add-int/lit8 v2, v36, 0x25

    move/from16 v36, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-eqz v28, :cond_567

    const/16 v2, 0x1a

    .line 2352
    :try_start_52d
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 2353
    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v4
    :try_end_535
    .catchall {:try_start_52d .. :try_end_535} :catchall_563

    if-eqz v4, :cond_553

    .line 144
    sget v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    xor-int/lit8 v38, v4, 0x5f

    and-int/lit8 v4, v4, 0x5f

    const/16 v33, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int v4, v38, v4

    move-object/from16 v38, v6

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    xor-int/lit8 v4, v2, 0x41

    and-int/lit8 v2, v2, 0x41

    const/4 v6, 0x1

    shl-int/2addr v2, v6

    add-int/2addr v4, v2

    goto :goto_55e

    :cond_553
    move-object/from16 v38, v6

    const/4 v6, 0x1

    neg-int v2, v2

    neg-int v2, v2

    or-int/lit8 v4, v2, 0x60

    shl-int/2addr v4, v6

    xor-int/lit8 v2, v2, 0x60

    sub-int/2addr v4, v2

    :goto_55e
    int-to-char v2, v4

    .line 2358
    :try_start_55f
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_575

    :catchall_563
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_584

    :cond_567
    move-object/from16 v38, v6

    const/16 v2, 0xc

    .line 2362
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2000

    int-to-char v2, v2

    .line 2363
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_575
    .catchall {:try_start_55f .. :try_end_575} :catchall_583

    :goto_575
    xor-int/lit8 v2, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    add-int/2addr v3, v2

    move/from16 v4, v36

    move/from16 v2, v37

    move-object/from16 v6, v38

    goto :goto_519

    :catchall_583
    move-exception v0

    :goto_584
    move-object v2, v0

    move-object/from16 v39, v7

    goto/16 :goto_888

    :cond_589
    move/from16 v36, v4

    move-object/from16 v38, v6

    .line 2367
    :try_start_58d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_591
    .catchall {:try_start_58d .. :try_end_591} :catchall_84f

    if-nez v11, :cond_596

    const/16 v3, 0x56

    goto :goto_597

    :cond_596
    const/4 v3, 0x2

    :goto_597
    const/4 v4, 0x2

    if-eq v3, v4, :cond_5fa

    :try_start_59a
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v2, 0x0

    aput-object v9, v3, v2

    .line 2371
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x13

    aget-byte v6, v2, v4

    int-to-byte v4, v6

    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v11, v6, 0x321

    and-int/lit16 v14, v6, 0x321

    or-int/2addr v11, v14

    int-to-short v11, v11

    move-object/from16 v37, v5

    const/16 v14, 0x38a

    aget-byte v5, v2, v14

    int-to-byte v5, v5

    invoke-static {v4, v11, v5}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Class;

    const/16 v5, 0x13

    aget-byte v14, v2, v5

    int-to-byte v5, v14

    xor-int/lit16 v14, v6, 0x321

    and-int/lit16 v6, v6, 0x321

    or-int/2addr v6, v14

    int-to-short v6, v6

    const/16 v14, 0x38a

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v11, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v11, v5

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5eb
    .catchall {:try_start_59a .. :try_end_5eb} :catchall_5f0

    move-object v11, v2

    :goto_5ec
    move-object/from16 v39, v7

    goto/16 :goto_837

    :catchall_5f0
    move-exception v0

    move-object v2, v0

    :try_start_5f2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5f9

    throw v3

    :cond_5f9
    throw v2
    :try_end_5fa
    .catchall {:try_start_5f2 .. :try_end_5fa} :catchall_583

    :cond_5fa
    move-object/from16 v37, v5

    if-nez v12, :cond_601

    const/16 v3, 0x16

    goto :goto_603

    :cond_601
    const/16 v3, 0x3d

    :goto_603
    const/16 v4, 0x16

    if-eq v3, v4, :cond_7d2

    if-nez v13, :cond_665

    const/4 v3, 0x2

    :try_start_60a
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 2379
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v3, 0x13

    aget-byte v5, v2, v3

    int-to-byte v3, v5

    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v6, v5, 0x321

    and-int/lit16 v13, v5, 0x321

    or-int/2addr v6, v13

    int-to-short v6, v6

    const/16 v13, 0x38a

    aget-byte v14, v2, v13

    int-to-byte v13, v14

    invoke-static {v3, v6, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x2

    new-array v13, v6, [Ljava/lang/Class;

    const/16 v6, 0x13

    aget-byte v14, v2, v6

    int-to-byte v6, v14

    xor-int/lit16 v14, v5, 0x321

    and-int/lit16 v5, v5, 0x321

    or-int/2addr v5, v14

    int-to-short v5, v5

    const/16 v14, 0x38a

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    invoke-static {v6, v5, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v13, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v13, v5

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_659
    .catchall {:try_start_60a .. :try_end_659} :catchall_65b

    move-object v13, v2

    goto :goto_5ec

    :catchall_65b
    move-exception v0

    move-object v2, v0

    :try_start_65d
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_664

    throw v3

    :cond_664
    throw v2
    :try_end_665
    .catchall {:try_start_65d .. :try_end_665} :catchall_583

    :cond_665
    const/4 v3, 0x2

    :try_start_666
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 2383
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v3, 0x13

    aget-byte v5, v2, v3

    int-to-byte v3, v5

    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v6, v5, 0x321

    and-int/lit16 v10, v5, 0x321

    or-int/2addr v6, v10

    int-to-short v6, v6

    const/16 v10, 0x38a

    aget-byte v14, v2, v10

    int-to-byte v10, v14

    invoke-static {v3, v6, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x2

    new-array v10, v6, [Ljava/lang/Class;

    const/16 v6, 0x13

    aget-byte v14, v2, v6
    :try_end_691
    .catchall {:try_start_666 .. :try_end_691} :catchall_7c6

    int-to-byte v6, v14

    xor-int/lit16 v14, v5, 0x321

    move-object/from16 v39, v7

    and-int/lit16 v7, v5, 0x321

    or-int/2addr v7, v14

    int-to-short v7, v7

    move-object/from16 v40, v11

    const/16 v14, 0x38a

    :try_start_69e
    aget-byte v11, v2, v14

    int-to-byte v11, v11

    invoke-static {v6, v7, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v10, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v10, v7

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6b9
    .catchall {:try_start_69e .. :try_end_6b9} :catchall_7c4

    :try_start_6b9
    new-array v4, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    .line 2388
    aget-byte v6, v2, v22

    int-to-byte v6, v6

    xor-int/lit16 v7, v5, 0x2c1

    and-int/lit16 v10, v5, 0x2c1

    or-int/2addr v7, v10

    int-to-short v7, v7

    const/16 v10, 0x38a

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v6, v7, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Class;

    const/16 v7, 0x13

    aget-byte v11, v2, v7

    int-to-byte v7, v11

    xor-int/lit16 v11, v5, 0x321

    and-int/lit16 v14, v5, 0x321

    or-int/2addr v11, v14

    int-to-short v11, v11

    move-object/from16 v41, v12

    const/16 v14, 0x38a

    aget-byte v12, v2, v14

    int-to-byte v12, v12

    invoke-static {v7, v11, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6fc
    .catchall {:try_start_6b9 .. :try_end_6fc} :catchall_73d

    :try_start_6fc
    aget-byte v6, v2, v22

    int-to-byte v6, v6

    xor-int/lit16 v7, v5, 0x2c1

    and-int/lit16 v5, v5, 0x2c1

    or-int/2addr v5, v7

    int-to-short v5, v5

    const/16 v7, 0x38a

    aget-byte v10, v2, v7

    int-to-byte v7, v10

    invoke-static {v6, v5, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v2, v30

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x240

    and-int/lit16 v10, v6, 0x240

    or-int/2addr v7, v10

    int-to-short v7, v7

    const/16 v10, 0x87

    aget-byte v2, v2, v10

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72c
    .catchall {:try_start_6fc .. :try_end_72c} :catchall_733

    move-object v10, v3

    move-object/from16 v11, v40

    move-object/from16 v12, v41

    goto/16 :goto_837

    :catchall_733
    move-exception v0

    move-object v2, v0

    :try_start_735
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_73c

    throw v4

    :cond_73c
    throw v2

    :catchall_73d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_746

    throw v4

    :cond_746
    throw v2
    :try_end_747
    .catch Ljava/lang/Exception; {:try_start_735 .. :try_end_747} :catch_747
    .catchall {:try_start_735 .. :try_end_747} :catchall_87a

    :catch_747
    move-exception v0

    move-object v2, v0

    .line 2392
    :try_start_749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v6, v5, v30

    int-to-byte v6, v6

    sget v7, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    or-int/lit16 v7, v7, 0x32c

    int-to-short v7, v7

    const/16 v9, 0x318

    aget-byte v10, v5, v9

    int-to-byte v9, v10

    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9f

    aget-byte v3, v5, v3

    const/4 v6, 0x0

    sub-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    int-to-byte v3, v3

    const/16 v6, 0xe2

    int-to-short v6, v6

    const/16 v7, 0x2e

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_783
    .catchall {:try_start_749 .. :try_end_783} :catchall_87a

    const/4 v4, 0x2

    :try_start_784
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v3, v6, v2

    aget-byte v2, v5, v23

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x2e0

    and-int/lit16 v4, v2, 0x2e0

    or-int/2addr v3, v4

    int-to-short v3, v3

    const/16 v4, 0x38a

    aget-byte v5, v5, v4

    int-to-byte v4, v5

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_7ba
    .catchall {:try_start_784 .. :try_end_7ba} :catchall_7ba

    :catchall_7ba
    move-exception v0

    move-object v2, v0

    :try_start_7bc
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7c3

    throw v3

    :cond_7c3
    throw v2

    :catchall_7c4
    move-exception v0

    goto :goto_7c9

    :catchall_7c6
    move-exception v0

    move-object/from16 v39, v7

    :goto_7c9
    move-object v2, v0

    .line 2383
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7d1

    throw v3

    :cond_7d1
    throw v2
    :try_end_7d2
    .catchall {:try_start_7bc .. :try_end_7d2} :catchall_87a

    :cond_7d2
    move-object/from16 v39, v7

    move-object/from16 v40, v11

    .line 246
    sget v3, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v4, v3, 0x4d

    and-int/lit8 v3, v3, 0x4d

    const/4 v5, 0x1

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    :try_start_7e5
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v9, v4, v2

    .line 2375
    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v3, 0x13

    aget-byte v5, v2, v3

    int-to-byte v3, v5

    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v6, v5, 0x321

    and-int/lit16 v7, v5, 0x321

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x38a

    aget-byte v11, v2, v7

    int-to-byte v7, v11

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/16 v6, 0x13

    aget-byte v11, v2, v6

    int-to-byte v6, v11

    xor-int/lit16 v11, v5, 0x321

    and-int/lit16 v5, v5, 0x321

    or-int/2addr v5, v11

    int-to-short v5, v5

    const/16 v11, 0x38a

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    invoke-static {v6, v5, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v7, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_834
    .catchall {:try_start_7e5 .. :try_end_834} :catchall_845

    move-object v12, v2

    move-object/from16 v11, v40

    :goto_837
    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move/from16 v4, v36

    move-object/from16 v5, v37

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    goto/16 :goto_4e0

    :catchall_845
    move-exception v0

    move-object v2, v0

    :try_start_847
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_84e

    throw v3

    :cond_84e
    throw v2

    :catchall_84f
    move-exception v0

    goto :goto_885

    :catchall_851
    move-exception v0

    goto :goto_881

    :catchall_853
    move-exception v0

    goto :goto_87f

    :cond_855
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v41, v12

    move-object/from16 v7, v40

    goto :goto_8a3

    :catchall_866
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object v2, v0

    .line 2326
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_879

    throw v3

    :cond_879
    throw v2
    :try_end_87a
    .catchall {:try_start_847 .. :try_end_87a} :catchall_87a

    :catchall_87a
    move-exception v0

    goto :goto_887

    :catchall_87c
    move-exception v0

    move-object/from16 v34, v2

    :goto_87f
    move-object/from16 v35, v3

    :goto_881
    move/from16 v36, v4

    move-object/from16 v38, v6

    :goto_885
    move-object/from16 v39, v7

    :goto_887
    move-object v2, v0

    :goto_888
    move/from16 v40, v8

    :goto_88a
    move-object/from16 v45, v15

    :goto_88c
    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    goto/16 :goto_19c6

    :cond_894
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v41, 0x0

    :goto_8a3
    const/16 v2, 0x1bc1

    :try_start_8a5
    new-array v2, v2, [B

    .line 2406
    const-class v3, Lcom/appsflyer/internal/e;

    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v5, 0x11

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x27c

    int-to-short v6, v6

    const/4 v9, 0x4

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v5, v6, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    .line 2407
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_8bf
    .catchall {:try_start_8a5 .. :try_end_8bf} :catchall_190a

    const/4 v5, 0x1

    :try_start_8c0
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/16 v3, 0x211

    aget-byte v5, v4, v3

    int-to-byte v3, v5

    const/16 v5, 0x1bc

    int-to-short v5, v5

    const/16 v9, 0x38a

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v3, v5, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    aget-byte v9, v4, v23

    int-to-byte v9, v9

    const/16 v12, 0x3b8

    int-to-short v12, v12

    move-object/from16 v28, v7

    const/16 v14, 0x38a

    aget-byte v7, v4, v14

    int-to-byte v7, v7

    invoke-static {v9, v12, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v11, v9

    invoke-virtual {v3, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8fd
    .catchall {:try_start_8c0 .. :try_end_8fd} :catchall_18f6

    const/4 v6, 0x1

    :try_start_8fe
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v9

    const/16 v6, 0x211

    .line 2408
    aget-byte v9, v4, v6

    int-to-byte v6, v9

    const/16 v9, 0x38a

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v6, v5, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0xa8

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0xa0

    int-to-short v11, v11

    const/16 v12, 0x147

    aget-byte v12, v4, v12

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v12, v11

    invoke-virtual {v6, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_933
    .catchall {:try_start_8fe .. :try_end_933} :catchall_18e2

    const/16 v6, 0x211

    .line 2409
    :try_start_935
    aget-byte v7, v4, v6

    int-to-byte v6, v7

    const/16 v7, 0x38a

    aget-byte v9, v4, v7

    int-to-byte v7, v9

    invoke-static {v6, v5, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v4, v30

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x240

    and-int/lit16 v9, v6, 0x240

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/16 v9, 0x87

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v6, v7, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_95f
    .catchall {:try_start_935 .. :try_end_95f} :catchall_18ce

    const/16 v3, 0x11

    const/16 v5, 0x1b9a

    move-object/from16 v6, v35

    const/4 v7, 0x0

    :goto_966
    xor-int/lit16 v9, v3, 0x1c5

    and-int/lit16 v11, v3, 0x1c5

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    add-int/2addr v9, v11

    xor-int/lit16 v11, v3, 0x1baf

    and-int/lit16 v14, v3, 0x1baf

    shl-int/2addr v14, v12

    add-int/2addr v11, v14

    .line 2421
    :try_start_973
    aget-byte v11, v2, v11

    or-int/lit8 v14, v11, -0x46

    shl-int/2addr v14, v12

    xor-int/lit8 v11, v11, -0x46

    sub-int/2addr v14, v11

    int-to-byte v11, v14

    aput-byte v11, v2, v9

    .line 2426
    array-length v9, v2
    :try_end_97f
    .catchall {:try_start_973 .. :try_end_97f} :catchall_190a

    neg-int v11, v3

    not-int v11, v11

    sub-int/2addr v9, v11

    sub-int/2addr v9, v12

    const/4 v11, 0x3

    :try_start_984
    new-array v14, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v14, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v12

    const/4 v9, 0x0

    aput-object v2, v14, v9

    sget-object v2, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v9, 0x23

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v11, 0x62

    int-to-short v11, v11

    const/16 v12, 0x38a

    aget-byte v4, v2, v12

    int-to-byte v4, v4

    invoke-static {v9, v11, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v11, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x1

    aput-object v9, v11, v12

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v9, v11, v12

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;
    :try_end_9c7
    .catchall {:try_start_984 .. :try_end_9c7} :catchall_18ba

    .line 2432
    :try_start_9c7
    sget-object v9, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;
    :try_end_9c9
    .catchall {:try_start_9c7 .. :try_end_9c9} :catchall_190a

    if-nez v9, :cond_a7c

    const v9, 0x6cc61bb1

    .line 2436
    :try_start_9ce
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    neg-int v11, v11

    and-int v12, v11, v9

    or-int/2addr v9, v11

    add-int/2addr v12, v9

    const/16 v9, 0x10

    new-array v9, v9, [B

    const/16 v11, 0x14

    const/4 v14, 0x0

    aput-byte v11, v9, v14

    const/16 v11, -0x2a

    const/4 v14, 0x1

    aput-byte v11, v9, v14

    const/16 v11, -0x25

    const/4 v14, 0x2

    aput-byte v11, v9, v14

    const/16 v11, 0x24

    const/4 v14, 0x3

    aput-byte v11, v9, v14

    const/16 v11, -0x75

    const/4 v14, 0x4

    aput-byte v11, v9, v14

    const/16 v11, 0x29

    const/4 v14, 0x5

    aput-byte v11, v9, v14

    const/16 v11, -0x53

    const/4 v14, 0x6

    aput-byte v11, v9, v14
    :try_end_a00
    .catchall {:try_start_9ce .. :try_end_a00} :catchall_a76

    const/16 v11, -0x3f

    const/4 v14, 0x7

    :try_start_a03
    aput-byte v11, v9, v14
    :try_end_a05
    .catchall {:try_start_a03 .. :try_end_a05} :catchall_a69

    const/16 v11, 0x8

    const/4 v14, 0x2

    :try_start_a08
    aput-byte v14, v9, v11

    const/16 v11, 0x9

    const/16 v14, -0x4d

    aput-byte v14, v9, v11

    const/16 v11, 0x4f

    const/16 v14, 0xa

    aput-byte v11, v9, v14

    const/16 v11, 0xb

    const/16 v14, 0x6e

    aput-byte v14, v9, v11

    const/16 v11, 0xc

    const/16 v14, -0x63

    aput-byte v14, v9, v11

    const/16 v11, 0xc

    aput-byte v11, v9, v22

    const/16 v11, 0xe

    const/16 v14, 0x78

    aput-byte v14, v9, v11

    const/16 v11, 0xf

    const/16 v14, 0x13

    aput-byte v14, v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    neg-int v11, v11

    neg-int v11, v11

    xor-int/lit8 v14, v11, 0x4

    const/16 v29, 0x4

    and-int/lit8 v11, v11, 0x4

    const/16 v33, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v14, v11

    .line 3110
    invoke-virtual {v9}, [B->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 3112
    sget-byte v11, Lcom/appsflyer/internal/e;->onConversionDataSuccess:B
    :try_end_a4d
    .catchall {:try_start_a08 .. :try_end_a4d} :catchall_a76

    move-object/from16 v42, v7

    move/from16 v40, v8

    :try_start_a51
    sget-wide v7, Lcom/appsflyer/internal/e;->onAttributionFailure:J

    invoke-static {v9, v11, v7, v8}, Lcom/appsflyer/internal/cm;->values([BBJ)V

    .line 3116
    invoke-static {v12}, Lcom/appsflyer/internal/co;->AFInAppEventType(I)[[B

    move-result-object v7

    .line 3119
    new-instance v8, Lcom/appsflyer/internal/cn;

    invoke-direct {v8, v4, v14, v9, v7}, Lcom/appsflyer/internal/cn;-><init>(Ljava/io/InputStream;I[B[[B)V
    :try_end_a5f
    .catchall {:try_start_a51 .. :try_end_a5f} :catchall_a67

    move/from16 v43, v5

    move-object/from16 v44, v10

    :goto_a63
    const/16 v4, 0x10

    goto/16 :goto_bf3

    :catchall_a67
    move-exception v0

    goto :goto_a79

    :catchall_a69
    move-exception v0

    move/from16 v40, v8

    move-object v2, v0

    move-object/from16 v45, v15

    :goto_a6f
    const/16 v10, 0x87

    const/16 v11, 0xa

    :goto_a73
    const/4 v12, 0x4

    goto/16 :goto_19c6

    :catchall_a76
    move-exception v0

    move/from16 v40, v8

    :goto_a79
    move-object v2, v0

    goto/16 :goto_88a

    :cond_a7c
    move-object/from16 v42, v7

    move/from16 v40, v8

    const v7, 0x63d88d36

    const/4 v8, 0x0

    .line 2443
    :try_start_a84
    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    sub-int/2addr v7, v11

    const/16 v11, 0x10

    new-array v11, v11, [B

    const/16 v12, 0x34

    aput-byte v12, v11, v8

    const/16 v8, -0x2a

    const/4 v12, 0x1

    aput-byte v8, v11, v12

    const/16 v8, 0x49

    const/4 v12, 0x2

    aput-byte v8, v11, v12

    const/16 v8, 0x32

    const/4 v12, 0x3

    aput-byte v8, v11, v12
    :try_end_aa0
    .catchall {:try_start_a84 .. :try_end_aa0} :catchall_18b7

    const/16 v8, -0x4f

    const/4 v12, 0x4

    :try_start_aa3
    aput-byte v8, v11, v12
    :try_end_aa5
    .catchall {:try_start_aa3 .. :try_end_aa5} :catchall_18ae

    const/16 v8, -0x57

    const/4 v12, 0x5

    :try_start_aa8
    aput-byte v8, v11, v12

    const/16 v8, -0x1e

    const/4 v14, 0x6

    aput-byte v8, v11, v14

    const/16 v8, -0x2e

    const/16 v25, 0x7

    aput-byte v8, v11, v25

    const/16 v8, 0x8

    const/16 v27, -0x62

    aput-byte v27, v11, v8

    const/16 v8, 0x9

    const/16 v27, -0x55

    aput-byte v27, v11, v8

    const/16 v8, -0x6c

    const/16 v18, 0xa

    aput-byte v8, v11, v18

    const/16 v8, 0xb

    const/16 v27, -0x1a

    aput-byte v27, v11, v8

    const/16 v8, 0xc

    const/16 v27, -0x2a

    aput-byte v27, v11, v8

    const/16 v8, 0x6d

    aput-byte v8, v11, v22

    const/16 v8, 0xe

    const/16 v27, -0x2f

    aput-byte v27, v11, v8

    const/16 v8, 0xf

    const/16 v27, 0x43

    aput-byte v27, v11, v8

    const-string v8, ""
    :try_end_ae5
    .catchall {:try_start_aa8 .. :try_end_ae5} :catchall_18b7

    const/16 v27, 0x30

    .line 3664
    sget v31, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    xor-int/lit8 v43, v31, 0x13

    const/16 v21, 0x13

    and-int/lit8 v31, v31, 0x13

    const/16 v33, 0x1

    shl-int/lit8 v31, v31, 0x1

    add-int v12, v43, v31

    rem-int/lit16 v14, v12, 0x80

    sput v14, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v14, 0x2

    rem-int/2addr v12, v14

    const/4 v12, 0x4

    :try_start_afc
    new-array v14, v12, [Ljava/lang/Object;
    :try_end_afe
    .catchall {:try_start_afc .. :try_end_afe} :catchall_189d

    const/4 v12, 0x0

    .line 2443
    :try_start_aff
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v24, 0x3

    aput-object v32, v14, v24

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v19, 0x2

    aput-object v32, v14, v19

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v27

    const/16 v32, 0x1

    aput-object v27, v14, v32

    aput-object v8, v14, v12

    const/16 v8, 0x61

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    const/16 v12, 0x303

    int-to-short v12, v12

    const/16 v27, 0x223

    move/from16 v43, v5

    aget-byte v5, v2, v27

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v8, v12, v5}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x13f

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v12, 0xcb

    int-to-short v12, v12

    const/16 v27, 0xb9

    move-object/from16 v44, v10

    aget-byte v10, v2, v27

    int-to-byte v10, v10

    invoke-static {v8, v12, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Class;

    const-class v10, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    aput-object v10, v12, v27

    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x1

    aput-object v10, v12, v27

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v10, v12, v19

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x3

    aput-object v10, v12, v24

    invoke-virtual {v5, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_b6e
    .catchall {:try_start_aff .. :try_end_b6e} :catchall_1894

    rsub-int/lit8 v8, v5, 0x3

    .line 3664
    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    or-int/lit8 v10, v5, 0x7

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    const/4 v12, 0x7

    xor-int/2addr v5, v12

    sub-int/2addr v10, v5

    rem-int/lit16 v5, v10, 0x80

    sput v5, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v5, 0x2

    rem-int/2addr v10, v5

    const/4 v10, 0x4

    :try_start_b80
    new-array v12, v10, [Ljava/lang/Object;

    .line 2443
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v12, v10

    aput-object v11, v12, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v12, v7

    const/4 v5, 0x0

    aput-object v4, v12, v5

    const/16 v4, 0x11

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x379

    int-to-short v5, v5

    const/16 v7, 0x87

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v4, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15b

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v7, 0x22d

    int-to-short v7, v7

    const/16 v8, 0x13

    aget-byte v10, v2, v8

    int-to-byte v8, v10

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    aget-byte v7, v2, v23

    int-to-byte v7, v7

    const/16 v10, 0x3b8

    int-to-short v10, v10

    const/16 v11, 0x38a

    aget-byte v14, v2, v11

    int-to-byte v11, v14

    invoke-static {v7, v10, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v8, v10

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v7, v8, v10

    const/4 v7, 0x2

    aput-object v1, v8, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v8, v10

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/io/InputStream;
    :try_end_bf1
    .catchall {:try_start_b80 .. :try_end_bf1} :catchall_1882

    goto/16 :goto_a63

    :goto_bf3
    int-to-long v9, v4

    const/4 v5, 0x1

    :try_start_bf5
    new-array v7, v5, [Ljava/lang/Object;

    .line 2446
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v7, v9

    aget-byte v5, v2, v23

    int-to-byte v5, v5

    const/16 v9, 0x3b8

    int-to-short v9, v9

    const/16 v10, 0x38a

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v10, 0x4a

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v11, 0x20e

    int-to-short v11, v11

    const/16 v12, 0x4a

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x0

    aput-object v11, v14, v27

    invoke-virtual {v5, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_c36
    .catchall {:try_start_bf5 .. :try_end_c36} :catchall_1870

    if-eqz v26, :cond_c3a

    const/4 v5, 0x0

    goto :goto_c3b

    :cond_c3a
    const/4 v5, 0x1

    :goto_c3b
    const/4 v7, 0x1

    if-eq v5, v7, :cond_111d

    .line 272
    sget v5, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    xor-int/lit8 v10, v5, 0x3d

    and-int/lit8 v5, v5, 0x3d

    shl-int/2addr v5, v7

    add-int/2addr v10, v5

    rem-int/lit16 v5, v10, 0x80

    sput v5, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v7, 0x2

    rem-int/2addr v10, v7

    if-eqz v10, :cond_c5b

    .line 2452
    :try_start_c4e
    sget-object v7, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, v10
    :try_end_c52
    .catchall {:try_start_c4e .. :try_end_c52} :catchall_a67

    if-nez v7, :cond_c56

    const/4 v7, 0x1

    goto :goto_c57

    :cond_c56
    const/4 v7, 0x0

    :goto_c57
    const/4 v10, 0x1

    if-eq v7, v10, :cond_c5f

    goto :goto_c62

    :cond_c5b
    :try_start_c5b
    sget-object v7, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    if-nez v7, :cond_c62

    :cond_c5f
    move-object/from16 v7, v28

    goto :goto_c64

    :cond_c62
    :goto_c62
    move-object/from16 v7, v41

    :goto_c64
    sget-object v10, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;
    :try_end_c66
    .catchall {:try_start_c5b .. :try_end_c66} :catchall_1117

    if-nez v10, :cond_c72

    add-int/lit8 v5, v5, 0x7b

    .line 246
    rem-int/lit16 v10, v5, 0x80

    sput v10, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v10, 0x2

    rem-int/2addr v5, v10

    move-object v5, v13

    goto :goto_c74

    :cond_c72
    move-object/from16 v5, v44

    .line 144
    :goto_c74
    sget v10, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    and-int/lit8 v11, v10, 0x31

    or-int/lit8 v10, v10, 0x31

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    const/4 v10, 0x1

    :try_start_c82
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v11, v10

    .line 3588
    aget-byte v10, v2, v22

    int-to-byte v10, v10

    sget v14, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I
    :try_end_c8c
    .catchall {:try_start_c82 .. :try_end_c8c} :catchall_1003

    xor-int/lit16 v4, v14, 0x2c1

    move-object/from16 v27, v13

    and-int/lit16 v13, v14, 0x2c1

    or-int/2addr v4, v13

    int-to-short v4, v4

    move-object/from16 v45, v15

    const/16 v13, 0x38a

    :try_start_c98
    aget-byte v15, v2, v13

    int-to-byte v13, v15

    invoke-static {v10, v4, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    const/16 v10, 0x13

    aget-byte v15, v2, v10

    int-to-byte v10, v15

    or-int/lit16 v14, v14, 0x321

    int-to-short v14, v14

    const/16 v15, 0x38a

    aget-byte v2, v2, v15

    int-to-byte v2, v2

    invoke-static {v10, v14, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v13, v10

    invoke-virtual {v4, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_cc6
    .catchall {:try_start_c98 .. :try_end_cc6} :catchall_1001

    .line 272
    sget v4, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v10, v4, 0x2d

    and-int/lit8 v4, v4, 0x2d

    const/4 v11, 0x1

    shl-int/2addr v4, v11

    add-int/2addr v10, v4

    rem-int/lit16 v4, v10, 0x80

    sput v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v4, 0x2

    rem-int/2addr v10, v4

    const/16 v4, 0x400

    :try_start_cd7
    new-array v10, v4, [B

    move/from16 v11, v43

    :goto_cdb
    if-lez v11, :cond_dc3

    .line 3597
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_ce1
    .catchall {:try_start_cd7 .. :try_end_ce1} :catchall_100f

    const/4 v14, 0x3

    :try_start_ce2
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v15, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v32, 0x1

    aput-object v14, v15, v32

    aput-object v10, v15, v13

    sget-object v13, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v14, v13, v23

    int-to-byte v14, v14

    const/16 v20, 0x38a

    aget-byte v4, v13, v20

    int-to-byte v4, v4

    invoke-static {v14, v9, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v14, 0x4a

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    move/from16 v46, v3

    sget v3, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    move-object/from16 v47, v6

    xor-int/lit16 v6, v3, 0xcd

    move/from16 v48, v9

    and-int/lit16 v9, v3, 0xcd

    or-int/2addr v6, v9

    int-to-short v6, v6

    const/16 v9, 0x147

    aget-byte v9, v13, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v14, v6, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v14, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v33, 0x1

    aput-object v9, v14, v33

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v9, v14, v19

    invoke-virtual {v4, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_d45
    .catchall {:try_start_ce2 .. :try_end_d45} :catchall_db9

    const/4 v6, -0x1

    if-eq v4, v6, :cond_dc9

    const/4 v6, 0x3

    :try_start_d49
    new-array v9, v6, [Ljava/lang/Object;

    .line 3600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v14, 0x2

    aput-object v6, v9, v14

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v9, v15

    aput-object v10, v9, v6

    aget-byte v6, v13, v22

    int-to-byte v6, v6

    or-int/lit16 v3, v3, 0x2c1

    int-to-short v3, v3

    const/16 v14, 0x38a

    aget-byte v15, v13, v14

    int-to-byte v14, v15

    invoke-static {v6, v3, v14}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v6, v13, v30

    int-to-byte v6, v6

    const/16 v14, 0xd1

    int-to-short v14, v14

    const/4 v15, 0x0

    aget-byte v13, v13, v15

    xor-int/lit8 v15, v13, -0x1

    and-int/lit8 v13, v13, -0x1

    const/16 v33, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v13

    int-to-byte v13, v15

    invoke-static {v6, v14, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v14, v13

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v13, v14, v15

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v13, v14, v15

    invoke-virtual {v3, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d9d
    .catchall {:try_start_d49 .. :try_end_d9d} :catchall_daf

    neg-int v3, v4

    xor-int v4, v11, v3

    and-int/2addr v3, v11

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int v11, v4, v3

    move/from16 v3, v46

    move-object/from16 v6, v47

    move/from16 v9, v48

    const/16 v4, 0x400

    goto/16 :goto_cdb

    :catchall_daf
    move-exception v0

    move-object v2, v0

    :try_start_db1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_db8

    throw v3

    :cond_db8
    throw v2

    :catchall_db9
    move-exception v0

    move-object v2, v0

    .line 3597
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_dc2

    throw v3

    :cond_dc2
    throw v2
    :try_end_dc3
    .catchall {:try_start_db1 .. :try_end_dc3} :catchall_100f

    :cond_dc3
    move/from16 v46, v3

    move-object/from16 v47, v6

    move/from16 v48, v9

    .line 3606
    :cond_dc9
    :try_start_dc9
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v4, v3, v22

    int-to-byte v4, v4

    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v8, v6, 0x2c1

    and-int/lit16 v9, v6, 0x2c1

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x38a

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v8, v3, v30

    int-to-byte v8, v8

    const/16 v9, 0x23d

    int-to-short v9, v9

    const/16 v10, 0xa

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_dfb
    .catchall {:try_start_dc9 .. :try_end_dfb} :catchall_ff7

    const/16 v8, 0x61

    :try_start_dfd
    aget-byte v9, v3, v8

    int-to-byte v8, v9

    or-int/lit16 v9, v6, 0x340

    int-to-short v9, v9

    const/16 v10, 0x38a

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x4a

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    xor-int/lit16 v10, v9, 0x10c

    and-int/lit16 v11, v9, 0x10c

    or-int/2addr v10, v11

    int-to-short v10, v10

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e27
    .catchall {:try_start_dfd .. :try_end_e27} :catchall_fed

    .line 3607
    :try_start_e27
    aget-byte v4, v3, v22

    int-to-byte v4, v4

    or-int/lit16 v8, v6, 0x2c1

    int-to-short v8, v8

    const/16 v9, 0x38a

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v8, v3, v30

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x240

    and-int/lit16 v10, v8, 0x240

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/16 v10, 0x87

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e54
    .catchall {:try_start_e27 .. :try_end_e54} :catchall_fe3

    const/16 v2, 0x1d

    .line 3619
    :try_start_e56
    aget-byte v2, v3, v2

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v4, 0xe2

    int-to-short v4, v4

    const/16 v8, 0xaf

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    invoke-static {v2, v4, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x13f

    .line 3620
    aget-byte v4, v3, v4

    int-to-byte v4, v4

    xor-int/lit16 v8, v6, 0x1c0

    and-int/lit16 v9, v6, 0x1c0

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x313

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    invoke-virtual {v2, v4, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;
    :try_end_e97
    .catchall {:try_start_e56 .. :try_end_e97} :catchall_100f

    const/16 v4, 0x13

    .line 3624
    :try_start_e99
    aget-byte v9, v3, v4

    int-to-byte v4, v9

    xor-int/lit16 v9, v6, 0x321

    and-int/lit16 v10, v6, 0x321

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/16 v10, 0x38a

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v4, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x163

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v10, 0x2ac

    int-to-short v10, v10

    const/16 v11, 0xa

    aget-byte v12, v3, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_ec9
    .catchall {:try_start_e99 .. :try_end_ec9} :catchall_fd9

    const/4 v9, 0x0

    :try_start_eca
    aput-object v4, v8, v9
    :try_end_ecc
    .catchall {:try_start_eca .. :try_end_ecc} :catchall_100f

    const/16 v4, 0x13

    :try_start_ece
    aget-byte v9, v3, v4

    int-to-byte v4, v9

    or-int/lit16 v9, v6, 0x321

    int-to-short v9, v9

    const/16 v11, 0x38a

    aget-byte v12, v3, v11

    int-to-byte v11, v12

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x163

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    const/16 v11, 0xa

    aget-byte v12, v3, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_ef8
    .catchall {:try_start_ece .. :try_end_ef8} :catchall_fcf

    const/4 v9, 0x1

    :try_start_ef9
    aput-object v4, v8, v9

    const/4 v4, 0x0

    .line 3627
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v4, 0x2

    aput-object v9, v8, v4

    .line 3624
    invoke-virtual {v2, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_f07
    .catchall {:try_start_ef9 .. :try_end_f07} :catchall_100f

    const/16 v4, 0x13

    .line 3633
    :try_start_f09
    aget-byte v8, v3, v4

    int-to-byte v4, v8

    xor-int/lit16 v8, v6, 0x321

    and-int/lit16 v9, v6, 0x321

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x38a

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x18

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0x228

    int-to-short v9, v9

    const/16 v10, 0xaf

    aget-byte v10, v3, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f3e
    .catchall {:try_start_f09 .. :try_end_f3e} :catchall_fc5

    const/16 v4, 0x13

    .line 3634
    :try_start_f40
    aget-byte v7, v3, v4

    int-to-byte v4, v7

    xor-int/lit16 v7, v6, 0x321

    and-int/lit16 v6, v6, 0x321

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x38a

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x18

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0xaf

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    invoke-static {v6, v9, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f72
    .catchall {:try_start_f40 .. :try_end_f72} :catchall_fbb

    .line 144
    sget v4, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    or-int/lit8 v5, v4, 0x61

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    const/16 v6, 0x61

    xor-int/2addr v4, v6

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    .line 3639
    :try_start_f82
    sget-object v4, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    if-nez v4, :cond_f88

    const/4 v4, 0x0

    goto :goto_f89

    :cond_f88
    const/4 v4, 0x1

    :goto_f89
    if-eqz v4, :cond_f8c

    goto :goto_fac

    .line 3641
    :cond_f8c
    const-class v4, Lcom/appsflyer/internal/e;
    :try_end_f8e
    .catchall {:try_start_f82 .. :try_end_f8e} :catchall_1115

    :try_start_f8e
    const-class v5, Ljava/lang/Class;

    const/16 v6, 0x198

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x211

    int-to-short v8, v7

    const/16 v7, 0xa

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    invoke-static {v6, v8, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_faa
    .catchall {:try_start_f8e .. :try_end_faa} :catchall_fb1

    :try_start_faa
    sput-object v3, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    :goto_fac
    move/from16 v9, v48

    const/4 v14, 0x7

    goto/16 :goto_14ec

    :catchall_fb1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fba

    throw v3

    :cond_fba
    throw v2

    :catchall_fbb
    move-exception v0

    move-object v2, v0

    .line 3634
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fc4

    throw v3

    :cond_fc4
    throw v2

    :catchall_fc5
    move-exception v0

    move-object v2, v0

    .line 3633
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fce

    throw v3

    :cond_fce
    throw v2
    :try_end_fcf
    .catchall {:try_start_faa .. :try_end_fcf} :catchall_1115

    :catchall_fcf
    move-exception v0

    move-object v2, v0

    .line 3624
    :try_start_fd1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fd8

    throw v3

    :cond_fd8
    throw v2

    :catchall_fd9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fe2

    throw v3

    :cond_fe2
    throw v2

    :catchall_fe3
    move-exception v0

    move-object v2, v0

    .line 3607
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_fec

    throw v3

    :cond_fec
    throw v2

    :catchall_fed
    move-exception v0

    move-object v2, v0

    .line 3606
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_ff6

    throw v3

    :cond_ff6
    throw v2

    :catchall_ff7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1000

    throw v3

    :cond_1000
    throw v2
    :try_end_1001
    .catchall {:try_start_fd1 .. :try_end_1001} :catchall_100f

    :catchall_1001
    move-exception v0

    goto :goto_1006

    :catchall_1003
    move-exception v0

    move-object/from16 v45, v15

    :goto_1006
    move-object v2, v0

    .line 3588
    :try_start_1007
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_100e

    throw v3

    :cond_100e
    throw v2
    :try_end_100f
    .catch Ljava/lang/Exception; {:try_start_1007 .. :try_end_100f} :catch_1013
    .catchall {:try_start_1007 .. :try_end_100f} :catchall_100f

    :catchall_100f
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1091

    :catch_1013
    move-exception v0

    move-object v2, v0

    .line 3592
    :try_start_1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v6, v4, v30

    int-to-byte v6, v6

    const/16 v8, 0x158

    int-to-short v8, v8

    const/16 v9, 0x318

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x9f

    aget-byte v6, v4, v6

    xor-int/lit8 v8, v6, -0x1

    and-int/lit8 v6, v6, -0x1

    const/4 v9, 0x1

    shl-int/2addr v6, v9

    add-int/2addr v8, v6

    int-to-byte v6, v8

    const/16 v8, 0xe2

    int-to-short v8, v8

    const/16 v9, 0x2e

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1050
    .catchall {:try_start_1015 .. :try_end_1050} :catchall_100f

    const/4 v6, 0x2

    :try_start_1051
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v8, v6

    const/4 v2, 0x0

    aput-object v3, v8, v2

    aget-byte v2, v4, v23

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x2e0

    and-int/lit16 v6, v2, 0x2e0

    or-int/2addr v3, v6

    int-to-short v3, v3

    const/16 v6, 0x38a

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1087
    .catchall {:try_start_1051 .. :try_end_1087} :catchall_1087

    :catchall_1087
    move-exception v0

    move-object v2, v0

    :try_start_1089
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1090

    throw v3

    :cond_1090
    throw v2
    :try_end_1091
    .catchall {:try_start_1089 .. :try_end_1091} :catchall_100f

    .line 3633
    :goto_1091
    :try_start_1091
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x13

    aget-byte v6, v3, v4

    int-to-byte v4, v6

    sget v6, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v8, v6, 0x321

    and-int/lit16 v9, v6, 0x321

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x38a

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x18

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    const/16 v9, 0x228

    int-to-short v9, v9

    const/16 v10, 0xaf

    aget-byte v10, v3, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_10cc
    .catchall {:try_start_1091 .. :try_end_10cc} :catchall_110b

    const/16 v4, 0x13

    .line 3634
    :try_start_10ce
    aget-byte v7, v3, v4

    int-to-byte v4, v7

    xor-int/lit16 v7, v6, 0x321

    and-int/lit16 v6, v6, 0x321

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x38a

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x18

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0xaf

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    invoke-static {v6, v9, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1100
    .catchall {:try_start_10ce .. :try_end_1100} :catchall_1101

    .line 3635
    :try_start_1100
    throw v2

    :catchall_1101
    move-exception v0

    move-object v2, v0

    .line 3634
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_110a

    throw v3

    :cond_110a
    throw v2

    :catchall_110b
    move-exception v0

    move-object v2, v0

    .line 3633
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1114

    throw v3

    :cond_1114
    throw v2
    :try_end_1115
    .catchall {:try_start_1100 .. :try_end_1115} :catchall_1115

    :catchall_1115
    move-exception v0

    goto :goto_111a

    :catchall_1117
    move-exception v0

    move-object/from16 v45, v15

    :goto_111a
    move-object v2, v0

    goto/16 :goto_88c

    :cond_111d
    move/from16 v46, v3

    move-object/from16 v47, v6

    move/from16 v48, v9

    move-object/from16 v27, v13

    move-object/from16 v45, v15

    .line 3657
    :try_start_1127
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3658
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_1130
    .catchall {:try_start_1127 .. :try_end_1130} :catchall_186d

    const/4 v5, 0x1

    :try_start_1131
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/16 v3, 0x5c

    .line 3660
    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v5, 0x1a

    aget-byte v5, v2, v5

    int-to-short v5, v5

    const/16 v7, 0x38a

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    aget-byte v5, v2, v23

    int-to-byte v5, v5

    const/16 v8, 0x38a

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    move/from16 v9, v48

    invoke-static {v5, v9, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_116d
    .catchall {:try_start_1131 .. :try_end_116d} :catchall_185d

    .line 144
    sget v5, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    xor-int/lit8 v6, v5, 0x7

    const/4 v14, 0x7

    and-int/2addr v5, v14

    const/4 v7, 0x1

    shl-int/2addr v5, v7

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    if-eqz v6, :cond_1180

    const/4 v5, 0x1

    goto :goto_1181

    :cond_1180
    const/4 v5, 0x0

    :goto_1181
    if-eq v5, v7, :cond_11b4

    const/16 v5, 0x51

    .line 3660
    :try_start_1185
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x1d8

    int-to-short v6, v6

    const/16 v7, 0x38a

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_11a1
    .catchall {:try_start_1185 .. :try_end_11a1} :catchall_11ab

    const/16 v5, 0x400

    :try_start_11a3
    new-array v5, v5, [B
    :try_end_11a5
    .catchall {:try_start_11a3 .. :try_end_11a5} :catchall_11a7

    const/4 v6, 0x0

    goto :goto_11d6

    :catchall_11a7
    move-exception v0

    move-object v2, v0

    goto/16 :goto_a6f

    :catchall_11ab
    move-exception v0

    move-object v2, v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    goto/16 :goto_1855

    :cond_11b4
    const/4 v5, 0x0

    .line 144
    :try_start_11b5
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x32c3

    int-to-short v6, v6

    const/16 v7, 0x5275

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_11d1
    .catchall {:try_start_11b5 .. :try_end_11d1} :catchall_184e

    const/16 v5, 0x22e6

    :try_start_11d3
    new-array v5, v5, [B
    :try_end_11d5
    .catchall {:try_start_11d3 .. :try_end_11d5} :catchall_1846

    const/4 v6, 0x1

    :goto_11d6
    sget v7, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    and-int/lit8 v8, v7, 0x41

    or-int/lit8 v7, v7, 0x41

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    const/4 v7, 0x1

    :try_start_11e4
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    .line 3666
    sget-object v7, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v10, 0x5c

    aget-byte v10, v7, v10

    int-to-byte v10, v10

    const/16 v11, 0x1a

    aget-byte v11, v7, v11

    int-to-short v11, v11

    const/16 v12, 0x38a

    aget-byte v13, v7, v12

    int-to-byte v12, v13

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/16 v11, 0x4a

    aget-byte v11, v7, v11

    int-to-byte v11, v11

    sget v12, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v13, v12, 0xcd

    and-int/lit16 v12, v12, 0xcd

    or-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0x147

    aget-byte v13, v7, v13

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v10, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_122d
    .catchall {:try_start_11e4 .. :try_end_122d} :catchall_1837

    if-lez v8, :cond_12b0

    int-to-long v10, v6

    .line 3667
    :try_start_1230
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12
    :try_end_1234
    .catchall {:try_start_1230 .. :try_end_1234} :catchall_11a7

    cmp-long v15, v10, v12

    if-gez v15, :cond_12b0

    .line 3664
    sget v10, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v11, v10, 0x55

    and-int/lit8 v10, v10, 0x55

    const/4 v12, 0x1

    shl-int/2addr v10, v12

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    const/4 v11, 0x3

    :try_start_1248
    new-array v12, v11, [Ljava/lang/Object;
    :try_end_124a
    .catchall {:try_start_1248 .. :try_end_124a} :catchall_12a6

    .line 3669
    :try_start_124a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v10

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    aput-object v5, v12, v10

    const/16 v10, 0x51

    aget-byte v10, v7, v10

    int-to-byte v10, v10

    const/16 v11, 0x1d8

    int-to-short v11, v11

    const/16 v13, 0x38a

    aget-byte v15, v7, v13

    int-to-byte v13, v15

    invoke-static {v10, v11, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v7, v30

    int-to-byte v11, v11

    const/16 v13, 0xd1

    int-to-short v13, v13

    const/4 v15, 0x0

    aget-byte v7, v7, v15

    and-int/lit8 v15, v7, -0x1

    or-int/lit8 v7, v7, -0x1

    add-int/2addr v15, v7

    int-to-byte v7, v15

    invoke-static {v11, v13, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7
    :try_end_1282
    .catchall {:try_start_124a .. :try_end_1282} :catchall_12a3

    const/4 v11, 0x3

    :try_start_1283
    new-array v13, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v13, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v24, 0x1

    aput-object v15, v13, v24

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v19, 0x2

    aput-object v15, v13, v19

    invoke-virtual {v10, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_129b
    .catchall {:try_start_1283 .. :try_end_129b} :catchall_12a6

    neg-int v7, v8

    neg-int v7, v7

    not-int v7, v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    goto/16 :goto_11d6

    :catchall_12a3
    move-exception v0

    const/4 v11, 0x3

    goto :goto_12a7

    :catchall_12a6
    move-exception v0

    :goto_12a7
    move-object v2, v0

    :try_start_12a8
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_12af

    throw v3

    :cond_12af
    throw v2
    :try_end_12b0
    .catchall {:try_start_12a8 .. :try_end_12b0} :catchall_11a7

    :cond_12b0
    const/4 v11, 0x3

    const/16 v4, 0x51

    .line 3672
    :try_start_12b3
    aget-byte v4, v7, v4

    int-to-byte v4, v4

    const/16 v5, 0x1d8

    int-to-short v5, v5

    const/16 v6, 0x38a

    aget-byte v8, v7, v6

    int-to-byte v6, v8

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x320

    aget-byte v6, v7, v6

    int-to-byte v6, v6

    const/16 v8, 0x367

    int-to-short v8, v8

    const/16 v10, 0x149

    aget-byte v10, v7, v10

    xor-int/lit8 v12, v10, -0x1

    and-int/lit8 v10, v10, -0x1

    const/4 v13, 0x1

    shl-int/2addr v10, v13

    add-int/2addr v12, v10

    int-to-byte v10, v12

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_12e7
    .catchall {:try_start_12b3 .. :try_end_12e7} :catchall_1828

    const/16 v6, 0x5c

    .line 3676
    :try_start_12e9
    aget-byte v6, v7, v6

    int-to-byte v6, v6

    const/16 v8, 0x1a

    aget-byte v8, v7, v8

    int-to-short v8, v8

    const/16 v10, 0x38a

    aget-byte v12, v7, v10

    int-to-byte v10, v12

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v8, v7, v30

    int-to-byte v8, v8

    or-int/lit16 v10, v8, 0x240

    int-to-short v10, v10

    const/16 v12, 0x87

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    invoke-static {v8, v10, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1315
    .catchall {:try_start_12e9 .. :try_end_1315} :catchall_1316

    goto :goto_1320

    :catchall_1316
    move-exception v0

    move-object v3, v0

    :try_start_1318
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_131f

    throw v6

    :cond_131f
    throw v3
    :try_end_1320
    .catch Ljava/io/IOException; {:try_start_1318 .. :try_end_1320} :catch_1320
    .catchall {:try_start_1318 .. :try_end_1320} :catchall_11a7

    .line 3682
    :catch_1320
    :goto_1320
    :try_start_1320
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v6, 0x51

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v7, 0x38a

    aget-byte v8, v3, v7

    int-to-byte v7, v8

    invoke-static {v6, v5, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v30

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x240

    and-int/lit16 v8, v6, 0x240

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x87

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v6, v7, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_134e
    .catchall {:try_start_1320 .. :try_end_134e} :catchall_134f

    goto :goto_1359

    :catchall_134f
    move-exception v0

    move-object v2, v0

    :try_start_1351
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1358

    throw v3

    :cond_1358
    throw v2
    :try_end_1359
    .catch Ljava/io/IOException; {:try_start_1351 .. :try_end_1359} :catch_1359
    .catchall {:try_start_1351 .. :try_end_1359} :catchall_11a7

    .line 3686
    :catch_1359
    :goto_1359
    :try_start_1359
    const-class v2, Lcom/appsflyer/internal/e;
    :try_end_135b
    .catchall {:try_start_1359 .. :try_end_135b} :catchall_1846

    :try_start_135b
    const-class v3, Ljava/lang/Class;

    sget-object v5, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v6, 0x198

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x211

    int-to-short v8, v7

    const/16 v7, 0xa

    aget-byte v10, v5, v7

    int-to-byte v7, v10

    invoke-static {v6, v8, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1379
    .catchall {:try_start_135b .. :try_end_1379} :catchall_1819

    const/16 v3, 0x2e

    .line 3691
    :try_start_137b
    aget-byte v3, v5, v3

    int-to-byte v3, v3

    xor-int/lit8 v6, v3, 0x7d

    and-int/lit8 v7, v3, 0x7d

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0xaf

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v3, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 3692
    aget-byte v6, v5, v23

    int-to-byte v6, v6

    const/16 v8, 0x27e

    aget-byte v8, v5, v8

    neg-int v8, v8

    int-to-short v8, v8

    const/16 v10, 0x38a

    aget-byte v12, v5, v10

    int-to-byte v10, v12

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/16 v6, 0x1d

    aget-byte v6, v5, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x160

    int-to-short v8, v8

    const/16 v10, 0x38a

    aget-byte v12, v5, v10

    int-to-byte v10, v12

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;
    :try_end_13cd
    .catchall {:try_start_137b .. :try_end_13cd} :catchall_1846

    :try_start_13cd
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v6, v8

    .line 3694
    aget-byte v4, v5, v23

    int-to-byte v4, v4

    const/16 v8, 0x27e

    aget-byte v8, v5, v8

    neg-int v8, v8

    int-to-short v8, v8

    const/16 v10, 0x38a

    aget-byte v12, v5, v10

    int-to-byte v10, v12

    invoke-static {v4, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x4a

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    sget v10, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v12, v10, 0x38c

    and-int/lit16 v10, v10, 0x38c

    or-int/2addr v10, v12

    int-to-short v10, v10

    const/4 v12, 0x0

    aget-byte v13, v5, v12

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    int-to-byte v13, v13

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    new-array v10, v15, [Ljava/lang/Class;

    aput-object v1, v10, v12

    invoke-virtual {v4, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_140c
    .catchall {:try_start_13cd .. :try_end_140c} :catchall_180a

    :try_start_140c
    aput-object v4, v7, v12

    aput-object v2, v7, v15

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1414
    .catchall {:try_start_140c .. :try_end_1414} :catchall_1846

    const/16 v4, 0x25

    .line 3707
    :try_start_1416
    aget-byte v4, v5, v4

    int-to-byte v4, v4

    xor-int/lit16 v6, v4, 0xfb

    and-int/lit16 v7, v4, 0xfb

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0xaf

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x318

    .line 3708
    aget-byte v7, v5, v6

    int-to-byte v7, v7

    int-to-short v8, v6

    const/16 v6, 0x158

    aget-byte v6, v5, v6

    const/4 v10, 0x0

    sub-int/2addr v6, v10

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    int-to-byte v6, v6

    invoke-static {v7, v8, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3709
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3711
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3712
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 3714
    aget-byte v8, v5, v22

    int-to-byte v8, v8

    const/16 v10, 0x3a1

    int-to-short v10, v10

    const/16 v12, 0x280

    aget-byte v12, v5, v12

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v10, 0x1

    .line 3715
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v10, 0xa1

    .line 3717
    aget-byte v10, v5, v10

    int-to-byte v10, v10

    const/16 v12, 0x247

    int-to-short v12, v12

    const/16 v13, 0x280

    aget-byte v5, v5, v13

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v10, v12, v5}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x1

    .line 3718
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3720
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3721
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3723
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3726
    new-instance v10, Ljava/util/ArrayList;

    check-cast v7, Ljava/util/List;

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3728
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 3729
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .line 3731
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 3732
    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7
    :try_end_14a3
    .catch Ljava/lang/Exception; {:try_start_1416 .. :try_end_14a3} :catch_178c
    .catchall {:try_start_1416 .. :try_end_14a3} :catchall_1846

    const/4 v13, 0x0

    :goto_14a4
    if-ge v13, v12, :cond_14d0

    .line 144
    sget v15, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    and-int/lit8 v24, v15, 0x6f

    or-int/lit8 v15, v15, 0x6f

    add-int v15, v24, v15

    rem-int/lit16 v11, v15, 0x80

    sput v11, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v11, 0x2

    rem-int/2addr v15, v11

    .line 3735
    :try_start_14b4
    invoke-static {v6, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v13, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_14bb
    .catch Ljava/lang/Exception; {:try_start_14b4 .. :try_end_14bb} :catch_14c7
    .catchall {:try_start_14b4 .. :try_end_14bb} :catchall_11a7

    and-int/lit8 v11, v13, 0x52

    or-int/lit8 v13, v13, 0x52

    add-int/2addr v11, v13

    add-int/lit8 v11, v11, -0x50

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    move v13, v11

    const/4 v11, 0x3

    goto :goto_14a4

    :catch_14c7
    move-exception v0

    move-object v3, v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    goto/16 :goto_1793

    .line 3738
    :cond_14d0
    :try_start_14d0
    invoke-virtual {v8, v4, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3739
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14d6
    .catch Ljava/lang/Exception; {:try_start_14d0 .. :try_end_14d6} :catch_178c
    .catchall {:try_start_14d0 .. :try_end_14d6} :catchall_1846

    .line 3749
    :try_start_14d6
    sget-object v2, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;
    :try_end_14d8
    .catchall {:try_start_14d6 .. :try_end_14d8} :catchall_1846

    if-nez v2, :cond_14eb

    .line 144
    sget v2, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v4, v2, 0x31

    and-int/lit8 v2, v2, 0x31

    const/4 v5, 0x1

    shl-int/2addr v2, v5

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v2, 0x2

    rem-int/2addr v4, v2

    .line 3751
    :try_start_14e9
    sput-object v3, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;
    :try_end_14eb
    .catchall {:try_start_14e9 .. :try_end_14eb} :catchall_11a7

    :cond_14eb
    move-object v2, v3

    :goto_14ec
    if-eqz v26, :cond_15a4

    .line 2471
    :try_start_14ee
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x1d

    aget-byte v4, v3, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0xe2

    int-to-short v5, v5

    const/16 v6, 0xaf

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa8

    .line 2472
    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x371

    int-to-short v6, v6

    const/16 v7, 0x313

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/16 v6, 0x1d

    aget-byte v6, v3, v6

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x160

    int-to-short v8, v8

    const/16 v10, 0x38a

    aget-byte v11, v3, v10

    int-to-byte v10, v11

    invoke-static {v6, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v47, v7, v6

    .line 2475
    const-class v6, Lcom/appsflyer/internal/e;
    :try_end_1544
    .catchall {:try_start_14ee .. :try_end_1544} :catchall_159c

    :try_start_1544
    const-class v8, Ljava/lang/Class;

    const/16 v10, 0x198

    aget-byte v10, v3, v10
    :try_end_154a
    .catchall {:try_start_1544 .. :try_end_154a} :catchall_1590

    int-to-byte v10, v10

    const/16 v11, 0x211

    int-to-short v12, v11

    const/16 v11, 0xa

    :try_start_1550
    aget-byte v13, v3, v11

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1560
    .catchall {:try_start_1550 .. :try_end_1560} :catchall_158e

    const/4 v8, 0x1

    :try_start_1561
    aput-object v6, v7, v8

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_156b

    const/4 v6, 0x7

    goto :goto_156d

    :cond_156b
    const/16 v6, 0x5c

    :goto_156d
    const/16 v7, 0x5c

    if-eq v6, v7, :cond_158c

    .line 2486
    aget-byte v6, v3, v30

    int-to-byte v6, v6

    or-int/lit16 v7, v6, 0x240

    int-to-short v7, v7

    const/16 v8, 0x87

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v6, v7, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 2487
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_158c
    move-object v3, v5

    goto :goto_15f0

    :catchall_158e
    move-exception v0

    goto :goto_1593

    :catchall_1590
    move-exception v0

    const/16 v11, 0xa

    :goto_1593
    move-object v2, v0

    .line 2475
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_159b

    throw v3

    :cond_159b
    throw v2
    :try_end_159c
    .catchall {:try_start_1561 .. :try_end_159c} :catchall_15e4

    :catchall_159c
    move-exception v0

    const/16 v11, 0xa

    :goto_159f
    move-object v2, v0

    const/16 v10, 0x87

    goto/16 :goto_a73

    :cond_15a4
    const/16 v11, 0xa

    .line 2494
    :try_start_15a6
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x1d

    aget-byte v4, v3, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x160

    int-to-short v5, v5

    const/16 v6, 0x38a

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xa8

    .line 2495
    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x371

    int-to-short v6, v6

    const/16 v7, 0x313

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    invoke-static {v5, v6, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_15db
    .catchall {:try_start_15a6 .. :try_end_15db} :catchall_1787

    :try_start_15db
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v47, v4, v8

    .line 2499
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_15e3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15db .. :try_end_15e3} :catch_15e6
    .catchall {:try_start_15db .. :try_end_15e3} :catchall_15e4

    goto :goto_15f0

    :catchall_15e4
    move-exception v0

    goto :goto_159f

    :catch_15e6
    move-exception v0

    move-object v3, v0

    .line 2506
    :try_start_15e8
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
    :try_end_15ef
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15e8 .. :try_end_15ef} :catch_15ef
    .catchall {:try_start_15e8 .. :try_end_15ef} :catchall_15e4

    :catch_15ef
    const/4 v3, 0x0

    :goto_15f0
    if-eqz v3, :cond_173e

    .line 2517
    :try_start_15f2
    move-object v7, v3

    check-cast v7, Ljava/lang/Class;

    .line 2522
    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x11

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v5, 0x263

    int-to-short v5, v5

    const/16 v6, 0x87

    aget-byte v8, v3, v6

    int-to-byte v6, v8

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 2527
    const-class v4, Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v4, v5, v8

    .line 2528
    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 2529
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v8, v5

    if-nez v26, :cond_1626

    const/4 v2, 0x1

    goto :goto_1627

    :cond_1626
    const/4 v2, 0x0

    .line 2530
    :goto_1627
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    const/16 v2, 0x27d1

    new-array v2, v2, [B

    .line 2540
    const-class v4, Lcom/appsflyer/internal/e;

    const/16 v8, 0x11

    aget-byte v8, v3, v8
    :try_end_163e
    .catchall {:try_start_15f2 .. :try_end_163e} :catchall_1787

    int-to-byte v8, v8

    const/16 v10, 0x1a3

    int-to-short v10, v10

    const/4 v12, 0x4

    :try_start_1643
    aget-byte v13, v3, v12

    int-to-byte v13, v13

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v8

    .line 2541
    invoke-virtual {v4, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_164e
    .catchall {:try_start_1643 .. :try_end_164e} :catchall_1739

    .line 3664
    sget v8, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/16 v10, 0x61

    add-int/2addr v8, v10

    rem-int/lit16 v13, v8, 0x80

    sput v13, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/4 v13, 0x2

    rem-int/2addr v8, v13

    const/4 v8, 0x1

    :try_start_165a
    new-array v13, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v13, v8

    const/16 v4, 0x211

    .line 2541
    aget-byte v8, v3, v4

    int-to-byte v4, v8

    const/16 v8, 0x1bc

    int-to-short v8, v8

    const/16 v15, 0x38a

    aget-byte v5, v3, v15

    int-to-byte v5, v5

    invoke-static {v4, v8, v5}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v15, v5, [Ljava/lang/Class;

    aget-byte v5, v3, v23

    int-to-byte v5, v5

    const/16 v18, 0x38a

    aget-byte v10, v3, v18

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v15, v9

    invoke-virtual {v4, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1692
    .catchall {:try_start_165a .. :try_end_1692} :catchall_172d

    .line 144
    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    or-int/lit8 v9, v5, 0x59

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    xor-int/lit8 v5, v5, 0x59

    sub-int/2addr v9, v5

    rem-int/lit16 v5, v9, 0x80

    sput v5, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v5, 0x2

    rem-int/2addr v9, v5

    :try_start_16a1
    new-array v5, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/16 v9, 0x211

    .line 2543
    aget-byte v10, v3, v9

    int-to-byte v9, v10

    const/16 v10, 0x38a

    aget-byte v13, v3, v10

    int-to-byte v10, v13

    invoke-static {v9, v8, v10}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v10, 0xa8

    aget-byte v10, v3, v10

    int-to-byte v10, v10

    const/16 v13, 0xa0

    int-to-short v13, v13

    const/16 v15, 0x147

    aget-byte v15, v3, v15

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v10, v13, v15}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v9, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16d7
    .catchall {:try_start_16a1 .. :try_end_16d7} :catchall_1721

    const/16 v5, 0x211

    .line 2544
    :try_start_16d9
    aget-byte v9, v3, v5

    int-to-byte v5, v9

    const/16 v9, 0x38a

    aget-byte v10, v3, v9

    int-to-byte v9, v10

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v8, v3, v30
    :try_end_16eb
    .catchall {:try_start_16d9 .. :try_end_16eb} :catchall_1715

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x240

    and-int/lit16 v10, v8, 0x240

    or-int/2addr v9, v10

    int-to-short v9, v9

    const/16 v10, 0x87

    :try_start_16f4
    aget-byte v3, v3, v10

    int-to-byte v3, v3

    invoke-static {v8, v9, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1703
    .catchall {:try_start_16f4 .. :try_end_1703} :catchall_1713

    .line 2548
    :try_start_1703
    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v13, v27

    move/from16 v8, v40

    move-object/from16 v10, v44

    move-object/from16 v15, v45

    const/16 v5, 0x27a3

    goto/16 :goto_966

    :catchall_1713
    move-exception v0

    goto :goto_1718

    :catchall_1715
    move-exception v0

    const/16 v10, 0x87

    :goto_1718
    move-object v2, v0

    .line 2544
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1720

    throw v3

    :cond_1720
    throw v2

    :catchall_1721
    move-exception v0

    const/16 v10, 0x87

    move-object v2, v0

    .line 2543
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_172c

    throw v3

    :cond_172c
    throw v2

    :catchall_172d
    move-exception v0

    const/16 v10, 0x87

    move-object v2, v0

    .line 2541
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1738

    throw v3

    :cond_1738
    throw v2

    :catchall_1739
    move-exception v0

    const/16 v10, 0x87

    goto/16 :goto_19c5

    :cond_173e
    const/16 v10, 0x87

    const/4 v12, 0x4

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2553
    const-class v3, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    move-object/from16 v7, v42

    .line 2554
    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2555
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    if-nez v26, :cond_1762

    const/16 v2, 0x32

    goto :goto_1764

    :cond_1762
    const/16 v2, 0x23

    :goto_1764
    const/16 v4, 0x32

    if-eq v2, v4, :cond_176a

    const/4 v2, 0x0

    goto :goto_176b

    :cond_176a
    const/4 v2, 0x1

    .line 2556
    :goto_176b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v6, 0x13

    const/16 v9, 0x38a

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v33, 0x1

    goto/16 :goto_1aab

    :catchall_1787
    move-exception v0

    const/16 v10, 0x87

    goto/16 :goto_184b

    :catch_178c
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v3, v0

    .line 3745
    :goto_1793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v6, v5, v30

    int-to-byte v6, v6

    const/16 v7, 0x15c

    int-to-short v7, v7

    const/16 v8, 0x318

    aget-byte v9, v5, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9f

    aget-byte v2, v5, v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    int-to-byte v2, v2

    const/16 v6, 0xe2

    int-to-short v6, v6

    const/16 v7, 0x2e

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_17c9
    .catchall {:try_start_1703 .. :try_end_17c9} :catchall_19ae

    const/4 v4, 0x2

    :try_start_17ca
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v6, v4

    const/4 v3, 0x0

    aput-object v2, v6, v3

    aget-byte v2, v5, v23

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x2e0

    and-int/lit16 v4, v2, 0x2e0

    or-int/2addr v3, v4

    int-to-short v3, v3

    const/16 v4, 0x38a

    aget-byte v5, v5, v4

    int-to-byte v4, v5

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1800
    .catchall {:try_start_17ca .. :try_end_1800} :catchall_1800

    :catchall_1800
    move-exception v0

    move-object v2, v0

    :try_start_1802
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1809

    throw v3

    :cond_1809
    throw v2

    :catchall_180a
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v2, v0

    .line 3694
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1818

    throw v3

    :cond_1818
    throw v2

    :catchall_1819
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v2, v0

    .line 3686
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1827

    throw v3

    :cond_1827
    throw v2

    :catchall_1828
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v2, v0

    .line 3672
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1836

    throw v3

    :cond_1836
    throw v2

    :catchall_1837
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v2, v0

    .line 3666
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1845

    throw v3

    :cond_1845
    throw v2

    :catchall_1846
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    :goto_184b
    const/4 v12, 0x4

    goto/16 :goto_19c5

    :catchall_184e
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    move-object v2, v0

    .line 3660
    :goto_1855
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_185c

    throw v3

    :cond_185c
    throw v2

    :catchall_185d
    move-exception v0

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_186c

    throw v3

    :cond_186c
    throw v2

    :catchall_186d
    move-exception v0

    goto/16 :goto_19bf

    :catchall_1870
    move-exception v0

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2446
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1881

    throw v3

    :cond_1881
    throw v2

    :catchall_1882
    move-exception v0

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2443
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1893

    throw v3

    :cond_1893
    throw v2

    :catchall_1894
    move-exception v0

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    goto :goto_18a4

    :catchall_189d
    move-exception v0

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    :goto_18a4
    const/4 v14, 0x7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18ad

    throw v3

    :cond_18ad
    throw v2

    :catchall_18ae
    move-exception v0

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    goto/16 :goto_19c4

    :catchall_18b7
    move-exception v0

    goto/16 :goto_19bd

    :catchall_18ba
    move-exception v0

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2426
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18cd

    throw v3

    :cond_18cd
    throw v2

    :catchall_18ce
    move-exception v0

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2409
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18e1

    throw v3

    :cond_18e1
    throw v2

    :catchall_18e2
    move-exception v0

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2408
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_18f5

    throw v3

    :cond_18f5
    throw v2

    :catchall_18f6
    move-exception v0

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2407
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1909

    throw v3

    :cond_1909
    throw v2

    :catchall_190a
    move-exception v0

    goto/16 :goto_19bb

    :catchall_190d
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    move-object v2, v0

    .line 2306
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_192a

    throw v3

    :cond_192a
    throw v2

    :cond_192b
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v14, 0x7

    .line 2310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    aget-byte v4, v3, v30

    int-to-byte v4, v4

    const/16 v5, 0x154

    int-to-short v5, v5

    const/16 v6, 0x318

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9f

    aget-byte v4, v3, v4

    and-int/lit8 v5, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v5, v4

    int-to-byte v4, v5

    const/16 v5, 0xe2

    int-to-short v5, v5

    const/16 v6, 0x2e

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1978
    .catchall {:try_start_1802 .. :try_end_1978} :catchall_19ae

    const/4 v4, 0x1

    :try_start_1979
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    aget-byte v2, v3, v23

    int-to-byte v2, v2

    or-int/lit16 v4, v2, 0x2e0

    int-to-short v4, v4

    const/16 v6, 0x38a

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v2, v4, v3}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_19a4
    .catchall {:try_start_1979 .. :try_end_19a4} :catchall_19a4

    :catchall_19a4
    move-exception v0

    move-object v2, v0

    :try_start_19a6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_19ad

    throw v3

    :cond_19ad
    throw v2
    :try_end_19ae
    .catchall {:try_start_19a6 .. :try_end_19ae} :catchall_19ae

    :catchall_19ae
    move-exception v0

    goto :goto_19c5

    :catchall_19b0
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    :goto_19bb
    move/from16 v40, v8

    :goto_19bd
    move-object/from16 v45, v15

    :goto_19bf
    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    :goto_19c4
    const/4 v14, 0x7

    :goto_19c5
    move-object v2, v0

    :goto_19c6
    or-int/lit8 v3, v40, 0x1

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v4, v40, 0x1

    sub-int/2addr v3, v4

    :goto_19cd
    const/16 v4, 0x9

    if-ge v3, v4, :cond_19d4

    const/16 v7, 0x2a

    goto :goto_19d6

    :cond_19d4
    const/16 v7, 0x61

    :goto_19d6
    const/16 v5, 0x2a

    if-eq v7, v5, :cond_19df

    const/4 v3, 0x0

    const/16 v6, 0x13

    const/4 v7, 0x1

    goto :goto_1a0f

    .line 3664
    :cond_19df
    sget v5, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    const/16 v6, 0x13

    add-int/2addr v5, v6

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    if-nez v5, :cond_1a04

    .line 246
    :try_start_19ec
    aget-boolean v5, v45, v3
    :try_end_19ee
    .catch Ljava/lang/Exception; {:try_start_19ec .. :try_end_19ee} :catch_1ae5

    const/16 v7, 0x31

    const/4 v8, 0x0

    :try_start_19f1
    div-int/2addr v7, v8
    :try_end_19f2
    .catch Ljava/lang/Exception; {:try_start_19f1 .. :try_end_19f2} :catch_1ae5
    .catchall {:try_start_19f1 .. :try_end_19f2} :catchall_1a01

    if-eqz v5, :cond_19f6

    const/4 v7, 0x1

    goto :goto_1a0e

    :cond_19f6
    const/4 v5, 0x0

    const/16 v7, 0x211

    const/16 v8, 0x318

    const/16 v9, 0x38a

    const/4 v13, 0x2

    const/4 v15, 0x0

    goto/16 :goto_1a76

    :catchall_1a01
    move-exception v0

    move-object v1, v0

    .line 3664
    throw v1

    .line 246
    :cond_1a04
    :try_start_1a04
    aget-boolean v5, v45, v3

    if-eqz v5, :cond_1a0a

    const/4 v5, 0x0

    goto :goto_1a0b

    :cond_1a0a
    const/4 v5, 0x1

    :goto_1a0b
    const/4 v7, 0x1

    if-eq v5, v7, :cond_19f6

    :goto_1a0e
    const/4 v3, 0x1

    :goto_1a0f
    if-nez v3, :cond_1a13

    const/4 v3, 0x0

    goto :goto_1a14

    :cond_1a13
    const/4 v3, 0x1

    :goto_1a14
    if-ne v3, v7, :cond_1a20

    const/4 v5, 0x0

    .line 261
    sput-object v5, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    .line 262
    sput-object v5, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    const/16 v9, 0x38a

    const/4 v13, 0x2

    goto/16 :goto_1aa6

    .line 256
    :cond_1a20
    sget-object v1, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v7, 0x211

    aget-byte v3, v1, v7

    int-to-byte v3, v3

    sget v4, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    xor-int/lit16 v5, v4, 0x12c

    and-int/lit16 v4, v4, 0x12c

    or-int/2addr v4, v5

    int-to-short v4, v4

    const/16 v8, 0x318

    aget-byte v5, v1, v8

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3
    :try_end_1a38
    .catch Ljava/lang/Exception; {:try_start_1a04 .. :try_end_1a38} :catch_1ae5

    const/4 v4, 0x2

    :try_start_1a39
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    aget-byte v2, v1, v23

    int-to-byte v2, v2

    or-int/lit16 v3, v2, 0x2e0

    int-to-short v3, v3

    const/16 v9, 0x38a

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v13, 0x2

    new-array v2, v13, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v2, v15

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_1a6c
    .catchall {:try_start_1a39 .. :try_end_1a6c} :catchall_1a6c

    :catchall_1a6c
    move-exception v0

    move-object v1, v0

    :try_start_1a6e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1a75

    throw v2

    :cond_1a75
    throw v1

    :goto_1a76
    xor-int/lit8 v16, v3, -0x79

    and-int/lit8 v3, v3, -0x79

    const/16 v17, 0x1

    shl-int/lit8 v3, v3, 0x1

    add-int v16, v16, v3

    or-int/lit8 v3, v16, 0x7a

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v16, v16, 0x7a

    sub-int v3, v3, v16

    goto/16 :goto_19cd

    :cond_1a8a
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move/from16 v36, v4

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move/from16 v40, v8

    move-object/from16 v45, v15

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/16 v6, 0x13

    const/16 v9, 0x38a

    const/16 v10, 0x87

    const/16 v11, 0xa

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x7

    :goto_1aa6
    const/4 v15, 0x0

    const/16 v17, 0x1

    move/from16 v33, v36

    :goto_1aab
    or-int/lit8 v2, v40, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, v40, 0x1

    sub-int v8, v2, v3

    move/from16 v4, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v6, v38

    move-object/from16 v7, v39

    move-object/from16 v15, v45

    const/4 v5, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x4

    goto/16 :goto_421

    :cond_1ac6
    return-void

    :catchall_1ac7
    move-exception v0

    move-object v1, v0

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1ad0

    throw v2

    :cond_1ad0
    throw v1

    :catchall_1ad1
    move-exception v0

    move-object v1, v0

    .line 134
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1ada

    throw v2

    :cond_1ada
    throw v1

    :catchall_1adb
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1ae4

    throw v2

    :cond_1ae4
    throw v1
    :try_end_1ae5
    .catch Ljava/lang/Exception; {:try_start_1a6e .. :try_end_1ae5} :catch_1ae5

    :catch_1ae5
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventType(I)I
    .registers 9

    sget v0, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    xor-int/lit8 v2, v0, 0x45

    and-int/lit8 v3, v0, 0x45

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x60

    sub-int/2addr v0, v4

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_22
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v0, v2

    sget-object p0, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v3, 0x11

    aget-byte v3, p0, v3

    int-to-byte v3, v3

    const/16 v5, 0x379

    int-to-short v5, v5

    const/16 v6, 0x87

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x15b

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x22d

    int-to-short v6, v6

    const/16 v7, 0x13

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_6b
    .catchall {:try_start_22 .. :try_end_6b} :catchall_6c

    return p0

    :catchall_6c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_74

    throw v0

    :cond_74
    throw p0
.end method

.method public static AFInAppEventType(ICI)Ljava/lang/Object;
    .registers 11

    sget v0, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    sget-object v1, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x52

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/2addr v0, v2

    const/4 v0, 0x3

    :try_start_16
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    sget-object p0, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 p2, 0x11

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    const/16 v5, 0x379

    int-to-short v5, v5

    const/16 v6, 0x87

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {p2, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/16 v5, 0x145

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x12f

    int-to-short v6, v6

    const/16 v7, 0x13

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, p1

    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object p1, v0, v3

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v0, v2

    invoke-virtual {p2, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6d
    .catchall {:try_start_16 .. :try_end_6d} :catchall_77

    sget p1, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    rem-int/2addr p1, v2

    return-object p0

    :catchall_77
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7f

    throw p1

    :cond_7f
    throw p0
.end method

.method static init$0()V
    .registers 6

    sget v0, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    and-int/lit8 v1, v0, 0x21

    or-int/lit8 v0, v0, 0x21

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    const-string v3, "ISO-8859-1"

    const-string v4, "OS\u00d9\u00da\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00ca\u000c\u00fd\u00fe\u00f0\n\u00fe\u0018\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00d8\u00d7\u0003\u00fc\u000c\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f70\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u0006\u00e8\u00120\u00bd\u0002\u00f7>\u00e9\u00c6\u0002\u000c \u00ca\u000c\u00fd\u00fe\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e9\u00ca\t\u00fa\u0005=\u00cb\u000e\u00f0\u00fc\u0007\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5-\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e2\u00d8\u001e\u00e5\u00f5\u00fb\u00fa\u00f62\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\n\u0001\u00fa\u001b\u00ce\u0006\u00fd\u00f0\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00c9<\u00fd\u00ff\u00ee+\u00da\u00fa\u0004\u00ef,\u00d8\u00f4\u00f8\u0007\u00fc\u00ea&\u00e6\u0002\u0006\u00f2\u000c\u00ff\u00ee.\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\n\u0001\u00fa\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e7\u00dc\u00ea/\u00da\u00fa\u0004\u00f1\u0008\u00fc\u0003\u00f9\u00ff\u00fb\u00f8\u0000\u0000\u00f2\u00f3\n\u00fb:\u00b8\u00f7\u0003\u00fc\u000c\u00f5<\u00e9\u00de\u00eb\u000b\u001e\u00dc\u00ea2\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00ff\u00ee.\u00d1\u0008\u00fc\u001f\u00df\u00fb\u00f8\u0000\u001e\u00d8\u00f4\u00f7\u0008\u0008\u00f8\u00fa\u00d8*\u00ce\u00fd(\u00cc\u000e\u00f4\u00f7\u001d\u00d8\u0006\u0008\u0012\u00f6\u0014\u00f5\u00b7\u00fcL\u00b7\u0002\u00f2\u00fd\u0007\u00fe\u00fb\u00f5\u00f5P\u00b1\u0004\u00fc\u00efH\u0012\u00f7\u0013\u00f5\u0012\u00f9\u0011\u00f5\u0012\u00f5\u0015\u00f5\u0006\u00e8\u00120\u00bf\u0008\u00f0\u00046\u00e8\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00ce\u00fd&\u00d8\u00fa\n\u00fe\u00f2\u00f6\u00ff\u00ee,\u00ca\u0001\u000c\u00f0\u0001\n\u00f2\u0016\u00dc\u0002\u00fa\u000e\u00f7\u00ff\u001e\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u00f6\u00c9\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00ca2\u0006\u00e8\u00120\u00c2\u00f7>\u00e7\u00e0\u00ea\u0010\u0015\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00fa\u000b\u00fa\u001d\u00dc\u00ea\u0006\u00e8\u00120\u00c2\u00f7>\u00e9\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\'\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00f0\u0007\u00ef\u0000\u0003\u00023\u00bc\u00f9B\u00e6\u00d4\u00f5\n\u00f4\u0000\u00fe\u00fe\u0005\u00f4\u00f7\u0012\u00f2\u00f4\r\u00ef\u0005\u00ff\u00f6\u00ff\u00ee.\u00d4\u0008\u00eb\u00fd$\u00da\u000b\u00fa\u00fc\u00f0\u00c8\u0000\u00ea\u0010/\u00c8\u0000\u00ea\u0010/\u00fc\u00f6\u0004\u00ee\u000c\u00f8\u00f8\u00e3\u00e9\u0003\u00fc\u0002\u00fa\n\u000b\u00e2\u000e\u00ee\u00fd\u0008\u00f0\u00ff\u00ee+\u00ff\u000c\u00f6\u00e9\u0013\u00f8\u00f7\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f6&\u00ec\u00ea\t \u00d6\u0004\u00f5\u0005\u00f4\u00f7\u00fe\u00f4\u00fa\u00f9\u000b\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00c7>\u00bb\u00c9\u00f1\u00ff;\u00cb\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0@\u00c3\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2:\u00cb1\u0006\u00e8\u00120\u00c2\u00f7>\u00b7\u0004\u00fa\t\u00f8\u00f4\u00ff\u00ee!\u00db\u0000\u00fc\u0008\u00f0\u00fb\u00f8\u00ff\u00ee0\u00dc\u00ec\u0001\u0000\u00f4\u00fe\u000c\u0012\u00ec\u00ea\t\u00f0\u0007\u00ef\u0000\u0003\u00023\u00ca\u00ee\u00fd?\u00ea\u00db\u00ec\u0008\u00f0\n\u00f2\u00f8\"\u00e9\u00f3\n\u0001\u00fa\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u0013\u00d7\u00fe\u0001\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1\u00ff\u00f0\u0014\u00e2\u0006\u00f2\u000c\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00f7\u0007\u00ca\u0012\u00fb\u00f2\u00f9\u0008\u00f7\u00fe\u00f0\u0007\u00ef\u0000\u0003\u00023\u00b7\u000c\u00ea\u0001C\u00d7\u00ec\u00ea\u0001\u001c\u00de\u0008\u00fa\u00f6\u000c\u00ea\t\u0019\u00e0\u00f3\u00fc\u00ff\u00ee(\u00d8\u0002\u00f2\u0008\u0005\u00f2(\u00ce\u00fd\u0001\u0000\u0003\u00ff\u00ea\u0008\u00f7\u00fe\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u0012\u00fa\u0010\u00f5\u00eb\u0000\u00fd\n\u00f4\u00f7\u001d\u00e8\u00f9\u0005\u0015\u00e1\u00fa\u00fd\u0000\u00f3\u0006\u00e8\u00120\u00c2\u00f7>\u00e5\u00da\u00fa\u0004\u001e\u00dc\u00ef\r\u00ee\u0006\u00f6\u00f9\u0002\u00fa\u0002*\u00c6\u0002\u000c!\u00cc\u00fd\u000e\u00e5\u00fa\u000b\u00fa\u001e\u00d4\u0008\u00eb\u00fd\u00f1\u00ff<\u00ca\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0A\u00c2\u00f8\u00f7\u000c\u00f0\u0001\n\u00f2;\u00c8<\u00fd\u00f1\u00ff<\u00ca\u00ee\u00fd\u00fa\n\u00f7\u00f0\u0011\u00f0\u0002\u000e\u00ee\n\u00ea\u0008\u00f0\u000e\u0016\u00e0\u0004\u00ed\u000e\u00ec\u00f62\u00d8\u00f4\n\u00ff\u00ec\u0002\u00fa\u0006\u0001\u00ef\u0006\u00e8\u00120\u00c2\u00f7>\u00e2\u00d8\u00fb\u00f8\u00fe\u001e\u00dc\u00ff\n\u0001\u00f1"

    const/16 v5, 0x3cf

    if-eq v1, v0, :cond_2c

    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v0, 0x12

    :goto_29
    sput v0, Lcom/appsflyer/internal/e;->AppsFlyerInAppPurchaseValidatorListener:I

    goto :goto_3a

    :cond_2c
    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v0, 0x76

    goto :goto_29

    :goto_3a
    return-void
.end method

.method public static valueOf(Ljava/lang/Object;)I
    .registers 9

    sget v0, Lcom/appsflyer/internal/e;->AppsFlyerConversionListener:I

    xor-int/lit8 v1, v0, 0x73

    and-int/lit8 v2, v0, 0x73

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_1a

    sget-object v1, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    goto :goto_1f

    :cond_1a
    sget-object v1, Lcom/appsflyer/internal/e;->onAppOpenAttribution:Ljava/lang/Object;

    const/16 v4, 0x3b

    :try_start_1e
    div-int/2addr v4, v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_7e

    :goto_1f
    xor-int/lit8 v4, v0, 0x6f

    and-int/lit8 v0, v0, 0x6f

    shl-int/2addr v0, v3

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/appsflyer/internal/e;->onValidateInAppFailure:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_2b
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    sget-object p0, Lcom/appsflyer/internal/e;->onValidateInApp:[B

    const/16 v4, 0x11

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    const/16 v5, 0x379

    int-to-short v5, v5

    const/16 v6, 0x87

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/e;->onConversionDataFail:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x18

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x209

    int-to-short v6, v6

    const/16 v7, 0x149

    aget-byte p0, p0, v7

    or-int/lit8 v7, p0, 0x1

    shl-int/2addr v7, v3

    xor-int/2addr p0, v3

    sub-int/2addr v7, p0

    int-to-byte p0, v7

    invoke-static {v5, v6, p0}, Lcom/appsflyer/internal/e;->$$c(BIS)Ljava/lang/String;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v4, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_74
    .catchall {:try_start_2b .. :try_end_74} :catchall_75

    return p0

    :catchall_75
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7d

    throw v0

    :cond_7d
    throw p0

    :catchall_7e
    move-exception p0

    throw p0
.end method
