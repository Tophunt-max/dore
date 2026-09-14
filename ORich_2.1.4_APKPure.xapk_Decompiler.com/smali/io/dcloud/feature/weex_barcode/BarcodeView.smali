###### Class io.dcloud.feature.weex_barcode.BarcodeView (io.dcloud.feature.weex_barcode.BarcodeView)
.class public Lio/dcloud/feature/weex_barcode/BarcodeView;
.super Landroid/widget/AbsoluteLayout;
.source "BarcodeView.java"

# interfaces
.implements Lio/dcloud/feature/barcode2/decoding/IBarHandler;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field static final AZTEC:I = 0x3

.field private static final BEEP_VOLUME:F = 0.8f

.field static final CODABAR:I = 0x7

.field static final CODE128:I = 0xa

.field static final CODE39:I = 0x8

.field static final CODE93:I = 0x9

.field static final DATAMATRIX:I = 0x4

.field static final EAN13:I = 0x1

.field static final EAN8:I = 0x2

.field private static final ID_ADD_VIEW:I = 0xc9

.field private static final ID_START_SCAN:I = 0xcb

.field private static final ID_UPDATE_VIEW:I = 0xca

.field static final ITF:I = 0xb

.field static final MAXICODE:I = 0xc

.field static final PDF417:I = 0xd

.field static final QR:I = 0x0

.field static final RSS14:I = 0xe

.field static final RSSEXPANDED:I = 0xf

.field static final UNKOWN:I = -0x3e8

.field static final UPCA:I = 0x5

.field static final UPCE:I = 0x6

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field public autoDecodeCharset:Z

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private context:Landroid/content/Context;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;

.field private handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

.field private isCancelScan:Z

.field private isSurfaceAvaliable:Z

.field private isVerticalScreen:Z

.field private lastBiptmap:Landroid/graphics/Bitmap;

.field private mConserve:Z

.field private mFilename:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field mOrientationState:I

.field private mRunning:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private nopermission:Z

.field private playBeep:Z

.field private surfaceView:Landroid/view/TextureView;

.field private vibrate:Z

.field private viewHeight:I

.field private viewWidth:I

