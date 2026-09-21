###### Class io.dcloud.feature.nativeObj.TitleNView (io.dcloud.feature.nativeObj.TitleNView)
.class public Lio/dcloud/feature/nativeObj/TitleNView;
.super Lio/dcloud/feature/nativeObj/NativeView;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ITitleNView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;,
        Lio/dcloud/feature/nativeObj/TitleNView$Progress;,
        Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;,
        Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;,
        Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;,
        Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;
    }
.end annotation


# instance fields
.field private final CLOSE:Ljava/lang/String;

.field private final MENU:Ljava/lang/String;

.field private centerSearchLayout:Landroid/widget/LinearLayout;

.field private closeBt:Landroid/widget/TextView;

.field private isSetText:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

.field private mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

.field private mHomeButton:Landroid/widget/TextView;

.field protected mIWebviewStateListenerImpl:Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

.field private mLeftButtonLayout:Landroid/widget/LinearLayout;

.field private mMenuButtonFontSize:Ljava/lang/String;

.field private mMenuButtonFontWeight:Ljava/lang/String;

.field private mMenuButtonTextColor:I

.field private mMenuButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/nativeObj/data/ButtonDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

.field private mRightButtonLayout:Landroid/widget/LinearLayout;

.field private mSplitLine:Landroid/view/View;

.field private mTitleNViewLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;

.field private mTitlelayout:Landroid/widget/RelativeLayout;

.field public maxButton:I

.field private menuBt:Landroid/widget/TextView;

.field private redDotColor:I

