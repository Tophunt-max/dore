###### Class com.facebook.imagepipeline.transcoder.SimpleImageTranscoder (com.facebook.imagepipeline.transcoder.SimpleImageTranscoder)
.class public Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;
.super Ljava/lang/Object;
.source "SimpleImageTranscoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/ImageTranscoder;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleImageTranscoder"


# instance fields
.field private final mMaxBitmapSize:I

.field private final mResizingEnabled:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "resizingEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mResizingEnabled:Z

    .line 36
    iput p2, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mMaxBitmapSize:I

    return-void
.end method

.method private static getOutputFormat(Lcom/facebook/imageformat/ImageFormat;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 3
    .param p0    # Lcom/facebook/imageformat/ImageFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 148
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 151
    :cond_5
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_c

    .line 152
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 153
    :cond_c
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->PNG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_13

    .line 154
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 156
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_22

    .line 157
    invoke-static {p0}, Lcom/facebook/imageformat/DefaultImageFormats;->isStaticWebpFormat(Lcom/facebook/imageformat/ImageFormat;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 158
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 161
    :cond_22
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private getSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)I
    .registers 5
    .param p3    # Lcom/facebook/imagepipeline/common/ResizeOptions;
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
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mResizingEnabled:Z

    if-nez v0, :cond_6

    const/4 p1, 0x1

    goto :goto_c

    .line 132
    :cond_6
    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mMaxBitmapSize:I

    .line 133
    invoke-static {p2, p3, p1, v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result p1

    :goto_c
    return p1
.end method


# virtual methods
.method public canResize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z
    .registers 6
    .param p2    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "rotationOptions",
            "resizeOptions"
        }
    .end annotation

    if-nez p2, :cond_6

    .line 106
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object p2

    .line 108
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mResizingEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->mMaxBitmapSize:I

    .line 109
    invoke-static {p2, p3, p1, v0}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result p1

    if-le p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public canTranscode(Lcom/facebook/imageformat/ImageFormat;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageFormat"
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->HEIF:Lcom/facebook/imageformat/ImageFormat;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "SimpleImageTranscoder"

    return-object v0
.end method

.method public transcode(Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imageformat/ImageFormat;Ljava/lang/Integer;)Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;
    .registers 25
    .param p3    # Lcom/facebook/imagepipeline/common/RotationOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imageformat/ImageFormat;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "outputStream",
            "rotationOptions",
            "resizeOptions",
            "outputFormat",
            "quality"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Out-Of-Memory during transcode"

    const-string v2, "SimpleImageTranscoder"

    if-nez p6, :cond_f

    const/16 v3, 0x55

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_11

    :cond_f
    move-object/from16 v3, p6

    :goto_11
    if-nez p3, :cond_1a

    .line 51
    invoke-static {}, Lcom/facebook/imagepipeline/common/RotationOptions;->autoRotate()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v4

    move-object/from16 v5, p0

    goto :goto_1e

    :cond_1a
    move-object/from16 v5, p0

    move-object/from16 v4, p3

    :goto_1e
    move-object/from16 v6, p4

    .line 54
    invoke-direct {v5, v0, v4, v6}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->getSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;)I

    move-result v6

    .line 55
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x2

    .line 59
    :try_start_2c
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_35} :catch_98

    if-nez v7, :cond_42

    const-string v0, "Couldn\'t decode the EncodedImage InputStream ! "

    .line 66
    invoke-static {v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v8}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v0

    .line 71
    :cond_42
    invoke-static {v0, v4}, Lcom/facebook/imagepipeline/transcoder/JpegTranscoderUtils;->getTransformationMatrix(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/RotationOptions;)Landroid/graphics/Matrix;

    move-result-object v16

    if-eqz v16, :cond_61

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 81
    :try_start_4a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 82
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x0

    move-object v11, v7

    .line 77
    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4a .. :try_end_59} :catch_5e
    .catchall {:try_start_4a .. :try_end_59} :catchall_5b

    move-object v4, v0

    goto :goto_62

    :catchall_5b
    move-exception v0

    move-object v4, v7

    goto :goto_91

    :catch_5e
    move-exception v0

    move-object v4, v7

    goto :goto_82

    :cond_61
    move-object v4, v7

    .line 86
    :goto_62
    :try_start_62
    invoke-static/range {p5 .. p5}, Lcom/facebook/imagepipeline/transcoder/SimpleImageTranscoder;->getOutputFormat(Lcom/facebook/imageformat/ImageFormat;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v9, p2

    invoke-virtual {v4, v0, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    const/4 v3, 0x1

    if-le v6, v3, :cond_75

    const/4 v3, 0x0

    :cond_75
    invoke-direct {v0, v3}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_78
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_78} :catch_81
    .catchall {:try_start_62 .. :try_end_78} :catchall_7f

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    :catchall_7f
    move-exception v0

    goto :goto_91

    :catch_81
    move-exception v0

    .line 92
    :goto_82
    :try_start_82
    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v8}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_7f

    .line 95
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0

    .line 95
    :goto_91
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    throw v0

    :catch_98
    move-exception v0

    .line 61
    invoke-static {v2, v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;

    invoke-direct {v0, v8}, Lcom/facebook/imagepipeline/transcoder/ImageTranscodeResult;-><init>(I)V

    return-object v0
.end method
