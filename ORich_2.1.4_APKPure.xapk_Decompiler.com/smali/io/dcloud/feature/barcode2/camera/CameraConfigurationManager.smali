###### Class io.dcloud.feature.barcode2.camera.CameraConfigurationManager (io.dcloud.feature.barcode2.camera.CameraConfigurationManager)
.class final Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private static final DESIRED_SHARPNESS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "CameraConfigurationManager"

.field private static final TEN_DESIRED_ZOOM:I = 0x1b


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private previewFormat:I

.field private previewFormatString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ","

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    return-void
.end method

.method private static findBestMotZoomValue(Ljava/lang/CharSequence;I)I
    .registers 11

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_30

    aget-object v3, p0, v1

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 5
    :try_start_11
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_2f

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v3

    double-to-int v5, v5

    int-to-double v6, p1

    sub-double/2addr v6, v3

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-int v6, p1, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_2c

    move v2, v5

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_2f
    return p1

    :cond_30
    return v2
.end method

.method private static findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 12

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v3, v0, :cond_7d

    aget-object v6, p0, v3

    .line 3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x78

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, "Bad preview-size: "

    if-gez v7, :cond_35

    .line 6
    sget-object v7, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 13
    :cond_35
    :try_start_35
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_47} :catch_66

    if-ge v9, v6, :cond_4a

    goto :goto_7a

    .line 23
    :cond_4a
    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int v7, v9, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p1, Landroid/graphics/Point;->y:I

    sub-int v8, v6, v8

    .line 24
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    if-nez v7, :cond_60

    move v5, v6

    move v4, v9

    goto :goto_7d

    :cond_60
    if-ge v7, v2, :cond_7a

    move v5, v6

    move v2, v7

    move v4, v9

    goto :goto_7a

    .line 25
    :catch_66
    sget-object v7, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_7d
    :goto_7d
    if-lez v4, :cond_87

    if-lez v5, :cond_87

    .line 43
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_87
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findBestPreviewSizeValue0(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 13

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    :goto_b
    array-length v5, p0

    if-ge v1, v5, :cond_84

    const/4 v5, 0x1

    if-eqz v3, :cond_1a

    if-ne v3, v5, :cond_14

    goto :goto_1a

    .line 10
    :cond_14
    array-length v6, p0

    sub-int/2addr v6, v5

    sub-int/2addr v6, v1

    aget-object v6, p0, v6

    goto :goto_1c

    .line 11
    :cond_1a
    :goto_1a
    aget-object v6, p0, v1

    .line 15
    :goto_1c
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x78

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const-string v8, "Bad preview-size: "

    const/4 v9, -0x1

    if-gez v7, :cond_40

    .line 18
    sget-object v7, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 25
    :cond_40
    :try_start_40
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v7, 0x1

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_52
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_52} :catch_6e

    if-eqz v3, :cond_60

    if-lez v2, :cond_6c

    .line 33
    iget v2, p1, Landroid/graphics/Point;->y:I

    if-gt v10, v2, :cond_6c

    iget v2, p1, Landroid/graphics/Point;->x:I

    if-gt v4, v2, :cond_6c

    move v2, v10

    goto :goto_84

    :cond_60
    if-eqz v2, :cond_6c

    const/4 v1, -0x1

    if-le v10, v2, :cond_68

    const/4 v2, 0x0

    const/4 v3, -0x1

    goto :goto_6a

    :cond_68
    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_6a
    const/4 v4, 0x0

    goto :goto_82

    :cond_6c
    move v2, v10

    goto :goto_82

    .line 34
    :catch_6e
    sget-object v7, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    add-int/2addr v1, v5

    goto :goto_b

    :cond_84
    :goto_84
    if-lez v2, :cond_8e

    if-lez v4, :cond_8e

    .line 66
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5

    const-string v0, "preview-size-values"

    .line 2
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "preview-size-value"

    .line 5
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    const/4 p0, 0x0

    if-eqz v0, :cond_2b

    .line 11
    sget-object p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview-size-values parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v0, p1}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    :cond_2b
    if-nez p0, :cond_3e

    .line 17
    new-instance p0, Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    iget p1, p1, Landroid/graphics/Point;->y:I

    shr-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    invoke-direct {p0, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    :cond_3e
    return-object p0
.end method

.method private setFlash(Landroid/hardware/Camera$Parameters;)V
    .registers 5

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Behold II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "flash-value"

    if-eqz v0, :cond_16

    sget v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->SDK_INT:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_16
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_1a
    const-string v0, "flash-mode"

    const-string v1, "off"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSharpness(Landroid/hardware/Camera$Parameters;)V
    .registers 7

    const-string v0, "sharpness-max"

    .line 1
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    if-eqz v0, :cond_28

    .line 4
    :try_start_a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_12

    if-le v1, v0, :cond_28

    move v1, v0

    goto :goto_28

    .line 9
    :catch_12
    sget-object v2, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sharpness-max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    const-string v0, "sharpness"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method private setZoom(Landroid/hardware/Camera$Parameters;)V
    .registers 10

    const-string v0, "zoom-supported"

    .line 1
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/16 v0, 0x1b

    const-string v1, "max-zoom"

    .line 8
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    if-eqz v1, :cond_3c

    .line 11
    :try_start_1b
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1f} :catch_26

    mul-double v4, v4, v2

    double-to-int v4, v4

    if-le v0, v4, :cond_3c

    move v0, v4

    goto :goto_3c

    .line 16
    :catch_26
    sget-object v4, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad max-zoom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    const-string v4, "taking-picture-zoom-max"

    .line 20
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 23
    :try_start_44
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_48} :catch_4c

    if-le v0, v5, :cond_62

    move v0, v5

    goto :goto_62

    .line 28
    :catch_4c
    sget-object v5, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad taking-picture-zoom-max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    :goto_62
    const-string v5, "mot-zoom-values"

    .line 32
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6e

    .line 34
    invoke-static {v5, v0}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->findBestMotZoomValue(Ljava/lang/CharSequence;I)I

    move-result v0

    :cond_6e
    const-string v6, "mot-zoom-step"

    .line 37
    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    .line 40
    :try_start_76
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_89

    .line 43
    rem-int v6, v0, v6
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_86} :catch_88

    sub-int/2addr v0, v6

    goto :goto_89

    :catch_88
    nop

    :cond_89
    :goto_89
    if-nez v1, :cond_8d

    if-eqz v5, :cond_98

    :cond_8d
    int-to-double v5, v0

    div-double/2addr v5, v2

    .line 53
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    if-eqz v4, :cond_9f

    const-string v1, "taking-picture-zoom"

    .line 59
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_9f
    return-void
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    return-object v0
.end method

.method getPreviewFormat()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormat:I

    return v0
.end method

.method getPreviewFormatString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    .line 3
    :cond_a
    iget-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormat:I

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    const-string v0, "preview-format"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    .line 5
    sget-object p1, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default preview format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->previewFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 15
    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    if-eqz v2, :cond_6d

    .line 17
    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1, v2}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    goto :goto_7a

    .line 19
    :cond_6d
    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v1, v2}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->getCameraResolution(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    :goto_7a
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    .line 3
    :cond_a
    sget-object v0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting preview size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->setZoom(Landroid/hardware/Camera$Parameters;)V

    .line 10
    :try_start_37
    iget-object v0, p0, Lio/dcloud/feature/barcode2/camera/CameraConfigurationManager;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method
