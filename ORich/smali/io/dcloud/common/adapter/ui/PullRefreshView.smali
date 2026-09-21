###### Class io.dcloud.common.adapter.ui.PullRefreshView (io.dcloud.common.adapter.ui.PullRefreshView)
.class public Lio/dcloud/common/adapter/ui/PullRefreshView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final FLAG_MOVEED:B = 0x1t

.field static final FLAG_NO_THING:B = -0x1t

.field static final FLAG_STARTED:B = 0x0t

.field static HEIGHT:I = 0x19

.field static MAX_FRAME_COUNT:I = 0x9

.field static final STATE_NO_REFRESH:B = 0x0t

.field static final STATE_ON_MOVE_ING:B = 0x1t

.field static final STATE_ON_OVER:B = 0x2t

.field static final STATE_ON_REFRESH_ING:B = 0x3t

.field public static final TAG:Ljava/lang/String; = "PullRefreshView"

.field public static final TYPE_PULL_DOWN_REFRESH:B = 0x1t

.field public static final TYPE_PULL_UP_REFRESH:B = 0x0t

.field static final color_tr:I = 0xff00f0


# instance fields
.field SCROLL_STATE_MAX:B

.field SCROLL_STATE_MIDDLE:B

.field SCROLL_STATE_MIN:B

.field changeStateHeight:I

.field private contentLeft:I

.field private contentTop:I

.field private contentWidth:I

.field private dst:Landroid/graphics/RectF;

.field fontSize:I

.field icon_x:I

.field icon_y:I

.field index:I

.field lastScrollY:F

.field mCaptureTouchEnd:Z

.field mContent_down:Ljava/lang/String;

.field mContent_over:Ljava/lang/String;

.field mContent_refresh:Ljava/lang/String;

.field mEnableScrollMaxHeight:Z

.field mEnableScrollMinHeight:Z

.field mFlag:B

.field mFontScale:F

.field mIcon:Landroid/graphics/Bitmap;

.field mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

.field mRefreshState:Z

.field mScrollHeight:I

.field mScrollState:B

.field mSecInfo:Ljava/lang/String;

.field mShowContent:Ljava/lang/String;

.field mState:B

.field mType:B

.field mUpdateProgressBar:Ljava/util/Timer;

.field mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

.field private mWebviewScale:F

.field maxPullHeight:I

.field paint:Landroid/graphics/Paint;

.field sScreenHeight:I

.field sScreenWidth:I

.field private src:Landroid/graphics/Rect;

.field startX:F

.field startY:F

.field touch_started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaWebview;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mType:B

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mShowContent:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mSecInfo:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mIcon:Landroid/graphics/Bitmap;

    const v2, 0x3f99999a    # 1.2f

    .line 13
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFontScale:F

    const/16 v2, 0x64

    .line 14
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    .line 15
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    .line 35
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->index:I

    .line 121
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentLeft:I

    .line 122
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentTop:I

    .line 123
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentWidth:I

    .line 130
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    .line 131
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->touch_started:Z

    .line 132
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mCaptureTouchEnd:Z

    .line 136
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    .line 186
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 187
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIN:B

    .line 188
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MAX:B

    const/4 v3, 0x2

    .line 189
    iput-byte v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIDDLE:B

    .line 190
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollState:B

    .line 192
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMinHeight:Z

    .line 194
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMaxHeight:Z

    .line 271
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mRefreshState:Z

    .line 272
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mUpdateProgressBar:Ljava/util/Timer;

    .line 273
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 274
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    .line 275
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lio/dcloud/base/R$string;->dcloud_drop_down_refresh1:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_down:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lio/dcloud/base/R$string;->dcloud_drop_down_refresh2:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_over:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lio/dcloud/base/R$string;->dcloud_drop_down_refresh3:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_refresh:Ljava/lang/String;

    .line 278
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->sScreenWidth:I

    .line 279
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->sScreenHeight:I

    .line 280
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->getScale()F

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebviewScale:F

    .line 281
    invoke-virtual {p0, v1}, Lio/dcloud/common/adapter/ui/PullRefreshView;->init(Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;II)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/common/adapter/ui/PullRefreshView;->scrollToByMessage(Landroid/view/View;II)V

    return-void
.end method

