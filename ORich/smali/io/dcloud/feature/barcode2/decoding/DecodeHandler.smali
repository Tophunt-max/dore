###### Class io.dcloud.feature.barcode2.decoding.DecodeHandler (io.dcloud.feature.barcode2.decoding.DecodeHandler)
.class final Lio/dcloud/feature/barcode2/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeHandler"

.field private static mIsVerticalScreen:Z = true


# instance fields
.field private final activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

.field private final multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/barcode2/decoding/IBarHandler;",
            "Ljava/util/Hashtable<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;

    .line 3
    invoke-virtual {v0, p2}, Lcom/dcloud/zxing2/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    return-void
.end method

.method public static decode(Landroid/graphics/Bitmap;Lcom/dcloud/zxing2/ResultPointCallback;Z)Lcom/dcloud/zxing2/Result;
    .registers 7

    .line 59
    new-instance v0, Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-direct {v0}, Lcom/dcloud/zxing2/MultiFormatReader;-><init>()V

    .line 61
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 63
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 64
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 65
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 68
    sget-object v3, Lio/dcloud/feature/barcode2/decoding/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 69
    sget-object v3, Lio/dcloud/feature/barcode2/decoding/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 70
    sget-object v3, Lio/dcloud/feature/barcode2/decoding/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_2a
    sget-object v3, Lcom/dcloud/zxing2/DecodeHintType;->POSSIBLE_FORMATS:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3d

    .line 79
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz p2, :cond_44

    .line 84
    sget-object p1, Lcom/dcloud/zxing2/DecodeHintType;->autoDecodeCharset:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-virtual {v1, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_44
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/MultiFormatReader;->setHints(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 92
    :try_start_48
    new-instance p2, Lcom/dcloud/zxing2/BinaryBitmap;

    new-instance v1, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;

    new-instance v2, Lio/dcloud/feature/barcode2/decoding/BitmapLuminanceSource;

    invoke-direct {v2, p0}, Lio/dcloud/feature/barcode2/decoding/BitmapLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v2}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    invoke-direct {p2, v1}, Lcom/dcloud/zxing2/BinaryBitmap;-><init>(Lcom/dcloud/zxing2/Binarizer;)V

    invoke-virtual {v0, p2}, Lcom/dcloud/zxing2/MultiFormatReader;->decodeWithState(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;

    move-result-object p1
    :try_end_5b
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_48 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_60
    return-object p1
.end method

.method public static decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;
    .registers 3

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Lcom/dcloud/zxing2/ResultPointCallback;Z)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0
.end method

.method private decode([BII)V
    .registers 20

    move-object/from16 v1, p0

    const-string v2, "*"

    const-string v3, "--"

    const-string v4, "/sdcard/1/"

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    move-object/from16 v6, p1

    move/from16 v5, p2

    move/from16 v7, p3

    invoke-virtual {v0, v6, v5, v7}, Lio/dcloud/feature/barcode2/camera/CameraManager;->buildLuminanceSource([BII)Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;

    move-result-object v11

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/BinaryBitmap;

    new-instance v5, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;

    invoke-direct {v5, v11}, Lcom/dcloud/zxing2/common/GlobalHistogramBinarizer;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    invoke-direct {v0, v5}, Lcom/dcloud/zxing2/BinaryBitmap;-><init>(Lcom/dcloud/zxing2/Binarizer;)V

    .line 5
    :try_start_20
    iget-object v5, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-virtual {v5, v0}, Lcom/dcloud/zxing2/MultiFormatReader;->decodeWithState(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;

    move-result-object v0
    :try_end_26
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_20 .. :try_end_26} :catch_33
    .catchall {:try_start_20 .. :try_end_26} :catchall_2c

    .line 9
    iget-object v5, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-virtual {v5}, Lcom/dcloud/zxing2/MultiFormatReader;->reset()V

    goto :goto_39

    :catchall_2c
    move-exception v0

    iget-object v2, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/MultiFormatReader;->reset()V

    .line 10
    throw v0

    .line 11
    :catch_33
    iget-object v0, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->multiFormatReader:Lcom/dcloud/zxing2/MultiFormatReader;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/MultiFormatReader;->reset()V

    const/4 v0, 0x0

    :goto_39
    move-object v12, v0

    .line 14
    sget-boolean v0, Lio/dcloud/feature/barcode2/BarcodeProxy;->save:Z

    const/4 v13, 0x1

    if-eqz v0, :cond_10c

    .line 15
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCameraHandler()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v14, 0x0

    .line 17
    :try_start_4c
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 18
    new-instance v10, Landroid/graphics/YuvImage;

    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v7

    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    iget v9, v15, Landroid/hardware/Camera$Size;->height:I

    const/4 v0, 0x0

    move-object v5, v10

    move-object/from16 v6, p1

    move-object/from16 p1, v10

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 21
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v15, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v7

    invoke-direct {v0, v14, v14, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x5a

    move-object/from16 v7, p1

    .line 25
    invoke-virtual {v7, v0, v6, v5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_aa} :catch_ab

    goto :goto_af

    :catch_ab
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 32
    :goto_af
    invoke-virtual {v11, v13}, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v5

    .line 34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 35
    sput-boolean v14, Lio/dcloud/feature/barcode2/BarcodeProxy;->save:Z

    .line 36
    sget-object v2, Lio/dcloud/feature/barcode2/BarcodeProxy;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6210\u529f left="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/dcloud/common/util/PdrUtil;->alert(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_10c
    if-eqz v12, :cond_158

    .line 39
    iget-object v0, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    invoke-interface {v0}, Lio/dcloud/feature/barcode2/decoding/IBarHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-static {v0, v2, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {v11, v13}, Lio/dcloud/feature/barcode2/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 45
    sget-boolean v4, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->mIsVerticalScreen:Z

    if-nez v4, :cond_14c

    .line 46
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 47
    invoke-virtual {v10, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 48
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 49
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_14c
    const-string v4, "barcode_bitmap"

    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_167

    .line 57
    :cond_158
    iget-object v0, v1, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    invoke-interface {v0}, Lio/dcloud/feature/barcode2/decoding/IBarHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    goto :goto_37

    :pswitch_6
    const/4 v0, 0x0

    .line 13
    sput-boolean v0, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->mIsVerticalScreen:Z

    .line 14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode([BII)V

    goto :goto_37

    :pswitch_15
    const/4 v0, 0x1

    .line 15
    sput-boolean v0, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->mIsVerticalScreen:Z

    .line 16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode([BII)V

    goto :goto_37

    .line 17
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode([BII)V

    goto :goto_37

    .line 30
    :pswitch_30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :goto_37
    return-void

    :pswitch_data_38
    .packed-switch 0x3eb
        :pswitch_30
        :pswitch_24
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method
