###### Class io.dcloud.common.core.ui.DCKeyboardManager (io.dcloud.common.core.ui.DCKeyboardManager)
.class public Lio/dcloud/common/core/ui/DCKeyboardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String; = "nothing"

.field public static SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String; = "adjustPan"

.field public static SOFT_INPUT_MODE_ADJUST_RESIZE:Ljava/lang/String; = "adjustResize"

.field public static instance:Lio/dcloud/common/core/ui/DCKeyboardManager;


# instance fields
.field EVENTS_DOCUMENT_KEYBOARD:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isAdjust:Z

.field isAdministration:Z

.field private isAllScreen:Z

.field private isNativeFocus:Z

.field isNativeUpDate:Z

.field private keyBoardHideRunnable:Ljava/lang/Runnable;

.field private keyBoardShowRunnable:Ljava/lang/Runnable;

.field private mActivitySoftInputMode:Ljava/lang/String;

.field private mContentView:Landroid/view/View;

.field private mDHAppRoot:Lio/dcloud/common/core/ui/a;

.field private mFocusTop:F

.field private mFrontInputType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHtmlInputFT:F

.field mInputMode:Ljava/lang/String;

.field private mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

.field private mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mNaiveCursorSpacing:F

.field private mNativeView:Landroid/view/View;

.field mOrientation:I

.field private mRootContentView:Landroid/view/View;

.field private mSoftAc:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field rootViewVisibleHeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DCKeyboardManager"

    .line 2
    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeFocus:Z

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    const-string v3, "text"

    .line 22
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFrontInputType:Ljava/lang/String;

    const-string v3, ""

    .line 23
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mActivitySoftInputMode:Ljava/lang/String;

    const/16 v3, -0x64

    .line 27
    iput v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mOrientation:I

    const/4 v3, 0x1

    .line 28
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    .line 29
    iput-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    .line 31
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdministration:Z

    .line 38
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAllScreen:Z

    .line 39
    iput-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mSoftAc:Ljava/lang/ref/SoftReference;

    const/high16 v2, -0x40800000    # -1.0f

    .line 212
    iput v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    .line 267
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    .line 268
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNaiveCursorSpacing:F

    const-string v0, "javascript:(function(){if(!((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus)){window.__load__plus__&&window.__load__plus__();}var e = document.createEvent(\'HTMLEvents\');var evt = \'%s\';e.initEvent(evt, false, true); e.height = %d;/*console.log(\'dispatch \' + evt + \' event\');*/document.dispatchEvent(e);})();"

    .line 430
    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->EVENTS_DOCUMENT_KEYBOARD:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mRootContentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/common/core/ui/DCKeyboardManager;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAllScreen:Z

    return p0
.end method

.method static synthetic access$300(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/os/Handler;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardHideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardHideRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lio/dcloud/common/core/ui/DCKeyboardManager;)Lio/dcloud/common/core/ui/a;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/common/core/ui/DCKeyboardManager;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getKeyBoardHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lio/dcloud/common/core/ui/DCKeyboardManager;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    return p0
.end method

