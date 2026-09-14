###### Class com.taobao.weex.ui.component.WXImage (com.taobao.weex.ui.component.WXImage)
.class public Lcom/taobao/weex/ui/component/WXImage;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXImage.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXImage$MyImageListener;,
        Lcom/taobao/weex/ui/component/WXImage$Measurable;,
        Lcom/taobao/weex/ui/component/WXImage$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field private static BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERRORDESC:Ljava/lang/String; = "errorDesc"

.field public static final SUCCEED:Ljava/lang/String; = "success"

.field private static final WRITE_EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2


# instance fields
.field private mAutoRecycle:Z

.field private mBlurRadius:I

.field private mFrameViewEventListener:Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

.field protected mIsUni:Z

.field private mSrc:Ljava/lang/String;

.field private preImgUrlStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lcom/taobao/weex/ui/component/WXImage$1;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXImage$1;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mIsUni:Z

    const-string p1, ""

    .line 480
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->monitorImgSize(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private monitorImgSize(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 18

    move-object v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_6

    return-void

    .line 485
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-nez v2, :cond_d

    return-void

    .line 489
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v3, :cond_e0

    if-nez v4, :cond_1b

    goto/16 :goto_e0

    .line 494
    :cond_1b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 495
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 496
    iget-object v5, v0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    .line 497
    iput-object v1, v0, Lcom/taobao/weex/ui/component/WXImage;->preImgUrlStr:Ljava/lang/String;

    const/16 v5, 0x439

    const-string v6, "details"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-le v3, v5, :cond_69

    const/16 v5, 0x2d1

    if-le v4, v5, :cond_69

    .line 499
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v5

    const-string v9, "wxLargeImgMaxCount"

    invoke-virtual {v5, v9, v7, v8}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 500
    sget-boolean v5, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v5, :cond_69

    .line 501
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v6, v9, v10}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_69
    mul-int v5, v3, v4

    int-to-long v9, v5

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    mul-int v5, v5, v11

    int-to-long v11, v5

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-nez v5, :cond_7e

    return-void

    :cond_7e
    long-to-double v13, v9

    long-to-double v7, v11

    div-double/2addr v13, v7

    const-wide v7, 0x3ff3333333333333L    # 1.2

    cmpl-double v5, v13, v7

    if-lez v5, :cond_e0

    sub-long/2addr v9, v11

    const-wide/16 v7, 0x640

    cmp-long v5, v9, v7

    if-lez v5, :cond_e0

    .line 514
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v5

    iget-wide v7, v5, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    iput-wide v7, v5, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    .line 515
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-string v5, "wxWrongImgSizeCount"

    invoke-virtual {v2, v5, v9, v10}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 517
    sget-boolean v2, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-eqz v2, :cond_e0

    .line 518
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x4

    aput-object v1, v7, v3

    const-string v1, "imgSize:[%d,%d],viewSize:[%d,%d],urL:%s"

    invoke-static {v1, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-static {v2, v6, v5, v1}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method private parseBlurRadius(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 290
    :cond_4
    new-instance v1, Lcom/taobao/weex/utils/SingleFunctionParser;

    sget-object v2, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-direct {v1, p1, v2}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    :try_start_b
    const-string p1, "blur"

    .line 293
    invoke-virtual {v1, p1}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_25

    if-eqz p1, :cond_25

    .line 297
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_25

    .line 300
    :cond_1a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :catch_25
    :cond_25
    :goto_25
    return v0
.end method

.method private runSrc(Ljava/lang/String;)V
    .registers 4

    .line 239
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 240
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;->fetchLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    move-object p1, v0

    .line 246
    :cond_1d
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    .line 250
    :cond_24
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 257
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :cond_3e
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 265
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 267
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 268
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setLocalSrc(Landroid/net/Uri;)V

    goto :goto_6d

    .line 271
    :cond_5e
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getBlur()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 273
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    :goto_6d
    return-void
.end method

.method private setBlurRadius(Ljava/lang/String;I)V
    .registers 5

    .line 278
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    if-eq p2, v0, :cond_27

    .line 279
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    :cond_27
    return-void
.end method

.method private setLocalSrc(Landroid/net/Uri;)V
    .registers 3

    .line 212
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/ImgURIUtil;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method

.method private setRemoteSrc(Landroid/net/Uri;I)V
    .registers 8

    .line 336
    new-instance v0, Lcom/taobao/weex/common/WXImageStrategy;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXImageStrategy;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 337
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->isClipping:Z

    .line 339
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;

    move-result-object v2

    .line 340
    sget-object v3, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->isSharpen:Z

    .line 342
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/taobao/weex/common/WXImageStrategy;->blurRadius:I

    .line 343
    iput p2, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    .line 345
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance p2, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;

    invoke-direct {p2, p0, p0, p1}, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;-><init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/ui/component/WXImage;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/taobao/weex/common/WXImageStrategy;->setImageListener(Lcom/taobao/weex/common/WXImageStrategy$ImageListener;)V

    const/4 p2, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "placeholder"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 350
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_5f

    .line 351
    :cond_49
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "placeHolder"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 352
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :cond_5f
    :goto_5f
    if-eqz p2, :cond_75

    .line 355
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "image"

    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    .line 358
    :cond_75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/taobao/weex/common/WXImageStrategy;->instanceId:Ljava/lang/String;

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXImage;->setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V

    return-void
.end method

.method private updateBorderRadius()V
    .registers 7

    .line 393
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v0, :cond_50

    .line 394
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXImageView;

    .line 395
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 398
    new-instance v2, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v3

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 399
    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v1

    goto :goto_32

    :cond_2b
    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 401
    fill-array-data v1, :array_52

    .line 403
    :goto_32
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXImageView;->setBorderRadius([F)V

    .line 405
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/taobao/weex/utils/ImageDrawable;

    if-eqz v2, :cond_50

    .line 406
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/ImageDrawable;

    .line 407
    invoke-virtual {v0}, Lcom/taobao/weex/utils/ImageDrawable;->getCornerRadii()[F

    move-result-object v2

    .line 408
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_50

    .line 409
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/ImageDrawable;->setCornerRadii([F)V

    :cond_50
    return-void

    nop

    :array_52
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public autoRecoverImage()V
    .registers 2

    .line 329
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_9

    .line 330
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public autoReleaseImage()V
    .registers 4

    .line 319
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_24

    .line 320
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 321
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 322
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    :cond_24
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 530
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v0, :cond_22

    .line 531
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 532
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 535
    :cond_22
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    return-void
.end method

.method protected getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;
    .registers 2

    .line 377
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v0

    return-object v0
.end method

.method protected getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .registers 5

    .line 180
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    .line 185
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_42

    goto :goto_35

    :sswitch_15
    const-string v2, "contain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v1, 0x2

    goto :goto_35

    :sswitch_20
    const-string v2, "cover"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_35

    :cond_29
    const/4 v1, 0x1

    goto :goto_35

    :sswitch_2b
    const-string v2, "stretch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    packed-switch v1, :pswitch_data_50

    goto :goto_41

    .line 190
    :pswitch_39
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_41

    .line 187
    :pswitch_3c
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_41

    .line 193
    :pswitch_3f
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_41
    return-object v0

    :sswitch_data_42
    .sparse-switch
        -0x702b18fb -> :sswitch_2b
        0x5a753b7 -> :sswitch_20
        0x38b724d4 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 80
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .registers 4

    .line 118
    new-instance v0, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXImageView;-><init>(Landroid/content/Context;)V

    .line 119
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p1, v1, :cond_14

    const/4 p1, 0x1

    .line 121
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXImageView;->setCropToPadding(Z)V

    .line 123
    :cond_14
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXImageView;->holdComponent(Lcom/taobao/weex/ui/component/WXImage;)V

    return-object v0
.end method

.method protected onFinishLayout()V
    .registers 1

    .line 382
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    .line 383
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    return-void
.end method

.method public onImageFinish(ZLjava/util/Map;)V
    .registers 3

    return-void
.end method

.method public recycled()V
    .registers 4

    .line 305
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    .line 307
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 308
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    goto :goto_29

    .line 311
    :cond_1e
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "Error getImgLoaderAdapter() == null"

    .line 314
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_29
    return-void

    .line 312
    :cond_2a
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v1, "getImgLoaderAdapter() == null"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    .line 166
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 167
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v0, :cond_12

    .line 168
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/WXAttr;->getImageSrc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public save(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 422
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_22

    .line 423
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 428
    :cond_22
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "errorDesc"

    const-string v2, "success"

    const/4 v3, 0x0

    if-eqz v0, :cond_48

    if-eqz p1, :cond_47

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Permission denied: android.permission.WRITE_EXTERNAL_STORAGE"

    .line 432
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_47
    return-void

    .line 438
    :cond_48
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    if-nez v0, :cond_63

    if-eqz p1, :cond_62

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Image component not initialized"

    .line 442
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_62
    return-void

    .line 448
    :cond_63
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    if-eqz v0, :cond_7e

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_7e

    .line 458
    :cond_70
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    const v1, -0x70708

    new-instance v2, Lcom/taobao/weex/ui/component/WXImage$2;

    invoke-direct {v2, p0, p1}, Lcom/taobao/weex/ui/component/WXImage$2;-><init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-static {v0, v3, v1, v2}, Lcom/taobao/weex/utils/WXViewToImageUtil;->generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V

    return-void

    :cond_7e
    :goto_7e
    if-eqz p1, :cond_94

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 451
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Image does not have the correct src"

    .line 452
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_94
    return-void
.end method

.method protected setImage(Ljava/lang/String;Lcom/taobao/weex/common/WXImageStrategy;)V
    .registers 6

    .line 368
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 370
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 371
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v2

    .line 370
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    :cond_17
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 7

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_b8

    goto :goto_4f

    :sswitch_e
    const-string v0, "resizeMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4f

    :cond_17
    const/4 v3, 0x5

    goto :goto_4f

    :sswitch_19
    const-string v0, "imageQuality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_4f

    :cond_22
    const/4 v3, 0x4

    goto :goto_4f

    :sswitch_24
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v3, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v3, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v3, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v0, "autoBitmapRecycle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    const/4 v0, 0x0

    packed-switch v3, :pswitch_data_d2

    .line 160
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 131
    :pswitch_58
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 132
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResizeMode(Ljava/lang/String;)V

    :cond_61
    :pswitch_61
    return v2

    .line 139
    :pswitch_62
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 140
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    :cond_6b
    return v2

    .line 135
    :pswitch_6c
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 136
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResize(Ljava/lang/String;)V

    :cond_75
    return v2

    :pswitch_76
    if-eqz p2, :cond_82

    .line 152
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_82

    .line 153
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v1

    .line 155
    :cond_82
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8f

    .line 156
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/component/WXImage;->setBlurRadius(Ljava/lang/String;I)V

    :cond_8f
    return v2

    .line 145
    :pswitch_90
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-nez p1, :cond_b7

    .line 146
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_b7

    .line 147
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p2, "wxImgUnRecycleCount"

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_b7
    return v2

    :sswitch_data_b8
    .sparse-switch
        -0x4ca1830b -> :sswitch_45
        -0x4bf73488 -> :sswitch_3a
        -0x37b2634c -> :sswitch_2f
        0x1bde4 -> :sswitch_24
        0x4a798324 -> :sswitch_19
        0x7a2cd077 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_90
        :pswitch_76
        :pswitch_6c
        :pswitch_62
        :pswitch_61
        :pswitch_58
    .end packed-switch
.end method

.method public setResize(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resize"
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->setResizeMode(Ljava/lang/String;)V

    return-void
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resizeMode"
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 175
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->runSrc(Ljava/lang/String;)V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 388
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 389
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXImage.AnonymousClass1 (com.taobao.weex.ui.component.WXImage$1)
.class final Lcom/taobao/weex/ui/component/WXImage$1;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage$1;->map(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

###### Class com.taobao.weex.ui.component.WXImage.AnonymousClass2 (com.taobao.weex.ui.component.WXImage$2)
.class Lcom/taobao/weex/ui/component/WXImage$2;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXImage;->save(Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;

.field final synthetic val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveFailed(Ljava/lang/String;)V
    .registers 5

    .line 470
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_1d

    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 472
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorDesc"

    .line 473
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public onSaveSucceed(Ljava/lang/String;)V
    .registers 4

    .line 461
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_18

    .line 462
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 463
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "success"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage$2;->val$saveStatuCallback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXImage.Creator (com.taobao.weex.ui.component.WXImage$Creator)
.class public Lcom/taobao/weex/ui/component/WXImage$Creator;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/taobao/weex/ui/component/WXImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXImage.Measurable (com.taobao.weex.ui.component.WXImage$Measurable)
.class public interface abstract Lcom/taobao/weex/ui/component/WXImage$Measurable;
.super Ljava/lang/Object;
.source "WXImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Measurable"
.end annotation


# virtual methods
.method public abstract getNaturalHeight()I
.end method

.method public abstract getNaturalWidth()I
.end method

###### Class com.taobao.weex.ui.component.WXImage.MyImageListener (com.taobao.weex.ui.component.WXImage$MyImageListener)
.class public Lcom/taobao/weex/ui/component/WXImage$MyImageListener;
.super Ljava/lang/Object;
.source "WXImage.java"

# interfaces
.implements Lcom/taobao/weex/common/WXImageStrategy$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyImageListener"
.end annotation


# instance fields
.field private rewritedStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXImage;

.field private wxImageWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/ui/component/WXImage;Ljava/lang/String;)V
    .registers 4

    .line 553
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->wxImageWeakReference:Ljava/lang/ref/WeakReference;

    .line 555
    iput-object p3, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->rewritedStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V
    .registers 11

    .line 560
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->wxImageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXImage;

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string v0, "error"

    const-string v1, "success"

    if-nez p4, :cond_22

    .line 567
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    .line 568
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/component/WXImage;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 572
    :cond_22
    invoke-virtual {p1, p3, p4}, Lcom/taobao/weex/ui/component/WXImage;->onImageFinish(ZLjava/util/Map;)V

    .line 574
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 575
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "width"

    .line 576
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "height"

    .line 577
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->this$0:Lcom/taobao/weex/ui/component/WXImage;

    iget-boolean p4, p4, Lcom/taobao/weex/ui/component/WXImage;->mIsUni:Z

    const-string v4, "detail"

    const-string v5, "load"

    if-eqz p4, :cond_78

    if-nez p3, :cond_61

    .line 579
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXImage;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_61

    .line 580
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p1, v0, v2}, Lcom/taobao/weex/ui/component/WXImage;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_61
    const/4 p4, 0x1

    if-ne p3, p4, :cond_8b

    .line 584
    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/component/WXImage;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8b

    .line 585
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-virtual {p1, v5, v2}, Lcom/taobao/weex/ui/component/WXImage;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8b

    .line 590
    :cond_78
    invoke-virtual {p1, v5}, Lcom/taobao/weex/ui/component/WXImage;->containsEvent(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8b

    .line 591
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-virtual {p1, v5, v2}, Lcom/taobao/weex/ui/component/WXImage;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 597
    :cond_8b
    :goto_8b
    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXImage$MyImageListener;->rewritedStr:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/taobao/weex/ui/component/WXImage;->access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
