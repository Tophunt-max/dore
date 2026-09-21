###### Class io.dcloud.feature.barcode2.decoding.CaptureActivityHandler (io.dcloud.feature.barcode2.decoding.CaptureActivityHandler)
.class public final Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field public static final CODE_AUTO_FOCUS:I = 0x3e8

.field public static final CODE_DECODE:I = 0x3ec

.field public static final CODE_DECODE_FAILED:I = 0x3e9

.field public static final CODE_DECODE_SUCCEEDED:I = 0x3ea

.field public static final CODE_DECODE_landscape:I = 0x3ee

.field public static final CODE_DECODE_portrait:I = 0x3ed

.field public static final CODE_QUIT:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "CaptureActivityHandler"


# instance fields
.field private final activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

.field private final decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

.field private state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Vector;Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/barcode2/decoding/IBarHandler;",
            "Ljava/util/Vector<",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    .line 3
    new-instance v6, Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    new-instance v4, Lio/dcloud/feature/barcode2/view/ViewfinderResultPointCallback;

    .line 4
    invoke-interface {p1}, Lio/dcloud/feature/barcode2/decoding/IBarHandler;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-direct {v4, v0}, Lio/dcloud/feature/barcode2/view/ViewfinderResultPointCallback;-><init>(Lio/dcloud/feature/barcode2/view/ViewfinderView;)V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/barcode2/decoding/DecodeThread;-><init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Vector;Ljava/lang/String;Lcom/dcloud/zxing2/ResultPointCallback;Z)V

    iput-object v6, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    .line 6
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 7
    sget-object p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 8
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->resume()V

    return-void
.end method

