###### Class io.dcloud.feature.nativeObj.NativeBitmap (io.dcloud.feature.nativeObj.NativeBitmap)
.class public Lio/dcloud/feature/nativeObj/NativeBitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/INativeBitmap;


# static fields
.field private static final ERROR:I = 0x28

.field private static final SUCCESS:I = 0xa


# instance fields
.field private isNetWorkBitmapDownload:Z

.field private mApp:Lio/dcloud/common/DHInterface/IApp;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

.field private mExt:Ljava/lang/String;

.field private mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mSucCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

.field private mUUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "jpg"

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mSucCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 305
    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/NativeBitmap$3;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmap;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    .line 306
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mId:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mUUid:Ljava/lang/String;

    .line 308
    iput-object p4, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    .line 309
    invoke-static {p4}, Lio/dcloud/common/util/ImageLoaderUtil;->addNetIconDownloadUrl(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, p4}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$002(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/nativeObj/NativeBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mSucCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$302(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mSucCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$400(Lio/dcloud/feature/nativeObj/NativeBitmap;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;)V

    return-void
.end method

.method private bitmap2String(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_1a

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getCF()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method private getCF()Landroid/graphics/Bitmap$CompressFormat;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    const-string v1, "png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 4
    :cond_d
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method private getExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, ".jpg"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "jpg"

    return-object p1

    :cond_11
    const-string v0, ".png"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "png"

    return-object p1

    :cond_1c
    const-string v0, ".gif"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p1, "gif"

    return-object p1

    :cond_27
    const-string v0, ".webp"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p1, "webp"

    return-object p1

    .line 12
    :cond_32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_4d

    :cond_39
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :goto_4d
    return-object p1
.end method

.method private getExtFromBase64(Ljava/lang/String;)V
    .registers 5

    const-string v0, ","

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "data:image/"

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";base64"

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    :cond_20
    return-void
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-object p1

    .line 7
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_6f

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "/storage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6f

    const-string v0, "/"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 15
    :cond_45
    sget-object v0, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p1}, Lcom/nostra13/dcloudimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4c
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    invoke-static {v1}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 21
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lio/dcloud/common/util/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 23
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6f
    const-string v0, "file://"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_87

    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_87
    return-object p1
.end method

.method private getImageOptions()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;
    .registers 3

    .line 1
    new-instance v0, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;->NONE:Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;

    .line 4
    invoke-virtual {v0, v1}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/dcloudimageloader/core/assist/ImageScaleType;)Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v0

    return-object v0
.end method

.method private saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_74

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_74

    :cond_f
    const-string v0, "/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_28

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_36

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 14
    :cond_36
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "png"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_51

    :cond_4f
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_51
    iget v2, p3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mQuality:I

    .line 18
    invoke-virtual {p2, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 22
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 23
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->path:Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->width:I

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->height:I

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->size:J

    :cond_74
    :goto_74
    return-void
.end method

.method private string2Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    const-string v0, ","

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_11
    const/4 v0, 0x2

    .line 5
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    .line 7
    :cond_14
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    if-nez v1, :cond_1f

    return-object v2

    .line 10
    :cond_1f
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v1

    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getImageOptions()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 12
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGifDrawable()Lpl/droidsonroids/gif/GifDrawable;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_c

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 2
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz v0, :cond_9a

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    if-eqz v0, :cond_45

    .line 6
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 9
    :try_start_38
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_9a

    :catch_40
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :cond_45
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_88

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_88

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    const-string v1, "/"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_71
    :try_start_71
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_82} :catch_83

    goto :goto_9a

    :catch_83
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 29
    :cond_88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 31
    :try_start_8e
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v1, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 40
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public initNetworkBitmap(Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_17
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    .line 9
    :cond_1e
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public isGif()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public isNetWorkBitmap()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    :cond_2a
    const/4 v0, 0x1

    return v0

    :cond_2c
    return v1
.end method

.method public isRecycled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public load(Lio/dcloud/common/DHInterface/IWebview;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    .line 2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x28

    if-eqz v1, :cond_23

    .line 3
    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 5
    iput v2, p1, Landroid/os/Message;->what:I

    .line 6
    sget p3, Lio/dcloud/base/R$string;->dcloud_native_obj_path_cannot_empty:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 9
    :cond_23
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 11
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ftp://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_a9

    .line 18
    :cond_48
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {p1, v1}, Lio/dcloud/common/util/FileUtil;->checkPathAccord(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8c

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {p2, p1}, Lio/dcloud/common/util/FileUtil;->isFilePathForPublic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8c

    .line 23
    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 24
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 25
    iput v2, p1, Landroid/os/Message;->what:I

    .line 26
    sget-object p2, Lio/dcloud/common/constant/DOMException;->MSG_PATH_NOT_PRIVATE_ERROR:Ljava/lang/String;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 30
    :cond_8c
    invoke-direct {p0, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getImageOptions()Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;

    move-result-object p3

    new-instance v0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;

    invoke-direct {v0, p0, p5, p4}, Lio/dcloud/feature/nativeObj/NativeBitmap$1;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/DisplayImageOptions;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    return-void

    .line 32
    :cond_a9
    :goto_a9
    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 33
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 34
    iput v2, p1, Landroid/os/Message;->what:I

    .line 35
    sget p3, Lio/dcloud/base/R$string;->dcloud_native_obj_path_not_network:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadBase64Data(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x28

    .line 1
    :try_start_2
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->string2Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_17

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getExtFromBase64(Ljava/lang/String;)V

    .line 4
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mSucCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 7
    :cond_17
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    goto :goto_26

    .line 12
    :catch_1f
    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_26
    return-void
.end method

.method public recycle()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle(Z)V

    return-void
.end method

.method public recycle(Z)V
    .registers 3

    if-eqz p1, :cond_b

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 5
    :cond_b
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_31

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 9
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoaderL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getMemoryCache()Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nostra13/dcloudimageloader/core/assist/MemoryCacheUtil;->removeFromCache(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;)V

    .line 13
    :cond_31
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_40

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mGifDrawable:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    :cond_40
    return-void
.end method

.method public save(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x28

    if-eqz v0, :cond_24

    .line 2
    iput-object p6, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 4
    iput v1, p2, Landroid/os/Message;->what:I

    .line 5
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lio/dcloud/base/R$string;->dcloud_native_obj_path_cannot_empty:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 8
    :cond_24
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ftp://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_5c

    .line 19
    :cond_49
    iget-object v6, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mPath:Ljava/lang/String;

    .line 21
    new-instance p1, Lio/dcloud/feature/nativeObj/NativeBitmap$2;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lio/dcloud/feature/nativeObj/NativeBitmap$2;-><init>(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLjava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 59
    :cond_5c
    :goto_5c
    iput-object p6, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mErrCallBackLoad:Lio/dcloud/common/DHInterface/ICallBack;

    .line 60
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 61
    iput v1, p2, Landroid/os/Message;->what:I

    .line 62
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget p3, Lio/dcloud/base/R$string;->dcloud_native_obj_path_not_network:I

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setNetWorkBitmapDownload(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->isNetWorkBitmapDownload:Z

    return-void
.end method

.method public toBase64Data()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    const-string v2, "jpg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "jepg"

    goto :goto_19

    :cond_17
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mExt:Ljava/lang/String;

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";base64,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->bitmap2String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsString()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"__id__\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap;->mUUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmap.AnonymousClass1 (io.dcloud.feature.nativeObj.NativeBitmap$1)
.class Lio/dcloud/feature/nativeObj/NativeBitmap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmap;->load(Lio/dcloud/common/DHInterface/IWebview;Landroid/content/Context;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

.field final synthetic val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {p1, p3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$202(Lio/dcloud/feature/nativeObj/NativeBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {p1, p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$302(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {p1, p2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$002(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$1;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x28

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmap.AnonymousClass2 (io.dcloud.feature.nativeObj.NativeBitmap$2)
.class Lio/dcloud/feature/nativeObj/NativeBitmap$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/NativeBitmap;->save(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

.field final synthetic val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$oldPath:Ljava/lang/String;

.field final synthetic val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

.field final synthetic val$scale:F

.field final synthetic val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;FLjava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iput p3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$scale:F

    iput-object p4, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$oldPath:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p6, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mClip:Lorg/json/JSONObject;

    if-eqz v0, :cond_8c

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$200(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$200(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mClip:Lorg/json/JSONObject;

    const-string v3, "left"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$scale:F

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 6
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iget-object v3, v3, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mClip:Lorg/json/JSONObject;

    const-string v5, "top"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$scale:F

    invoke-static {v3, v1, v4, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    .line 7
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iget-object v4, v4, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mClip:Lorg/json/JSONObject;

    const-string v5, "width"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$scale:F

    invoke-static {v4, v0, v0, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 8
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iget-object v5, v5, Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;->mClip:Lorg/json/JSONObject;

    const-string v6, "height"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$scale:F

    invoke-static {v5, v1, v1, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v5

    add-int v6, v2, v4

    if-le v6, v0, :cond_66

    sub-int v4, v0, v2

    :cond_66
    add-int v0, v3, v5

    if-le v0, v1, :cond_6c

    sub-int v5, v1, v3

    .line 16
    :cond_6c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$200(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$400(Lio/dcloud/feature/nativeObj/NativeBitmap;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    invoke-static {v1, v2, v0, v3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$500(Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;)V

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$oldPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$402(Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9d

    .line 21
    :cond_8c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$400(Lio/dcloud/feature/nativeObj/NativeBitmap;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$200(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$500(Lio/dcloud/feature/nativeObj/NativeBitmap;Ljava/lang/String;Landroid/graphics/Bitmap;Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;)V

    .line 23
    :goto_9d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$successCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$302(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 24
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 25
    iput v1, v0, Landroid/os/Message;->what:I

    .line 26
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$options:Lio/dcloud/feature/nativeObj/NativeBitmapSaveOptions;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bf} :catch_c0

    goto :goto_ed

    :catch_c0
    move-exception v0

    .line 29
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->val$errorCallback:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v1, v2}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$002(Lio/dcloud/feature/nativeObj/NativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 30
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$2;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v1}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$100(Lio/dcloud/feature/nativeObj/NativeBitmap;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mabo"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ed
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.NativeBitmap.AnonymousClass3 (io.dcloud.feature.nativeObj.NativeBitmap$3)
.class Lio/dcloud/feature/nativeObj/NativeBitmap$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/NativeBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/NativeBitmap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_20

    const/16 v2, 0x28

    if-eq v0, v2, :cond_c

    goto :goto_33

    .line 7
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$000(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$000(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 9
    :cond_20
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$300(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeBitmap$3;->this$0:Lio/dcloud/feature/nativeObj/NativeBitmap;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/NativeBitmap;->access$300(Lio/dcloud/feature/nativeObj/NativeBitmap;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_33
    :goto_33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