.field private searchInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/nativeObj/NativeView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    .line 5
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    .line 8
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    .line 9
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    .line 10
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    .line 11
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    .line 12
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    const/high16 p2, -0x1000000

    .line 20
    iput p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonTextColor:I

    const-string p2, "22px"

    .line 21
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontSize:Ljava/lang/String;

    const-string p2, "normal"

    .line 22
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontWeight:Ljava/lang/String;

    const/4 p2, 0x2

    .line 24
    iput p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->maxButton:I

    .line 1272
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->isSetText:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2359
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    .line 2360
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    const-string p1, "close"

    .line 2361
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->CLOSE:Ljava/lang/String;

    const-string p1, "menu"

    .line 2362
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->MENU:Ljava/lang/String;

    const-string p1, "titleNView"

    .line 2363
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2364
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 2365
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initCapsuleLayout()V

    :cond_4a
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lio/dcloud/feature/nativeObj/TitleNView;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->isStatusBarHas()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->isSetText:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView;->setTextGravity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView;->buttonOnclick(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/TitleNView;->capsuleButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V
    .registers 6

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/nativeObj/TitleNView;->setTextAndFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontWeight:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lio/dcloud/feature/nativeObj/TitleNView;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonTextColor:I

    return p0
.end method

.method private addButtonOnClickListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/View;)V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$11;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView$11;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private addSelect(Landroid/view/ViewGroup;Landroid/widget/TextView;I)Landroid/widget/TextView;
    .registers 8

    .line 1
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\ue661"

    .line 2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dcloud_iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLines(I)V

    const/16 v0, 0x11

    .line 6
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 8
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "15px"

    invoke-static {v3, v1, p3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 9
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private buttonOnclick(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_5a

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_5a

    .line 8
    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 9
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 10
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_5a
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_6a

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 17
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_6a
    if-eqz p2, :cond_76

    .line 20
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 21
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_76
    if-eqz p2, :cond_97

    .line 26
    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, ""

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 27
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 28
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getOpener()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v3, ""

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_97
    return-void
.end method

.method private caculateTitleMargin()V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 3
    :cond_c
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v2, 0x0

    const-string v3, "10px"

    invoke-static {v3, v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 4
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    .line 5
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initRightButtonLayout()V

    .line 6
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 7
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    .line 8
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    iget v4, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_45

    .line 12
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const-string v6, "\u5f20\u78ca "

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 14
    :cond_45
    iget-object v6, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 16
    iget v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    if-ne v2, v1, :cond_61

    return-void

    .line 17
    :cond_61
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    if-eqz v0, :cond_72

    .line 18
    array-length v2, v0

    if-lez v2, :cond_72

    const/4 v2, 0x1

    aget v0, v0, v2

    if-lez v0, :cond_72

    .line 19
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_76

    .line 21
    :cond_72
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 22
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 24
    :goto_76
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method

.method private capsuleButtonClick(Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_ba

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x50

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "type"

    const-string v7, "appid"

    if-nez v1, :cond_85

    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    .line 31
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {p1, v1, v2, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-boolean p1, Lio/dcloud/common/adapter/util/UniMPConfig;->isCapsuleCloseIntercept:Z

    if-nez p1, :cond_ba

    .line 33
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-interface {p1, v1, v2, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 26
    :cond_6e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 39
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    .line 42
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-interface {p1, v1, v2, v0}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-boolean p1, Lio/dcloud/common/adapter/util/UniMPConfig;->isCapsuleMenuIntercept:Z

    if-nez p1, :cond_ba

    .line 44
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->getMenuArray()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/TitleNView;->showCapsuleMenu(Lorg/json/JSONArray;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method private createButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 30

    move-object v6, p0

    move-object/from16 v7, p10

    .line 1
    new-instance v8, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    iget v2, v6, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    invoke-direct {v8, p0, v0, v1, v2}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;FI)V

    const/4 v9, 0x0

    .line 2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x11

    .line 3
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    invoke-virtual {v8, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TitleNView.Button."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_37

    const-string v1, ""

    goto :goto_38

    :cond_37
    move-object v1, p1

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setId(I)V

    .line 10
    invoke-virtual {v10}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 12
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 13
    invoke-static/range {p15 .. p15}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 14
    iget v1, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v3, p15

    invoke-static {v3, v1, v9, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    if-lez v1, :cond_6d

    .line 16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 17
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 22
    :cond_6d
    :try_start_6d
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_73

    :goto_71
    move v11, v1

    goto :goto_78

    .line 24
    :catch_73
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_71

    .line 27
    :goto_78
    :try_start_78
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7c} :catch_7e

    :goto_7c
    move v12, v1

    goto :goto_83

    .line 29
    :catch_7e
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_7c

    .line 32
    :goto_83
    invoke-direct {p0, v11, v12}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string v1, "bold"

    move-object/from16 v2, p4

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 34
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 37
    :cond_9b
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/TitleNView;->setTextAndFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 41
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "transparent"

    if-eqz v0, :cond_bd

    .line 42
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "22px"

    goto :goto_bf

    :cond_ba
    const-string v0, "27px"

    goto :goto_bf

    :cond_bd
    const-string v0, "17px"

    .line 44
    :goto_bf
    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v3, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v0, v2, v9, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 45
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v4, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v5, p5

    invoke-static {v5, v3, v0, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 49
    :try_start_d9
    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dd} :catch_de

    goto :goto_e2

    .line 51
    :catch_de
    invoke-static/range {p11 .. p11}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v2

    .line 53
    :goto_e2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    goto :goto_ea

    :cond_e9
    move v9, v2

    .line 56
    :goto_ea
    new-instance v1, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    invoke-direct {v1, v9}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;-><init>(I)V

    move-object/from16 v2, p16

    .line 57
    invoke-virtual {v1, v2}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setWidth(Ljava/lang/String;)V

    .line 58
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 59
    invoke-virtual {v8, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p14, :cond_112

    .line 61
    invoke-direct {p0, v8, v10, v0}, Lio/dcloud/feature/nativeObj/TitleNView;->addSelect(Landroid/view/ViewGroup;Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v0

    .line 62
    invoke-direct {p0, v11, v12}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 65
    :cond_112
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    .line 67
    invoke-direct {p0, v0, v1, v8}, Lio/dcloud/feature/nativeObj/TitleNView;->addButtonOnClickListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/View;)V

    move-object/from16 v0, p13

    .line 68
    invoke-virtual {v8, v0}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setBadgeStr(Ljava/lang/String;)V

    move/from16 v0, p12

    .line 69
    invoke-virtual {v8, v0}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setDrawRedDot(Z)V

    .line 70
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method private createColorStateList(II)Landroid/content/res/ColorStateList;
    .registers 11

    const/4 v0, 0x6

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p1, v1, p2

    const/4 v3, 0x2

    aput p1, v1, v3

    const/4 v4, 0x3

    aput p1, v1, v4

    const/4 v5, 0x4

    aput p1, v1, v5

    const/4 v6, 0x5

    aput p1, v1, v6

    new-array p1, v0, [[I

    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_4a

    aput-object v0, p1, v2

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_52

    aput-object v0, p1, p2

    new-array v0, p2, [I

    const v7, 0x101009e

    aput v7, v0, v2

    aput-object v0, p1, v3

    new-array v0, p2, [I

    const v3, 0x101009c

    aput v3, v0, v2

    aput-object v0, p1, v4

    new-array p2, p2, [I

    const v0, 0x101009d

    aput v0, p2, v2

    aput-object p2, p1, v5

    new-array p2, v2, [I

    aput-object p2, p1, v6

    .line 9
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p1, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p2

    :array_4a
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_52
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method private getCapsuleButton(Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .line 1
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 10
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "19px"

    invoke-static {v3, v0, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dcloud_iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4c
    return-object p1
.end method

.method private getIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    if-eqz p1, :cond_42

    const-string v0, "/"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_42

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMenuArray()Lorg/json/JSONArray;
    .registers 10

    const-string v0, "buttons"

    const-string v1, "menu"

    .line 1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_b
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, "title"

    if-ge v4, v5, :cond_43

    .line 3
    iget-object v5, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    .line 4
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_22
    invoke-virtual {v5}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-virtual {v5}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_35

    :cond_31
    invoke-virtual {v5}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    :goto_35
    invoke-virtual {v7, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception v5

    .line 8
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :goto_3d
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 12
    :cond_43
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_64

    .line 13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_50
    const-string v5, ""

    .line 15
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "interval"

    .line 16
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v4

    .line 19
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    :cond_64
    :goto_64
    sget-object v4, Lio/dcloud/feature/internal/sdk/SDK;->sDefaultMenuButton:Ljava/lang/String;

    if-eqz v4, :cond_99

    .line 24
    :try_start_68
    new-instance v4, Lorg/json/JSONObject;

    sget-object v5, Lio/dcloud/feature/internal/sdk/SDK;->sDefaultMenuButton:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 26
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_99

    .line 27
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 28
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 29
    :goto_85
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_99

    .line 30
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 31
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_92
    .catch Lorg/json/JSONException; {:try_start_68 .. :try_end_92} :catch_95

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :catch_95
    move-exception v0

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_99
    return-object v2
.end method

.method private initCapsuleLayout()V
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "bold"

    const-string v2, "fontWeight"

    const-string v3, "textColor"

    const-string v4, "capsuleButtonStyle"

    const-string v5, "fontSize"

    .line 1
    iget-object v6, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    if-nez v6, :cond_147

    sget-boolean v6, Lio/dcloud/feature/internal/sdk/SDK;->isCapsule:Z

    if-eqz v6, :cond_147

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    .line 3
    iget v6, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v7, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v8, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v9, "12px"

    const/4 v10, 0x0

    invoke-static {v9, v7, v10, v8}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v7

    sub-int/2addr v6, v7

    .line 4
    new-instance v7, Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/dcloud/android/widget/CapsuleLayout;-><init>(Landroid/content/Context;F)V

    iput-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    .line 5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setId(I)V

    .line 6
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 7
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    .line 10
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xb

    .line 11
    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    iget v6, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/high16 v9, 0x41500000    # 13.0f

    mul-float v9, v9, v6

    float-to-int v9, v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float v6, v6, v10

    float-to-int v6, v6

    .line 16
    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 18
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 19
    iget-object v10, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v11, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual {v10, v11, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    const-string v10, "menu"

    if-nez v7, :cond_83

    .line 23
    invoke-direct {v1, v10}, Lio/dcloud/feature/nativeObj/TitleNView;->getCapsuleButton(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    const-string v11, "\ue606"

    .line 24
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_83
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v12, 0x11

    .line 30
    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 31
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 32
    iget-object v13, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    iget-object v14, v1, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    sget-object v15, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    new-instance v12, Lio/dcloud/feature/nativeObj/TitleNView$12;

    invoke-direct {v12, v1}, Lio/dcloud/feature/nativeObj/TitleNView$12;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    invoke-virtual {v13, v14, v7, v15, v12}, Lcom/dcloud/android/widget/CapsuleLayout;->addButtonView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    iget v12, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-virtual {v7, v12}, Lcom/dcloud/android/widget/CapsuleLayout;->addIntervalView(F)V

    .line 41
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    if-nez v7, :cond_bd

    const-string v7, "close"

    .line 42
    invoke-direct {v1, v7}, Lio/dcloud/feature/nativeObj/TitleNView;->getCapsuleButton(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v7

    iput-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    const-string v12, "\ue650"

    .line 43
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_bd
    iget-object v7, v1, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v8, 0x11

    .line 48
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49
    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 50
    iget-object v6, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    iget-object v8, v1, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    sget-object v9, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    new-instance v11, Lio/dcloud/feature/nativeObj/TitleNView$13;

    invoke-direct {v11, v1}, Lio/dcloud/feature/nativeObj/TitleNView$13;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    invoke-virtual {v6, v8, v7, v9, v11}, Lcom/dcloud/android/widget/CapsuleLayout;->addButtonView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object v6, Lio/dcloud/feature/internal/sdk/SDK;->sDefaultMenuButton:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_147

    .line 60
    :try_start_e5
    new-instance v6, Lorg/json/JSONObject;

    sget-object v7, Lio/dcloud/feature/internal/sdk/SDK;->sDefaultMenuButton:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_135

    .line 62
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_135

    .line 64
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 65
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonTextColor:I

    .line 67
    :cond_108
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11e

    .line 68
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontSize:Ljava/lang/String;

    .line 70
    :cond_11e
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_135

    .line 71
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 72
    iput-object v0, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontWeight:Ljava/lang/String;

    goto :goto_135

    :cond_131
    const-string v0, "normal"

    .line 74
    iput-object v0, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontWeight:Ljava/lang/String;

    .line 79
    :cond_135
    :goto_135
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 80
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Lio/dcloud/feature/nativeObj/TitleNView;->setCapsuleButtonStyle(Lorg/json/JSONObject;)V
    :try_end_142
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_142} :catch_143

    goto :goto_147

    :catch_143
    move-exception v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_147
    :goto_147
    return-void
.end method

.method private initCenterSearchLayout()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_86

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v5, "12px"

    invoke-static {v5, v2, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    sub-int/2addr v0, v2

    .line 8
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4d

    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_52

    :cond_4d
    const/16 v0, 0xb

    .line 12
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    :goto_52
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5f

    .line 15
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_64

    :cond_5f
    const/16 v0, 0x9

    .line 17
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_64
    const/16 v0, 0xf

    .line 19
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v4, "5px"

    invoke-static {v4, v0, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 21
    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v0, v1, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_86
    return-void
.end method

.method private initLeftButtonLayout()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_45

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    return-void
.end method

.method private initRightButtonLayout()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_51

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    if-eqz v2, :cond_45

    .line 11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_4a

    :cond_45
    const/16 v1, 0xb

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    :goto_4a
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_51
    return-void
.end method

.method private initTitleNViewLayout()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_74

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v3, "position"

    const-string v4, "absolute"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_57

    if-eqz v1, :cond_57

    .line 10
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_57

    const/4 v2, 0x0

    .line 11
    :goto_33
    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_57

    .line 12
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "StatusBar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    const/4 v1, 0x1

    goto :goto_58

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_57
    const/4 v1, 0x0

    :goto_58
    if-nez v1, :cond_6d

    .line 20
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_6d

    .line 21
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v1, :cond_6d

    .line 22
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v1

    .line 25
    :cond_6d
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 26
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_74
    return-void
.end method

.method public static isBase64Image(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "^data:image/.*;base64,"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private isStatusBarHas()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_1a

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    return v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method private layoutSubtitleIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    .line 1
    iget v5, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v7, "10px"

    const/4 v8, 0x0

    invoke-static {v7, v5, v8, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v5

    .line 2
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_23

    .line 3
    iget-object v6, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4
    :cond_23
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    const/16 v11, 0xf

    if-nez v6, :cond_124

    .line 5
    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v13, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v14, p11

    invoke-static {v14, v6, v8, v13}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v6

    if-gtz v6, :cond_3a

    .line 7
    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    sub-int/2addr v6, v5

    .line 9
    :cond_3a
    iget v13, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    if-le v6, v13, :cond_3f

    move v6, v13

    .line 12
    :cond_3f
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x9

    .line 13
    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    invoke-virtual {v13, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v14, 0x2

    .line 15
    div-int/2addr v5, v14

    iput v5, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 16
    iget v5, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v15, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v11, p2

    invoke-static {v11, v5, v8, v15}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v5

    .line 17
    invoke-static/range {p1 .. p1}, Lio/dcloud/feature/nativeObj/TitleNView;->isBase64Image(Ljava/lang/String;)Z

    move-result v11

    const-string v15, ""

    const-string v9, "^data:image/.*;base64,"

    if-nez v11, :cond_7a

    .line 21
    :try_start_64
    new-instance v10, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lio/dcloud/feature/nativeObj/TitleNView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v7, v12}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_79} :catch_88

    goto :goto_89

    .line 25
    :cond_7a
    :try_start_7a
    new-instance v10, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v1, v9, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-direct {v10, v7}, Lpl/droidsonroids/gif/GifDrawable;-><init>([B)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_87} :catch_88

    goto :goto_89

    :catch_88
    const/4 v10, 0x0

    :goto_89
    if-gtz v5, :cond_c0

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    if-eqz v10, :cond_9e

    .line 31
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10e

    :cond_9e
    if-eqz v11, :cond_a9

    .line 34
    invoke-virtual {v1, v9, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_ad

    :cond_a9
    invoke-direct/range {p0 .. p1}, Lio/dcloud/feature/nativeObj/TitleNView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_ad
    invoke-virtual {v5, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {v1, v5}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_10e

    .line 37
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v7

    if-eqz v10, :cond_dc

    .line 39
    new-instance v1, Lio/dcloud/feature/nativeObj/GIFCornerRadiusTransform;

    int-to-float v5, v5

    invoke-direct {v1, v5, v6}, Lio/dcloud/feature/nativeObj/GIFCornerRadiusTransform;-><init>(FI)V

    invoke-virtual {v10, v1}, Lpl/droidsonroids/gif/GifDrawable;->setTransform(Lpl/droidsonroids/gif/transforms/Transform;)V

    .line 40
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10e

    :cond_dc
    if-eqz v11, :cond_e7

    .line 43
    invoke-virtual {v1, v9, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_eb

    :cond_e7
    invoke-direct/range {p0 .. p1}, Lio/dcloud/feature/nativeObj/TitleNView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_eb
    invoke-virtual {v7, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v6, Lcom/bumptech/glide/load/MultiTransformation;

    new-array v7, v14, [Lcom/bumptech/glide/load/Transformation;

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v9}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v9, v7, v8

    new-instance v9, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v9, v5}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    const/4 v5, 0x1

    aput-object v9, v7, v5

    invoke-direct {v6, v7}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/RequestBuilder;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 46
    :goto_10e
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v5, v1, :cond_11d

    .line 47
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_120

    .line 49
    :cond_11d
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :goto_120
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_129

    :cond_124
    const/16 v1, 0x8

    .line 52
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :goto_129
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    .line 55
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 56
    invoke-virtual/range {p7 .. p7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v9, 0xe

    const-string v10, "auto"

    const-string v11, "left"

    if-eqz v7, :cond_151

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_151

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14d

    goto :goto_151

    .line 59
    :cond_14d
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_159

    .line 60
    :cond_151
    :goto_151
    invoke-virtual/range {p7 .. p7}, Landroid/widget/ImageView;->getId()I

    move-result v7

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 63
    :goto_159
    iget-object v7, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    iget-object v12, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v12, -0x1

    if-ne v12, v7, :cond_16c

    .line 64
    iget-object v7, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    iget-object v13, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v13, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_171

    .line 66
    :cond_16c
    iget-object v7, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    :goto_171
    iget-object v7, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ne v12, v7, :cond_17e

    .line 68
    iget-object v7, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    :cond_17e
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_213

    .line 70
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    iget-object v5, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v5

    const/4 v12, 0x3

    invoke-virtual {v7, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 72
    invoke-virtual/range {p7 .. p7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1aa

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1aa

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a6

    goto :goto_1aa

    .line 75
    :cond_1a6
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1b2

    .line 76
    :cond_1aa
    :goto_1aa
    invoke-virtual/range {p7 .. p7}, Landroid/widget/ImageView;->getId()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1b2
    move-object/from16 v2, p3

    .line 79
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "clip"

    move-object/from16 v4, p6

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1cb

    .line 83
    :cond_1c6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    :goto_1cb
    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 87
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1db

    move/from16 v2, p9

    goto :goto_1df

    :cond_1db
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v2

    :goto_1df
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ef

    const-string v4, "12px"

    goto :goto_1f1

    :cond_1ef
    move-object/from16 v4, p5

    :goto_1f1
    iget v5, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v9, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v5, v8, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 89
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v4, v2, :cond_20c

    .line 90
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20f

    .line 92
    :cond_20c
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :goto_20f
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_218

    :cond_213
    const/16 v2, 0x8

    .line 95
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :goto_218
    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_234

    .line 99
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 102
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_249

    :cond_234
    const/16 v3, 0xf

    .line 104
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_249
    return-void
.end method

.method private setButtonColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_bf

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    instance-of v1, v0, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    if-eqz v1, :cond_20

    .line 5
    :try_start_c
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_15

    .line 7
    :catch_11
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    .line 12
    :goto_15
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->getDrawableColor()I

    move-result v1

    if-eq p2, v1, :cond_20

    .line 13
    invoke-virtual {v0, p2}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setDrawableColor(I)V

    .line 19
    :cond_20
    :try_start_20
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_25

    goto :goto_29

    .line 21
    :catch_25
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    .line 24
    :goto_29
    :try_start_29
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_2e

    goto :goto_32

    .line 26
    :catch_2e
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p3

    .line 28
    :goto_32
    instance-of p4, p1, Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-nez p4, :cond_9d

    instance-of p4, p1, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz p4, :cond_3c

    goto :goto_9d

    .line 36
    :cond_3c
    instance-of p4, p1, Landroid/widget/TextView;

    if-eqz p4, :cond_54

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p4

    if-eq p2, p4, :cond_bf

    .line 39
    invoke-direct {p0, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_bf

    .line 41
    :cond_54
    instance-of p4, p1, Landroid/widget/LinearLayout;

    if-eqz p4, :cond_bf

    .line 42
    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p4, 0x0

    .line 43
    :goto_5b
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p4, v1, :cond_bf

    .line 44
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 45
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_7d

    .line 46
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    if-eq p2, v2, :cond_9a

    .line 47
    invoke-direct {p0, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_9a

    .line 49
    :cond_7d
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_9a

    .line 50
    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    if-eq p2, v2, :cond_9a

    .line 52
    invoke-direct {p0, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9a
    :goto_9a
    add-int/lit8 p4, p4, 0x1

    goto :goto_5b

    .line 53
    :cond_9d
    :goto_9d
    check-cast p1, Landroid/view/ViewGroup;

    .line 54
    :goto_9f
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge v0, p4, :cond_bf

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    if-eq p2, v1, :cond_bc

    .line 57
    invoke-direct {p0, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_bf
    :goto_bf
    return-void
.end method

.method private setTextAndFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V
    .registers 7

    if-nez p5, :cond_8f

    const-string p5, "none"

    .line 1
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8f

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string p5, "fonts/dcloud_iconfont.ttf"

    invoke-static {p2, p5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 3
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p5, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_fa

    goto :goto_73

    :sswitch_27
    const-string v0, "favorite"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_30

    goto :goto_73

    :cond_30
    const/4 p5, 0x6

    goto :goto_73

    :sswitch_32
    const-string v0, "share"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3b

    goto :goto_73

    :cond_3b
    const/4 p5, 0x5

    goto :goto_73

    :sswitch_3d
    const-string v0, "close"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_46

    goto :goto_73

    :cond_46
    const/4 p5, 0x4

    goto :goto_73

    :sswitch_48
    const-string v0, "menu"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_51

    goto :goto_73

    :cond_51
    const/4 p5, 0x3

    goto :goto_73

    :sswitch_53
    const-string v0, "home"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5c

    goto :goto_73

    :cond_5c
    const/4 p5, 0x2

    goto :goto_73

    :sswitch_5e
    const-string v0, "back"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_67

    goto :goto_73

    :cond_67
    const/4 p5, 0x1

    goto :goto_73

    :sswitch_69
    const-string v0, "forward"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_72

    goto :goto_73

    :cond_72
    const/4 p5, 0x0

    :goto_73
    packed-switch p5, :pswitch_data_118

    goto :goto_8b

    :pswitch_77
    const-string p1, "\ue604"

    goto :goto_8b

    :pswitch_7a
    const-string p1, "\ue602"

    goto :goto_8b

    :pswitch_7d
    const-string p1, "\ue650"

    goto :goto_8b

    :pswitch_80
    const-string p1, "\ue606"

    goto :goto_8b

    :pswitch_83
    const-string p1, "\ue605"

    goto :goto_8b

    :pswitch_86
    const-string p1, "\ue601"

    goto :goto_8b

    :pswitch_89
    const-string p1, "\ue600"

    .line 26
    :goto_8b
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f4

    .line 28
    :cond_8f
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_f3

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_f3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f3

    const-string p1, "__wap2app.ttf"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lio/dcloud/common/util/BaseInfo;->sBaseWap2AppTemplatePath:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "wap2app__template/__wap2app.ttf"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_c7

    goto :goto_e8

    .line 37
    :cond_c7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e8

    .line 40
    :cond_d8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    :goto_e8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-static {p2, p1}, Lio/dcloud/feature/nativeObj/NativeTypefaceFactory;->getTypeface(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    goto :goto_f4

    :cond_f3
    const/4 p2, 0x0

    :goto_f4
    if-eqz p2, :cond_f9

    .line 47
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_f9
    return-void

    :sswitch_data_fa
    .sparse-switch
        -0x285c6d3b -> :sswitch_69
        0x2e04e7 -> :sswitch_5e
        0x30f4df -> :sswitch_53
        0x33155f -> :sswitch_48
        0x5a5ddf8 -> :sswitch_3d
        0x6854fdf -> :sswitch_32
        0x3ea1c99c -> :sswitch_27
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
    .end packed-switch
.end method

.method private setTextGravity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const v2, -0x514d33ab

    if-eq v0, v2, :cond_29

    const v2, 0x32a007

    if-eq v0, v2, :cond_1f

    const v2, 0x677c21c

    if-eq v0, v2, :cond_15

    goto :goto_33

    :cond_15
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_1f
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x0

    goto :goto_34

    :cond_29
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    const/4 p1, 0x2

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p1, -0x1

    :goto_34
    if-eqz p1, :cond_73

    const-string v0, "\ue660 "

    if-eq p1, v1, :cond_56

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_80

    .line 14
    :cond_56
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const v1, 0x800005

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 15
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_80

    .line 16
    :cond_73
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 17
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_80
    return-void
.end method

.method private showCapsuleMenu(Lorg/json/JSONArray;)V
    .registers 7

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    .line 2
    new-instance v0, Lio/dcloud/feature/ui/nativeui/a;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;)V

    goto :goto_20

    .line 4
    :cond_12
    new-instance v0, Lio/dcloud/feature/ui/nativeui/a;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103000d

    invoke-direct {v0, v1, v2}, Lio/dcloud/feature/ui/nativeui/a;-><init>(Landroid/content/Context;I)V

    .line 6
    :goto_20
    new-instance v1, Lio/dcloud/feature/nativeObj/TitleNView$14;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$14;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/nativeui/a;->a(Lio/dcloud/feature/ui/nativeui/a$b;)Lio/dcloud/feature/ui/nativeui/a;

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/ui/nativeui/a;->b(Ljava/lang/String;)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object v1

    iget v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonTextColor:I

    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;->d(I)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtonFontSize:Ljava/lang/String;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 98
    invoke-static {v2, v4, v4, v3}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/nativeui/a;->a(F)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p1}, Lio/dcloud/feature/ui/nativeui/a;->a(Lorg/json/JSONArray;)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object p1

    const/4 v1, 0x1

    .line 100
    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/nativeui/a;->a(Z)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object p1

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/nativeui/a;->b(Z)Lio/dcloud/feature/ui/nativeui/a;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/nativeui/a;->e(I)Lio/dcloud/feature/ui/nativeui/a;

    .line 103
    invoke-virtual {v0}, Lio/dcloud/feature/ui/nativeui/a;->j()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_62
    return-void
.end method

.method private updateCapsuleLayout()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    if-eqz v0, :cond_37

    iget-boolean v0, v0, Lcom/dcloud/android/widget/CapsuleLayout;->isDiy:Z

    if-nez v0, :cond_37

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual {v1, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->checkColorToStyle(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_37

    .line 10
    :cond_2c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public addBackButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    .line 6
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    if-nez v2, :cond_b2

    .line 7
    new-instance v2, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    iget v9, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    iget v10, v0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    invoke-direct {v2, v0, v8, v9, v10}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;FI)V

    iput-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/dcloud/base/R$string;->dcloud_titlenview_back_button_description:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    const-string v8, "TitleNView.BackButton"

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 11
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setId(I)V

    .line 14
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 15
    new-instance v9, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 19
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 22
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    new-instance v8, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x10

    .line 25
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 26
    iget-object v11, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x1f4

    invoke-direct {v12, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v11, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xf

    .line 30
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_cd

    .line 33
    :cond_b2
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 34
    iget-object v8, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 35
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 36
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/widget/TextView;

    .line 38
    :goto_cd
    iget-object v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v11, 0x5

    const-string v12, "text"

    if-eqz v8, :cond_ed

    invoke-interface {v8}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v8

    if-ne v11, v8, :cond_ed

    if-eqz v1, :cond_e7

    .line 39
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_e9

    :cond_e7
    const-string v8, "\ue650"

    .line 40
    :goto_e9
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ff

    :cond_ed
    if-eqz v1, :cond_fa

    .line 42
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fa

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_fc

    :cond_fa
    const-string v8, "\ue601"

    .line 43
    :goto_fc
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_ff
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v12, "fonts/dcloud_iconfont.ttf"

    invoke-static {v8, v12}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 46
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v1, :cond_11f

    const-string v8, "title"

    .line 47
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11f

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_121

    :cond_11f
    const-string v8, ""

    :goto_121
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v8, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    new-instance v12, Lio/dcloud/feature/nativeObj/TitleNView$2;

    invoke-direct {v12, v0}, Lio/dcloud/feature/nativeObj/TitleNView$2;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v8, "transparent"

    move-object/from16 v12, p3

    .line 60
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v12, "2px"

    const-string v13, "16px"

    const-string v14, "titleSize"

    const-string v15, "fontSize"

    if-eqz v8, :cond_1c8

    if-eqz v1, :cond_14d

    .line 61
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14d

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_14f

    :cond_14d
    const-string v8, "22px"

    .line 62
    :goto_14f
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v4, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v8, v6, v7, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v1, :cond_16c

    .line 63
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16c

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_16d

    :cond_16c
    move-object v4, v13

    .line 64
    :goto_16d
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v14, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v8, v7, v14}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 65
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v4, :cond_18d

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v4

    if-ne v11, v4, :cond_18d

    .line 66
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_19a

    .line 68
    :cond_18d
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    iget v6, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v12, v6, v7, v8}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v6

    invoke-virtual {v4, v7, v7, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_19a
    if-eqz v1, :cond_1a9

    const-string v4, "background"

    .line 70
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a9

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1ab

    :cond_1a9
    const-string v4, "#7F333333"

    .line 71
    :goto_1ab
    new-instance v6, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v4}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;-><init>(I)V

    const-string v4, "backButton"

    .line 72
    invoke-virtual {v6, v4}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setWidth(Ljava/lang/String;)V

    .line 73
    iget-object v4, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v4, "#FFFFFF"

    const v6, 0x3e99999a    # 0.3f

    .line 75
    invoke-static {v4, v6}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    goto :goto_209

    :cond_1c8
    if-eqz v1, :cond_1d5

    .line 77
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1d7

    :cond_1d5
    const-string v4, "27px"

    .line 78
    :goto_1d7
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v11, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v8, v7, v11}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz v1, :cond_1f4

    .line 79
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f4

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1f5

    :cond_1f4
    move-object v4, v13

    .line 80
    :goto_1f5
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v11, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v4, v8, v7, v11}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    :goto_209
    if-eqz v1, :cond_217

    const-string v8, "badgeSize"

    .line 83
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_217

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 84
    :cond_217
    iget v8, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v11, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v13, v8, v7, v11}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v8

    .line 85
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    int-to-float v13, v8

    invoke-virtual {v11, v13}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 87
    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 88
    iget v13, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v14, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v12, v13, v7, v14}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v12

    add-int/2addr v12, v8

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 91
    div-int/lit8 v8, v8, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v10, v8, v12, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v8, "normal"

    if-eqz v1, :cond_25c

    const-string v12, "fontWeight"

    .line 92
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_25c

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_25d

    :cond_25c
    move-object v12, v8

    .line 93
    :goto_25d
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "bold"

    if-eqz v13, :cond_26d

    .line 94
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_27a

    .line 95
    :cond_26d
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27a

    .line 96
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_27a
    :goto_27a
    if-eqz v1, :cond_289

    const-string v12, "titleWeight"

    .line 98
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_289

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_28a

    :cond_289
    move-object v12, v8

    .line 99
    :goto_28a
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_298

    .line 100
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2a5

    .line 101
    :cond_298
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a5

    .line 102
    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_2a5
    :goto_2a5
    const/4 v8, 0x0

    if-eqz v1, :cond_2b5

    const-string v12, "badgeText"

    .line 104
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2b5

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2b6

    :cond_2b5
    move-object v12, v8

    .line 105
    :goto_2b6
    iget-object v13, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v13, v12}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->setBadgeStr(Ljava/lang/String;)V

    .line 106
    iget-object v13, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    if-eqz v1, :cond_2ce

    const-string v14, "redDot"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2ce

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2ce

    goto :goto_2cf

    :cond_2ce
    const/4 v5, 0x0

    :goto_2cf
    invoke-virtual {v13, v5}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->setDrawRedDot(Z)V

    .line 107
    invoke-static {v12}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e1

    .line 108
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v10, v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 109
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e4

    .line 111
    :cond_2e1
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e4
    if-eqz v1, :cond_2f5

    const-string v3, "badgeBackground"

    .line 113
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f5

    const-string v3, "badgeBackground"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2f6

    :cond_2f5
    move-object v3, v8

    :goto_2f6
    if-eqz v1, :cond_306

    const-string v5, "badgeColor"

    .line 114
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_306

    const-string v5, "badgeColor"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    :cond_306
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 116
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_319

    .line 117
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_31e

    :cond_319
    const/high16 v3, -0x10000

    .line 119
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 120
    :goto_31e
    iget v3, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 121
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_336

    .line 123
    invoke-static {v8}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :cond_336
    :try_start_336
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_33a
    .catch Ljava/lang/Exception; {:try_start_336 .. :try_end_33a} :catch_33b

    goto :goto_33f

    .line 128
    :catch_33b
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 131
    :goto_33f
    :try_start_33f
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_343
    .catch Ljava/lang/Exception; {:try_start_33f .. :try_end_343} :catch_344

    goto :goto_348

    .line 133
    :catch_344
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    .line 135
    :goto_348
    invoke-direct {v0, v1, v3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    invoke-direct {v0, v1, v3}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_36b

    .line 140
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 141
    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 144
    :cond_36b
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_3a1

    .line 145
    iget v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v2, v0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v3, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v4, "12px"

    invoke-static {v4, v2, v7, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    sub-int/2addr v1, v2

    .line 146
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    iget v3, v0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v4, v0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v5, "5px"

    invoke-static {v5, v3, v7, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    iget-object v3, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 149
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1, v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_3a1
    iget-object v1, v0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 153
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    return-void
.end method

.method public addHomeButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    .line 3
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initRightButtonLayout()V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_b8

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    const-string v2, "TitleNView.HomeButton"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "fonts/dcloud_iconfont.ttf"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    const-string v2, "\ue605"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    new-instance v2, Lio/dcloud/feature/nativeObj/TitleNView$3;

    invoke-direct {v2, p0}, Lio/dcloud/feature/nativeObj/TitleNView$3;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "transparent"

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_89

    .line 25
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v0, "22px"

    invoke-static {v0, p2, v1, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 27
    new-instance p1, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    const-string p2, "#7F333333"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, p2}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;-><init>(I)V

    const-string p2, ""

    .line 28
    invoke-virtual {p1, p2}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setWidth(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "#FFFFFF"

    const p2, 0x3e99999a    # 0.3f

    .line 31
    invoke-static {p1, p2}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p2

    goto :goto_9d

    .line 33
    :cond_89
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "27px"

    invoke-static {v3, v0, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 36
    :goto_9d
    :try_start_9d
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a1} :catch_a2

    goto :goto_a6

    .line 38
    :catch_a2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    .line 41
    :goto_a6
    :try_start_a6
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_aa} :catch_ab

    goto :goto_af

    .line 43
    :catch_ab
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    .line 45
    :goto_af
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 47
    :cond_b8
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget p3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v0, "12px"

    invoke-static {v0, p2, v1, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p2

    sub-int/2addr p1, p2

    .line 48
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_df

    .line 50
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_df
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const-string p3, "5px"

    if-nez p1, :cond_fc

    .line 54
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p3, p1, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 55
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_189

    .line 56
    :cond_fc
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_122

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne v0, p1, :cond_122

    .line 57
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p3, p1, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_189

    .line 59
    :cond_122
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_189

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne v0, p1, :cond_189

    .line 60
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_15d

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    if-eqz p1, :cond_15d

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne v0, p1, :cond_15d

    .line 61
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p3, p1, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 62
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_189

    .line 63
    :cond_15d
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ne p1, v3, :cond_189

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ne v0, p1, :cond_189

    .line 64
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 65
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p3, p1, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 66
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_189
    :goto_189
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 71
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    return-void
.end method

.method public addLeftButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 35

    move-object/from16 v15, p0

    move-object/from16 v14, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v16, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move/from16 v14, p16

    move-object/from16 v15, p17

    .line 1
    invoke-direct/range {v0 .. v16}, Lio/dcloud/feature/nativeObj/TitleNView;->createButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 3
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    move-object/from16 v1, p0

    .line 4
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_ad

    .line 5
    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v6, "12px"

    const/4 v7, 0x0

    invoke-static {v6, v4, v7, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    sub-int/2addr v2, v4

    .line 8
    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v6, p17

    invoke-static {v6, v4, v3, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 9
    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v6, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v8, p9

    invoke-static {v8, v5, v3, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v5, "auto"

    const-string v6, "5px"

    if-lez v4, :cond_66

    if-le v3, v4, :cond_66

    goto :goto_72

    .line 12
    :cond_66
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 13
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    :goto_72
    const/4 v3, -0x2

    goto :goto_80

    .line 16
    :cond_74
    iget v3, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v8, v3, v2, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v6, "0px"

    goto :goto_80

    :cond_7f
    move v3, v2

    .line 21
    :goto_80
    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v9, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v6, v4, v7, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 22
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 24
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    if-eqz p16, :cond_ad

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 29
    :cond_ad
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    return-void
.end method

.method public addRightButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .registers 35

    move-object/from16 v15, p0

    move-object/from16 v14, p9

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initRightButtonLayout()V

    .line 3
    iget v0, v15, Lio/dcloud/feature/nativeObj/TitleNView;->maxButton:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1b

    iget-object v0, v15, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v2, v15, Lio/dcloud/feature/nativeObj/TitleNView;->maxButton:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_1b

    goto :goto_44

    .line 6
    :cond_1b
    iget-object v0, v15, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    if-eqz p11, :cond_26

    .line 9
    invoke-interface/range {p11 .. p11}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_26
    new-instance v1, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    move-object/from16 p11, v1

    move-object/from16 p12, p1

    move-object/from16 p13, p2

    move-object/from16 p14, v0

    move-object/from16 p15, p7

    move-object/from16 p16, p8

    move-object/from16 p17, p10

    invoke-direct/range {p11 .. p17}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, v15, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, v15, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_44
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p9

    .line 18
    invoke-direct/range {v0 .. v16}, Lio/dcloud/feature/nativeObj/TitleNView;->createButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    move-object/from16 v1, p0

    .line 20
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_e7

    .line 21
    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v6, "12px"

    const/4 v7, 0x0

    invoke-static {v6, v4, v7, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    sub-int/2addr v2, v4

    .line 24
    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v6, p17

    invoke-static {v6, v4, v3, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 25
    iget v5, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v6, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v8, p9

    invoke-static {v8, v5, v3, v6}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v5, "auto"

    const-string v6, "5px"

    if-lez v4, :cond_a0

    if-le v3, v4, :cond_a0

    goto :goto_ac

    .line 28
    :cond_a0
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 29
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    :goto_ac
    const/4 v3, -0x2

    goto :goto_ba

    .line 32
    :cond_ae
    iget v3, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v8, v3, v2, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v3

    const-string v6, "0px"

    goto :goto_ba

    :cond_b9
    move v3, v2

    .line 37
    :goto_ba
    iget v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v9, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v6, v4, v7, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 38
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 40
    iget-object v2, v1, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e7

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    if-eqz p16, :cond_e7

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    :cond_e7
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    return-void
.end method

.method public addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
    .registers 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    .line 3
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initRightButtonLayout()V

    .line 4
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initCenterSearchLayout()V

    .line 5
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1c

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/dcloud_iconfont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 9
    iget v1, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "13px"

    const/4 v10, 0x0

    invoke-static {v3, v1, v10, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    .line 10
    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v3, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v4, "8px"

    invoke-static {v4, v2, v10, v3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 12
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const-string v4, "\ue660 "

    const/16 v5, 0x11

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    if-nez v3, :cond_c4

    .line 14
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 19
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v14

    int-to-float v15, v1

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 20
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 22
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const-string v11, "TitleNView.SearchInput"

    .line 24
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    div-int/lit8 v11, v2, 0x2

    invoke-virtual {v3, v10, v11, v10, v11}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 26
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3, v10, v11, v10, v11}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 27
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 28
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 29
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 30
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3, v13}, Landroid/widget/EditText;->setLines(I)V

    .line 31
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 34
    iget-object v3, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 35
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v3, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v11, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v3, 0x0

    .line 39
    :goto_c5
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 40
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_dd

    .line 41
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 42
    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v11, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    :cond_dd
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v11

    const/4 v14, -0x1

    if-ne v14, v11, :cond_f6

    .line 46
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v11, v14, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 47
    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    iget-object v15, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v14, v15, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_f6
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Landroid/widget/TextView;

    if-eqz v11, :cond_109

    .line 52
    iget-object v11, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    goto :goto_10a

    :cond_109
    const/4 v11, 0x0

    :goto_10a
    const/16 v15, 0x8

    if-eqz v11, :cond_139

    const-string v14, "left"

    .line 55
    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11a

    .line 56
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_139

    .line 57
    :cond_11a
    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    if-eqz v14, :cond_136

    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_136

    .line 58
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_139

    .line 60
    :cond_136
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_139
    :goto_139
    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_14b

    .line 65
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1a4

    .line 67
    :cond_14b
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "\ue650"

    .line 70
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 71
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v0, v1

    .line 72
    invoke-virtual {v14, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 74
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 75
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v1, -0x49494a

    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 78
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    div-int/lit8 v0, v2, 0x4

    invoke-virtual {v14, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 81
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 82
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v14, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$4;

    invoke-direct {v0, v6}, Lio/dcloud/feature/nativeObj/TitleNView$4;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 89
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, v14

    .line 92
    :goto_1a4
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    const-string v1, "#8fffffff"

    .line 93
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_1ba

    .line 96
    :cond_1b1
    :try_start_1b1
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b5} :catch_1b6

    goto :goto_1ba

    .line 98
    :catch_1b6
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 101
    :goto_1ba
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c2

    const/4 v2, 0x0

    goto :goto_1cc

    .line 104
    :cond_1c2
    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v5, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v12, p3

    invoke-static {v12, v2, v10, v5}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    .line 108
    :goto_1cc
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d5

    move-object/from16 v12, p4

    goto :goto_1d8

    :cond_1d5
    const-string v5, ""

    move-object v12, v5

    .line 113
    :goto_1d8
    iget-object v5, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static/range {p5 .. p5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f9

    const-string v4, "#CCCCCC"

    .line 116
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_202

    .line 119
    :cond_1f9
    :try_start_1f9
    invoke-static/range {p5 .. p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_1fd} :catch_1fe

    goto :goto_202

    .line 121
    :catch_1fe
    invoke-static/range {p5 .. p5}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v4

    :goto_202
    if-eqz v11, :cond_207

    .line 125
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_207
    iget-object v5, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 128
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v4, v6, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    new-instance v5, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;

    invoke-direct {v5, v6, v1, v2}, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22c

    const/high16 v1, -0x1000000

    goto :goto_235

    .line 136
    :cond_22c
    :try_start_22c
    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_230} :catch_231

    goto :goto_235

    .line 138
    :catch_231
    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 141
    :goto_235
    iget-object v2, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTextColor(I)V

    if-eqz v3, :cond_246

    .line 144
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v2, Lio/dcloud/feature/nativeObj/TitleNView$5;

    invoke-direct {v2, v6, v0, v9}, Lio/dcloud/feature/nativeObj/TitleNView$5;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/widget/TextView;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 172
    :cond_246
    iget-object v14, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v15, Lio/dcloud/feature/nativeObj/TitleNView$6;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p9

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/TitleNView$6;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lio/dcloud/feature/nativeObj/TitleNView$7;

    invoke-direct {v1, v6, v9}, Lio/dcloud/feature/nativeObj/TitleNView$7;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 215
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_27b

    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v13, :cond_27e

    .line 216
    :cond_27b
    invoke-direct {v6, v7, v12}, Lio/dcloud/feature/nativeObj/TitleNView;->setTextGravity(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_27e
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    xor-int/lit8 v1, p7, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 219
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 220
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 222
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_294

    goto :goto_295

    :cond_294
    move-object v0, v9

    .line 226
    :goto_295
    :try_start_295
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParent()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->didCloseSplash()Z

    move-result v1

    if-nez v1, :cond_2b5

    .line 228
    new-instance v2, Lio/dcloud/feature/nativeObj/TitleNView$8;

    invoke-direct {v2, v6, v8, v0}, Lio/dcloud/feature/nativeObj/TitleNView$8;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;ZLio/dcloud/common/DHInterface/IWebview;)V

    .line 243
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    sget-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {v3, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 247
    :cond_2b5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    new-instance v3, Lio/dcloud/feature/nativeObj/TitleNView$9;

    invoke-direct {v3, v6, v8, v1, v0}, Lio/dcloud/feature/nativeObj/TitleNView$9;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;ZZLio/dcloud/common/DHInterface/IWebview;)V

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2c1} :catch_2c2

    goto :goto_2c3

    :catch_2c2
    nop

    :goto_2c3
    if-nez v8, :cond_2ca

    .line 266
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    :cond_2ca
    if-eqz p7, :cond_2d6

    .line 269
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    new-instance v1, Lio/dcloud/feature/nativeObj/TitleNView$10;

    invoke-direct {v1, v6, v9}, Lio/dcloud/feature/nativeObj/TitleNView$10;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :cond_2d6
    iget-object v0, v6, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public clearButtons()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mRightButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    :cond_7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    :cond_e
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mMenuButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    :cond_15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1c
    return-void
.end method

.method public clearNativeViewData()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0, p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeNativeViewChild(Lio/dcloud/common/DHInterface/INativeView;)V

    .line 5
    :cond_d
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/TitleNView$1;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    const/16 v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public clearSearchInput()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1f

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->getStyleBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarColor()Ljava/lang/String;
    .registers 8

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v0, :cond_cb

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "{color:"

    if-eqz v0, :cond_42

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_42

    const-string v1, "backgroundnoalpha"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :try_start_24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2d

    .line 11
    :catch_29
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 13
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",alpha:false}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_42
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    const-string v1, ",alpha:true}"

    if-eqz v0, :cond_69

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 18
    instance-of v3, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_cb

    .line 19
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 25
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v4, "position"

    const-string v5, "absolute"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cb

    if-eqz v0, :cond_cb

    .line 27
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_cb

    const/4 v3, 0x0

    .line 28
    :goto_84
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_cb

    .line 29
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c8

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StatusBar"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 31
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 32
    instance-of v5, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_c8

    .line 33
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_cb
    const-string v0, "{color:-1,alpha:true}"

    return-object v0
.end method

.method public getTitleColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getTitleNViewSearchInputText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v0, ""

    return-object v0
.end method

.method public getViewType()Ljava/lang/String;
    .registers 2

    const-string v0, "TitleNView"

    return-object v0
.end method

.method protected init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lio/dcloud/feature/nativeObj/NativeView;->init()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->updateCapsuleLayout()V

    const/high16 v0, -0x10000

    .line 3
    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    if-eqz v0, :cond_7e

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    if-nez v0, :cond_1c

    .line 6
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-direct {v0, p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_1c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    if-eqz v0, :cond_39

    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundColor(I)V

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->updatebound()V

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackGroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setAlpha(I)V

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v1, "redDotColor"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    :cond_7e
    return-void
.end method

.method protected measureChildViewToTop(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->measureChildViewToTop(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    return-void
.end method

.method public removeBackButton()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public removeHomeButton()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public removeSplitLine()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_b

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_b
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    return-void
.end method

.method public resetNativeView()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_65

    .line 3
    :try_start_4
    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2c

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 7
    iget-object v3, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 9
    :cond_2c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlayMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v1, -0x1

    :goto_32
    if-eq v2, v1, :cond_5c

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    .line 13
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 14
    :cond_42
    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;

    if-eq v2, v0, :cond_42

    .line 17
    iget-object v2, v2, Lio/dcloud/feature/nativeObj/NativeView$Overlay;->mNativeBitmap:Lio/dcloud/feature/nativeObj/NativeBitmap;

    if-eqz v2, :cond_58

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v2, v3}, Lio/dcloud/feature/nativeObj/NativeBitmap;->recycle(Z)V

    .line 20
    :cond_58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_42

    .line 24
    :cond_5c
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 31
    :cond_65
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    .line 33
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->clearAnimate()V

    return-void
.end method

.method public setBackButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->setButtonColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/feature/nativeObj/NativeView;->setStyleBackgroundColor(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->updateCapsuleLayout()V

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    if-nez p1, :cond_15

    .line 4
    new-instance p1, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-direct {p1, p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;)V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    .line 6
    :cond_15
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_26
    return-void
.end method

.method public setBackgroundRepeat(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setRepeatType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public setBadgeText(Lorg/json/JSONObject;Z)V
    .registers 5

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "text"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_10

    const-string p1, ""

    .line 6
    :cond_10
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_29

    if-ltz v0, :cond_29

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 8
    instance-of v0, p2, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v0, :cond_29

    .line 9
    check-cast p2, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setBadgeStr(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_11

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/nativeObj/TitleNView;->setButtonColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public setButtonsColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->setButtonColorByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public setCapsuleButtonStyle(Lorg/json/JSONObject;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    if-eqz v0, :cond_8d

    if-eqz p1, :cond_8d

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/dcloud/android/widget/CapsuleLayout;->isDiy:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapsuleButtonStyle---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shutao"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "backgroundColor"

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 5
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->setBackgroundColor(I)V

    :cond_34
    const-string v0, "borderColor"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 8
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->setRoundColor(I)V

    :cond_49
    const-string v0, "highlightColor"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 12
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    if-eqz v1, :cond_64

    .line 13
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    sget-object v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v2, v1, v3, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->setButtonSelectColor(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;I)V

    .line 15
    :cond_64
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    if-eqz v1, :cond_6f

    .line 16
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mCapsuleLayout:Lcom/dcloud/android/widget/CapsuleLayout;

    sget-object v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v2, v1, v3, v0}, Lcom/dcloud/android/widget/CapsuleLayout;->setButtonSelectColor(Landroid/view/View;Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;I)V

    :cond_6f
    const-string v0, "textColor"

    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    .line 21
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->menuBt:Landroid/widget/TextView;

    if-eqz v0, :cond_86

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    :cond_86
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->closeBt:Landroid/widget/TextView;

    if-eqz v0, :cond_8d

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8d
    return-void
.end method

.method public setHomeButtonColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mHomeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView;->setButtonColor(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIconSubTitleStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v12, p0

    .line 1
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_63

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    .line 3
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_27

    .line 5
    :cond_17
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    :goto_27
    move-object v7, v0

    .line 8
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3c

    .line 9
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_4c

    .line 11
    :cond_3c
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    :goto_4c
    move-object v8, v0

    .line 14
    invoke-static/range {p7 .. p7}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 15
    invoke-direct/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/TitleNView;->layoutSubtitleIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method public setProgress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    if-nez v0, :cond_21

    .line 3
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/dcloud/feature/nativeObj/TitleNView$Progress;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    const-string v2, "TitleNView.Progress"

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    :cond_21
    :try_start_21
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_2a

    .line 10
    :catch_26
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    .line 12
    :goto_2a
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0, p2}, Lcom/dcloud/android/widget/DCProgressView;->setColorInt(I)V

    .line 14
    iget p2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p1, p2, v1, v0}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    .line 15
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p2, p1}, Lcom/dcloud/android/widget/DCProgressView;->setHeightInt(I)V

    goto :goto_52

    .line 17
    :cond_3d
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    if-eqz p1, :cond_52

    .line 18
    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCProgressView;->isFinish()Z

    move-result p1

    if-nez p1, :cond_4d

    .line 19
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCProgressView;->finishProgress()V

    goto :goto_52

    .line 21
    :cond_4d
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    :goto_52
    return-void
.end method

.method public setRedDot(Lorg/json/JSONObject;Z)V
    .registers 4

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    if-ltz p1, :cond_1f

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v0, :cond_1f

    .line 5
    check-cast p1, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setDrawRedDot(Z)V

    :cond_1f
    return-void
.end method

.method public setRedDotColor(I)V
    .registers 4

    .line 1
    iget v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    if-eq v0, p1, :cond_2f

    .line 2
    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackButton:Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->setRedDotColor(I)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2f

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v1, :cond_19

    .line 7
    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    iget v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->redDotColor:I

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setRedDotColor(I)V

    goto :goto_19

    :cond_2f
    return-void
.end method

.method public setSearchInputColor(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->centerSearchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_22

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3
    instance-of v1, v0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;

    if-eqz v1, :cond_22

    .line 6
    :try_start_e
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_17

    .line 8
    :catch_13
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    .line 10
    :goto_17
    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->getDrawableColor()I

    move-result v1

    if-eq p1, v1, :cond_22

    .line 11
    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->setDrawableColor(I)V

    :cond_22
    return-void
.end method

.method public setSearchInputFocus(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_17

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    goto :goto_1f

    .line 7
    :cond_17
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setShadow(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setShadowColor(Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public setSplitLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    const/16 v1, 0xc

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_25

    .line 2
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    const-string v4, "TitleNView.SplitLine"

    .line 3
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_25
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 9
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_43

    .line 10
    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v3, v0, :cond_43

    .line 11
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_43
    :try_start_43
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_48

    goto :goto_4c

    .line 21
    :catch_48
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    .line 23
    :goto_4c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 27
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mSplitLine:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v0, :cond_6a

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mBackgroundImageSrc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 6
    :cond_17
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_6a

    .line 9
    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mStyle:Lorg/json/JSONObject;

    const-string v2, "position"

    const-string v3, "absolute"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6a

    if-eqz v0, :cond_6a

    .line 13
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    const/4 v1, 0x0

    .line 14
    :goto_3d
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6a

    .line 15
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StatusBar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 17
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_6a

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_6a
    :goto_6a
    return-void
.end method

.method public setStyleBackgroundColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mBackGroundDrawable:Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28

    move-object v12, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p5

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initLeftButtonLayout()V

    .line 5
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_1a

    .line 6
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    .line 8
    :cond_1a
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2e

    .line 9
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_3e

    .line 11
    :cond_2e
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    :goto_3e
    move-object v7, v1

    .line 14
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    const/16 v3, 0xd

    const/4 v4, -0x2

    const/4 v5, 0x1

    if-nez v1, :cond_94

    .line 15
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    const-string v6, "TitleNView.Title"

    .line 16
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 18
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 19
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 20
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 21
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    iget-object v6, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "clip"

    move-object/from16 v6, p4

    .line 24
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 25
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_8b

    .line 27
    :cond_84
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 29
    :goto_8b
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    .line 32
    :cond_94
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_a8

    .line 33
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_b8

    .line 35
    :cond_a8
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    :goto_b8
    move-object v8, v1

    .line 38
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d0

    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    .line 39
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_d0
    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v12, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v6, "17px"

    invoke-static {v6, v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 42
    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v6, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v9, v12, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v11, p3

    invoke-static {v11, v6, v0, v9}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 45
    :try_start_ee
    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f2} :catch_f4

    :goto_f2
    move v9, v0

    goto :goto_f9

    .line 47
    :catch_f4
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_f2

    .line 50
    :goto_f9
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_110

    .line 52
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v1, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 54
    :cond_110
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 55
    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v12, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v4, "88px"

    invoke-static {v4, v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v14

    const-string v0, "left"

    .line 59
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    if-nez v0, :cond_13e

    const-string v0, "auto"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    goto :goto_13e

    .line 65
    :cond_132
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 67
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 68
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_159

    .line 69
    :cond_13e
    :goto_13e
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v13, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    invoke-virtual {v13, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 72
    iget v0, v12, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v12, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "10px"

    invoke-static {v3, v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_159
    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v10, p5

    move-object/from16 v11, p12

    .line 79
    invoke-direct/range {v0 .. v11}, Lio/dcloud/feature/nativeObj/TitleNView;->layoutSubtitleIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iput v14, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 81
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    if-eqz v0, :cond_184

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_184

    .line 83
    iget-object v0, v12, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_184
    return-void
.end method

.method public setTitleAlign(Ljava/lang/String;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v1, "left"

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-nez v1, :cond_2f

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_2f

    .line 9
    :cond_21
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 12
    iget p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_4b

    .line 13
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mLeftButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getId()I

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16
    iget p1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v2, 0x0

    const-string v3, "5px"

    invoke-static {v3, p1, v2, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 23
    :goto_4b
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitlelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitleColor(I)V
    .registers 3

    .line 11
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_13
    return-void
.end method

.method public setTitleColor(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 5
    :try_start_c
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_15

    .line 7
    :catch_11
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    :goto_15
    if-eq p1, v0, :cond_1c

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1c
    return-void
.end method

.method public setTitleNViewButtonStyle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 39

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p14

    move-object/from16 v10, p16

    .line 1
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, 0x0

    if-ge v0, v1, :cond_218

    if-ltz v0, :cond_218

    .line 2
    iget-object v1, v6, Lio/dcloud/feature/nativeObj/TitleNView;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/View;

    const/4 v12, 0x1

    if-eqz v1, :cond_217

    .line 4
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v14, 0x0

    if-lt v1, v12, :cond_1f9

    .line 6
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 8
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, -0x1

    if-nez v0, :cond_5c

    invoke-static/range {p5 .. p5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 10
    :try_start_40
    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_45

    goto :goto_49

    .line 12
    :catch_45
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 15
    :goto_49
    :try_start_49
    invoke-static/range {p5 .. p5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_52

    .line 17
    :catch_4e
    invoke-static/range {p5 .. p5}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 19
    :goto_52
    invoke-direct {v6, v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move v4, v0

    move v3, v1

    goto :goto_5e

    :cond_5c
    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 21
    :goto_5e
    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    const-string v0, "bold"

    move-object/from16 v1, p6

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 23
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_7d

    .line 25
    :cond_76
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 27
    :goto_7d
    invoke-virtual {v15}, Landroid/widget/TextView;->postInvalidate()V

    .line 29
    :cond_80
    invoke-static/range {p7 .. p7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 30
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v2, p7

    invoke-static {v2, v0, v11, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    int-to-float v0, v0

    .line 31
    invoke-virtual {v15, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    :cond_94
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_a6

    :cond_a1
    move/from16 v17, v3

    move/from16 v18, v4

    goto :goto_bc

    .line 35
    :cond_a6
    :goto_a6
    invoke-static/range {p9 .. p9}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v17, v3

    move-object/from16 v3, p9

    move/from16 v18, v4

    move-object v4, v15

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/TitleNView;->setTextAndFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V

    .line 37
    :goto_bc
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 38
    invoke-static/range {p12 .. p12}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    const-string v1, "transparent"

    move-object/from16 v2, p17

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 41
    :try_start_d0
    invoke-static/range {p12 .. p12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d4} :catch_d5

    goto :goto_d9

    .line 43
    :catch_d5
    invoke-static/range {p12 .. p12}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v1

    .line 45
    :goto_d9
    instance-of v2, v0, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    if-eqz v2, :cond_e3

    .line 46
    move-object v3, v0

    check-cast v3, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    invoke-virtual {v3, v10}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setWidth(Ljava/lang/String;)V

    :cond_e3
    if-eqz v2, :cond_f0

    .line 48
    check-cast v0, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->getDrawableColor()I

    move-result v2

    if-eq v1, v2, :cond_f0

    .line 49
    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/NativeViewBackButtonDrawable;->setDrawableColor(I)V

    :cond_f0
    if-eqz v9, :cond_fc

    .line 52
    instance-of v0, v13, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v0, :cond_fc

    .line 53
    move-object v0, v13

    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    invoke-virtual {v0, v9}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setBadgeStr(Ljava/lang/String;)V

    .line 54
    :cond_fc
    instance-of v0, v13, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v0, :cond_110

    invoke-static/range {p13 .. p13}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 55
    move-object v0, v13

    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->setDrawRedDot(Z)V

    .line 56
    :cond_110
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13b

    invoke-static/range {p15 .. p15}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    .line 57
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 59
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_15b

    :cond_132
    const/16 v1, 0x8

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_15b

    .line 66
    :cond_13b
    invoke-static/range {p15 .. p15}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15b

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 67
    invoke-direct {v6, v13, v15, v11}, Lio/dcloud/feature/nativeObj/TitleNView;->addSelect(Landroid/view/ViewGroup;Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v0

    move/from16 v5, v18

    const/4 v1, -0x1

    if-eq v1, v5, :cond_15b

    move/from16 v2, v17

    if-eq v1, v2, :cond_15b

    .line 69
    invoke-direct {v6, v5, v2}, Lio/dcloud/feature/nativeObj/TitleNView;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15b
    :goto_15b
    if-eqz v7, :cond_160

    .line 74
    invoke-direct {v6, v7, v8, v13}, Lio/dcloud/feature/nativeObj/TitleNView;->addButtonOnClickListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/View;)V

    .line 77
    :cond_160
    invoke-static/range {p16 .. p16}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "auto"

    if-nez v0, :cond_190

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    invoke-static/range {p15 .. p15}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 78
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v3, "5px"

    invoke-static {v3, v0, v11, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 79
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v13, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_19b

    .line 81
    :cond_190
    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v13, v11, v0, v11, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 84
    :goto_19b
    invoke-static/range {p18 .. p18}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a7

    invoke-static/range {p16 .. p16}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 85
    :cond_1a7
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    move-object/from16 v3, p18

    invoke-static {v3, v0, v11, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v0

    .line 86
    invoke-static/range {p16 .. p16}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ba

    move-object/from16 v2, p19

    goto :goto_1bb

    :cond_1ba
    move-object v2, v10

    :goto_1bb
    iget v3, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v4, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v2, v3, v11, v4}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    if-lez v0, :cond_1cd

    .line 88
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 89
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 91
    :cond_1cd
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 92
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_1d8

    if-le v2, v0, :cond_1d8

    goto :goto_1e4

    .line 95
    :cond_1d8
    invoke-static/range {p16 .. p16}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f0

    .line 96
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    :goto_1e4
    const/4 v4, -0x2

    goto :goto_1f0

    .line 99
    :cond_1e6
    iget v0, v6, Lio/dcloud/feature/nativeObj/NativeView;->mAppScreenWidth:I

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v6, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {v10, v0, v1, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v4

    .line 102
    :cond_1f0
    :goto_1f0
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_1f5
    invoke-direct/range {p0 .. p0}, Lio/dcloud/feature/nativeObj/TitleNView;->caculateTitleMargin()V

    goto :goto_217

    .line 106
    :cond_1f9
    instance-of v1, v0, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    if-eqz v1, :cond_217

    .line 107
    check-cast v0, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    if-eqz v8, :cond_206

    .line 110
    invoke-interface/range {p11 .. p11}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    :cond_206
    move-object/from16 p11, v0

    move-object/from16 p12, p2

    move-object/from16 p13, p3

    move-object/from16 p14, v14

    move-object/from16 p15, p8

    move-object/from16 p16, p9

    move-object/from16 p17, p10

    .line 112
    invoke-virtual/range {p11 .. p17}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_217
    :goto_217
    return v12

    :cond_218
    return v11
.end method

.method public setTitleNViewPadding(IIII)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView;->initTitleNViewLayout()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public setTitleNViewSearchInputText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    if-eqz v0, :cond_3d

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_3d

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->isSetText:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 7
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->isSetText:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3d
    return-void
.end method

.method public setTitleOverflow(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "clip"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_20

    .line 5
    :cond_19
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public setTitleSize(Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    .line 3
    iget v1, p0, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, p0, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_33

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_33
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public startProgress()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    if-eqz v0, :cond_77

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/dcloud/android/widget/DCProgressView;->setAlphaInt(I)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/DCProgressView;->setCurProgress(I)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/DCProgressView;->setWebviewProgress(I)V

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3e

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_3e

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v2}, Lcom/dcloud/android/widget/DCProgressView;->getHeightInt()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mTitleNViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_3e
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_77

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 14
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mIWebviewStateListenerImpl:Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

    if-eqz v0, :cond_63

    .line 15
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mIWebviewStateListenerImpl:Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->removeStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    .line 17
    :cond_63
    new-instance v0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-direct {v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;-><init>(Lio/dcloud/feature/nativeObj/TitleNView$Progress;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mIWebviewStateListenerImpl:Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mIWebviewStateListenerImpl:Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    :cond_77
    return-void
.end method

.method public stopProgress()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCProgressView;->isFinish()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView;->mProgress:Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCProgressView;->finishProgress()V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass1 (io.dcloud.feature.nativeObj.TitleNView$1)
.class Lio/dcloud/feature/nativeObj/TitleNView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->clearNativeViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_1c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {v0}, Lio/dcloud/feature/nativeObj/NativeView;->clearViewData()V

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;

    if-eqz v3, :cond_34

    .line 10
    check-cast v2, Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_34

    .line 16
    :cond_52
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$000(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    :cond_5b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$1;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_64
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass10 (io.dcloud.feature.nativeObj.TitleNView$10)
.class Lio/dcloud/feature/nativeObj/TitleNView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    const-string v0, "titleNViewSearchInputClicked"

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz p1, :cond_31

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_31

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_31
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_56

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_56

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$10;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_56
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass11 (io.dcloud.feature.nativeObj.TitleNView$11)
.class Lio/dcloud/feature/nativeObj/TitleNView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addButtonOnClickListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic val$onclick:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->val$onclick:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->val$onclick:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$11;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p1, v0, v1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$400(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass12 (io.dcloud.feature.nativeObj.TitleNView$12)
.class Lio/dcloud/feature/nativeObj/TitleNView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->initCapsuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$12;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$12;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$500(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass13 (io.dcloud.feature.nativeObj.TitleNView$13)
.class Lio/dcloud/feature/nativeObj/TitleNView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->initCapsuleLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$13;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$13;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    const-string v0, "close"

    invoke-static {p1, v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$500(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass14 (io.dcloud.feature.nativeObj.TitleNView$14)
.class Lio/dcloud/feature/nativeObj/TitleNView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/ui/nativeui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->showCapsuleMenu(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$array:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Lorg/json/JSONArray;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initCancelText(Landroid/widget/TextView;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1b

    :cond_17
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_1b
    return-void
.end method

.method public initTextItem(ILandroid/widget/TextView;Ljava/lang/String;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$600(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_30

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$600(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getFontType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v1, p3

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/feature/nativeObj/TitleNView;->access$700(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Z)V

    goto :goto_68

    .line 5
    :cond_30
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p1, :cond_68

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    const-string v1, ""

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "interval"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 8
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const-string p3, "#e5e5e5"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 p2, 0xa

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    .line 13
    :cond_65
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_68
    :goto_68
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 17
    iget-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p3}, Lio/dcloud/feature/nativeObj/TitleNView;->access$800(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "bold"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7f

    const/4 p3, 0x1

    .line 18
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_83

    :cond_7f
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 22
    :goto_83
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$900(Lio/dcloud/feature/nativeObj/TitleNView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onDismiss(I)Z
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    if-lez p1, :cond_25

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, p1, :cond_25

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "type"

    const-string v2, ""

    .line 3
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "interval"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    return p1

    :cond_25
    return v0
.end method

.method public onItemClick(I)V
    .registers 10

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_5

    return-void

    .line 1
    :cond_5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$600(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, p1, :cond_72

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$600(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;

    if-eqz p1, :cond_d1

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v6, v6, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    aput-object v6, v5, v3

    const-string v7, "ui"

    aput-object v7, v5, v2

    const-string v7, "findWebview"

    aput-object v7, v5, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getWebviewUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    const/16 v1, 0xa

    .line 6
    invoke-interface {v0, v4, v1, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 9
    instance-of v2, v0, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v2, :cond_62

    .line 10
    move-object v1, v0

    check-cast v1, Lio/dcloud/common/DHInterface/IWebview;

    :cond_62
    if-nez v1, :cond_68

    .line 13
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 15
    :cond_68
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-virtual {p1}, Lio/dcloud/feature/nativeObj/data/ButtonDataItem;->getOnclick()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$400(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_d1

    .line 18
    :cond_72
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p1, :cond_d1

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->val$array:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "type"

    const-string v4, ""

    .line 20
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    :cond_91
    if-eqz p1, :cond_d1

    const-string v0, "id"

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appid"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$14;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    aput-object v0, p1, v3

    aput-object v4, p1, v2

    .line 29
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x4d

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_d1
    :goto_d1
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass2 (io.dcloud.feature.nativeObj.TitleNView$2)
.class Lio/dcloud/feature/nativeObj/TitleNView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addBackButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$2;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$2;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_f

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_f
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass3 (io.dcloud.feature.nativeObj.TitleNView$3)
.class Lio/dcloud/feature/nativeObj/TitleNView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addHomeButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$3;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$3;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_1b

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$3;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$3;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mFrameViewParent:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->goHome(Lio/dcloud/common/DHInterface/IFrameView;)V

    :cond_1b
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass4 (io.dcloud.feature.nativeObj.TitleNView$4)
.class Lio/dcloud/feature/nativeObj/TitleNView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$4;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$4;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass5 (io.dcloud.feature.nativeObj.TitleNView$5)
.class Lio/dcloud/feature/nativeObj/TitleNView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$clearBtn:Landroid/widget/TextView;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/widget/TextView;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$clearBtn:Landroid/widget/TextView;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_11

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$clearBtn:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 4
    :cond_11
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$clearBtn:Landroid/widget/TextView;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :goto_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->toJsResponseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    const-string p4, "titleNViewSearchInputChanged"

    const-string v0, "{text:\"%s\"}"

    const/4 v1, 0x1

    if-eqz p2, :cond_53

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_53

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, p3

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_53
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_7a

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    if-eqz p2, :cond_7a

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_7a

    .line 12
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$5;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, p3

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass6 (io.dcloud.feature.nativeObj.TitleNView$6)
.class Lio/dcloud/feature/nativeObj/TitleNView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$align:Ljava/lang/String;

.field final synthetic val$finalLeftIcon:Landroid/widget/TextView;

.field final synthetic val$hintStr:Ljava/lang/String;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$finalLeftIcon:Landroid/widget/TextView;

    iput-object p4, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$hintStr:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$align:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 9

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$200(Lio/dcloud/feature/nativeObj/TitleNView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6e

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    const-string v2, "titleNViewSearchInputFocusChanged"

    const-string v3, "{focus:%b}"

    if-eqz p1, :cond_43

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_43

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    :cond_43
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_6e

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p1, :cond_6e

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6e
    if-eqz p2, :cond_8b

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setGravity(I)V

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$finalLeftIcon:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$hintStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_bf

    .line 14
    :cond_8b
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v0, :cond_bf

    .line 15
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$align:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$hintStr:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$300(Lio/dcloud/feature/nativeObj/TitleNView;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$align:Ljava/lang/String;

    const-string p2, "left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 17
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$finalLeftIcon:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_bf

    .line 19
    :cond_b8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$6;->val$finalLeftIcon:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_bf
    :goto_bf
    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass7 (io.dcloud.feature.nativeObj.TitleNView$7)
.class Lio/dcloud/feature/nativeObj/TitleNView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6a

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->toJsResponseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    const-string v0, "titleNViewSearchInputConfirmed"

    const-string v1, "{text:\"%s\"}"

    const/4 v2, 0x1

    if-eqz p2, :cond_43

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_43

    .line 3
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object p2, p2, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, p3

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    .line 6
    :cond_43
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_6a

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    if-eqz p2, :cond_6a

    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    instance-of p2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz p2, :cond_6a

    .line 7
    iget-object p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$7;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p3

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6a
    return p3
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass8 (io.dcloud.feature.nativeObj.TitleNView$8)
.class Lio/dcloud/feature/nativeObj/TitleNView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$autoFocus:Z

.field final synthetic val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;ZLio/dcloud/common/DHInterface/IWebview;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->val$autoFocus:Z

    iput-object p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-boolean p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->val$autoFocus:Z

    if-eqz p2, :cond_27

    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_27

    .line 2
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3
    sget-boolean p1, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-nez p1, :cond_1e

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    .line 5
    :cond_1e
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lio/dcloud/common/DHInterface/IApp;->unregisterSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 7
    :cond_27
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->val$autoFocus:Z

    if-nez p1, :cond_34

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$8;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    :cond_34
    const/4 p1, 0x0

    return p1
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.AnonymousClass9 (io.dcloud.feature.nativeObj.TitleNView$9)
.class Lio/dcloud/feature/nativeObj/TitleNView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/nativeObj/TitleNView;->addSearchInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;

.field final synthetic val$autoFocus:Z

.field final synthetic val$finalIsClosed:Z

.field final synthetic val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;ZZLio/dcloud/common/DHInterface/IWebview;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iput-boolean p2, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$autoFocus:Z

    iput-boolean p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$finalIsClosed:Z

    iput-object p4, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string p2, "show_animation_end"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2
    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$autoFocus:Z

    if-eqz p1, :cond_2f

    iget-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$finalIsClosed:Z

    if-eqz p1, :cond_2f

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4
    sget-boolean p1, Lio/dcloud/common/adapter/util/DeviceInfo;->isIMEShow:Z

    if-nez p1, :cond_26

    .line 5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-static {p1}, Lio/dcloud/feature/nativeObj/TitleNView;->access$100(Lio/dcloud/feature/nativeObj/TitleNView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->showIME(Landroid/view/View;)V

    .line 6
    :cond_26
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$9;->val$tempWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.BackGroundDrawable (io.dcloud.feature.nativeObj.TitleNView$BackGroundDrawable)
.class Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackGroundDrawable"
.end annotation


# instance fields
.field private bitmapPath:Ljava/lang/String;

.field private bound:Landroid/graphics/Rect;

.field private colorPaint:Landroid/graphics/Paint;

.field private height:I

.field private mBackgroundBitmap:Landroid/graphics/Shader;

.field private mBackgroundColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private offset:I

.field private repeatType:Ljava/lang/String;

.field private shadow5PX:I

.field private shadowColor:Ljava/lang/String;

.field private shadowColorInt:I

.field private shadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    const-string v0, "no-repeat"

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundColor:I

    const-string v1, ""

    .line 227
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColor:Ljava/lang/String;

    .line 228
    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColorInt:I

    .line 229
    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->height:I

    iput v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->offset:I

    .line 230
    iget v1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget p1, p1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const-string v2, "10px"

    invoke-static {v2, v1, v0, p1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadow5PX:I

    return-void
.end method

.method private getShader(Ljava/util/List;FF)Landroid/graphics/Shader;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FF)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->parseGradientDirection(Ljava/lang/String;FF)[F

    move-result-object p2

    if-nez p2, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_13
    new-instance p3, Landroid/graphics/LinearGradient;

    aget v1, p2, v0

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v3, 0x2

    aget v4, p2, v3

    const/4 v5, 0x3

    aget p2, p2, v5

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    move v3, v4

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object p3
.end method

.method private getShadowPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    .line 3
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private parseGradientDirection(Ljava/lang/String;FF)[F
    .registers 12

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_b0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "\\s*"

    const-string v3, ""

    .line 4
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_86

    :goto_2a
    const/4 v0, -0x1

    goto :goto_6b

    :sswitch_2c
    const-string v0, "tobottomright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_2a

    :cond_35
    const/4 v0, 0x5

    goto :goto_6b

    :sswitch_37
    const-string v3, "totop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_2a

    :sswitch_40
    const-string v0, "totopleft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_2a

    :cond_49
    const/4 v0, 0x3

    goto :goto_6b

    :sswitch_4b
    const-string v0, "toleft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_2a

    :cond_54
    const/4 v0, 0x2

    goto :goto_6b

    :sswitch_56
    const-string v0, "toright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_2a

    :cond_5f
    const/4 v0, 0x1

    goto :goto_6b

    :sswitch_61
    const-string v0, "tobottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_2a

    :cond_6a
    const/4 v0, 0x0

    :cond_6b
    :goto_6b
    packed-switch v0, :pswitch_data_a0

    const/4 p1, 0x0

    return-object p1

    :pswitch_70
    aput p2, v1, v5

    aput p3, v1, v4

    goto :goto_85

    :pswitch_75
    aput p3, v1, v6

    goto :goto_85

    :pswitch_78
    aput p2, v1, v7

    aput p3, v1, v6

    goto :goto_85

    :pswitch_7d
    aput p2, v1, v7

    goto :goto_85

    :pswitch_80
    aput p2, v1, v5

    goto :goto_85

    :pswitch_83
    aput p3, v1, v4

    :goto_85
    return-object v1

    :sswitch_data_86
    .sparse-switch
        -0x50965f9a -> :sswitch_61
        -0x43cb777f -> :sswitch_56
        -0x33bf06fe -> :sswitch_4b
        -0xa418fff -> :sswitch_40
        0x696dcfa -> :sswitch_37
        0x46207176 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_78
        :pswitch_75
        :pswitch_70
    .end packed-switch

    :array_b0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseGradientValues(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, "("

    const-string v2, ","

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    .line 4
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :try_start_11
    const-string v3, "linear-gradient"

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_31
    move-object v5, v4

    .line 11
    :goto_32
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 12
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    .line 17
    :cond_52
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6b
    if-eqz v5, :cond_80

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    .line 27
    :cond_80
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_83} :catch_85

    goto :goto_32

    :cond_84
    return-object p1

    :catch_85
    :cond_85
    return-object v4
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 3
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    int-to-float p3, p3

    int-to-float v0, v5

    div-float/2addr p3, v0

    .line 7
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    const-string v1, "repeat-x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_32

    .line 9
    invoke-virtual {v6, v1, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_43

    .line 10
    :cond_32
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    const-string v2, "repeat-y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 11
    invoke-virtual {v6, p2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_43

    .line 13
    :cond_40
    invoke-virtual {v6, p2, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_43
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 15
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_54

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_54
    return-object p2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->updatebound()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz v0, :cond_30

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_68

    .line 7
    :cond_30
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_5f

    .line 8
    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    .line 9
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_68

    .line 14
    :cond_5f
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :goto_68
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColor:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->height:I

    if-nez v5, :cond_89

    iget v5, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadow5PX:I

    :cond_89
    add-int/2addr v5, v4

    iget v6, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->offset:I

    add-int/2addr v5, v6

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 21
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getShadowPaint()Landroid/graphics/Paint;

    move-result-object v2

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->offset:I

    sub-int/2addr v3, v4

    int-to-float v5, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v7, v3

    iget v8, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColorInt:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 22
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getShadowPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 24
    :cond_b5
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-eqz p1, :cond_c0

    .line 25
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_c0
    return-void
.end method

.method public getBackgroundColorPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    .line 3
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-nez v0, :cond_8

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 2
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-eqz v0, :cond_b

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setAlpha(I)V

    .line 4
    :cond_b
    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundColor:I

    .line 5
    invoke-direct {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getShadowPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    if-eqz v0, :cond_d1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_d1

    :cond_c
    if-nez p1, :cond_f

    return-void

    .line 8
    :cond_f
    invoke-direct {p0, p1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->parseGradientValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    .line 10
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->getShader(Ljava/util/List;FF)Landroid/graphics/Shader;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    goto/16 :goto_cd

    .line 12
    :cond_32
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_64

    .line 16
    :try_start_4d
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_61} :catch_62

    goto :goto_68

    :catch_62
    move-object p1, v1

    goto :goto_68

    .line 20
    :cond_64
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_68
    if-nez p1, :cond_72

    .line 23
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 24
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 28
    :cond_72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_af

    .line 29
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 30
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v2, p1, v0, v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_bf

    .line 36
    :cond_af
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_bf
    if-nez p1, :cond_c4

    .line 39
    iput-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    goto :goto_cd

    .line 42
    :cond_c4
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 45
    :goto_cd
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 46
    :cond_d1
    :goto_d1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setRepeatType(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->repeatType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->updatebound()V

    .line 5
    invoke-virtual {p0, p2}, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public setShadowColor(Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "color"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    const-string v1, "height"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    const-string v1, "10px"

    :goto_1e
    const-string v2, "offset"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, "0px"

    .line 6
    :goto_2d
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget v3, v2, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v2, v2, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->height:I

    .line 7
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget v2, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerWidth:I

    iget v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->mCreateScale:F

    invoke-static {p1, v2, v4, v1}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->offset:I

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 9
    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColor:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->shadowColorInt:I

    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_59
    return-void
.end method

.method public updatebound()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-boolean v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lio/dcloud/feature/nativeObj/TitleNView;->access$1000(Lio/dcloud/feature/nativeObj/TitleNView;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_23

    .line 7
    :cond_1f
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 9
    :goto_23
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget-boolean v1, v0, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v1, :cond_39

    iget-object v0, v0, Lio/dcloud/feature/nativeObj/NativeView;->mStatusbarView:Landroid/view/View;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_39

    .line 10
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 12
    :cond_39
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BackGroundDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    iget v3, v1, Lio/dcloud/feature/nativeObj/NativeView;->mInnerHeight:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget-boolean v4, v1, Lio/dcloud/feature/nativeObj/NativeView;->isStatusBar:Z

    if-eqz v4, :cond_51

    iget-boolean v1, v1, Lio/dcloud/feature/nativeObj/NativeView;->isImmersed:Z

    if-eqz v1, :cond_51

    .line 14
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 15
    :cond_51
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.BadgeLinearLayout (io.dcloud.feature.nativeObj.TitleNView$BadgeLinearLayout)
.class Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeLinearLayout"
.end annotation


# instance fields
.field private badgeStr:Ljava/lang/String;

.field canvasRect:Landroid/graphics/Rect;

.field circle4PX:F

.field circle8PX:F

.field private isDrawRedDot:Z

.field private redDotPaint:Landroid/graphics/Paint;

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->isDrawRedDot:Z

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->badgeStr:Ljava/lang/String;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->canvasRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;FI)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->redDotPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->redDotPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->textPaint:Landroid/text/TextPaint;

    const/4 p4, -0x1

    .line 15
    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 16
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 17
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p1, "8px"

    const/4 p2, 0x0

    .line 18
    invoke-static {p1, p2, p2, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->circle8PX:F

    .line 19
    iget-object p4, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "4px"

    .line 20
    invoke-static {p1, p2, p2, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->circle4PX:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->isDrawRedDot:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->badgeStr:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->canvasRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->circle4PX:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->redDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_25
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBadgeStr(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_38

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->badgeStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->badgeStr:Ljava/lang/String;

    goto :goto_35

    .line 5
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->badgeStr:Ljava/lang/String;

    .line 7
    :goto_35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_38
    return-void
.end method

.method public setDrawRedDot(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->isDrawRedDot:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->isDrawRedDot:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_9
    return-void
.end method

.method public setRedDotColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeLinearLayout;->redDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.BadgeRelateiveLayout (io.dcloud.feature.nativeObj.TitleNView$BadgeRelateiveLayout)
.class Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeRelateiveLayout"
.end annotation


# instance fields
.field private badgeStr:Ljava/lang/String;

.field canvasRect:Landroid/graphics/Rect;

.field circle4PX:F

.field circle8PX:F

.field private isDrawRedDot:Z

.field private redDotPaint:Landroid/graphics/Paint;

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->isDrawRedDot:Z

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->canvasRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;FI)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;-><init>(Lio/dcloud/feature/nativeObj/TitleNView;Landroid/content/Context;)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->redDotPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->redDotPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    const/4 p4, -0x1

    .line 15
    invoke-virtual {p1, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 16
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 17
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p1, "8px"

    const/4 p2, 0x0

    .line 18
    invoke-static {p1, p2, p2, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->circle8PX:F

    .line 19
    iget-object p4, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string p1, "4px"

    .line 20
    invoke-static {p1, p2, p2, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->circle4PX:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 3
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->isDrawRedDot:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->canvasRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->circle4PX:F

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->redDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    :cond_25
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a1

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    iget-object v1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 11
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->redDotPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v2, -0x10000

    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->canvasRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->circle8PX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->canvasRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v5, v0

    int-to-float v0, v5

    iget v5, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->circle4PX:F

    add-float/2addr v0, v5

    invoke-direct {v2, v3, v6, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v2, v0, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 17
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 18
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 19
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-float/2addr v1, v3

    sub-float/2addr v4, v1

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBadgeStr(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_38

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2f

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    goto :goto_35

    .line 5
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->badgeStr:Ljava/lang/String;

    .line 7
    :goto_35
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_38
    return-void
.end method

.method public setDrawRedDot(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->isDrawRedDot:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->isDrawRedDot:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_9
    return-void
.end method

.method public setRedDotColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$BadgeRelateiveLayout;->redDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.IWebviewStateListenerImpl (io.dcloud.feature.nativeObj.TitleNView$IWebviewStateListenerImpl)
.class Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWebviewStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IWebviewStateListenerImpl"
.end annotation


# instance fields
.field private mProgress:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lio/dcloud/feature/nativeObj/TitleNView$Progress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView$Progress;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x3

    if-ne p1, v0, :cond_39

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/dcloud/android/widget/DCProgressView;->updateProgress(I)V

    goto :goto_60

    :cond_39
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3f

    const/4 p2, 0x5

    if-ne p1, p2, :cond_60

    .line 5
    :cond_3f
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCProgressView;->isFinish()Z

    move-result p1

    if-nez p1, :cond_60

    .line 6
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$IWebviewStateListenerImpl;->mProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/nativeObj/TitleNView$Progress;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCProgressView;->finishProgress()V

    :cond_60
    :goto_60
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.Progress (io.dcloud.feature.nativeObj.TitleNView$Progress)
.class Lio/dcloud/feature/nativeObj/TitleNView$Progress;
.super Lcom/dcloud/android/widget/DCProgressView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Progress"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/DCProgressView;-><init>(Landroid/content/Context;)V

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.TitleNView.SearchInputDrawable (io.dcloud.feature.nativeObj.TitleNView$SearchInputDrawable)
.class Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/TitleNView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchInputDrawable"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private radius:I

.field final synthetic this$0:Lio/dcloud/feature/nativeObj/TitleNView;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/nativeObj/TitleNView;II)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->this$0:Lio/dcloud/feature/nativeObj/TitleNView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iput p3, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->radius:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->radius:I

    int-to-float v0, v0

    iget-object v2, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getDrawableColor()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDrawableColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/TitleNView$SearchInputDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