.field private viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/WXSDKInstance;)V
    .registers 6

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    .line 92
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    .line 93
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    .line 97
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    .line 99
    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeView$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$1;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    .line 268
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    .line 269
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 717
    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeView$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$5;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 130
    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 131
    iput-object p3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 132
    new-instance p2, Landroid/view/TextureView;

    invoke-direct {p2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    .line 133
    new-instance p2, Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-direct {p2, p1, p0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;-><init>(Landroid/content/Context;Lio/dcloud/feature/barcode2/decoding/IBarHandler;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    .line 134
    new-instance p2, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-direct {p2, p3}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    .line 135
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->saveOrientationState()V

    .line 137
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 138
    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_81

    if-eq p2, p3, :cond_72

    const/4 v1, 0x2

    if-eq p2, v1, :cond_81

    const/4 p1, 0x3

    if-eq p2, p1, :cond_61

    goto :goto_8e

    .line 147
    :cond_61
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setHorizontalOrientation(Z)V

    .line 148
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_8e

    .line 151
    :cond_72
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setHorizontalOrientation(Z)V

    .line 152
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_8e

    .line 142
    :cond_81
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {p2, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 143
    invoke-static {p1, p3}, Lio/dcloud/feature/barcode2/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 144
    iput-boolean p3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    .line 155
    :goto_8e
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    .line 156
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;
    .registers 1

    .line 62
    iget-object p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->startP()V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 1

    .line 62
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addBarcodeView()V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/widget/AbsoluteLayout$LayoutParams;
    .registers 1

    .line 62
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_barcode/BarcodeView;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    return p0
.end method

.method static synthetic access$602(Lio/dcloud/feature/weex_barcode/BarcodeView;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    return p1
.end method

.method private addBarcodeView()V
    .registers 4

    .line 198
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 200
    :cond_7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc9

    .line 201
    iput v2, v1, Landroid/os/Message;->what:I

    .line 202
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v0, 0x0

    .line 330
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 331
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 332
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 333
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x50

    invoke-virtual {v7, v1, p2, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 334
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 336
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 337
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 338
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55

    goto :goto_5a

    :catch_55
    move-exception p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_5a
    return-object p1
.end method

.method private cancel()V
    .registers 2

    .line 686
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v0, :cond_15

    .line 687
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_b

    .line 688
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->stopDecode()V

    .line 689
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    :cond_15
    return-void
.end method

.method private convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;
    .registers 2

    packed-switch p1, :pswitch_data_36

    const/4 p1, 0x0

    goto :goto_34

    .line 600
    :pswitch_5
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 596
    :pswitch_8
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 592
    :pswitch_b
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 588
    :pswitch_e
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 584
    :pswitch_11
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 580
    :pswitch_14
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 576
    :pswitch_17
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 572
    :pswitch_1a
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 568
    :pswitch_1d
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 564
    :pswitch_20
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 560
    :pswitch_23
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 556
    :pswitch_26
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 552
    :pswitch_29
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 548
    :pswitch_2c
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 544
    :pswitch_2f
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 540
    :pswitch_32
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    :goto_34
    return-object p1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I
    .registers 3

    .line 608
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 610
    :cond_6
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 612
    :cond_c
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_12

    const/4 p1, 0x2

    return p1

    .line 614
    :cond_12
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_18

    const/4 p1, 0x3

    return p1

    .line 616
    :cond_18
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x4

    return p1

    .line 618
    :cond_1e
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_24

    const/4 p1, 0x5

    return p1

    .line 620
    :cond_24
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_2a

    const/4 p1, 0x6

    return p1

    .line 622
    :cond_2a
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_30

    const/4 p1, 0x7

    return p1

    .line 624
    :cond_30
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_37

    const/16 p1, 0x8

    return p1

    .line 626
    :cond_37
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_3e

    const/16 p1, 0x9

    return p1

    .line 628
    :cond_3e
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_45

    const/16 p1, 0xa

    return p1

    .line 630
    :cond_45
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_4c

    const/16 p1, 0xb

    return p1

    .line 632
    :cond_4c
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_53

    const/16 p1, 0xc

    return p1

    .line 634
    :cond_53
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_5a

    const/16 p1, 0xd

    return p1

    .line 636
    :cond_5a
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_61

    const/16 p1, 0xe

    return p1

    .line 638
    :cond_61
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p1, v0, :cond_68

    const/16 p1, 0xf

    return p1

    :cond_68
    const/16 p1, -0x3e8

    return p1
.end method

.method private fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "detail"

    .line 814
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_17
    return-void
.end method

.method private initBeepSound()V
    .registers 8

    .line 695
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_52

    .line 696
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 697
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 698
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 699
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 702
    :try_start_1d
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "res/dcloud_beep.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 703
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 704
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 703
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 705
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 706
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 707
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4e} :catch_4f

    goto :goto_52

    :catch_4f
    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_52
    :goto_52
    return-void
.end method

.method private initCamera()V
    .registers 5

    .line 208
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 210
    :try_start_6
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->openDriver(Landroid/graphics/SurfaceTexture;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2a

    .line 215
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-nez v0, :cond_26

    .line 216
    new-instance v0, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->characterSet:Ljava/lang/String;

    iget-boolean v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;-><init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Vector;Ljava/lang/String;Z)V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 217
    iget-boolean v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v1, :cond_29

    .line 218
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_29

    .line 221
    :cond_26
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->resume()V

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .registers 4

    .line 726
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 727
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 729
    :cond_b
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->vibrate:Z

    if-eqz v0, :cond_23

    .line 731
    :try_start_f
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 732
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-void
.end method

.method private resumeOrientationState()V
    .registers 3

    .line 166
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mOrientationState:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private saveOrientationState()V
    .registers 2

    .line 162
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mOrientationState:I

    return-void
.end method

.method private setLayoutParams()Landroid/widget/AbsoluteLayout$LayoutParams;
    .registers 7

    .line 431
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenWidth:I

    .line 432
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenAllHeight:I

    .line 433
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 434
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 435
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 436
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 437
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 441
    iget-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    if-eqz v2, :cond_40

    .line 442
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_4c

    .line 444
    :cond_40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    :goto_4c
    if-nez v0, :cond_57

    .line 446
    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 453
    :cond_57
    iget-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isVerticalScreen:Z

    if-eqz v2, :cond_8b

    .line 454
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 455
    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    .line 457
    iget v4, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    if-ge v3, v4, :cond_79

    .line 459
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v2, v0

    .line 460
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 461
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 462
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    goto :goto_bb

    .line 464
    :cond_79
    iget v3, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v3, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int v4, v3, v0

    .line 465
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 466
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 467
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    goto :goto_bd

    .line 470
    :cond_8b
    iget v4, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 471
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v2, v2, v4

    iget v3, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v3

    .line 473
    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    if-ge v2, v3, :cond_ab

    .line 475
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v3

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int v4, v2, v0

    .line 476
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 477
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 478
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    move v2, v3

    goto :goto_bd

    .line 480
    :cond_ab
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v2, v2, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v2, v0

    .line 481
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 482
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 483
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    :goto_bb
    move v1, v0

    const/4 v0, 0x0

    .line 486
    :goto_bd
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 487
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v5

    invoke-virtual {v5, v1, v0, v2, v4}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->initSurfaceViewRect(IIII)V

    return-object v3
.end method

.method private startP()V
    .registers 4

    .line 379
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initCamera()V

    .line 381
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 382
    invoke-virtual {p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V

    .line 384
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x8

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->errorMsg:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "fail"

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    .line 389
    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 392
    :cond_37
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-nez v0, :cond_7c

    .line 393
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->startUpdateScreenTimer()V

    .line 394
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 395
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_4e

    .line 397
    :cond_4b
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    .line 398
    :goto_4e
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    if-eqz v0, :cond_77

    .line 399
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_68

    .line 401
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    iput-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 404
    :cond_68
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 405
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    .line 406
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initCamera()V

    :cond_77
    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 409
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    :cond_7c
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .registers 2

    .line 651
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->autoFocus()V

    return-void
.end method

.method public cancelScan()V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz v0, :cond_4a

    .line 274
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_e

    .line 275
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 278
    :cond_e
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    .line 279
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->removeAutoFocus()V

    .line 280
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->stopPreview()V

    .line 281
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getLastBitmapData()[B

    move-result-object v0

    .line 282
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCameraHandler()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 284
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 285
    :cond_3d
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    :cond_4a
    return-void
.end method

.method public closeScan()V
    .registers 3

    .line 292
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onPause()V

    .line 293
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    .line 294
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->clearData()V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    .line 296
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 297
    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    .line 300
    :cond_21
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 304
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public drawViewfinder()V
    .registers 2

    .line 741
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 751
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;
    .registers 2

    .line 646
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/dcloud/zxing2/Result;Landroid/graphics/Bitmap;)V
    .registers 7

    .line 656
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->onActivity()V

    .line 657
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeepSoundAndVibrate()V

    .line 660
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    if-eqz v0, :cond_50

    .line 661
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 662
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    const-string v1, "_doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    .line 666
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p2

    goto :goto_52

    :cond_50
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 669
    :goto_52
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I

    move-result v1

    .line 671
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 672
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "code"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "message"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7e

    .line 674
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7e

    const-string p2, "file"

    .line 675
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7e
    const-string p2, "type"

    const-string v0, "success"

    .line 677
    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object p1, p1, Lcom/dcloud/zxing2/Result;->textCharset:Ljava/lang/String;

    const-string p2, "charSet"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "marked"

    .line 680
    invoke-direct {p0, p1, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 682
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancelScan()V

    return-void
.end method

.method public initBarcodeView(II)V
    .registers 3

    .line 170
    iput p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 171
    iput p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 172
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex_barcode/BarcodeView$2;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$2;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V
    .registers 6

    .line 497
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    if-eqz p1, :cond_34

    .line 498
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_34

    .line 503
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_49

    const/4 v2, -0x1

    .line 507
    :try_start_18
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_20
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_18 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    move-exception v3

    .line 509
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_26
    if-eq v3, v2, :cond_31

    .line 512
    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    invoke-direct {p0, v3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 499
    :cond_34
    :goto_34
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 746
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    return v0
.end method

.method public onDestory()V
    .registers 2

    .line 320
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->resumeOrientationState()V

    .line 321
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->shutdown()V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    const/4 v0, 0x0

    .line 323
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->decodeFormats:Ljava/util/Vector;

    .line 324
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->characterSet:Ljava/lang/String;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 783
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 784
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    if-eqz v0, :cond_81

    .line 785
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/4 v1, -0x1

    .line 786
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 787
    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 788
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 789
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 790
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 791
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 792
    iget v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 793
    iget v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 795
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5c

    .line 796
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_6a

    .line 798
    :cond_5c
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    :goto_6a
    const-string v4, "en"

    .line 800
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "Need camera permission"

    .line 801
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_81

    :cond_7a
    int-to-float v2, v2

    int-to-float v1, v1

    const-string v3, "\u672a\u83b7\u5f97\u76f8\u673a\u6743\u9650"

    .line 803
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 308
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_a

    .line 309
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 312
    :cond_a
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->nopermission:Z

    if-nez v0, :cond_15

    .line 313
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    .line 314
    :cond_15
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 315
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancel()V

    .line 316
    iput-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    return-void
.end method

.method public onResume(Z)V
    .registers 6

    .line 414
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isCancelScan:Z

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 415
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->lastBiptmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    :cond_1c
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    if-eqz v0, :cond_21

    goto :goto_26

    .line 419
    :cond_21
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 420
    :goto_26
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 421
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3a

    .line 422
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    .line 423
    :cond_3a
    invoke-direct {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initBeepSound()V

    if-eqz p1, :cond_48

    .line 424
    iget-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    if-eqz p1, :cond_48

    .line 425
    iput-boolean v2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mRunning:Z

    .line 426
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->start()V

    :cond_48
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    const/4 p1, 0x1

    .line 756
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->isSurfaceAvaliable:Z

    .line 757
    iget-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    if-nez p2, :cond_9

    .line 758
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    :cond_9
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    .line 772
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->hasSurface:Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public setAutoDecodeCharset(Z)V
    .registers 2

    .line 235
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->autoDecodeCharset:Z

    return-void
.end method

.method public setBackground(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto :goto_6

    .line 239
    :cond_4
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 240
    :goto_6
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackgroundColor(I)V

    return-void
.end method

.method public setConserve(Z)V
    .registers 2

    .line 257
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mConserve:Z

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mFilename:Ljava/lang/String;

    return-void
.end method

.method public setFlash(Z)V
    .registers 3

    .line 265
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setFlashlight(Z)V

    return-void
.end method

.method public setFrameColor(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto :goto_6

    .line 226
    :cond_4
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 227
    :goto_6
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->cornerColor:I

    return-void
.end method

.method public setPlayBeep(Z)V
    .registers 2

    .line 249
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->playBeep:Z

    return-void
.end method

.method public setScanBarColor(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    goto :goto_6

    .line 244
    :cond_4
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 245
    :goto_6
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    .line 253
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->vibrate:Z

    return-void
.end method

.method public start()V
    .registers 4

    .line 347
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    invoke-direct {v2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$4;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->useSystemPermissions(Landroid/app/Activity;[Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method public updateStyles(II)V
    .registers 4

    .line 181
    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    if-ne v0, p2, :cond_9

    iget v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    if-ne v0, p1, :cond_9

    return-void

    .line 182
    :cond_9
    iput p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewWidth:I

    .line 183
    iput p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeView;->viewHeight:I

    .line 184
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance p2, Lio/dcloud/feature/weex_barcode/BarcodeView$3;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$3;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass1 (io.dcloud.feature.weex_barcode.BarcodeView$1)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$1;
.super Landroid/os/Handler;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_49

    .line 105
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 106
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 107
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 108
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    :cond_36
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_3f
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->addView(Landroid/view/View;)V

    goto :goto_af

    .line 113
    :cond_49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xca

    if-ne v0, v1, :cond_7a

    .line 114
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 115
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    goto :goto_af

    .line 118
    :cond_7a
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_af

    .line 119
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_af

    .line 120
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$000(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$100(Lio/dcloud/feature/weex_barcode/BarcodeView;)Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    .line 122
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$1;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$200(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    :cond_af
    :goto_af
    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass2 (io.dcloud.feature.weex_barcode.BarcodeView$2)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$2;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;->initBarcodeView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$2;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 175
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$2;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$300(Lio/dcloud/feature/weex_barcode/BarcodeView;)V

    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass3 (io.dcloud.feature.weex_barcode.BarcodeView$3)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$3;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;->updateStyles(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$3;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 187
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$3;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$400(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 189
    :cond_9
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xca

    .line 190
    iput v2, v1, Landroid/os/Message;->what:I

    .line 191
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$3;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass4 (io.dcloud.feature.weex_barcode.BarcodeView$4)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$4;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;
.source "BarcodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3

    .line 370
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$602(Lio/dcloud/feature/weex_barcode/BarcodeView;Z)Z

    .line 371
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackground(I)V

    .line 372
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->invalidate()V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 5

    .line 350
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$500(Lio/dcloud/feature/weex_barcode/BarcodeView;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-wide/16 v0, 0x0

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0xc8

    .line 351
    :goto_d
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    new-instance v2, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;

    invoke-direct {v2, p0}, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeView$4;)V

    invoke-virtual {p1, v2, v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass4.AnonymousClass1 (io.dcloud.feature.weex_barcode.BarcodeView$4$1)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView$4;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView$4;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 354
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$500(Lio/dcloud/feature/weex_barcode/BarcodeView;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 355
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lio/dcloud/feature/weex_barcode/BarcodeView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    .line 357
    :cond_14
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->access$400(Lio/dcloud/feature/weex_barcode/BarcodeView;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 359
    :cond_1f
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xcb

    .line 360
    iput v2, v1, Landroid/os/Message;->what:I

    .line 361
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$4$1;->this$1:Lio/dcloud/feature/weex_barcode/BarcodeView$4;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView$4;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    iget-object v0, v0, Lio/dcloud/feature/weex_barcode/BarcodeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_33
    return-void
.end method

###### Class io.dcloud.feature.weex_barcode.BarcodeView.AnonymousClass5 (io.dcloud.feature.weex_barcode.BarcodeView$5)
.class Lio/dcloud/feature/weex_barcode/BarcodeView$5;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_barcode/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_barcode/BarcodeView;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeView$5;->this$0:Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x0

    .line 719
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
