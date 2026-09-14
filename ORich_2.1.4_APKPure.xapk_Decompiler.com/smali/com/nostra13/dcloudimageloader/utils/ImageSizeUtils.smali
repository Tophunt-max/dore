###### Class com.nostra13.dcloudimageloader.utils.ImageSizeUtils (com.nostra13.dcloudimageloader.utils.ImageSizeUtils)
.class public final Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xd33

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 3
    aget v0, v0, v2

    const/16 v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-direct {v1, v0, v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v1, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeImageSampleSize(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Z)I
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p1

    .line 8
    sget-object v2, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$dcloudimageloader$core$assist$ViewScaleType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3b

    const/4 v3, 0x2

    if-eq p2, v3, :cond_20

    const/4 v4, 0x1

    goto :goto_55

    :cond_20
    if-eqz p3, :cond_32

    .line 22
    div-int/lit8 p2, v0, 0x2

    .line 23
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x1

    .line 24
    :goto_27
    div-int v5, p2, v4

    if-le v5, v1, :cond_55

    div-int v5, v3, v4

    if-le v5, p1, :cond_55

    mul-int/lit8 v4, v4, 0x2

    goto :goto_27

    .line 28
    :cond_32
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_55

    :cond_3b
    if-eqz p3, :cond_4d

    .line 29
    div-int/lit8 p2, v0, 0x2

    .line 30
    div-int/lit8 v3, p0, 0x2

    const/4 v4, 0x1

    .line 31
    :goto_42
    div-int v5, p2, v4

    if-gt v5, v1, :cond_4a

    div-int v5, v3, v4

    if-le v5, p1, :cond_55

    :cond_4a
    mul-int/lit8 v4, v4, 0x2

    goto :goto_42

    .line 35
    :cond_4d
    div-int p2, v0, v1

    div-int p1, p0, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_55
    :goto_55
    if-ge v4, v2, :cond_58

    goto :goto_59

    :cond_58
    move v2, v4

    .line 54
    :goto_59
    invoke-static {v0, p0, v2, p3}, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result p0

    return p0
.end method

.method public static computeImageScale(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Z)F
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    .line 3
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float v3, v2, v3

    int-to-float v4, p0

    int-to-float v5, p1

    div-float v5, v4, v5

    .line 11
    sget-object v6, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_20

    cmpl-float v6, v3, v5

    if-gez v6, :cond_28

    :cond_20
    sget-object v6, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    if-ne p2, v6, :cond_2b

    cmpg-float p2, v3, v5

    if-gez p2, :cond_2b

    :cond_28
    div-float/2addr v4, v3

    float-to-int p1, v4

    goto :goto_2e

    :cond_2b
    div-float p2, v2, v5

    float-to-int v1, p2

    :goto_2e
    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p3, :cond_36

    if-ge v1, v0, :cond_36

    if-lt p1, p0, :cond_3c

    :cond_36
    if-eqz p3, :cond_3f

    if-eq v1, v0, :cond_3f

    if-eq p1, p0, :cond_3f

    :cond_3c
    int-to-float p0, v1

    div-float p2, p0, v2

    :cond_3f
    return p2
.end method

.method public static computeMinImageSampleSize(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    .line 3
    sget-object v1, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 4
    sget-object v2, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float p0, p0

    int-to-float v1, v2

    div-float/2addr p0, v1

    float-to-double v1, p0

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    .line 9
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .registers 7

    .line 1
    sget-object v0, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    .line 2
    sget-object v1, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {v1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 3
    :goto_c
    div-int v2, p0, p2

    if-gt v2, v0, :cond_16

    div-int v2, p1, p2

    if-le v2, v1, :cond_15

    goto :goto_16

    :cond_15
    return p2

    :cond_16
    :goto_16
    if-eqz p3, :cond_1b

    mul-int/lit8 p2, p2, 0x2

    goto :goto_c

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    goto :goto_c
.end method

.method public static defineTargetSizeForView(Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;)Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;
    .registers 4

    .line 1
    invoke-interface {p0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v0

    if-gtz v0, :cond_b

    .line 3
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v0

    goto :goto_13

    .line 5
    :cond_b
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8
    :goto_13
    invoke-interface {p0}, Lcom/nostra13/dcloudimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result p0

    if-gtz p0, :cond_1e

    .line 10
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p0

    goto :goto_26

    .line 12
    :cond_1e
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->getHeight()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 15
    :goto_26
    new-instance p1, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-direct {p1, v0, p0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(II)V

    return-object p1
.end method

###### Class com.nostra13.dcloudimageloader.utils.ImageSizeUtils.AnonymousClass1 (com.nostra13.dcloudimageloader.utils.ImageSizeUtils$1)
.class synthetic Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$nostra13$dcloudimageloader$core$assist$ViewScaleType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->values()[Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$dcloudimageloader$core$assist$ViewScaleType:[I

    :try_start_9
    sget-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils$1;->$SwitchMap$com$nostra13$dcloudimageloader$core$assist$ViewScaleType:[I

    sget-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
