###### Class io.dcloud.feature.barcode2.BarcodeFrameItem (io.dcloud.feature.barcode2.BarcodeFrameItem)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem;
.super Lio/dcloud/common/adapter/ui/AdaFrameItem;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lio/dcloud/feature/barcode2/decoding/IBarHandler;


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

.field static final ITF:I = 0xb

.field static final MAXICODE:I = 0xc

.field static final PDF417:I = 0xd

.field static final QR:I = 0x0

.field static final RSS14:I = 0xe

.field static final RSSEXPANDED:I = 0xf

.field public static final TAG:Ljava/lang/String; = "BarcodeFrameItem"

.field static final UNKOWN:I = -0x3e8

.field static final UPCA:I = 0x5

.field static final UPCE:I = 0x6

.field private static final VIBRATE_DURATION:J = 0xc8L

.field static sBarcodeFrameItem:Lio/dcloud/feature/barcode2/BarcodeFrameItem;


# instance fields
.field public autoDecodeCharset:Z

.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private characterSet:Ljava/lang/String;

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

.field isVerticalScreen:Z

.field private lastBitmap:Landroid/graphics/Bitmap;

.field private mAct:Landroid/content/Context;

.field private mAppHandler:Lio/dcloud/common/DHInterface/IApp;

.field mCallbackIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mConserve:Z

.field private mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

.field mDivRectJson:Lorg/json/JSONArray;

.field mFilename:Ljava/lang/String;

.field mFilters:Lorg/json/JSONArray;

.field mOrientationState:I

.field private mPosition:Ljava/lang/String;

.field mProxy:Lio/dcloud/feature/barcode2/BarcodeProxy;

.field private mRunning:Z

.field mStyles:Lorg/json/JSONObject;

.field public mUuid:Ljava/lang/String;

.field private mWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field noPermission:Z

.field playBeep:Z

.field surfaceView:Landroid/view/TextureView;

.field vibrate:Z

