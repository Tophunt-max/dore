###### Class com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder (com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder)
.class public Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/decode/ImageDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;,
        Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    }
.end annotation


# static fields
.field protected static final ERROR_CANT_DECODE_IMAGE:Ljava/lang/String; = "Image can\'t be decoded [%s]"

.field protected static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field protected static final LOG_FLIP_IMAGE:Ljava/lang/String; = "Flip image horizontally [%s]"

.field protected static final LOG_ROTATE_IMAGE:Ljava/lang/String; = "Rotate image on %1$d\u00b0 [%2$s]"

.field protected static final LOG_SCALE_IMAGE:Ljava/lang/String; = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

.field protected static final LOG_SUBSAMPLE_IMAGE:Ljava/lang/String; = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"


# instance fields
.field protected final loggingEnabled:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    return-void
.end method

.method private canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_17

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->ofUri(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    move-result-object p1

    sget-object p2, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    if-ne p1, p2, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method


# virtual methods
.method protected considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;
    .registers 15

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_16

    sget-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    if-ne v0, v1, :cond_60

    .line 4
    :cond_16
    new-instance v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v1, v7, v8, p3}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(III)V

    .line 5
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    move-result-object v7

    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v8

    sget-object v9, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->EXACTLY_STRETCHED:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    if-ne v0, v9, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    invoke-static {v1, v7, v8, v0}, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->computeImageScale(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Z)F

    move-result v0

    .line 6
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_60

    .line 7
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8
    iget-boolean v7, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v7, :cond_60

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 9
    invoke-virtual {v1, v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->scale(F)Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v7, v1

    const-string v0, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    invoke-static {v0, v7}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    if-eqz p4, :cond_78

    const/high16 p4, -0x40800000    # -1.0f

    .line 15
    invoke-virtual {v5, p4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 16
    iget-boolean p4, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz p4, :cond_78

    new-array p4, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v6

    const-string v0, "Flip image horizontally [%s]"

    invoke-static {v0, p4}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_78
    if-eqz p3, :cond_95

    int-to-float p4, p3

    .line 22
    invoke-virtual {v5, p4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 23
    iget-boolean p4, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz p4, :cond_95

    new-array p4, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v6

    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Rotate image on %1$d\ufffd\ufffd [%2$s]"

    invoke-static {p2, p4}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_aa

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_aa
    return-object p2
.end method

.method public decode(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    invoke-virtual {p0, v2, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->prepareDecodingOptions(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->resetStream(Ljava/io/InputStream;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, v2}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_28

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Image can\'t be decoded [%s]"

    invoke-static {p1, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_32

    .line 9
    :cond_28
    iget-object v1, v1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    iget v2, v1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    iget-boolean v1, v1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->considerExactScaleAndOrientaiton(Landroid/graphics/Bitmap;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_32
    return-object v0
.end method

.method protected decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_9

    .line 3
    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object p2

    :catchall_9
    move-exception p2

    invoke-static {p1}, Lcom/nostra13/dcloudimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 4
    throw p2
.end method

.method protected defineExifOrientation(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_2
    new-instance v2, Landroid/media/ExifInterface;

    sget-object v3, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3, p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->crop(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 2
    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_2c

    packed-switch p1, :pswitch_data_3c

    goto :goto_35

    :pswitch_17
    const/4 v0, 0x1

    :pswitch_18
    const/16 p1, 0x5a

    move v1, v0

    const/16 v0, 0x5a

    goto :goto_36

    :pswitch_1e
    const/4 v0, 0x1

    :pswitch_1f
    const/16 p1, 0x10e

    move v1, v0

    const/16 v0, 0x10e

    goto :goto_36

    :pswitch_25
    const/4 v0, 0x1

    :pswitch_26
    const/16 p1, 0xb4

    move v1, v0

    const/16 v0, 0xb4

    goto :goto_36

    :catch_2c
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "Can\'t read EXIF tags from file [%s]"

    .line 25
    invoke-static {p1, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_35
    :pswitch_35
    const/4 v1, 0x0

    .line 28
    :goto_36
    :pswitch_36
    new-instance p1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {p1, v0, v1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>(IZ)V

    return-object p1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_36
        :pswitch_26
        :pswitch_25
        :pswitch_1e
        :pswitch_18
        :pswitch_17
        :pswitch_1f
    .end packed-switch
.end method

.method protected defineImageSizeAndRotation(Ljava/io/InputStream;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->shouldConsiderExifParams()Z

    move-result p2

    if-eqz p2, :cond_23

    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->canDefineExifParams(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 7
    invoke-virtual {p0, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->defineExifOrientation(Ljava/lang/String;)Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    move-result-object p1

    goto :goto_28

    .line 9
    :cond_23
    new-instance p1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    invoke-direct {p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;-><init>()V

    .line 12
    :goto_28
    new-instance p2, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;

    new-instance v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p1, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    invoke-direct {v1, v2, v0, v3}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;-><init>(III)V

    invoke-direct {p2, v1, p1}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;-><init>(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;)V

    return-object p2
.end method

.method protected getImageStream(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getDownloader()Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method protected prepareDecodingOptions(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/BitmapFactory$Options;
    .registers 8

    .line 1
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getTargetSize()Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_40

    .line 5
    sget-object v2, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 6
    :goto_15
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getViewScaleType()Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/nostra13/dcloudimageloader/utils/ImageSizeUtils;->computeImageSampleSize(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/assist/ViewScaleType;Z)I

    move-result v0

    .line 7
    iget-boolean v1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->loggingEnabled:Z

    if-eqz v1, :cond_3f

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 8
    invoke-virtual {p1, v0}, Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;->scaleDown(I)Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getImageKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    invoke-static {p1, v1}, Lcom/nostra13/dcloudimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    move v3, v0

    .line 12
    :cond_40
    invoke-virtual {p2}, Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;->getDecodingOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object p1

    .line 13
    iput v3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1
.end method

.method protected resetStream(Ljava/io/InputStream;Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    .line 3
    :catch_4
    invoke-virtual {p0, p2}, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;->getImageStream(Lcom/nostra13/dcloudimageloader/core/decode/ImageDecodingInfo;)Ljava/io/InputStream;

    move-result-object p1

    :goto_8
    return-object p1
.end method

###### Class com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder.ExifInfo (com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder$ExifInfo)
.class public Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExifInfo"
.end annotation


# instance fields
.field public final flipHorizontal:Z

.field public final rotation:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 3
    iput-boolean v0, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method

.method protected constructor <init>(IZ)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->rotation:I

    .line 6
    iput-boolean p2, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;->flipHorizontal:Z

    return-void
.end method

###### Class com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder.ImageFileInfo (com.nostra13.dcloudimageloader.core.decode.BaseImageDecoder$ImageFileInfo)
.class public Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImageFileInfo"
.end annotation


# instance fields
.field public final exif:Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

.field public final imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;


# direct methods
.method protected constructor <init>(Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->imageSize:Lcom/nostra13/dcloudimageloader/core/assist/ImageSize;

    .line 3
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ImageFileInfo;->exif:Lcom/nostra13/dcloudimageloader/core/decode/BaseImageDecoder$ExifInfo;

    return-void
.end method
