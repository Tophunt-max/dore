###### Class com.appsflyer.internal.b (com.appsflyer.internal.b)
.class final Lcom/appsflyer/internal/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/b$e;
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:J = 0x0L

.field private static AFInAppEventType:[C = null

.field private static AFKeystoreWrapper:J = 0x0L

.field private static getLevel:I = 0x1

.field private static init:I

.field private static valueOf:I

.field private static values:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x48

    new-array v0, v0, [C

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/appsflyer/internal/b;->AFInAppEventType:[C

    const-wide v0, 0x65f30986a7148477L    # 1.263923247384786E183

    sput-wide v0, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:J

    const/4 v0, 0x0

    sput v0, Lcom/appsflyer/internal/b;->valueOf:I

    sput-char v0, Lcom/appsflyer/internal/b;->values:C

    const-wide v0, -0x744fe11b3cd8effaL    # -2.198806181536985E-252

    sput-wide v0, Lcom/appsflyer/internal/b;->AFKeystoreWrapper:J

    return-void

    nop

    :array_1e
    .array-data 2
        0x60c2s
        -0x1b46s
        0x6829s
        -0x124cs
        0x7110s
        -0x967s
        0x7a0ds
        -0x34s
        0x436fs
        -0x3717s
        0x4c69s
        -0x2e25s
        0x5547s
        -0x2540s
        0x5e4es
        -0x5dccs
        0x27aas
        -0x5496s
        0x30a9s
        -0x4beds
        0x3983s
        -0x42fbs
        0x2e9s
        -0x7986s
        0xbe4s
        -0x70aes
        0x14ccs
        -0x679ds
        0x1dc6s
        0x61b6s
        -0x1ad0s
        0x6aads
        -0x11das
        0x7386s
        0x30s
        0x6as
        -0x7beas
        0x898s
        -0x72fcs
        0x11f2s
        -0x69c6s
        0x1aa5s
        -0x6091s
        0x23ccs
        -0x57bes
        0x2cd6s
        -0x4e87s
        0x35fds
        -0x4587s
        -0x54b9s
        0x2f7cs
        -0x5c19s
        0x266es
        -0x4524s
        0x3d5es
        -0x69f4s
        0x1250s
        -0x613cs
        0x1b49s
        -0x7808s
        0x6fs
        -0x7310s
        0x963s
        -0x4a4es
        0x3e18s
        -0x4576s
        0x2737s
        -0x5c55s
        0x2c30s
        -0x575cs
        0x54d9s
        -0x2eafs
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;
    .registers 15

    const-string v0, "\u1006\uc327\u1ee4\u8bb0"

    .line 256
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, -0x1

    int-to-char v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v5

    add-int/lit8 v6, v6, 0xe

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    shr-int/lit8 v8, v8, 0x16

    rsub-int/lit8 v8, v8, 0x23

    invoke-static {v4, v6, v8}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 258
    :try_start_33
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const v6, 0xab68

    .line 259
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v6

    int-to-char v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int/lit8 v8, v8, 0x6

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    rsub-int/lit8 v9, v13, 0x32

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "\u3547\u9171\u5611\u746f"

    .line 260
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const-string v9, "\u41b7\u8a87\ue617\u1014\ud2bc\u9bbe\u2e0c\u40c4\u137d\u4db0"

    invoke-static {v5, v5}, Landroid/graphics/PointF;->length(FF)F

    move-result v10

    cmpl-float v5, v10, v5

    int-to-char v5, v5

    invoke-static {v0, v6, v8, v9, v5}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 261
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/16 v6, 0x17

    if-eqz v5, :cond_8e

    const/16 v5, 0x3f

    goto :goto_90

    :cond_8e
    const/16 v5, 0x17

    :goto_90
    if-eq v5, v6, :cond_97

    .line 263
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_96} :catch_a2

    move-object v7, p0

    .line 270
    :cond_97
    sget p0, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/b;->init:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_119

    :catch_a2
    move-exception p0

    .line 5037
    sget-object v5, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    if-nez v5, :cond_ae

    .line 5038
    new-instance v5, Lcom/appsflyer/internal/ak;

    invoke-direct {v5}, Lcom/appsflyer/internal/ak;-><init>()V

    sput-object v5, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    .line 5040
    :cond_ae
    sget-object v5, Lcom/appsflyer/internal/ak;->valueOf:Lcom/appsflyer/internal/ak;

    const v6, 0x100964f

    .line 266
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    add-int/2addr v8, v6

    int-to-char v6, v8

    invoke-static {v3}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x15

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit8 v3, v3, 0x38

    invoke-static {v6, v8, v3}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v8, -0x43f039ba

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v9

    shr-int/lit8 v9, v9, 0x18

    add-int/2addr v9, v8

    invoke-static {v2, v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit16 v2, v2, 0x5e99

    int-to-char v2, v2

    const-string v8, "\u46ff\u0fc6\u99bc\ue65e"

    const-string v10, "\u3d2d\u7650\u4259\uaf28\u1969\u214f\u27b9\u79e8\u4d56\ud31f\ubd50\u8460\ue57e\u2154\u52a0\ue412\uaa35\u015c\u4383\u0a9f\u36ab\u3543\u4db9\u3672\uceff\u60e5\ua477\u87c0\u5e3c\u8c5c\uf348\u2481\u1a62\uaa7e\u9eb3\u117f\u8dda\uf9a4\ub88e\u5895\u5b13"

    invoke-static {v0, v8, v9, v10, v2}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v4

    .line 5157
    invoke-virtual {v5, v7, v3, v0}, Lcom/appsflyer/internal/ak;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 270
    sget p0, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/b;->init:I

    rem-int/lit8 p0, p0, 0x2

    const/16 v0, 0x55

    if-eqz p0, :cond_10f

    goto :goto_111

    :cond_10f
    const/16 v1, 0x55

    :goto_111
    if-eq v1, v0, :cond_119

    :try_start_113
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_117

    return-object v7

    :catchall_117
    move-exception p0

    throw p0

    :cond_119
    :goto_119
    return-object v7
.end method

.method static AFInAppEventParameterName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 30

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 78
    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-string v10, "\uaf6f"

    const-string v11, "\u1663\u22c8\u553e\u07e8"

    const/16 v12, 0x10

    const-string v13, "\u1006\uc327\u1ee4\u8bb0"

    cmp-long v14, v4, v8

    add-int/lit16 v14, v14, 0x60a3

    int-to-char v4, v14

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/2addr v5, v12

    add-int/lit8 v5, v5, 0x22

    invoke-static {v8, v9}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v14

    invoke-static {v4, v5, v14}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    const v4, 0x3d22c816

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0xe854

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    cmp-long v16, v14, v8

    add-int v5, v16, v5

    int-to-char v5, v5

    invoke-static {v13, v11, v4, v10, v5}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    goto :goto_70

    :cond_57
    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    add-int/2addr v4, v7

    int-to-char v4, v4

    invoke-static {v3, v3}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v14

    cmp-long v5, v14, v8

    neg-int v5, v5

    invoke-static {v3, v6, v6}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v14

    cmpl-float v14, v14, v6

    add-int/lit8 v14, v14, 0x22

    invoke-static {v4, v5, v14}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v4

    :goto_70
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1298
    invoke-static {v5}, Lcom/appsflyer/internal/b;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    .line 1299
    invoke-static {v15, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v16

    const v17, 0x3e22c816

    add-int v6, v16, v17

    invoke-static {v15, v15}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v16

    const v19, 0xe855

    sub-int v7, v19, v16

    int-to-char v7, v7

    invoke-static {v13, v11, v6, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x32

    if-nez v6, :cond_b2

    const/16 v6, 0x32

    goto :goto_b4

    :cond_b2
    const/16 v6, 0x16

    :goto_b4
    const/4 v14, 0x2

    const/16 v12, 0x30

    if-eq v6, v7, :cond_d5

    .line 1308
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int v6, v17, v6

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    add-int v7, v7, v19

    int-to-char v7, v7

    invoke-static {v13, v11, v6, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 104
    :cond_d5
    sget v6, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v6, v6, 0x25

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/2addr v6, v14

    .line 1305
    invoke-static {v15, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v15, v12, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    neg-int v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v22

    cmp-long v24, v22, v8

    rsub-int/lit8 v14, v24, 0x23

    invoke-static {v6, v7, v14}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :goto_fe
    invoke-static/range {p0 .. p0}, Lcom/appsflyer/internal/b;->valueOf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_106

    const/4 v7, 0x1

    goto :goto_107

    :cond_106
    const/4 v7, 0x0

    :goto_107
    if-eqz v7, :cond_12c

    .line 1315
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    int-to-char v6, v6

    invoke-static {v15, v12, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    neg-int v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    const/16 v21, 0x10

    shr-int/lit8 v14, v14, 0x10

    add-int/lit8 v14, v14, 0x22

    invoke-static {v6, v7, v14}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14b

    .line 1318
    :cond_12c
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int v5, v5, v17

    const v7, 0xe856

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    cmp-long v14, v23, v8

    sub-int/2addr v7, v14

    int-to-char v7, v7

    invoke-static {v13, v11, v5, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    :goto_14b
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :try_start_15b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 86
    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v6, "\u9bb2\u3d3e\u3ffa\u0810"

    .line 88
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v7

    const/16 v14, 0x10

    shr-int/2addr v7, v14

    const-string v14, "\ub37a\u3c02\uf6b8\u0883\u1597\u21f7\u513c\u4770\u7ef7\uca2e\ua4f3\u2e87\ue5f1\u5858\ud979\u45e1\ub918\u89d2"

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    rsub-int v8, v8, 0x103f

    int-to-char v8, v8

    invoke-static {v13, v6, v7, v14, v8}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 2020
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 88
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 89
    invoke-virtual {v7, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_196
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15b .. :try_end_196} :catch_3aa

    move-wide/from16 v4, p1

    .line 96
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const v6, -0x65ff1ee9

    .line 2195
    invoke-static {v15, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v15, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    rsub-int/lit8 v6, v6, -0x1

    int-to-char v6, v6

    const-string v8, "\u161b\u00e1\u789a\uebf7"

    const-string v9, "\u29d9\uda24\ua948\uc653\u0e35\u5f7e\u6c28\u6d89\ub178\u16b4\u4c97\u8960\u6002\uf11a\u76b9\ue2cc\ua6d8\uc7b7\u13c8\uf08b\uafba\u3d39\ufd8d\ufae3\ubae0"

    invoke-static {v13, v8, v7, v9, v6}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x3e22c815

    const-wide/16 v8, -0x1

    if-eqz v6, :cond_1d8

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v25

    const-wide/16 v23, 0x0

    cmp-long v6, v25, v23

    add-int/2addr v6, v7

    invoke-static {v3}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v25

    cmp-long v14, v25, v23

    add-int v14, v14, v19

    int-to-char v14, v14

    invoke-static {v13, v11, v6, v10, v14}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f7

    :cond_1d8
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v23

    cmp-long v6, v23, v8

    add-int/lit8 v6, v6, -0x1

    int-to-char v6, v6

    invoke-static {v15, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v14

    const/16 v20, 0x1

    rsub-int/lit8 v14, v14, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v23

    const/16 v18, 0x0

    cmpl-float v23, v23, v18

    rsub-int/lit8 v7, v23, 0x23

    invoke-static {v6, v14, v7}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    :goto_1f7
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, -0x254e2a5e

    .line 2197
    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v7

    const/16 v14, 0x10

    shr-int/2addr v7, v14

    sub-int/2addr v6, v7

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-char v7, v7

    const-string v14, "\ua289\ub1d5\ue7da\uc426"

    const-string v12, "\u168d\u6f74\u6c33\u12fc\ucfd4\u69dd\ud24a\u6af1\u692e\uf4b6\uebc7\ufe94\u6ece\u015c\u2d09\u6bc1\ub249\ucbda\u30cc\u28b9\u591d\u6f5d\ue15c"

    invoke-static {v13, v14, v6, v12, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0x19

    if-eqz v6, :cond_225

    const/16 v6, 0x19

    goto :goto_227

    :cond_225
    const/16 v6, 0x3e

    :goto_227
    if-eq v6, v7, :cond_247

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    cmp-long v12, v6, v8

    add-int/lit8 v12, v12, -0x1

    int-to-char v6, v12

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/4 v8, 0x1

    rsub-int/lit8 v7, v7, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    const/16 v9, 0x16

    shr-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x22

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    goto :goto_26f

    .line 104
    :cond_247
    sget v6, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 v6, v6, 0x2d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->init:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    if-eqz v6, :cond_255

    const/4 v6, 0x0

    goto :goto_256

    :cond_255
    const/4 v6, 0x1

    :goto_256
    if-eqz v6, :cond_274

    .line 2197
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    add-int v6, v6, v17

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    sub-int v7, v19, v7

    int-to-char v7, v7

    invoke-static {v13, v11, v6, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    :goto_26f
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    goto :goto_28f

    .line 104
    :cond_274
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    add-int/lit8 v6, v6, 0x7f

    shr-int v6, v17, v6

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v7, v7, v8

    sub-int v7, v19, v7

    int-to-char v7, v7

    invoke-static {v13, v11, v6, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 2197
    :goto_28f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2199
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    int-to-char v7, v7

    const-string v8, "\u793a\ue896\u3a0a\ua91f"

    const-string v9, "\ube72\u4b28\u13e9\u5a99\u6861\u37e8\u20ce\udc08\u10af\uc2d5\u8b4c\ue245\ubbba\ue411\u8dfd\u8489\u250c\u4d3f\ube3c\uec99"

    invoke-static {v13, v8, v6, v9, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b3

    const/16 v6, 0x17

    goto :goto_2b5

    :cond_2b3
    const/16 v6, 0xd

    :goto_2b5
    const/16 v7, 0xd

    if-eq v6, v7, :cond_2cb

    invoke-static {v3, v3}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v6

    add-int v6, v6, v17

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    sub-int v7, v19, v7

    int-to-char v7, v7

    invoke-static {v13, v11, v6, v10, v7}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    goto :goto_2e5

    :cond_2cb
    const/high16 v6, 0x1000000

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    add-int/2addr v7, v6

    int-to-char v6, v7

    const/16 v7, 0x30

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v8

    add-int/lit8 v8, v8, -0x2f

    invoke-static {v15, v7, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v9

    add-int/lit8 v9, v9, 0x23

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    :goto_2e5
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x26dbc38f

    .line 2201
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    const/16 v8, 0x10

    shr-int/2addr v6, v8

    rsub-int v6, v6, 0x4c9b

    int-to-char v6, v6

    const-string v8, "\u8ff4\udbc3\u9b26\u874c"

    const-string v9, "\u8830\u5545\u71f8\u68b3\u7d5d\u7cdb\u5795\u033f\u2701\udc57\u153d\ufd3c\u9d02\u8495\u9e09"

    invoke-static {v13, v8, v7, v9, v6}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/internal/b;->AFInAppEventParameterName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_333

    .line 104
    sget v6, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v6, v6, 0x4f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/b;->getLevel:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    const/16 v6, 0x30

    .line 2201
    invoke-static {v15, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    const v7, 0x3e22c815

    sub-int/2addr v7, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    const/16 v8, 0x10

    shr-int/2addr v6, v8

    add-int v6, v6, v19

    int-to-char v6, v6

    invoke-static {v13, v11, v7, v10, v6}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    goto :goto_34f

    :cond_333
    const/16 v6, 0x30

    const/16 v8, 0x10

    invoke-static {v15, v6, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-char v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v9

    shr-int/2addr v9, v8

    const/4 v8, 0x1

    sub-int/2addr v8, v9

    invoke-static {v15, v6, v3, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x21

    invoke-static {v7, v8, v6}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object v6

    :goto_34f
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2212
    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2214
    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x11

    const/4 v7, 0x2

    .line 3189
    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v8, 0x10

    .line 3190
    invoke-static {v1, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 3178
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 3179
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1b

    .line 4189
    invoke-static {v1, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 4190
    invoke-static {v1, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    .line 4178
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 4179
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsflyer/internal/b;->values(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :catch_3aa
    invoke-static {v15}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    const v1, 0xff17

    const/16 v2, 0x30

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const-string v2, "\u9ff7\u2b74\u1307\u22ff"

    const-string v3, "\u72df\ubae6\u12e5\u6e16\u810b\u253b\u7151\uf2f2\ufeac\ue37e\ud210\u9f30\u7f7c\u7d55\u41f3\u752b\uba6a\u7616\ub910\u28d2\u72a4\ub0b4\uacd0\u546a\u92f9\ubb5f\u0842\u8d5a\ueedb\u16a6\ufe8e\u50f9"

    invoke-static {v13, v2, v0, v3, v1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Z
    .registers 4

    .line 164
    sget v0, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_17

    .line 161
    :try_start_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_1b

    :cond_17
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1a} :catch_1c

    const/4 v1, 0x0

    :goto_1b
    return v1

    :catch_1c
    return v2
.end method

.method private static valueOf(CII)Ljava/lang/String;
    .registers 12

    .line 6096
    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_3
    const/16 v2, 0x41

    if-ge v1, p1, :cond_a

    const/16 v3, 0x41

    goto :goto_c

    :cond_a
    const/16 v3, 0x55

    :goto_c
    if-eq v3, v2, :cond_14

    .line 6107
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_14
    sget v2, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v3, v2, 0x9

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v3, v3, 0x2

    .line 6101
    sget-object v3, Lcom/appsflyer/internal/b;->AFInAppEventType:[C

    add-int v4, p2, v1

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v1

    sget-wide v7, Lcom/appsflyer/internal/b;->AFInAppEventParameterName:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p0

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x6f

    .line 6107
    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_3
.end method

.method private static valueOf(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 283
    sget v0, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    .line 277
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 279
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1a} :catch_2f

    .line 283
    sget v1, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_28

    const/4 v2, 0x1

    :cond_28
    if-eq v2, v3, :cond_2b

    return-object p0

    :cond_2b
    :try_start_2b
    array-length v0, v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-object p0

    :catchall_2d
    move-exception p0

    throw p0

    :catch_2f
    return-object v0
.end method

.method private static valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;
    .registers 10

    .line 6138
    sget v0, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->getLevel:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/16 v0, 0x11

    if-eqz p3, :cond_11

    const/16 v3, 0x40

    goto :goto_13

    :cond_11
    const/16 v3, 0x11

    :goto_13
    const/4 v4, 0x0

    if-eq v3, v0, :cond_2d

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/b;->init:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_29

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    const/16 v0, 0x16

    :try_start_25
    div-int/2addr v0, v4
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    goto :goto_2d

    :catchall_27
    move-exception p0

    throw p0

    .line 0
    :cond_29
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    :cond_2d
    :goto_2d
    check-cast p3, [C

    const/4 v0, 0x1

    if-eqz p1, :cond_34

    const/4 v1, 0x0

    goto :goto_35

    :cond_34
    const/4 v1, 0x1

    :goto_35
    if-eq v1, v0, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_3b
    check-cast p1, [C

    if-eqz p0, :cond_63

    .line 6138
    sget v0, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->init:I

    rem-int/2addr v0, v2

    const/16 v1, 0x22

    if-eqz v0, :cond_4f

    const/16 v0, 0x22

    goto :goto_51

    :cond_4f
    const/16 v0, 0x2e

    :goto_51
    if-eq v0, v1, :cond_58

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_63

    .line 6138
    :cond_58
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5d
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_63

    :catchall_61
    move-exception p0

    throw p0

    .line 0
    :cond_63
    :goto_63
    check-cast p0, [C

    .line 6118
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 6119
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    .line 6120
    aget-char v0, p1, v4

    xor-int/2addr p4, v0

    int-to-char p4, p4

    aput-char p4, p1, v4

    .line 6121
    aget-char p4, p0, v2

    int-to-char p2, p2

    add-int/2addr p4, p2

    int-to-char p2, p4

    aput-char p2, p0, v2

    .line 6123
    array-length p2, p3

    .line 6124
    new-array p4, p2, [C

    :goto_81
    if-ge v4, p2, :cond_a2

    .line 6128
    invoke-static {p1, p0, v4}, Lcom/appsflyer/internal/ct;->AFInAppEventType([C[CI)V

    .line 6131
    aget-char v0, p3, v4

    add-int/lit8 v1, v4, 0x3

    rem-int/lit8 v1, v1, 0x4

    aget-char v1, p1, v1

    xor-int/2addr v0, v1

    int-to-long v0, v0

    sget-wide v2, Lcom/appsflyer/internal/b;->AFKeystoreWrapper:J

    xor-long/2addr v0, v2

    sget v2, Lcom/appsflyer/internal/b;->valueOf:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    sget-char v2, Lcom/appsflyer/internal/b;->values:C

    int-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    int-to-char v0, v1

    aput-char v0, p4, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_81

    .line 6138
    :cond_a2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p4}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    .line 245
    sget v0, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->init:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, ""

    const/4 v2, 0x0

    const-string v3, "\ua235"

    const v4, 0x1c2f973e

    const-string v5, "\u3e2e\u2f97\u7e1c\ue97d"

    const-string v6, "\u1006\uc327\u1ee4\u8bb0"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_40

    .line 226
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    sub-int v0, v4, v0

    const/16 v1, 0xecc

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v9, v9, v10

    rem-int/2addr v1, v9

    int-to-char v1, v1

    invoke-static {v6, v5, v0, v3, v1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    if-eq v0, v8, :cond_5d

    goto :goto_5c

    :cond_40
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    cmpl-float v1, v1, v2

    rsub-int v1, v1, 0x7d7f

    int-to-char v1, v1

    invoke-static {v6, v5, v0, v3, v1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    :goto_5c
    return-object p0

    .line 230
    :cond_5d
    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    shr-int/lit8 v0, v0, 0x6

    const v1, 0xf864

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v9

    const-string v10, "\ue1d7\ud7fa\u643a\ua0f8"

    const-string v11, "\ub698\u9d73"

    cmpl-float v9, v9, v2

    sub-int/2addr v1, v9

    int-to-char v1, v1

    invoke-static {v6, v10, v0, v11, v1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 231
    array-length v0, p0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, v8

    .line 235
    aget-object v9, p0, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    sub-int v9, v4, v9

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v10

    cmpl-float v2, v10, v2

    add-int/lit16 v2, v2, 0x7d7e

    int-to-char v2, v2

    invoke-static {v6, v5, v9, v3, v2}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    sget v2, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v2, 0x1

    :goto_b3
    if-ge v2, v0, :cond_b7

    const/4 v9, 0x0

    goto :goto_b8

    :cond_b7
    const/4 v9, 0x1

    :goto_b8
    if-eq v9, v8, :cond_e7

    sget v9, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 v9, v9, 0x9

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/b;->init:I

    rem-int/lit8 v9, v9, 0x2

    .line 239
    aget-object v9, p0, v2

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v7}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    rsub-int v10, v14, 0x7d7f

    int-to-char v10, v10

    invoke-static {v6, v5, v9, v3, v10}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 243
    :cond_e7
    aget-object p0, p0, v7

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static values(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .registers 11

    .line 152
    sget v0, Lcom/appsflyer/internal/b;->init:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x48

    if-eqz p0, :cond_11

    const/16 v2, 0x62

    goto :goto_13

    :cond_11
    const/16 v2, 0x48

    :goto_13
    const/4 v3, 0x0

    if-eq v2, v1, :cond_b4

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b;->getLevel:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_b4

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_b4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 124
    :goto_33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_45

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    .line 129
    :cond_45
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x7

    add-int/2addr p1, v1

    invoke-virtual {v0, v1, p1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p0, 0x0

    move-wide v4, p0

    const/4 v1, 0x0

    .line 133
    :goto_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v6, 0x1

    if-ge v1, v2, :cond_5f

    const/4 v2, 0x1

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    if-eq v2, v6, :cond_9d

    :goto_62
    const-wide/16 v1, 0x64

    cmp-long v7, v4, v1

    if-lez v7, :cond_6a

    const/4 v7, 0x0

    goto :goto_6b

    :cond_6a
    const/4 v7, 0x1

    :goto_6b
    if-eqz v7, :cond_9b

    long-to-int v1, v4

    const/16 v2, 0x17

    .line 143
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0xa

    cmp-long v1, v4, v7

    if-gez v1, :cond_96

    .line 147
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p0

    int-to-char p0, p0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    sub-int/2addr v6, p1

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x22

    invoke-static {p0, v6, p1}, Lcom/appsflyer/internal/b;->valueOf(CII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_96
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_9b
    rem-long/2addr v4, v1

    goto :goto_62

    .line 152
    :cond_9d
    sget v2, Lcom/appsflyer/internal/b;->getLevel:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/b;->init:I

    rem-int/lit8 v2, v2, 0x2

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    int-to-long v6, v2

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    :cond_b4
    const-string p0, ""

    .line 152
    invoke-static {p0, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    const p1, 0xff13

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-char p1, p1

    const-string v0, "\u1006\uc327\u1ee4\u8bb0"

    const-string v1, "\u9ff7\u2b74\u1307\u22ff"

    const-string v2, "\u72df\ubae6\u12e5\u6e16\u810b\u253b\u7151\uf2f2\ufeac\ue37e\ud210\u9f30\u7f7c\u7d55\u41f3\u752b\uba6a\u7616\ub910\u28d2\u72a4\ub0b4\uacd0\u546a\u92f9\ubb5f\u0842\u8d5a\ueedb\u16a6\ufe8e\u50f9"

    invoke-static {v0, v1, p0, v2, p1}, Lcom/appsflyer/internal/b;->valueOf(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.appsflyer.internal.b.e (com.appsflyer.internal.b$e)
.class final Lcom/appsflyer/internal/b$e;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/b$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static AFInAppEventParameterName:I = 0x64913652

.field private static AFKeystoreWrapper:I = 0x1d

.field private static AFLogger$LogLevel:[B = null

.field private static AFVersionDeclaration:[S = null

.field private static AppsFlyer2dXConversionCallback:I = 0x0

.field private static getLevel:[C = null

.field private static init:Z = false

.field private static onAppOpenAttributionNative:Z = false

.field private static onAttributionFailureNative:I = 0x0

.field private static onInstallConversionDataLoadedNative:I = 0x1

.field private static values:I = 0x20993b22


# instance fields
.field private final AFInAppEventType:Landroid/content/Context;

.field private final valueOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x71

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:[B

    const/16 v0, 0xc

    sput v0, Lcom/appsflyer/internal/b$e;->AppsFlyer2dXConversionCallback:I

    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/appsflyer/internal/b$e;->getLevel:[C

    const/4 v0, 0x1

    sput-boolean v0, Lcom/appsflyer/internal/b$e;->onAppOpenAttributionNative:Z

    sput-boolean v0, Lcom/appsflyer/internal/b$e;->init:Z

    return-void

    :array_1c
    .array-data 1
        0x3t
        0xct
        -0x13t
        0x1t
        0xet
        -0x8t
        0x4t
        -0xbt
        0x15t
        -0x7t
        0x5t
        -0xat
        0xdt
        -0x11t
        0x10t
        0x0t
        0x0t
        0x0t
        -0x2dt
        0x1t
        -0x6t
        0x4t
        -0x6t
        0x6t
        -0x8t
        -0x4t
        -0x35t
        -0xft
        0x45t
        -0x1at
        -0x34t
        -0x1t
        0x6t
        -0xbt
        0x4t
        0xbt
        0x2t
        -0x15t
        0x13t
        0x45t
        -0x48t
        -0xct
        0xbt
        -0xet
        0x57t
        -0x45t
        -0x10t
        0x9t
        0xbt
        -0x15t
        0x56t
        -0x46t
        0x1t
        -0x6t
        0x4bt
        -0x47t
        -0x7t
        0x5t
        -0xbt
        0x13t
        -0x11t
        0xdt
        -0x9t
        0x9t
        -0x2t
        0x47t
        -0x44t
        -0x1t
        -0x7t
        0x3t
        0x8t
        -0x5t
        0x7t
        0x1t
        -0x2t
        -0x34t
        0x35t
        -0x8t
        -0x2bt
        0x34t
        -0x4t
        -0x1t
        0x5t
        -0x35t
        0x4t
        -0x4t
        0x3t
        0x1t
        -0x1t
        -0xdt
        -0x3t
        0x1t
        0x13t
        -0x11t
        0xdt
        -0xbt
        0x3t
        0x8t
        -0xft
        0x52t
        0x4dt
        0x4at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5a
    .array-data 2
        0x5as
        0x5bs
        0x6bs
        0x4es
        0x5es
        0x4ds
        0x50s
        0x77s
        0x71s
        0x72s
        0x6ds
        0x75s
        0x78s
        0x70s
        0x2cs
        0x73s
        0x7as
        0x7es
        0x80s
        0x85s
        0x83s
        0x74s
        0x84s
        0x6fs
        0x7cs
        0x7bs
        0x46s
        0x7fs
        0x58s
        0x81s
        0x3as
        0x60s
        0x51s
        0x65s
        0x4fs
        0x54s
        0x53s
        0x44s
        0x42s
        0x6es
        0x3cs
        0x7ds
        0x3ds
        0x3es
        0x79s
    .end array-data
.end method

.method constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    .line 356
    iput-object p2, p0, Lcom/appsflyer/internal/b$e;->AFInAppEventType:Landroid/content/Context;

    .line 357
    invoke-direct {p0}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/b$e;->AFInAppEventType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFInAppEventParameterName()Ljava/lang/String;
    .registers 15

    const-string v0, ""

    .line 390
    sget v1, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 385
    :try_start_e
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    iget-object v5, p0, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    const v6, -0x20993ac1

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    sub-int/2addr v6, v7

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/lit8 v7, v7, 0x6

    int-to-short v7, v7

    const/high16 v8, 0x1000000

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    add-int/2addr v9, v8

    int-to-byte v8, v9

    invoke-static {v0, v0, v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    add-int/lit8 v0, v0, -0x11

    const v9, -0x64913652

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v6, v7, v8, v0, v10}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    iget-object v5, p0, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    const v6, -0x20993ac0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    int-to-short v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v11

    rsub-int/lit8 v11, v11, -0x18

    const v12, -0x64913677

    const/16 v13, 0x30

    invoke-static {v13}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v6, v7, v8, v11, v13}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_89} :catch_125

    const/4 v6, 0x1

    if-nez v5, :cond_8e

    const/4 v7, 0x0

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x1

    :goto_8f
    if-eq v7, v6, :cond_ca

    .line 413
    sget v5, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v5, v5, 0x27

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_9e

    const/4 v5, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v5, 0x0

    :goto_9f
    const-string v7, "\u0087\u0081\u0086\u0085\u0084\u0083\u0082\u0081"

    if-eqz v5, :cond_b4

    .line 390
    :try_start_a3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v5, v11, v9

    rsub-int v5, v5, 0x7df8

    invoke-static {v7, v1, v1, v5}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_af
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    goto :goto_c1

    :cond_b4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v5, v11, v9

    rsub-int v5, v5, 0x80

    invoke-static {v7, v1, v1, v5}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c0} :catch_125

    goto :goto_af

    .line 413
    :goto_c1
    sget v7, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 v7, v7, 0x63

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/2addr v7, v2

    .line 393
    :cond_ca
    :try_start_ca
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v4, v0, v3

    aput-object v5, v0, v6

    .line 396
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/appsflyer/internal/b$e;->valueOf([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_ee

    .line 400
    invoke-virtual {v0, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_ee
    :goto_ee
    if-ge v4, v5, :cond_f8

    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x31

    .line 406
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_ee

    :cond_f8
    :goto_f8
    const-string v4, "\u008a\u0089\u0088"

    .line 409
    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7f

    invoke-static {v4, v1, v1, v5}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_10f} :catch_125

    .line 413
    sget v4, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v4, v4, 0x1b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/2addr v4, v2

    if-eqz v4, :cond_11b

    goto :goto_11c

    :cond_11b
    const/4 v3, 0x1

    :goto_11c
    if-eqz v3, :cond_11f

    return-object v0

    :cond_11f
    :try_start_11f
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    return-object v0

    :catchall_123
    move-exception v0

    throw v0

    :catch_125
    move-exception v0

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7f

    const-string v5, "\u008f\u009b\u0091\u009a\u008c\u0093\u0099\u0089\u0098\u0097\u0089\u008f\u0096\u0093\u008c\u0095\u008f\u0094\u0089\u0088\u008f\u008a\u0089\u0088\u008f\u0090\u0091\u008c\u0093\u008b\u0092\u0089\u0091\u0089\u0090\u008f\u008e\u0089\u008d\u008c\u008b\u008a"

    invoke-static {v5, v1, v1, v4}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    const v0, -0x20993ab7

    .line 413
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    rsub-int/lit8 v4, v4, -0x16

    const v5, -0x64913643

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v1, v0, v2, v4, v5}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;
    .registers 9

    .line 3200
    sget v0, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const/16 v0, 0x28

    :try_start_f
    div-int/2addr v0, v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1c

    const/16 v0, 0x52

    if-eqz p2, :cond_17

    const/16 v2, 0x5d

    goto :goto_19

    :cond_17
    const/16 v2, 0x52

    :goto_19
    if-eq v2, v0, :cond_24

    goto :goto_20

    :catchall_1c
    move-exception p0

    throw p0

    :cond_1e
    if-eqz p2, :cond_24

    .line 0
    :goto_20
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_24
    check-cast p2, [C

    if-eqz p0, :cond_2e

    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    :cond_2e
    check-cast p0, [B

    .line 3158
    sget-object v0, Lcom/appsflyer/internal/b$e;->getLevel:[C

    .line 3159
    sget v2, Lcom/appsflyer/internal/b$e;->AppsFlyer2dXConversionCallback:I

    .line 3161
    sget-boolean v3, Lcom/appsflyer/internal/b$e;->onAppOpenAttributionNative:Z

    if-eqz v3, :cond_78

    .line 3164
    array-length v3, p0

    .line 3165
    new-array v4, v3, [C

    .line 3200
    sget p1, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/lit8 p1, p1, 0x2

    :goto_45
    const/16 p1, 0x60

    if-ge v1, v3, :cond_4c

    const/16 p2, 0x60

    goto :goto_4e

    :cond_4c
    const/16 p2, 0x3c

    :goto_4e
    if-eq p2, p1, :cond_69

    .line 3172
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    .line 3200
    sget p1, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_68

    const/4 p1, 0x0

    :try_start_62
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    return-object p0

    :catchall_66
    move-exception p0

    throw p0

    :cond_68
    return-object p0

    :cond_69
    add-int/lit8 p1, v3, -0x1

    sub-int/2addr p1, v1

    .line 3169
    aget-byte p1, p0, p1

    add-int/2addr p1, p3

    aget-char p1, v0, p1

    sub-int/2addr p1, v2

    int-to-char p1, p1

    aput-char p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 3175
    :cond_78
    sget-boolean p0, Lcom/appsflyer/internal/b$e;->init:Z

    if-eqz p0, :cond_a9

    .line 3178
    array-length p0, p2

    .line 3179
    new-array p1, p0, [C

    .line 3200
    sget v3, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/lit8 v3, v3, 0x2

    :goto_89
    const/16 v3, 0x18

    if-ge v1, p0, :cond_90

    const/16 v4, 0x26

    goto :goto_92

    :cond_90
    const/16 v4, 0x18

    :goto_92
    if-eq v4, v3, :cond_a3

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    .line 3183
    aget-char v3, p2, v3

    sub-int/2addr v3, p3

    aget-char v3, v0, v3

    sub-int/2addr v3, v2

    int-to-char v3, v3

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 3186
    :cond_a3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 3192
    :cond_a9
    array-length p0, p1

    .line 3193
    new-array p2, p0, [C

    const/4 v3, 0x0

    :goto_ad
    if-ge v3, p0, :cond_b1

    const/4 v4, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v4, 0x0

    :goto_b2
    if-eqz v4, :cond_c3

    add-int/lit8 v4, p0, -0x1

    sub-int/2addr v4, v3

    .line 3197
    aget v4, p1, v4

    sub-int/2addr v4, p3

    aget-char v4, v0, v4

    sub-int/2addr v4, v2

    int-to-char v4, v4

    aput-char v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ad

    .line 3200
    :cond_c3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private AFInAppEventType()Ljava/lang/String;
    .registers 19

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x30

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 421
    :try_start_e
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    const v12, -0x20993ac1

    invoke-static {v2, v2, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    int-to-short v13, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v14

    shr-int/2addr v14, v9

    int-to-byte v14, v14

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    rsub-int/lit8 v15, v15, -0x11

    const v16, -0x64913653

    invoke-static {v2}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v17

    sub-int v4, v16, v17

    invoke-static {v12, v13, v14, v15, v4}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object v4, v1, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    const-string v12, "\u0089\u0093\u008b\u0087\u0096\u0098\u0091\u009e\u008b\u009d\u0093\u009c\u0092\u008c\u008a"

    const v13, -0xffff81

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v12, v10, v10, v13}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const v12, -0x20993ae8

    .line 423
    invoke-static {v8}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v13

    add-int/lit16 v13, v13, -0x81

    int-to-short v13, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v14

    cmpl-float v14, v14, v3

    rsub-int/lit8 v14, v14, 0x1

    int-to-byte v14, v14

    invoke-static {v2, v8, v11, v11}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v15

    add-int/lit8 v15, v15, -0x17

    const v16, -0x6491363d

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v17

    add-int v3, v17, v16

    invoke-static {v12, v13, v14, v15, v3}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const v12, -0x20993af4

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    sub-int v12, v12, v17

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-short v13, v13

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v14

    int-to-byte v14, v14

    invoke-static {v2, v2, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v15

    add-int/lit8 v15, v15, -0x18

    const v16, -0x64913639

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    sub-int v7, v16, v17

    invoke-static {v12, v13, v14, v15, v7}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ec} :catch_ed

    goto :goto_169

    :catch_ed
    move-exception v0

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, -0x20993abc

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v7

    shr-int/2addr v7, v9

    int-to-short v7, v7

    invoke-static {v8}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    int-to-byte v12, v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    add-int/lit8 v13, v13, 0xf

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v14

    shr-int/2addr v14, v9

    const v15, -0x64913635

    add-int/2addr v14, v15

    invoke-static {v4, v7, v12, v13, v14}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, -0x20993ac0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/2addr v4, v9

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/2addr v4, v9

    int-to-short v4, v4

    invoke-static {v2, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    rsub-int/lit8 v12, v12, -0xb

    const v13, -0x6491360a

    invoke-static {v2, v2, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v3, v4, v7, v12, v14}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_169
    move-object v3, v0

    .line 434
    :try_start_16a
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventType:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "\u0087\u00a1\u00a5\u0081\u0086\u00a4\u00a3\u0083\u00a2\u0085\u00a1\u00a0\u00a0\u0086\u0084\u009f\u0091\u009a\u008c\u0093\u0098\u008b\u009f\u0093\u0091\u0089\u0093\u0091\u008c\u009f\u008e\u008c\u009a\u0092\u008e\u0091\u008b"

    invoke-static {v11, v11}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x7f

    invoke-static {v7, v10, v10, v12}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_185} :catch_2fc

    const/16 v4, -0xa8c

    const/4 v7, 0x2

    if-eqz v0, :cond_1d0

    .line 454
    sget v12, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 v12, v12, 0x3

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/2addr v12, v7

    const v12, -0x20993aae

    .line 437
    :try_start_196
    invoke-static {v11}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    shr-int/lit8 v13, v13, 0x6

    sub-int/2addr v12, v13

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v13

    const/4 v14, 0x1

    add-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    int-to-byte v14, v14

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v15

    shr-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x12

    const v16, -0x649135f9

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v17

    sub-int v5, v16, v17

    invoke-static {v12, v13, v14, v15, v5}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1c7} :catch_2fc

    .line 454
    sget v0, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/2addr v0, v7

    .line 439
    :cond_1d0
    :try_start_1d0
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventType:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v0, :cond_1dc

    const/4 v5, 0x0

    goto :goto_1dd

    :cond_1dc
    const/4 v5, 0x1

    :goto_1dd
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1ff

    const-string v5, "\u00a7\u00a6\u0097"

    .line 440
    invoke-static {v2, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x7e

    invoke-static {v5, v10, v10, v6}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v5, 0x3e

    if-eqz v0, :cond_1f9

    goto :goto_1fb

    :cond_1f9
    const/16 v7, 0x3e

    :goto_1fb
    if-eq v7, v5, :cond_1ff

    const/4 v14, 0x1

    goto :goto_200

    :cond_1ff
    const/4 v14, 0x0

    .line 441
    :goto_200
    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->AFInAppEventType:Landroid/content/Context;

    const-string v5, "\u0092\u009a\u009c\u0091\u0089\u009c"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    rsub-int/lit8 v6, v6, 0x7f

    invoke-static {v5, v10, v10, v6}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v5, -0x1

    .line 442
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u00a8"

    invoke-static {v2, v8, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v12

    add-int/lit16 v12, v12, 0x80

    invoke-static {v7, v10, v10, v12}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v11, v11}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    const v7, -0x20993afc

    add-int/2addr v4, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v12

    shr-int/2addr v12, v9

    int-to-short v12, v12

    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v13

    const/4 v15, 0x1

    add-int/2addr v13, v15

    int-to-byte v13, v13

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    add-int/lit8 v15, v15, -0x1b

    invoke-static {v2, v8, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v16

    const v17, -0x649135ee

    add-int v10, v16, v17

    invoke-static {v4, v12, v13, v15, v10}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v4, -0x20993afd

    invoke-static {v2, v8, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v10

    sub-int/2addr v4, v10

    invoke-static {v8}, Landroid/text/AndroidCharacter;->getEastAsianWidth(C)I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    int-to-short v8, v8

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    add-int/2addr v10, v5

    int-to-byte v5, v10

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v10

    rsub-int/lit8 v10, v10, 0x66

    invoke-static {v2, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v12

    sub-int v12, v17, v12

    invoke-static {v4, v8, v5, v10, v12}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    sub-int/2addr v7, v0

    invoke-static {v11}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    cmp-long v0, v12, v4

    int-to-short v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1b

    const v8, -0x649135ed

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v10

    shr-int/2addr v10, v9

    sub-int/2addr v8, v10

    invoke-static {v7, v0, v4, v5, v8}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/b$e;->valueOf:Ljava/util/Map;

    .line 447
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->AFInAppEventType(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->valueOf([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/b$e$a;->values([B)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_2fb} :catch_2fc

    goto :goto_35f

    :catch_2fc
    move-exception v0

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, -0x21993abc

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const-string v7, "\u00ad\u008b\u0093\u0096\u0098\u00ac\u00ac\u0099\u00ab\u0099\u00ab\u00aa\u00a9\u00aa\u00a9\u008a"

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    const/4 v8, 0x1

    rsub-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v8

    int-to-byte v8, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v10

    shr-int/lit8 v9, v10, 0x10

    rsub-int/lit8 v9, v9, 0xf

    invoke-static {v2, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v10

    const v11, -0x64913635

    add-int/2addr v10, v11

    invoke-static {v5, v6, v8, v9, v10}, Lcom/appsflyer/internal/b$e;->values(ISBII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    rsub-int v2, v2, 0x100

    const/4 v3, 0x0

    invoke-static {v7, v3, v3, v2}, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName(Ljava/lang/String;[ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35f
    return-object v0
.end method

.method private static varargs valueOf([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2e

    .line 379
    sget v3, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/2addr v3, v4

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 v3, v3, 0x2

    .line 362
    aget-object v3, p0, v2

    .line 363
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 379
    sget v3, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_7

    .line 366
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_41
    if-ge v5, v0, :cond_45

    const/4 v6, 0x0

    goto :goto_46

    :cond_45
    const/4 v6, 0x1

    :goto_46
    if-eq v6, v4, :cond_77

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4a
    if-ge v7, v3, :cond_69

    .line 372
    aget-object v8, p0, v7

    .line 373
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-nez v6, :cond_58

    const/4 v10, 0x4

    goto :goto_5a

    :cond_58
    const/16 v10, 0x3d

    :goto_5a
    if-eq v10, v9, :cond_5d

    goto :goto_62

    .line 374
    :cond_5d
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    xor-int/2addr v8, v6

    :goto_62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    .line 376
    :cond_69
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 377
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 379
    :cond_77
    sget p0, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 p0, p0, 0x2

    return-object v2
.end method

.method private static values(ISBII)Ljava/lang/String;
    .registers 12

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2195
    sget v1, Lcom/appsflyer/internal/b$e;->AFKeystoreWrapper:I

    add-int/2addr p3, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p3, v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_30

    .line 2199
    sget-object p3, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:[B

    const/16 v5, 0x55

    if-eqz p3, :cond_1b

    const/16 v6, 0x5d

    goto :goto_1d

    :cond_1b
    const/16 v6, 0x55

    :goto_1d
    if-eq v6, v5, :cond_27

    .line 2201
    sget v5, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:I

    add-int/2addr v5, p4

    aget-byte p3, p3, v5

    add-int/2addr p3, v1

    int-to-byte p3, p3

    goto :goto_30

    .line 2205
    :cond_27
    sget-object p3, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:[S

    sget v5, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:I

    add-int/2addr v5, p4

    aget-short p3, p3, v5

    add-int/2addr p3, v1

    int-to-short p3, p3

    :cond_30
    :goto_30
    if-lez p3, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-eq v1, v4, :cond_38

    goto :goto_8b

    :cond_38
    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x2

    .line 2212
    sget v1, Lcom/appsflyer/internal/b$e;->AFInAppEventParameterName:I

    add-int/2addr p4, v1

    if-eqz v2, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    if-eqz v1, :cond_50

    .line 2239
    sget v1, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    :cond_50
    add-int/2addr p4, v3

    .line 2216
    sget v1, Lcom/appsflyer/internal/b$e;->values:I

    add-int/2addr p0, v1

    int-to-char p0, p0

    .line 2217
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_58
    if-ge v4, p3, :cond_8b

    .line 2224
    sget-object v1, Lcom/appsflyer/internal/b$e;->AFLogger$LogLevel:[B

    const/16 v2, 0x23

    if-eqz v1, :cond_63

    const/16 v3, 0x23

    goto :goto_65

    :cond_63
    const/16 v3, 0x10

    :goto_65
    if-eq v3, v2, :cond_74

    .line 2231
    sget-object v1, Lcom/appsflyer/internal/b$e;->AFVersionDeclaration:[S

    add-int/lit8 v2, p4, -0x1

    aget-short p4, v1, p4

    add-int/2addr p4, p1

    int-to-short p4, p4

    :goto_6f
    xor-int/2addr p4, p2

    add-int/2addr p0, p4

    int-to-char p0, p0

    move p4, v2

    goto :goto_7b

    :cond_74
    add-int/lit8 v2, p4, -0x1

    .line 2226
    aget-byte p4, v1, p4

    add-int/2addr p4, p1

    int-to-byte p4, p4

    goto :goto_6f

    .line 2234
    :goto_7b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 2239
    sget v1, Lcom/appsflyer/internal/b$e;->onAttributionFailureNative:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/b$e;->onInstallConversionDataLoadedNative:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_58

    :cond_8b
    :goto_8b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

###### Class com.appsflyer.internal.b.e.a (com.appsflyer.internal.b$e$a)
.class public final Lcom/appsflyer/internal/b$e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/b$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final AFInAppEventParameterName:Ljava/lang/Boolean;

.field AFInAppEventType:Ljava/lang/Boolean;

.field public final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    iput-object p1, p0, Lcom/appsflyer/internal/b$e$a;->valueOf:Ljava/lang/String;

    .line 1012
    iput-object p2, p0, Lcom/appsflyer/internal/b$e$a;->AFInAppEventParameterName:Ljava/lang/Boolean;

    return-void
.end method

.method static AFInAppEventType(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static valueOf([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 479
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 480
    aget-byte v1, p0, v0

    rem-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2a

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-object p0
.end method

.method static values([B)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_26

    aget-byte v3, p0, v2

    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_20

    .line 490
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 491
    :cond_20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 493
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
