###### Class com.facebook.imagepipeline.transcoder.DownsampleUtil (com.facebook.imagepipeline.transcoder.DownsampleUtil)
.class public Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;
.super Ljava/lang/Object;
.source "DownsampleUtil.java"


# static fields
.field public static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final INTERVAL_ROUNDING:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineDownsampleRatio(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)F
    .registers 10
    .param p1    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "resizeOptions",
            "encodedImage"
        }
    .end annotation

    .line 86
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-eqz p1, :cond_97

    .line 87
    iget v0, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    if-lez v0, :cond_97

    iget v0, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    if-lez v0, :cond_97

    .line 90
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    if-eqz v0, :cond_97

    .line 91
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_97

    .line 95
    :cond_23
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result p0

    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_34

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, 0x1

    :goto_35
    if-eqz p0, :cond_3c

    .line 98
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    goto :goto_40

    :cond_3c
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v0

    :goto_40
    if-eqz p0, :cond_47

    .line 100
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result p0

    goto :goto_4b

    :cond_47
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result p0

    .line 102
    :goto_4b
    iget p2, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    int-to-float p2, p2

    int-to-float v3, v0

    div-float/2addr p2, v3

    .line 103
    iget v3, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    int-to-float v3, v3

    int-to-float v4, p0

    div-float/2addr v3, v4

    .line 104
    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    iget v6, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget p1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const/4 p1, 0x2

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, p1

    const/4 p1, 0x3

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, p1

    const/4 p0, 0x4

    .line 113
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x5

    .line 114
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x6

    .line 115
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v5, p0

    const-string p0, "DownsampleUtil"

    const-string p1, "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f"

    .line 105
    invoke-static {p0, p1, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_97
    :goto_97
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I
    .registers 6
    .param p1    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "resizeOptions",
            "encodedImage",
            "maxBitmapSize"
        }
    .end annotation

    .line 43
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->isMetaDataAvailable(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineDownsampleRatio(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)F

    move-result p0

    .line 48
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_19

    .line 49
    invoke-static {p0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->ratioToSampleSizeJPEG(F)I

    move-result p0

    goto :goto_1d

    .line 51
    :cond_19
    invoke-static {p0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->ratioToSampleSize(F)I

    move-result p0

    .line 56
    :goto_1d
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p1, :cond_2e

    .line 57
    iget p1, p1, Lcom/facebook/imagepipeline/common/ResizeOptions;->maxBitmapSize:F

    goto :goto_2f

    :cond_2e
    int-to-float p1, p3

    .line 59
    :goto_2f
    div-int p3, v0, p0

    int-to-float p3, p3

    cmpl-float p3, p3, p1

    if-lez p3, :cond_44

    .line 60
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object p3

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p3, v1, :cond_41

    mul-int/lit8 p0, p0, 0x2

    goto :goto_2f

    :cond_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_2f

    :cond_44
    return p0
.end method

.method public static determineSampleSizeJPEG(Lcom/facebook/imagepipeline/image/EncodedImage;II)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "encodedImage",
            "pixelSize",
            "maxBitmapSizeInBytes"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result p0

    mul-int v1, v1, p0

    mul-int v1, v1, p1

    .line 74
    :goto_10
    div-int p0, v1, v0

    div-int/2addr p0, v0

    if-le p0, p2, :cond_18

    mul-int/lit8 v0, v0, 0x2

    goto :goto_10

    :cond_18
    return v0
.end method

.method private static getRotationAngle(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "rotationOptions",
            "encodedImage"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/RotationOptions;->useImageMetadata()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 156
    :cond_8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1a

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1a

    const/16 p1, 0x10e

    if-ne p0, p1, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    .line 158
    :cond_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    return p0
.end method

.method public static ratioToSampleSize(F)I
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ratio"
        }
    .end annotation

    const/4 v0, 0x1

    const v1, 0x3f2aaaab

    cmpl-float v1, p0, v1

    if-lez v1, :cond_9

    return v0

    :cond_9
    const/4 v1, 0x2

    :goto_a
    int-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 126
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    div-double/2addr v6, v2

    const-wide v2, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double v4, v4, v2

    add-double/2addr v6, v4

    float-to-double v2, p0

    cmpg-double v4, v6, v2

    if-gtz v4, :cond_26

    sub-int/2addr v1, v0

    return v1

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static ratioToSampleSizeJPEG(F)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ratio"
        }
    .end annotation

    const v0, 0x3f2aaaab

    cmpl-float v0, p0, v0

    if-lez v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 v0, 0x2

    :goto_a
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v3, v0, 0x2

    int-to-double v4, v3

    div-double/2addr v1, v4

    const-wide v4, 0x3fd5555560000000L    # 0.3333333432674408

    mul-double v4, v4, v1

    add-double/2addr v1, v4

    float-to-double v4, p0

    cmpg-double v6, v1, v4

    if-gtz v6, :cond_1e

    return v0

    :cond_1e
    move v0, v3

    goto :goto_a
.end method

.method public static roundToPowerOfTwo(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sampleSize"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-lt v0, p0, :cond_4

    return v0

    :cond_4
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method