.field private viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lio/dcloud/feature/barcode2/BarcodeProxy;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
    .registers 11

    .line 1
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->playBeep:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->vibrate:Z

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    .line 18
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->errorMsg:Ljava/lang/String;

    .line 19
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mConserve:Z

    .line 20
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    .line 23
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    const-string v3, "static"

    .line 28
    iput-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->autoDecodeCharset:Z

    .line 384
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isVerticalScreen:Z

    .line 483
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    .line 484
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    .line 621
    new-instance v0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$6;

    invoke-direct {v0, p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$6;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)V

    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 622
    sput-object p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->sBarcodeFrameItem:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    .line 623
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mProxy:Lio/dcloud/feature/barcode2/BarcodeProxy;

    .line 624
    iput-object p3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mUuid:Ljava/lang/String;

    .line 625
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    .line 626
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    .line 627
    iput-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    .line 628
    iput-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 629
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    .line 630
    iput-object p4, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mDivRectJson:Lorg/json/JSONArray;

    .line 631
    iput-object p6, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    .line 632
    iput-object p5, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilters:Lorg/json/JSONArray;

    .line 633
    invoke-direct {p0, p4, p6}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getFrameLayoutParam(Lorg/json/JSONArray;Lorg/json/JSONObject;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object p1

    .line 634
    new-instance p2, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;

    iget-object p3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    invoke-direct {p2, p0, p3, p1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/content/Context;Landroid/widget/AbsoluteLayout$LayoutParams;)V

    .line 656
    invoke-virtual {p0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    if-eqz p6, :cond_63

    .line 658
    invoke-direct {p0, p6, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initStyles(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 660
    :cond_63
    invoke-direct {p0, p5}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initDecodeFormats(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V

    return-void
.end method

.method private byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 2
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget v5, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x50

    invoke-virtual {v7, v1, p2, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {p2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 8
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 9
    invoke-virtual {v9, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 10
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

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_5a
    return-object p1
.end method

.method private convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;
    .registers 2

    packed-switch p1, :pswitch_data_36

    const/4 p1, 0x0

    goto :goto_34

    .line 1
    :pswitch_5
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 2
    :pswitch_8
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 3
    :pswitch_b
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 4
    :pswitch_e
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 5
    :pswitch_11
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 6
    :pswitch_14
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 7
    :pswitch_17
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 8
    :pswitch_1a
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 9
    :pswitch_1d
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 10
    :pswitch_20
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 11
    :pswitch_23
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 12
    :pswitch_26
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 13
    :pswitch_29
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 14
    :pswitch_2c
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 15
    :pswitch_2f
    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    goto :goto_34

    .line 16
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

.method static convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_6
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_c
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_12

    const/4 p0, 0x2

    return p0

    .line 7
    :cond_12
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_18

    const/4 p0, 0x3

    return p0

    .line 9
    :cond_18
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_1e

    const/4 p0, 0x4

    return p0

    .line 11
    :cond_1e
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_24

    const/4 p0, 0x5

    return p0

    .line 13
    :cond_24
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_2a

    const/4 p0, 0x6

    return p0

    .line 15
    :cond_2a
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_30

    const/4 p0, 0x7

    return p0

    .line 17
    :cond_30
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_37

    const/16 p0, 0x8

    return p0

    .line 19
    :cond_37
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_3e

    const/16 p0, 0x9

    return p0

    .line 21
    :cond_3e
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_45

    const/16 p0, 0xa

    return p0

    .line 23
    :cond_45
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_4c

    const/16 p0, 0xb

    return p0

    .line 25
    :cond_4c
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_53

    const/16 p0, 0xc

    return p0

    .line 27
    :cond_53
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_5a

    const/16 p0, 0xd

    return p0

    .line 29
    :cond_5a
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_61

    const/16 p0, 0xe

    return p0

    .line 31
    :cond_61
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p0, v0, :cond_68

    const/16 p0, 0xf

    return p0

    :cond_68
    const/16 p0, -0x3e8

    return p0
.end method

.method private getFrameLayoutParam(Lorg/json/JSONArray;Lorg/json/JSONObject;)Landroid/widget/AbsoluteLayout$LayoutParams;
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-le v1, v2, :cond_84

    .line 4
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    .line 5
    invoke-static {p1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 7
    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 8
    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 10
    iget p1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 11
    iget p1, p2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 12
    iget p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    int-to-float p1, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 13
    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_10d

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz p1, :cond_10d

    .line 15
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    goto/16 :goto_10d

    :cond_84
    if-nez p2, :cond_87

    return-object v4

    .line 21
    :cond_87
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 22
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    const-string v5, "absolute"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 25
    iget p1, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    goto :goto_b2

    .line 27
    :cond_a0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_b2

    .line 29
    iget p1, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :cond_b2
    :goto_b2
    const-string v2, "left"

    .line 31
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v5, v1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {v2, v5, v3, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    const-string v5, "top"

    .line 32
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, v3, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v5, "width"

    .line 33
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {v5, v1, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    const-string v5, "height"

    .line 34
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, p1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    .line 35
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    .line 36
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 37
    iput v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    .line 38
    iput v2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, p1

    .line 39
    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 40
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-eqz p1, :cond_10d

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz p1, :cond_10d

    .line 41
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    :cond_10d
    :goto_10d
    return-object v4
.end method

.method private initBeepSound()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_52

    .line 5
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 6
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 11
    :try_start_1d
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "res/dcloud_beep.ogg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 16
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4e} :catch_4f

    goto :goto_52

    :catch_4f
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_52
    :goto_52
    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->openDriver(Landroid/graphics/SurfaceTexture;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_24

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-nez p1, :cond_20

    .line 10
    new-instance p1, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->characterSet:Ljava/lang/String;

    iget-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->autoDecodeCharset:Z

    invoke-direct {p1, p0, v0, v1, v2}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;-><init>(Lio/dcloud/feature/barcode2/decoding/IBarHandler;Ljava/util/Vector;Ljava/lang/String;Z)V

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 11
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    if-eqz v0, :cond_23

    .line 12
    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_23

    .line 15
    :cond_20
    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->resume()V

    :cond_23
    :goto_23
    return-void

    :catch_24
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->errorMsg:Ljava/lang/String;

    return-void

    :catch_2c
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method private initCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->isVerticalScreen()Z

    move-result v1

    invoke-static {v0, v1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenWidth:I

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    sput v0, Lio/dcloud/feature/barcode2/camera/CameraManager;->sScreenAllHeight:I

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_35

    const/4 v1, 0x1

    :cond_35
    if-eqz v1, :cond_3b

    .line 6
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initPortraitCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V

    goto :goto_3e

    .line 8
    :cond_3b
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initLandScapeCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V

    :goto_3e
    return-void
.end method

.method private initDecodeFormats(Lorg/json/JSONArray;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    if-eqz p1, :cond_30

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_30

    .line 7
    :cond_10
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_45

    const/4 v2, -0x1

    .line 11
    :try_start_18
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    move-exception v3

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, -0x1

    :goto_22
    if-eq v3, v2, :cond_2d

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    invoke-direct {p0, v3}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->convertNumToBarcodeFormat(I)Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 17
    :cond_30
    :goto_30
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

.method private initLandScapeCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
    .registers 9

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    .line 8
    new-instance p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;

    invoke-direct {p1, p0, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_21
    iget v1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 22
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v0

    .line 25
    iget p1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    if-ge v3, p1, :cond_3f

    mul-int v0, v0, p1

    .line 27
    div-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 30
    sput v4, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    move v3, p1

    const/4 p1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_47

    :cond_3f
    sub-int/2addr p1, v3

    .line 36
    div-int/lit8 p1, p1, 0x2

    .line 37
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 38
    sput v4, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    const/4 v0, 0x0

    .line 40
    :goto_47
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setClickable(Z)V

    .line 41
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v3, v1, p1, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p2, v2, v4}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v3, v1}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->initSurfaceViewRect(IIII)V

    .line 43
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-virtual {p2, p1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initPortraitCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
    .registers 9

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->gatherRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCR(II)Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    .line 8
    new-instance p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;

    invoke-direct {p1, p0, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_21
    iget v1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 22
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int v3, v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v0

    .line 25
    iget p1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    const/4 v4, 0x0

    if-ge v3, p1, :cond_3f

    mul-int v0, v0, p1

    .line 27
    div-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 28
    div-int/lit8 v1, v1, 0x2

    .line 29
    sput v1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    .line 30
    sput v4, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    move v3, p1

    const/4 p1, 0x0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_47

    :cond_3f
    sub-int/2addr p1, v3

    .line 33
    div-int/lit8 p1, p1, 0x2

    .line 34
    sput p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestTop:I

    .line 35
    sput v4, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->detectorRectOffestLeft:I

    const/4 v0, 0x0

    .line 37
    :goto_47
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Landroid/view/TextureView;->setClickable(Z)V

    .line 38
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v1, v3, v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p2, v2, v4}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->getInstance()Lio/dcloud/feature/barcode2/view/DetectorViewConfig;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1, v3}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->initSurfaceViewRect(IIII)V

    .line 40
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-virtual {p2, p1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initStyles(Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    const/high16 v0, -0x10000

    .line 2
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 3
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->cornerColor:I

    const-string v0, "position"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    :cond_16
    const-string v0, "scanbarColor"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_32

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2e

    goto :goto_30

    .line 9
    :cond_2e
    sget v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 10
    :goto_30
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    :cond_32
    const-string v0, "frameColor"

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_49

    goto :goto_4b

    .line 14
    :cond_49
    sget v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 15
    :goto_4b
    sput v0, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->cornerColor:I

    :cond_4d
    const-string v0, "background"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_64

    goto :goto_66

    .line 19
    :cond_64
    sget p1, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->laserColor:I

    .line 20
    :goto_66
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_69
    return-void
.end method

.method private listenHideAndShow(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;

    invoke-direct {v0, p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)V

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->playBeep:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 4
    :cond_b
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->vibrate:Z

    if-eqz v0, :cond_23

    .line 6
    :try_start_f
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-void
.end method

.method private resumeOrientationState()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    iget v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mOrientationState:I

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(I)V

    return-void
.end method

.method private saveOrientationState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mOrientationState:I

    return-void
.end method


# virtual methods
.method public addCallBackId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->removeMapFrameItem(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 4
    :cond_15
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->toFrameView()V

    return-void
.end method

.method public autoFocus()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->autoFocus()V

    return-void
.end method

.method protected cancel()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->stopDecode()V

    .line 5
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    :cond_15
    return-void
.end method

.method protected cancel_scan()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    if-eqz v0, :cond_4a

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_e

    .line 3
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 6
    :cond_e
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->stopUpdateScreenTimer()V

    .line 7
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->removeAutoFocus()V

    .line 8
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->stopPreview()V

    .line 9
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getLastBitmapData()[B

    move-result-object v0

    .line 10
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->getCameraHandler()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 12
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->byte2bitmap([BLandroid/hardware/Camera;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    .line 14
    :cond_3d
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    :cond_4a
    return-void
.end method

.method protected close_scan()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->dispose()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    const-string v0, "Barcode"

    const-string v1, "dispose"

    .line 2
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onPause()V

    .line 4
    invoke-static {}, Lio/dcloud/feature/barcode2/view/DetectorViewConfig;->clearData()V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mProxy:Lio/dcloud/feature/barcode2/BarcodeProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/feature/barcode2/BarcodeProxy;->mBarcodeView:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    .line 6
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iput-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    .line 11
    :cond_28
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->resumeOrientationState()V

    .line 13
    invoke-static {}, Lio/dcloud/feature/barcode2/BarcodeProxyMgr;->getBarcodeProxyMgr()Lio/dcloud/feature/barcode2/BarcodeProxyMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/barcode2/BarcodeProxyMgr;->removeBarcodeProxy(Ljava/lang/String;)V

    return-void
.end method

.method public drawViewfinder()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->drawViewfinder()V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getJsBarcode()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "uuid"

    .line 4
    :try_start_d
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_12} :catch_28

    const-string v1, "filters"

    .line 5
    :try_start_14
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilters:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_28

    const-string v1, "options"

    .line 6
    :try_start_1b
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_20} :catch_28

    const-string v1, "autoDecodeCharset"

    .line 7
    :try_start_22
    iget-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->autoDecodeCharset:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception v1

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return-object v0
.end method

.method public getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/dcloud/zxing2/Result;Landroid/graphics/Bitmap;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->onActivity()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->playBeepSoundAndVibrate()V

    .line 4
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mConserve:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p2

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    .line 8
    :goto_15
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->convertTypestrToNum(Lcom/dcloud/zxing2/BarcodeFormat;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p2, :cond_b8

    .line 12
    iget-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppDocPath()Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_doc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {v6, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    .line 17
    :cond_6a
    iget-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    iget-object v5, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    invoke-interface {p2, v5}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filename:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";relPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    aput-object p2, v5, v2

    iget-object p1, p1, Lcom/dcloud/zxing2/Result;->textCharset:Ljava/lang/String;

    aput-object p1, v5, v3

    const-string p1, "{type:%d,message:%s,file:\'%s\',charSet:\'%s\'}"

    invoke-static {p1, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d4

    :cond_b8
    new-array p2, v3, [Ljava/lang/Object;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    iget-object p1, p1, Lcom/dcloud/zxing2/Result;->textCharset:Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "{type:%d,message:%s,charSet:\'%s\'}"

    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    :goto_d4
    sget p2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-virtual {p0, p1, p2, v4, v4}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->runJsCallBack(Ljava/lang/String;IZZ)V

    .line 25
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->cancel()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->shutdown()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->decodeFormats:Ljava/util/Vector;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->characterSet:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    .line 5
    :cond_a
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    if-nez v0, :cond_15

    .line 6
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->closeDriver()V

    .line 8
    :cond_15
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    .line 9
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->cancel()V

    .line 10
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    return-void
.end method

.method public onPopFromStack(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onPopFromStack(Z)V

    if-eqz p1, :cond_8

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onPause()V

    :cond_8
    return-void
.end method

.method public onPushToStack(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onPushToStack(Z)V

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onResume(Z)V

    :cond_9
    return-void
.end method

.method protected onResume(Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_22
    iget-boolean v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

    if-eqz v1, :cond_2a

    .line 6
    invoke-direct {p0, v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initCamera(Landroid/graphics/SurfaceTexture;)V

    goto :goto_2f

    .line 8
    :cond_2a
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 14
    :goto_2f
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 15
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_43

    .line 16
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->playBeep:Z

    .line 18
    :cond_43
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initBeepSound()V

    if-eqz p1, :cond_51

    .line 20
    iget-boolean p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    if-eqz p1, :cond_51

    .line 21
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    .line 22
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->start()V

    :cond_51
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 1
    iget-boolean p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

    if-nez p2, :cond_13

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

    .line 3
    iget-boolean p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    if-nez p2, :cond_13

    .line 5
    :try_start_b
    invoke-direct {p0, p1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initCamera(Landroid/graphics/SurfaceTexture;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 2

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

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

.method public removeMapFrameItem(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    :goto_15
    return-void
.end method

.method public runJsCallBack(Ljava/lang/String;IZZ)V
    .registers 13

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mCallbackIds:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lio/dcloud/feature/barcode2/BarcodeProxyMgr;->getBarcodeProxyMgr()Lio/dcloud/feature/barcode2/BarcodeProxyMgr;

    move-result-object v2

    iget-object v4, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v2, v4, v1}, Lio/dcloud/feature/barcode2/BarcodeProxyMgr;->findWebviewByUuid(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 5
    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_a

    :cond_33
    return-void
.end method

.method public setFlash(Z)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/barcode2/camera/CameraManager;->setFlashlight(Z)V

    return-void
.end method

.method protected start()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    if-nez v0, :cond_4c

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getViewfinderView()Lio/dcloud/feature/barcode2/view/ViewfinderView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;->startUpdateScreenTimer()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->handler:Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_17

    .line 6
    :cond_14
    invoke-virtual {p0, v1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onResume(Z)V

    .line 8
    :goto_17
    iget-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    if-eqz v0, :cond_47

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    iput-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->lastBitmap:Landroid/graphics/Bitmap;

    .line 14
    :cond_32
    invoke-static {}, Lio/dcloud/feature/barcode2/camera/CameraManager;->get()Lio/dcloud/feature/barcode2/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/barcode2/camera/CameraManager;->clearLastBitmapData()V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->postInvalidate()V

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initCamera(Landroid/graphics/SurfaceTexture;)V

    :cond_47
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mRunning:Z

    .line 19
    iput-boolean v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isCancelScan:Z

    :cond_4c
    return-void
.end method

.method public toFrameView()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mDivRectJson:Lorg/json/JSONArray;

    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getFrameLayoutParam(Lorg/json/JSONArray;Lorg/json/JSONObject;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->surfaceView:Landroid/view/TextureView;

    .line 4
    new-instance v2, Lio/dcloud/feature/barcode2/view/ViewfinderView;

    iget-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAct:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lio/dcloud/feature/barcode2/view/ViewfinderView;-><init>(Landroid/content/Context;Lio/dcloud/feature/barcode2/decoding/IBarHandler;)V

    iput-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->viewfinderView:Lio/dcloud/feature/barcode2/view/ViewfinderView;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->hasSurface:Z

    .line 6
    new-instance v3, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->inactivityTimer:Lio/dcloud/feature/barcode2/decoding/InactivityTimer;

    .line 7
    iget-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;

    iget-object v5, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1, v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Lio/dcloud/common/DHInterface/IApp;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V

    const-string v0, "CAMERA"

    invoke-static {v3, v0, v4}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Lio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    .line 26
    invoke-virtual {p0, v2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onResume(Z)V

    .line 27
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->saveOrientationState()V

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->isVerticalScreen()Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->isVerticalScreen:Z

    if-eqz v0, :cond_5c

    .line 30
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "portrait"

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto :goto_63

    .line 32
    :cond_5c
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mAppHandler:Lio/dcloud/common/DHInterface/IApp;

    const-string v2, "landscape"

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    .line 34
    :goto_63
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0, v0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->listenHideAndShow(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 35
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    const-string v2, "absolute"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 36
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_81

    .line 38
    :cond_7c
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0, p0, v1}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_81
    return-void
.end method

.method public upateStyles(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const-string v0, "top"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "position"

    if-nez v0, :cond_2d

    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 3
    :cond_2d
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mDivRectJson:Lorg/json/JSONArray;

    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mStyles:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->getFrameLayoutParam(Lorg/json/JSONArray;Lorg/json/JSONObject;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    const-string v2, "absolute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 9
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1, p0, v0}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6e

    .line 11
    :cond_60
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1, p0}, Lio/dcloud/common/DHInterface/IContainerView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lio/dcloud/common/DHInterface/IContainerView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :goto_6e
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->mPosition:Ljava/lang/String;

    goto :goto_78

    .line 17
    :cond_71
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_78
    :goto_78
    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass1 (io.dcloud.feature.barcode2.BarcodeFrameItem$1)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;
.super Landroid/widget/AbsoluteLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;-><init>(Lio/dcloud/feature/barcode2/BarcodeProxy;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

.field final synthetic val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/content/Context;Landroid/widget/AbsoluteLayout$LayoutParams;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iput-object p3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {p0, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iget-boolean v0, v0, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    if-eqz v0, :cond_59

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    invoke-static {v1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->access$000(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/CanvasHelper;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 7
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 8
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 9
    iget-object v2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v3, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    float-to-int v0, v3

    .line 10
    iget v1, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    div-int/lit8 v1, v1, 0x2

    .line 11
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/base/R$string;->dcloud_feature_barcode2_no_camera_permission:I

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$1;->paint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_59
    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass2 (io.dcloud.feature.barcode2.BarcodeFrameItem$2)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;->toFrameView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

.field final synthetic val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;

.field final synthetic val$mainView:Landroid/widget/AbsoluteLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Lio/dcloud/common/DHInterface/IApp;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iput-object p3, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iput-object p4, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->noPermission:Z

    .line 2
    new-instance p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;-><init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iget-object v0, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$lp:Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-static {p1, v0, v1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->access$100(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass2.AnonymousClass1 (io.dcloud.feature.barcode2.BarcodeFrameItem$2$1)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->onDenied(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;->this$1:Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;->this$1:Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;

    iget-object p1, p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$mainView:Landroid/widget/AbsoluteLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2$1;->this$1:Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;

    iget-object p1, p1, Lio/dcloud/feature/barcode2/BarcodeFrameItem$2;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1}, Landroid/widget/AbsoluteLayout;->invalidate()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass3 (io.dcloud.feature.barcode2.BarcodeFrameItem$3)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initPortraitCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

.field final synthetic val$mainView:Landroid/widget/AbsoluteLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iput-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;->val$mainView:Landroid/widget/AbsoluteLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$3;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1}, Landroid/widget/AbsoluteLayout;->invalidate()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass4 (io.dcloud.feature.barcode2.BarcodeFrameItem$4)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;->initLandScapeCameraView(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/widget/AbsoluteLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

.field final synthetic val$mainView:Landroid/widget/AbsoluteLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;Landroid/widget/AbsoluteLayout;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    iput-object p2, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;->val$mainView:Landroid/widget/AbsoluteLayout;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/AbsoluteLayout;->setBackgroundColor(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$4;->val$mainView:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p1}, Landroid/widget/AbsoluteLayout;->invalidate()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass5 (io.dcloud.feature.barcode2.BarcodeFrameItem$5)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;->listenHideAndShow(Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string p2, "hide"

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_20

    const-string p2, "window_close"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_20

    :cond_11
    const-string p2, "show_animation_end"

    .line 3
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onResume(Z)V

    goto :goto_25

    .line 5
    :cond_20
    :goto_20
    iget-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$5;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    invoke-virtual {p1}, Lio/dcloud/feature/barcode2/BarcodeFrameItem;->onPause()V

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.barcode2.BarcodeFrameItem.AnonymousClass6 (io.dcloud.feature.barcode2.BarcodeFrameItem$6)
.class Lio/dcloud/feature/barcode2/BarcodeFrameItem$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/BarcodeFrameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;


# direct methods
.method constructor <init>(Lio/dcloud/feature/barcode2/BarcodeFrameItem;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/barcode2/BarcodeFrameItem$6;->this$0:Lio/dcloud/feature/barcode2/BarcodeFrameItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