.method private static scrollToByMessage(Landroid/view/View;II)V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/adapter/ui/PullRefreshView$3;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static smoothScrollTo(Landroid/view/ViewGroup;Landroid/view/View;III)V
    .registers 13

    .line 1
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 2
    new-instance v7, Lio/dcloud/common/adapter/ui/PullRefreshView$2;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/PullRefreshView$2;-><init>(Landroid/view/View;Landroid/view/ViewGroup;IILjava/util/Timer;)V

    int-to-long v4, p4

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startUpdateScreenTimer()V
    .registers 7

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->stopUpdateScreenTimer()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mUpdateProgressBar:Ljava/util/Timer;

    .line 3
    new-instance v1, Lio/dcloud/common/adapter/ui/PullRefreshView$1;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/PullRefreshView$1;-><init>(Lio/dcloud/common/adapter/ui/PullRefreshView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopUpdateScreenTimer()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mUpdateProgressBar:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mUpdateProgressBar:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method private updateScrollState(B)Z
    .registers 5

    .line 1
    iput-byte p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollState:B

    .line 2
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MAX:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_16

    .line 3
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 4
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMaxHeight:Z

    if-eqz p1, :cond_13

    .line 6
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMaxHeight:Z

    const/4 v1, 0x1

    .line 8
    :cond_13
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMinHeight:Z

    goto :goto_2e

    .line 9
    :cond_16
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIN:B

    if-ne p1, v0, :cond_25

    .line 10
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMaxHeight:Z

    .line 11
    iput v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 12
    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMinHeight:Z

    if-eqz p1, :cond_2e

    .line 14
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMinHeight:Z

    goto :goto_2d

    .line 16
    :cond_25
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIDDLE:B

    if-ne p1, v0, :cond_2e

    .line 17
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMinHeight:Z

    .line 18
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mEnableScrollMaxHeight:Z

    :goto_2d
    const/4 v1, 0x1

    :cond_2e
    :goto_2e
    return v1
.end method


# virtual methods
.method public changeStringInfo(Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mShowContent:Ljava/lang/String;

    .line 2
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->DEFAULT_FONT_SIZE:F

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDensity:F

    mul-float v0, v0, v1

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFontScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->fontSize:I

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 5
    new-array v1, v0, [F

    .line 6
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_22
    if-ge v2, v0, :cond_2a

    .line 9
    aget v3, v1, v2

    add-float/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2a
    float-to-int p1, p1

    .line 11
    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentWidth:I

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .registers 6

    .line 1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const-string v1, "res/dcloud_prograss_snow1.png"

    .line 3
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mIcon:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sput v1, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    .line 10
    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->sScreenWidth:I

    int-to-float v2, v2

    const v3, 0x3edc28f6    # 0.43f

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentLeft:I

    const v3, 0x3ed1eb85    # 0.41f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sub-int/2addr v2, v1

    .line 11
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->icon_x:I

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    invoke-direct {v1, v0, v0, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->src:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    sget v1, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x43160000    # 150.0f

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->dst:Landroid/graphics/RectF;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sget v0, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    div-int/2addr p1, v0

    sput p1, Lio/dcloud/common/adapter/ui/PullRefreshView;->MAX_FRAME_COUNT:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    if-eqz v0, :cond_33

    const v0, -0x1d1d1e

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->fontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mShowContent:Ljava/lang/String;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentLeft:I

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentTop:I

    int-to-float v2, v2

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_33

    .line 7
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->src:Landroid/graphics/Rect;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->dst:Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_33
    return-void
.end method

.method onExecuting()V
    .registers 6

    const-string v0, "PullRefreshView"

    const-string v1, "onExecuting"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 2
    iput-byte v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mRefreshState:Z

    const/4 v2, -0x1

    .line 4
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    const-string v2, "onExecuting; mFlag = FLAG_NO_THING"

    .line 5
    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_refresh:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStringInfo(Ljava/lang/String;)V

    .line 7
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    neg-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2, v1}, Lio/dcloud/common/adapter/ui/PullRefreshView;->smoothScrollTo(Landroid/view/ViewGroup;Landroid/view/View;III)V

    return-void
.end method

.method onMove(FF)Z
    .registers 10

    .line 1
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->lastScrollY:F

    sub-float p1, p2, p1

    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_37

    .line 4
    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    if-lez p2, :cond_23

    const/4 v1, 0x1

    goto/16 :goto_9a

    :cond_23
    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p2, p1, p2

    if-gtz p2, :cond_30

    const/high16 p2, -0x41000000    # -0.5f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9a

    .line 8
    :cond_30
    iget-byte p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    if-nez p1, :cond_9a

    .line 9
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    goto :goto_9a

    .line 15
    :cond_37
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 17
    iget v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    if-lt v0, v3, :cond_47

    .line 18
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MAX:B

    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->updateScrollState(B)Z

    move-result v0

    goto :goto_56

    :cond_47
    if-gtz v0, :cond_50

    .line 20
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIN:B

    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->updateScrollState(B)Z

    move-result v0

    goto :goto_56

    .line 22
    :cond_50
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->SCROLL_STATE_MIDDLE:B

    invoke-direct {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->updateScrollState(B)Z

    move-result v0

    .line 24
    :goto_56
    iget-byte v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7b

    const/4 v4, 0x2

    if-ne v3, v2, :cond_6c

    .line 25
    iget v5, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    iget v6, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    if-lt v5, v6, :cond_6c

    .line 26
    iput-byte v4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    .line 27
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_over:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStringInfo(Ljava/lang/String;)V

    goto :goto_7b

    :cond_6c
    if-ne v3, v4, :cond_7b

    .line 28
    iget v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    iget v4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    if-ge v3, v4, :cond_7b

    .line 29
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    .line 30
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_down:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStringInfo(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    if-eqz v0, :cond_99

    .line 35
    iget-byte v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    if-nez v3, :cond_8d

    .line 36
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    const-string v2, "PullRefreshView"

    const-string v3, "onMove; mFlag=FLAG_MOVEED"

    .line 37
    invoke-static {v2, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->startUpdateScreenTimer()V

    .line 41
    :cond_8d
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    neg-int p1, p1

    invoke-virtual {v2, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 42
    iput p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->lastScrollY:F

    :cond_99
    move v1, v0

    :cond_9a
    :goto_9a
    return v1
.end method

.method onPullDown_end()V
    .registers 4

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2e

    .line 2
    iput-byte v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    .line 3
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    const-string v0, "PullRefreshView"

    const-string v1, "onPullDown_end; mFlag = FLAG_NO_THING"

    .line 5
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_down:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStringInfo(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mUpdateProgressBar:Ljava/util/Timer;

    if-eqz v0, :cond_21

    .line 8
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 10
    :cond_21
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 11
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->stopUpdateScreenTimer()V

    goto :goto_32

    :cond_2e
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->smoothScrollToStateHeight(Z)V

    .line 16
    :goto_32
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mRefreshState:Z

    return-void
.end method

.method onPullDown_start(FF)V
    .registers 8

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->touch_started:Z

    if-nez v0, :cond_45

    const-string v0, "PullRefreshView"

    const-string v1, "onPullDown_start"

    .line 2
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->startX:F

    .line 4
    iput p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->startY:F

    iput p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->lastScrollY:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_34

    .line 6
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v3, v2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    sub-int/2addr v2, v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_34
    iget-byte p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    const/4 v0, 0x1

    if-nez p1, :cond_3e

    .line 11
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mState:B

    .line 12
    iput-byte p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    goto :goto_43

    :cond_3e
    const/4 v1, 0x3

    if-ne p1, v1, :cond_43

    .line 14
    iput-byte p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mFlag:B

    .line 16
    :cond_43
    :goto_43
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->touch_started:Z

    :cond_45
    return-void
.end method

.method public parseJsonOption(Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "contentrefresh"

    const-string v1, "contentover"

    const-string v2, "contentdown"

    const-string v3, "range"

    const-string v4, "height"

    .line 1
    :try_start_a
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 3
    invoke-static {p1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v5, v5, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v5, v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v6, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    iget v7, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebviewScale:F

    invoke-static {v4, v5, v6, v7}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 4
    iput v4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    iput v4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    .line 6
    :cond_28
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebview:Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaWebview;->mFrameView:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-object v4, v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget v5, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    iget v6, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mWebviewScale:F

    invoke-static {v3, v4, v5, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    .line 9
    iput v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    .line 11
    :cond_44
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_48} :catch_d8

    const-string v4, "caption"

    if-nez v3, :cond_57

    .line 13
    :try_start_4c
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0, v2}, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStringInfo(Ljava/lang/String;)V

    .line 16
    :cond_57
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_over:Ljava/lang/String;

    .line 21
    :cond_67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mContent_refresh:Ljava/lang/String;

    .line 27
    :cond_77
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 28
    sget-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 29
    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v0

    shr-int/lit8 v0, v3, 0x1

    add-int/2addr v2, v0

    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->contentTop:I

    .line 30
    sget v0, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    sub-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->icon_y:I

    .line 31
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->dst:Landroid/graphics/RectF;

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->icon_x:I

    int-to-float v3, v2

    int-to-float v4, p1

    add-int/2addr v2, v0

    int-to-float v2, v2

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {v1, v3, v4, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_ab} :catch_d8

    const-string p1, "PullRefreshView"

    .line 32
    :try_start_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->maxPullHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";contentdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mShowContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception p1

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_dc
    return-void
.end method

.method setColorByParentChild(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const v1, 0xff00f0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method smoothScrollToStateHeight(Z)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    .line 1
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mParent:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->smoothScrollTo(Landroid/view/ViewGroup;Landroid/view/View;III)V

    goto :goto_24

    .line 4
    :cond_18
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mScrollHeight:I

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->changeStateHeight:I

    if-le p1, v2, :cond_22

    .line 5
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->smoothScrollToStateHeight(Z)V

    goto :goto_24

    .line 7
    :cond_22
    iput-boolean v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->mRefreshState:Z

    :goto_24
    return-void
.end method

.method public updateScreen()V
    .registers 6

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->index:I

    .line 2
    sget v1, Lio/dcloud/common/adapter/ui/PullRefreshView;->MAX_FRAME_COUNT:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_d

    .line 3
    iput v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->index:I

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->src:Landroid/graphics/Rect;

    sget v1, Lio/dcloud/common/adapter/ui/PullRefreshView;->HEIGHT:I

    iget v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView;->index:I

    mul-int v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.PullRefreshView.AnonymousClass1 (io.dcloud.common.adapter.ui.PullRefreshView$1)
.class Lio/dcloud/common/adapter/ui/PullRefreshView$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/PullRefreshView;->startUpdateScreenTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/PullRefreshView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/PullRefreshView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$1;->this$0:Lio/dcloud/common/adapter/ui/PullRefreshView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$1;->this$0:Lio/dcloud/common/adapter/ui/PullRefreshView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/PullRefreshView;->updateScreen()V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.PullRefreshView.AnonymousClass2 (io.dcloud.common.adapter.ui.PullRefreshView$2)
.class final Lio/dcloud/common/adapter/ui/PullRefreshView$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/PullRefreshView;->smoothScrollTo(Landroid/view/ViewGroup;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final TIME:I

.field child:Landroid/view/View;

.field flagTimes:I

.field fromX:I

.field fromY:I

.field parent:Landroid/view/ViewGroup;

.field timesCount:I

.field toX:I

.field toY:I

.field vX:I

.field vY:I

.field final synthetic val$_timer:Ljava/util/Timer;

.field final synthetic val$pParent:Landroid/view/ViewGroup;

.field final synthetic val$pView:Landroid/view/View;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;IILjava/util/Timer;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$pView:Landroid/view/View;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$pParent:Landroid/view/ViewGroup;

    iput p3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$x:I

    iput p4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$y:I

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$_timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->child:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->parent:Landroid/view/ViewGroup;

    const/16 p1, 0x1f4

    .line 4
    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->TIME:I

    .line 5
    iput p3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toX:I

    .line 6
    iput p4, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toY:I

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromX:I

    .line 8
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromY:I

    const/16 p1, 0xa

    .line 9
    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->flagTimes:I

    .line 11
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toX:I

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromX:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vX:I

    .line 12
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toY:I

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromY:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vY:I

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5d

    .line 15
    iput p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vY:I

    .line 16
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toY:I

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromY:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vY:I

    div-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    .line 18
    :cond_5d
    iget p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toX:I

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromX:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    div-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vX:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromX:I

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vX:I

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromY:I

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->vY:I

    add-int/2addr v1, v2

    .line 3
    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->flagTimes:I

    iget v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    if-ne v2, v3, :cond_14

    .line 4
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toX:I

    .line 5
    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->toY:I

    .line 8
    :cond_14
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->parent:Landroid/view/ViewGroup;

    invoke-static {v2, v0, v1}, Lio/dcloud/common/adapter/ui/PullRefreshView;->access$000(Landroid/view/View;II)V

    .line 9
    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->flagTimes:I

    iget v3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->timesCount:I

    if-ne v2, v3, :cond_32

    .line 10
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->child:Landroid/view/View;

    if-eqz v2, :cond_2d

    .line 11
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->parent:Landroid/view/ViewGroup;

    new-instance v3, Lio/dcloud/common/adapter/ui/PullRefreshView$2$1;

    invoke-direct {v3, p0}, Lio/dcloud/common/adapter/ui/PullRefreshView$2$1;-><init>(Lio/dcloud/common/adapter/ui/PullRefreshView$2;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_2d
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->val$_timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 20
    :cond_32
    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromX:I

    .line 21
    iput v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->fromY:I

    .line 22
    iget v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->flagTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->flagTimes:I

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.PullRefreshView.AnonymousClass2.AnonymousClass1 (io.dcloud.common.adapter.ui.PullRefreshView$2$1)
.class Lio/dcloud/common/adapter/ui/PullRefreshView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/PullRefreshView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/PullRefreshView$2;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/PullRefreshView$2;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2$1;->this$0:Lio/dcloud/common/adapter/ui/PullRefreshView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$2$1;->this$0:Lio/dcloud/common/adapter/ui/PullRefreshView$2;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->parent:Landroid/view/ViewGroup;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/PullRefreshView$2;->child:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.PullRefreshView.AnonymousClass3 (io.dcloud.common.adapter.ui.PullRefreshView$3)
.class final Lio/dcloud/common/adapter/ui/PullRefreshView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/PullRefreshView;->scrollToByMessage(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$view:Landroid/view/View;

    iput p2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$x:I

    iput p3, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$view:Landroid/view/View;

    iget v1, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$x:I

    iget v2, p0, Lio/dcloud/common/adapter/ui/PullRefreshView$3;->val$y:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
