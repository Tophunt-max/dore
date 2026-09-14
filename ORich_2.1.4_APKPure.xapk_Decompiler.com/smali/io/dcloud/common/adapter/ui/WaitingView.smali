###### Class io.dcloud.common.adapter.ui.WaitingView (io.dcloud.common.adapter.ui.WaitingView)
.class public Lio/dcloud/common/adapter/ui/WaitingView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;,
        Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;
    }
.end annotation


# instance fields
.field mOncloseFunId:Ljava/lang/String;

.field mWaitingWin:Landroid/widget/PopupWindow;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field public uuid:Ljava/lang/String;

.field waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lio/dcloud/common/adapter/ui/WaitingView;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/WaitingView;->mWaitingWin:Landroid/widget/PopupWindow;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    .line 10
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 11
    iput-object p4, p0, Lio/dcloud/common/adapter/ui/WaitingView;->mOncloseFunId:Ljava/lang/String;

    .line 15
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p4

    .line 16
    new-instance v0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;

    invoke-direct {v0, p0, p4}, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;-><init>(Lio/dcloud/common/adapter/ui/WaitingView;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->init(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 19
    new-instance v2, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    const-string v3, ""

    invoke-direct {v2, p0, p4, v0, v3}, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;-><init>(Lio/dcloud/common/adapter/ui/WaitingView;Landroid/content/Context;Landroid/widget/PopupWindow;Ljava/lang/String;)V

    iput-object v2, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    const/high16 p4, -0x34000000    # -3.3554432E7f

    .line 20
    invoke-virtual {v2, p3, p4}, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->initProgressBar(Ljava/lang/String;I)V

    if-eqz p2, :cond_31

    .line 23
    iget-object p3, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    invoke-virtual {p3, p2}, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->initTitleView(Ljava/lang/String;)V

    .line 25
    :cond_31
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 26
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    const/4 p3, -0x2

    iput p3, p2, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->width:I

    .line 27
    iput p3, p2, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->height:I

    .line 29
    invoke-virtual {v0, p3, p3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 35
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView;->mWaitingWin:Landroid/widget/PopupWindow;

    .line 46
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    const/16 p2, 0x11

    .line 47
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static isInRect(IILandroid/graphics/Rect;)Z
    .registers 4

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-le p0, v0, :cond_12

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-ge p0, v0, :cond_12

    iget p0, p2, Landroid/graphics/Rect;->top:I

    if-le p1, p0, :cond_12

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView;->mWaitingWin:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method updateTitle(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->initTitleView(Ljava/lang/String;)V

    goto :goto_d

    .line 4
    :cond_a
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method

###### Class io.dcloud.common.adapter.ui.WaitingView.PopupWindowImpl (io.dcloud.common.adapter.ui.WaitingView$PopupWindowImpl)
.class Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/WaitingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupWindowImpl"
.end annotation


# instance fields
.field private modal:Z

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/WaitingView;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/WaitingView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->modal:Z

    .line 6
    invoke-virtual {p0, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 8
    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 p2, 0x1

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method init(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->modal:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public onDismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/common/adapter/ui/WaitingView;->mWaitingWin:Landroid/widget/PopupWindow;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_29

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object p2, p2, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mAbsRect:Landroid/graphics/Rect;

    invoke-static {p1, v0, p2}, Lio/dcloud/common/adapter/ui/WaitingView;->isInRect(IILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$PopupWindowImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object p2, p1, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-boolean p2, p2, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->padlock:Z

    if-eqz p2, :cond_29

    .line 4
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/WaitingView;->close()V

    const/4 v1, 0x0

    :cond_29
    return v1
.end method

###### Class io.dcloud.common.adapter.ui.WaitingView.WaitingViewImpl (io.dcloud.common.adapter.ui.WaitingView$WaitingViewImpl)
.class Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/WaitingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingViewImpl"
.end annotation


# instance fields
.field backgroundColor:I

.field height:I

.field mAbsRect:Landroid/graphics/Rect;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRectF:Landroid/graphics/RectF;

.field mTextAligin:Ljava/lang/String;

.field mTextColor:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field public padlock:Z

.field paint:Landroid/graphics/Paint;

.field pw:Landroid/widget/PopupWindow;

.field round:F

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/WaitingView;

.field width:I


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/WaitingView;Landroid/content/Context;Landroid/widget/PopupWindow;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    .line 4
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTextAligin:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTextColor:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    .line 7
    iput p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->round:F

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->paint:Landroid/graphics/Paint;

    .line 9
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mRectF:Landroid/graphics/RectF;

    .line 10
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mAbsRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->backgroundColor:I

    .line 13
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->pw:Landroid/widget/PopupWindow;

    .line 16
    iput-object p3, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->pw:Landroid/widget/PopupWindow;

    const/16 p1, 0xa

    .line 18
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->round:F

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public initBackground(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->backgroundColor:I

    return-void
.end method

.method initProgressBar(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 2
    sget p2, Lio/dcloud/PdrR;->LAYOUT_SNOW_BLACK_PROGRESS:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget p2, Lio/dcloud/PdrR;->ID_PROGRESSBAR:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_30
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method initProgressBar1(I)V
    .registers 3

    .line 1
    new-instance p1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method initTitleView(Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl$1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl$1;-><init>(Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTextAligin:Ljava/lang/String;

    const/16 v1, 0x11

    if-eqz v0, :cond_4d

    const-string v2, "left"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 30
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_56

    .line 31
    :cond_2e
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTextAligin:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 32
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_56

    .line 34
    :cond_43
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_56

    .line 37
    :cond_4d
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->this$0:Lio/dcloud/common/adapter/ui/WaitingView;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView;->waitingViewImpl:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    :goto_56
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int p2, p4, p2

    sub-int v3, p5, p3

    add-int/2addr p3, v0

    .line 10
    iget-object v4, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    add-int/2addr v4, v5

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    if-le v3, v4, :cond_33

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_33
    const/4 v3, 0x0

    :goto_34
    add-int/2addr p3, v3

    const/4 v3, 0x0

    :goto_36
    if-ge v3, p1, :cond_63

    .line 16
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, p2, v5

    shr-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v5

    sub-int v8, p4, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, p3

    sub-int v9, p5, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 21
    invoke-virtual {v4, v5, p3, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int p3, v8, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_63
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    const/4 p1, 0x0

    move v5, v2

    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge p2, v0, :cond_41

    .line 13
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 14
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3e

    .line 18
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 19
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 21
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v8, v0, -0x1

    if-ne p2, v8, :cond_3b

    const/4 v8, 0x0

    goto :goto_3c

    :cond_3b
    move v8, v2

    :goto_3c
    add-int/2addr v7, v8

    add-int/2addr v5, v7

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_41
    add-int/2addr v1, v3

    add-int/2addr v6, v1

    add-int/2addr v5, v4

    .line 28
    iget p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->width:I

    const/4 v0, -0x2

    if-eq p2, v0, :cond_4a

    move v6, p2

    .line 31
    :cond_4a
    iget p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->height:I

    if-eq p2, v0, :cond_4f

    move v5, p2

    .line 34
    :cond_4f
    invoke-virtual {p0, v6, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 35
    new-instance p2, Landroid/graphics/RectF;

    int-to-float v0, v6

    int-to-float v1, v5

    const/4 v2, 0x0

    invoke-direct {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mRectF:Landroid/graphics/RectF;

    .line 36
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, p1, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->mAbsRect:Landroid/graphics/Rect;

    .line 37
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v6, v5}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.WaitingView.WaitingViewImpl.AnonymousClass1 (io.dcloud.common.adapter.ui.WaitingView$WaitingViewImpl$1)
.class Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl$1;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;->initTitleView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl$1;->this$1:Lio/dcloud/common/adapter/ui/WaitingView$WaitingViewImpl;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3f

    const-string p2, "\n"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length p2, p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    if-ge v0, p2, :cond_3d

    .line 7
    aget-object v4, p1, v0

    invoke-static {v4, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 8
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 9
    iget v6, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v6, v5

    add-int/2addr v2, v6

    int-to-float v5, v3

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3a

    float-to-int v3, v4

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3d
    move v0, v3

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 16
    :goto_40
    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method
