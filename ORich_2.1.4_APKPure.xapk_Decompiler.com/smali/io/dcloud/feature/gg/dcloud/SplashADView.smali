###### Class io.dcloud.feature.gg.dcloud.SplashADView (io.dcloud.feature.gg.dcloud.SplashADView)
.class public Lio/dcloud/feature/gg/dcloud/SplashADView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/internal/splash/ISplash;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;
    }
.end annotation


# instance fields
.field bottomIcon:Landroid/view/View;

.field private listener:Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;

.field mADData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field mCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field mIconView:Landroid/widget/ImageView;

.field public mSplashUnd:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mIconView:Landroid/widget/ImageView;

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mADData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 8
    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mCallback:Lio/dcloud/common/DHInterface/ICallBack;

    .line 9
    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mADData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    .line 10
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/SplashADView;->init0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/gg/dcloud/SplashADView;)Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->listener:Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;

    return-object p0
.end method

.method private getBgColor(Landroid/content/Context;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->bg(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->img(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSkipButtonView(Landroid/view/View;)Landroid/view/View;
    .registers 5

    if-eqz p1, :cond_13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowTimeTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p1

    .line 3
    :cond_13
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 4
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_2e

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/dcloud/feature/gg/dcloud/SplashADView;->getSkipButtonView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method private init0(Landroid/content/Context;)V
    .registers 10

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "ad_dcloud_splash"

    invoke-static {p1, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/SplashADView;->getBgColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, -0x2

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const-string v1, "id"

    const-string v2, "ad_dcloud_splash_container"

    .line 4
    invoke-static {p1, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const-string v3, "ad_dcloud_splash_bottom_bar"

    .line 5
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->bottomIcon:Landroid/view/View;

    .line 6
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/SplashADView;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v3, "ad_dcloud_icon"

    const-string v4, "ad_dcloud_name"

    const-string v5, "ad_dcloud_icon_single"

    const/16 v6, 0x8

    if-nez v0, :cond_74

    .line 8
    invoke-static {p1, v1, v5}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 12
    invoke-static {p1}, Lio/dcloud/feature/gg/AdSplashUtil;->getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    invoke-static {p1, v1, v4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 15
    invoke-static {p1}, Lio/dcloud/feature/gg/AdSplashUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9b

    .line 17
    :cond_74
    invoke-static {p1, v1, v5}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v7, 0x0

    .line 18
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    invoke-static {p1, v1, v4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :goto_9b
    new-instance v0, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mADData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    new-instance v3, Lio/dcloud/feature/gg/dcloud/SplashADView$1;

    invoke-direct {v3, p0}, Lio/dcloud/feature/gg/dcloud/SplashADView$1;-><init>(Lio/dcloud/feature/gg/dcloud/SplashADView;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;-><init>(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/view/ViewGroup;Lio/dcloud/feature/gg/dcloud/AdViewListener;)V

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mSplashUnd:Lio/dcloud/feature/gg/dcloud/SplashADViewWrapper;

    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public setListener(Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADView;->listener:Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADView.AnonymousClass1 (io.dcloud.feature.gg.dcloud.SplashADView$1)
.class Lio/dcloud/feature/gg/dcloud/SplashADView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/gg/dcloud/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/SplashADView;->init0(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/SplashADView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/SplashADView$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplashScreenActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinishShow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/SplashADView;->access$000(Lio/dcloud/feature/gg/dcloud/SplashADView;)Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;

    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/SplashADView;->access$000(Lio/dcloud/feature/gg/dcloud/SplashADView;)Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;->onShowFinish()V

    .line 3
    :cond_11
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;

    iget-object v1, v0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mCallback:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v1, :cond_24

    .line 4
    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mADData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v0, v0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/SplashADView$1;->this$0:Lio/dcloud/feature/gg/dcloud/SplashADView;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/dcloud/feature/gg/dcloud/SplashADView;->mCallback:Lio/dcloud/common/DHInterface/ICallBack;

    :cond_24
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.SplashADView.CloseSplashListener (io.dcloud.feature.gg.dcloud.SplashADView$CloseSplashListener)
.class public interface abstract Lio/dcloud/feature/gg/dcloud/SplashADView$CloseSplashListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gg/dcloud/SplashADView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CloseSplashListener"
.end annotation


# virtual methods
.method public abstract onShowFinish()V
.end method