.method public static convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 3
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 6
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v9, :cond_62

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v8, :cond_5f

    mul-int v2, v8, v0

    add-int/2addr v2, v1

    .line 10
    aget v3, v10, v2

    const/high16 v4, -0x1000000

    and-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x18

    const/high16 v6, 0xff0000

    and-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xff00

    and-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    const/16 v11, 0xff

    and-int/2addr v3, v11

    if-le v6, p3, :cond_3c

    const/16 v6, 0xff

    goto :goto_3d

    :cond_3c
    const/4 v6, 0x0

    :goto_3d
    if-le v3, p3, :cond_42

    const/16 v3, 0xff

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    if-le v7, p3, :cond_46

    goto :goto_47

    :cond_46
    const/4 v11, 0x0

    :goto_47
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    shl-int/lit8 v6, v11, 0x8

    or-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 31
    aput v3, v10, v2

    .line 33
    aget v3, v10, v2

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5a

    .line 34
    aput v5, v10, v2

    goto :goto_5c

    .line 36
    :cond_5a
    aput v4, v10, v2

    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 41
    :cond_62
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 43
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 44
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;
    .registers 3

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0, p1}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    .line 11
    :cond_f
    invoke-static {p0, p1}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->tryBiggerBitmap(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0
.end method

.method public static tryBiggerBitmap(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x4b0

    if-ge v0, v2, :cond_30

    if-ge v1, v2, :cond_30

    add-int/lit16 v0, v0, 0xc8

    add-int/lit16 v1, v1, 0xc8

    .line 9
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, -0x1

    .line 11
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v0

    .line 18
    :cond_30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0xb4

    invoke-static {p0, v0, v1, v2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->convertToBMW(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0
.end method

.method public static trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;
    .registers 13

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_c7

    if-ge v2, v3, :cond_14

    goto/16 :goto_c7

    :cond_14
    const/4 v3, 0x0

    if-le v1, v2, :cond_19

    const/4 v4, 0x0

    goto :goto_1a

    :cond_19
    const/4 v4, 0x1

    :goto_1a
    if-eqz v4, :cond_23

    .line 19
    div-int/lit8 v5, v2, 0x2

    invoke-static {p0, v3, v3, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_29

    .line 21
    :cond_23
    div-int/lit8 v5, v1, 0x2

    invoke-static {p0, v3, v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 25
    :goto_29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3a

    .line 29
    new-instance v7, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$1;

    invoke-direct {v7, v6}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$1;-><init>(Ljava/util/List;)V

    invoke-static {v5, v7, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Lcom/dcloud/zxing2/ResultPointCallback;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v7

    goto :goto_3e

    .line 36
    :cond_3a
    invoke-static {v5, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v7

    :goto_3e
    if-eqz v7, :cond_41

    return-object v7

    :cond_41
    if-eqz p1, :cond_4b

    .line 43
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 44
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_4c

    :cond_4b
    const/4 v7, 0x0

    :goto_4c
    if-eqz v4, :cond_55

    .line 49
    div-int/lit8 v8, v2, 0x2

    invoke-static {p0, v3, v8, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_5b

    .line 51
    :cond_55
    div-int/lit8 v8, v1, 0x2

    invoke-static {p0, v8, v3, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_5b
    if-eqz p1, :cond_67

    .line 57
    new-instance v9, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$2;

    invoke-direct {v9, v6}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$2;-><init>(Ljava/util/List;)V

    invoke-static {v8, v9, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Lcom/dcloud/zxing2/ResultPointCallback;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v9

    goto :goto_6b

    .line 64
    :cond_67
    invoke-static {v8, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v9

    :goto_6b
    if-eqz v9, :cond_6e

    return-object v9

    :cond_6e
    if-eqz p1, :cond_78

    .line 71
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 72
    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_79

    :cond_78
    const/4 v9, 0x0

    :goto_79
    if-eqz v4, :cond_86

    .line 77
    div-int/lit8 v4, v2, 0x8

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    invoke-static {p0, v3, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_90

    .line 79
    :cond_86
    div-int/lit8 v4, v1, 0x8

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    invoke-static {p0, v4, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_90
    if-eqz p1, :cond_9c

    .line 85
    new-instance v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$3;

    invoke-direct {v1, v6}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$3;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Lcom/dcloud/zxing2/ResultPointCallback;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v1

    goto :goto_a0

    .line 92
    :cond_9c
    invoke-static {p0, p2}, Lio/dcloud/feature/barcode2/decoding/DecodeHandler;->decode(Landroid/graphics/Bitmap;Z)Lcom/dcloud/zxing2/Result;

    move-result-object v1

    :goto_a0
    if-eqz v1, :cond_a3

    return-object v1

    :cond_a3
    if-eqz p1, :cond_c7

    .line 100
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p1

    .line 101
    invoke-interface {v6}, Ljava/util/List;->clear()V

    if-le v7, p1, :cond_b5

    if-le v7, v9, :cond_b5

    .line 103
    invoke-static {v5, v3, p2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0

    :cond_b5
    if-le p1, v9, :cond_be

    if-le p1, v7, :cond_be

    .line 105
    invoke-static {p0, v3, p2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0

    :cond_be
    if-le v9, p1, :cond_c7

    if-le v9, v7, :cond_c7

    .line 107
    invoke-static {v8, v3, p2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;

    move-result-object p0

    return-object p0

    :cond_c7
    :goto_c7
    return-object v0
.end method


# virtual methods
.method public autoFocus()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    goto :goto_6a

    .line 12
    :pswitch_6
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    goto :goto_21

    :cond_19
    const-string v1, "barcode_bitmap"

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 17
    :goto_21
    iget-object v1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/dcloud/zxing2/Result;

    invoke-interface {v1, p1, v0}, Lio/dcloud/feature/barcode2/decoding/IBarHandler;->handleDecode(Lcom/dcloud/zxing2/Result;Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_6a

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "barcode.recycle"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6a

    .line 25
    :pswitch_37
    sget-object p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "CODE_DECODE_FAILED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 27
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    invoke-virtual {v1}, Lio/dcloud/feature/barcode2/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/barcode2/camera/CameraManager;->requestPreviewFrame(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Landroid/os/Handler;I)V

    goto :goto_6a

    .line 28
    :pswitch_54
    sget-object p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got auto-focus message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_6a

    .line 32
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_6a
    :goto_6a
    return-void

    nop

    :pswitch_data_6c
    .packed-switch 0x3e8
        :pswitch_54
        :pswitch_37
        :pswitch_6
    .end packed-switch
.end method

.method public quitSynchronously()V
    .registers 3

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->DONE:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 2
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->stopPreview()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6
    :try_start_1a
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1f} :catch_1f

    .line 12
    :catch_1f
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->stopDecode()V

    return-void
.end method

.method public restartPreviewAndDecode()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    sget-object v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_1e

    .line 2
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 3
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    iget-object v2, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->decodeThread:Lio/dcloud/feature/barcode2/decoding/DecodeThread;

    invoke-virtual {v2}, Lio/dcloud/feature/barcode2/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/barcode2/camera/CameraManager;->requestPreviewFrame(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Landroid/os/Handler;I)V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->autoFocus()V

    :cond_1e
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->startPreview()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->activity:Lio/dcloud/feature/barcode2/decoding/IBarHandler;

    invoke-interface {v0}, Lio/dcloud/feature/barcode2/decoding/IBarHandler;->drawViewfinder()V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method public stopDecode()V
    .registers 2

    const/16 v0, 0x3ea

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x3e9

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->removeAutoFocus()V

    .line 4
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->state:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.CaptureActivityHandler.AnonymousClass1 (io.dcloud.feature.barcode2.decoding.CaptureActivityHandler$1)
.class final Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$subPoints:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$1;->val$subPoints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$1;->val$subPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.CaptureActivityHandler.AnonymousClass2 (io.dcloud.feature.barcode2.decoding.CaptureActivityHandler$2)
.class final Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$subPoints:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$2;->val$subPoints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$2;->val$subPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.CaptureActivityHandler.AnonymousClass3 (io.dcloud.feature.barcode2.decoding.CaptureActivityHandler$3)
.class final Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/ResultPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->trySmallerBitmap(Landroid/graphics/Bitmap;ZZ)Lcom/dcloud/zxing2/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$subPoints:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$3;->val$subPoints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$3;->val$subPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.CaptureActivityHandler.State (io.dcloud.feature.barcode2.decoding.CaptureActivityHandler$State)
.class final enum Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum DONE:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->PREVIEW:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 2
    new-instance v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->SUCCESS:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    .line 3
    new-instance v3, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->DONE:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->$VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->$VALUES:[Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler$State;

    return-object v0
.end method