.method private fireKeyboardEvent(Lio/dcloud/common/DHInterface/IFrameView;I)V
    .registers 10

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_31

    int-to-float v0, p2

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 3
    iget-object v4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->EVENTS_DOCUMENT_KEYBOARD:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "keyboardchange"

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 6
    :cond_31
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "__uniapp__service"

    aput-object v4, v0, v2

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p2

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v5, v1

    const-string p1, "onKeyboardHeightChange"

    aput-object p1, v5, v3

    const/4 p1, 0x3

    aput-object v0, v5, p1

    const/16 p1, 0xa

    invoke-interface {p2, v4, p1, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_66
    return-void
.end method

.method private getActivityInput(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_29

    const/16 v0, 0x30

    if-eq p1, v0, :cond_26

    const-string p1, "DCLOUD_INPUT_MODE"

    .line 12
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    return-object p1

    .line 16
    :cond_23
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_RESIZE:Ljava/lang/String;

    return-object p1

    .line 17
    :cond_26
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    return-object p1

    .line 18
    :cond_29
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    return-object p1

    .line 21
    :cond_2c
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_RESIZE:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->instance:Lio/dcloud/common/core/ui/DCKeyboardManager;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-direct {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;-><init>()V

    sput-object v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->instance:Lio/dcloud/common/core/ui/DCKeyboardManager;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->instance:Lio/dcloud/common/core/ui/DCKeyboardManager;

    return-object v0
.end method

.method private getKeyBoardHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mSoftAc:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_39

    .line 4
    :cond_f
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mSoftAc:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 9
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v0, :cond_37

    .line 11
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v0, v1

    if-gt v0, v2, :cond_37

    move v1, v0

    :cond_37
    sub-int/2addr v2, v1

    return v2

    :cond_39
    :goto_39
    const/4 v0, 0x0

    return v0
.end method

.method private static getScrollView(Landroid/view/View;)Landroid/view/View;
    .registers 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 4
    :try_start_6
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    const/4 v0, 0x0

    .line 9
    :goto_e
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 10
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_28

    if-eqz v2, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_28
    :cond_28
    return-object v1
.end method

.method private keyboardHide(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    new-instance v1, Lio/dcloud/common/core/ui/DCKeyboardManager$d;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/dcloud/common/core/ui/DCKeyboardManager$d;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/String;Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private keyboardShow(Landroid/view/View;ILjava/lang/String;Z)V
    .registers 7

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    if-nez v0, :cond_e

    return-void

    .line 7
    :cond_e
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 8
    sget-object v1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_RESIZE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 9
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    sub-int/2addr v0, p2

    .line 10
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2b
    sub-int/2addr v0, p2

    if-nez p4, :cond_32

    .line 17
    iget p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    iput p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    :cond_32
    const/4 p2, 0x0

    .line 21
    sget-boolean p3, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-eqz p3, :cond_3c

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p3

    sub-float/2addr p2, p3

    :cond_3c
    int-to-float p3, v0

    .line 26
    iget p4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    sub-float/2addr p4, p2

    cmpg-float p2, p3, p4

    if-gez p2, :cond_4e

    .line 27
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    new-instance p3, Lio/dcloud/common/core/ui/DCKeyboardManager$e;

    invoke-direct {p3, p0, v0, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager$e;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager;ILandroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4e
    return-void
.end method


# virtual methods
.method public dhAppRootIsReady(Lio/dcloud/common/core/ui/a;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdministration:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    .line 5
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getFrameSoftInputMode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->softinputMode:Ljava/lang/String;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public getFrontInputType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFrontInputType:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeInput()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    return-object v0
.end method

.method public isTakeOver()Z
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getFrameSoftInputMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2
    sget-object v1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public nativeEditTextFocus(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;F)V
    .registers 9

    .line 1
    iput-boolean p3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeFocus:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    .line 4
    iput-object p4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    if-eqz p3, :cond_79

    .line 6
    iput-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    .line 7
    iput p5, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNaiveCursorSpacing:F

    .line 8
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    if-eqz p2, :cond_57

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_57

    .line 9
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object p2

    if-nez p2, :cond_23

    return-void

    :cond_23
    new-array p3, v0, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p1, p3, p5

    .line 14
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    aput-object p2, v2, p5

    const-string p2, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p2, v2, v0

    const/4 p2, 0x2

    const-string p5, "findWebviewByInstanceId"

    aput-object p5, v2, p2

    const/4 p2, 0x3

    aput-object p3, v2, p2

    const/16 p2, 0xa

    invoke-interface {p1, v1, p2, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 15
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_57

    .line 16
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    .line 19
    :cond_57
    sget-object p1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    return-void

    .line 23
    :cond_60
    sget-boolean p1, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-eqz p1, :cond_79

    .line 24
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6d

    .line 25
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    :cond_6d
    new-instance p1, Lio/dcloud/common/core/ui/DCKeyboardManager$c;

    invoke-direct {p1, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager$c;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager;)V

    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    .line 34
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_79
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getActivityInput(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mActivitySoftInputMode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdministration:Z

    .line 3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mSoftAc:Ljava/lang/ref/SoftReference;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mOrientation:I

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mRootContentView:Landroid/view/View;

    .line 7
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 9
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    goto :goto_4b

    .line 10
    :cond_3e
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IActivityDelegate;

    if-eqz v0, :cond_4b

    .line 11
    move-object v0, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IActivityDelegate;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    .line 14
    :cond_4b
    :goto_4b
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isAllScreenDevice(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAllScreen:Z

    .line 15
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->updateStatusBarHeight(Landroid/app/Activity;)V

    .line 16
    new-instance v0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager$a;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager;Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public onKeyboardChanged(IZ)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    if-nez v0, :cond_a

    return-void

    .line 7
    :cond_a
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mActivitySoftInputMode:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_RESIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 10
    :cond_15
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mDHAppRoot:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 15
    :cond_1e
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 16
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getFrameSoftInputMode()Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    :cond_2c
    if-eqz p2, :cond_47

    .line 20
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p2, :cond_3e

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 21
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-direct {p0, p2, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->fireKeyboardEvent(Lio/dcloud/common/DHInterface/IFrameView;I)V

    goto :goto_47

    .line 22
    :cond_3e
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 23
    invoke-direct {p0, v0, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->fireKeyboardEvent(Lio/dcloud/common/DHInterface/IFrameView;I)V

    :cond_47
    :goto_47
    const/4 p2, 0x1

    if-le p1, p2, :cond_70

    .line 27
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    sget-object v2, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 28
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    if-eqz v0, :cond_6f

    instance-of v1, v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    if-eqz v1, :cond_6f

    .line 29
    check-cast v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 30
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    check-cast v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;->onChange(ZI)V

    :cond_6f
    return-void

    .line 35
    :cond_70
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 37
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v3, 0x0

    if-eqz v2, :cond_8f

    .line 38
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-nez v2, :cond_84

    .line 40
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    return-void

    .line 43
    :cond_84
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v2

    goto :goto_a6

    .line 46
    :cond_8f
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->getChilds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_9e

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    goto :goto_a6

    :cond_9e
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v2

    :goto_a6
    const/4 v4, 0x0

    if-gtz p1, :cond_dc

    .line 51
    :try_start_a9
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    instance-of v5, v1, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    if-eqz v5, :cond_c2

    .line 52
    check-cast v1, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 53
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    check-cast v1, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v1

    invoke-interface {v1, v4, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;->onChange(ZI)V

    .line 57
    :cond_c2
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p1, :cond_c7

    goto :goto_d2

    :cond_c7
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->getChilds()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_d2

    goto :goto_d3

    :cond_d2
    :goto_d2
    move-object v0, v3

    .line 58
    :goto_d3
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v0, v2, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyboardHide(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/lang/String;)V

    .line 59
    iput-boolean p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    goto/16 :goto_15a

    .line 62
    :cond_dc
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeFocus:Z

    if-eqz v0, :cond_130

    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    if-eqz v0, :cond_130

    .line 63
    iget-boolean v5, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    if-eqz v5, :cond_111

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 65
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 66
    aget v0, v5, p2

    iget-object v5, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNaiveCursorSpacing:F

    add-float/2addr v0, v5

    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    int-to-float v1, v1

    cmpl-float v5, v0, v1

    if-lez v5, :cond_10f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 70
    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getScrollView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_10d

    .line 73
    invoke-virtual {v5, v4, v0}, Landroid/view/View;->scrollBy(II)V

    .line 75
    :cond_10d
    iput v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    .line 77
    :cond_10f
    iput-boolean v4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    .line 80
    :cond_111
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    instance-of v1, v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    if-eqz v1, :cond_12a

    .line 81
    check-cast v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 82
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    check-cast v0, Lio/dcloud/common/core/ui/keyboard/DCEditText;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/keyboard/DCEditText;->getKeyboardHeightChangeListener()Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lio/dcloud/common/core/ui/keyboard/DCEditText$OnKeyboardHeightChangeListener;->onChange(ZI)V

    .line 85
    :cond_12a
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v0, p2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyboardShow(Landroid/view/View;ILjava/lang/String;Z)V

    goto :goto_15a

    .line 87
    :cond_130
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    .line 88
    iput-boolean p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    .line 89
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    sget-object v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_150

    iget p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    int-to-float v0, v1

    cmpl-float v1, p2, v0

    if-lez v1, :cond_150

    sub-float/2addr p2, v0

    float-to-int p2, p2

    .line 92
    instance-of v1, v2, Landroid/webkit/WebView;

    if-eqz v1, :cond_14e

    .line 93
    invoke-virtual {v2, v4, p2}, Landroid/view/View;->scrollBy(II)V

    .line 95
    :cond_14e
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    .line 97
    :cond_150
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    invoke-direct {p0, v2, p1, p2, v4}, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyboardShow(Landroid/view/View;ILjava/lang/String;Z)V
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_155} :catch_156

    goto :goto_15a

    .line 101
    :catch_156
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    :goto_15a
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdministration:Z

    if-nez v0, :cond_5

    return-void

    .line 5
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_17

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mRootContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_22

    .line 8
    :cond_17
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mRootContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_22
    return-void
.end method

.method public setAdjust(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    return-void
.end method

.method public setContentView(Lio/dcloud/common/DHInterface/IActivityHandler;)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IActivityDelegate;->obtainActivityContentView()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mContentView:Landroid/view/View;

    :cond_8
    return-void
.end method

.method public setFrontInputType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFrontInputType:Ljava/lang/String;

    return-void
.end method

.method public setHTMLInputRect(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-boolean v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isAdjust:Z

    if-nez v1, :cond_6

    return-void

    .line 4
    :cond_6
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputRootFrame:Lio/dcloud/common/DHInterface/IFrameView;

    if-nez v1, :cond_f

    return-void

    .line 8
    :cond_f
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "position"

    .line 14
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v3, "mode"

    .line 15
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    iput-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    .line 17
    sget-object v3, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_NOTHING:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    return-void

    :cond_39
    const-string v1, "top"

    .line 20
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v3

    invoke-static {v1, v0, v0, v3}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v1

    const-string v3, "height"

    .line 21
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result p1

    invoke-static {p2, v0, v0, p1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p1

    add-float/2addr v1, p1

    const/4 p1, 0x1

    .line 22
    aget p1, v2, p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    .line 23
    iput v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    .line 24
    sget-boolean p1, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-eqz p1, :cond_84

    .line 25
    iget-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6c

    .line 26
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    :cond_6c
    new-instance p1, Lio/dcloud/common/core/ui/DCKeyboardManager$b;

    invoke-direct {p1, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager$b;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager;)V

    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->keyBoardShowRunnable:Ljava/lang/Runnable;

    .line 35
    iget-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_78} :catch_79

    goto :goto_84

    :catch_79
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mInputMode:Ljava/lang/String;

    .line 41
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mFocusTop:F

    .line 42
    iput v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mHtmlInputFT:F

    :cond_84
    :goto_84
    return-void
.end method

.method public setNativeInput(Landroid/view/View;F)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNativeView:Landroid/view/View;

    .line 2
    iput p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->mNaiveCursorSpacing:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager;->isNativeUpDate:Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.a (io.dcloud.common.core.ui.DCKeyboardManager$a)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lio/dcloud/common/core/ui/DCKeyboardManager;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager;Landroid/app/Activity;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iput-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 4
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$100(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 5
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iget v3, v2, Lio/dcloud/common/core/ui/DCKeyboardManager;->rootViewVisibleHeight:I

    if-nez v3, :cond_26

    .line 7
    iput v0, v2, Lio/dcloud/common/core/ui/DCKeyboardManager;->rootViewVisibleHeight:I

    return-void

    .line 10
    :cond_26
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->a:Landroid/app/Activity;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isFullScreen(Landroid/app/Activity;)Z

    move-result v2

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object v4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v4}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-nez v2, :cond_46

    .line 16
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v3

    if-gt v2, v1, :cond_46

    move v3, v2

    .line 19
    :cond_46
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$200(Lio/dcloud/common/core/ui/DCKeyboardManager;)Z

    move-result v2

    if-eqz v2, :cond_51

    div-int/lit8 v0, v0, 0x6

    goto :goto_53

    :cond_51
    div-int/lit8 v0, v0, 0x5

    .line 21
    :goto_53
    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iget v4, v2, Lio/dcloud/common/core/ui/DCKeyboardManager;->rootViewVisibleHeight:I

    if-ne v4, v3, :cond_5a

    return-void

    :cond_5a
    sub-int/2addr v1, v3

    if-le v1, v0, :cond_8c

    .line 29
    :try_start_5d
    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$300(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 30
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$400(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$300(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    :cond_72
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    new-instance v2, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;

    invoke-direct {v2, p0, v1}, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager$a;I)V

    invoke-static {v0, v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$302(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 43
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$400(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$300(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_ba

    .line 46
    :cond_8c
    invoke-static {v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$500(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 47
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$400(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$500(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    :cond_a1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    new-instance v1, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;-><init>(Lio/dcloud/common/core/ui/DCKeyboardManager$a;)V

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$502(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 61
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$400(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$500(Lio/dcloud/common/core/ui/DCKeyboardManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :goto_ba
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iput v3, v0, Lio/dcloud/common/core/ui/DCKeyboardManager;->rootViewVisibleHeight:I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c3
    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.a.RunnableC0028a (io.dcloud.common.core.ui.DCKeyboardManager$a$a)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager$a;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/dcloud/common/core/ui/DCKeyboardManager$a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager$a;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    iput p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iget v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onKeyboardChanged(IZ)V

    .line 2
    sput-boolean v2, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    .line 3
    sput-boolean v2, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    .line 4
    iget v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$a;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sput v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sInputMethodHeight:I

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.a.b (io.dcloud.common.core.ui.DCKeyboardManager$a$b)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager$a;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/DCKeyboardManager$a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    sget-boolean v1, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onKeyboardChanged(IZ)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$600(Lio/dcloud/common/core/ui/DCKeyboardManager;)Lio/dcloud/common/core/ui/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$a$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager$a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/DCKeyboardManager$a;->b:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$600(Lio/dcloud/common/core/ui/DCKeyboardManager;)Lio/dcloud/common/core/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->h()V

    :cond_1f
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    .line 6
    sput-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.b (io.dcloud.common.core.ui.DCKeyboardManager$b)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager;->setHTMLInputRect(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/DCKeyboardManager;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$700(Lio/dcloud/common/core/ui/DCKeyboardManager;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$b;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onKeyboardChanged(IZ)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.c (io.dcloud.common.core.ui.DCKeyboardManager$c)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager;->nativeEditTextFocus(Ljava/lang/String;Landroid/view/View;ZLjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/DCKeyboardManager;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$c;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$c;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$700(Lio/dcloud/common/core/ui/DCKeyboardManager;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$c;->a:Lio/dcloud/common/core/ui/DCKeyboardManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onKeyboardChanged(IZ)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.d (io.dcloud.common.core.ui.DCKeyboardManager$d)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager;->keyboardHide(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/common/adapter/ui/AdaFrameView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lio/dcloud/common/core/ui/DCKeyboardManager;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager;Ljava/lang/String;Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->d:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iput-object p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->b:Lio/dcloud/common/adapter/ui/AdaFrameView;

    iput-object p4, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->a:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/core/ui/DCKeyboardManager;->SOFT_INPUT_MODE_ADJUST_PAN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->b:Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v1, :cond_15

    .line 4
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 6
    :cond_15
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->c:Landroid/view/View;

    if-eqz v1, :cond_1d

    int-to-float v0, v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    :cond_1d
    iget-object v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->d:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$d;->d:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$000(Lio/dcloud/common/core/ui/DCKeyboardManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.DCKeyboardManager.e (io.dcloud.common.core.ui.DCKeyboardManager$e)
.class Lio/dcloud/common/core/ui/DCKeyboardManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/DCKeyboardManager;->keyboardShow(Landroid/view/View;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lio/dcloud/common/core/ui/DCKeyboardManager;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/DCKeyboardManager;ILandroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->c:Lio/dcloud/common/core/ui/DCKeyboardManager;

    iput p2, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->a:I

    iput-object p3, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->c:Lio/dcloud/common/core/ui/DCKeyboardManager;

    invoke-static {v1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->access$800(Lio/dcloud/common/core/ui/DCKeyboardManager;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/DCKeyboardManager$e;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
