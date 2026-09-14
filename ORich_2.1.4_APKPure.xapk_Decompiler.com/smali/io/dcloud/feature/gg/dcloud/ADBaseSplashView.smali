###### Class io.dcloud.feature.gg.dcloud.ADBaseSplashView (io.dcloud.feature.gg.dcloud.ADBaseSplashView)
.class public Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/feature/internal/splash/ISplash;


# instance fields
.field appid:Ljava/lang/String;

.field bottomIcon:Landroid/view/View;

.field container:Landroid/widget/FrameLayout;

.field mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field private pullTime:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->initView(Landroid/app/Activity;)V

    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .registers 9

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
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->getBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "id"

    const-string v2, "ad_dcloud_splash_container"

    .line 4
    invoke-static {p1, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->container:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "ad_dcloud_splash_bottom_bar"

    .line 6
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->bottomIcon:Landroid/view/View;

    const-string v0, "ad_dcloud_icon_single"

    .line 7
    invoke-static {p1, v1, v0}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v3, "ad_dcloud_icon"

    const-string v4, "ad_dcloud_name"

    const/16 v5, 0x8

    if-nez v2, :cond_75

    .line 9
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11
    invoke-static {p1}, Lio/dcloud/feature/gg/AdSplashUtil;->getApplicationIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-static {p1, v1, v4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 13
    invoke-static {p1}, Lio/dcloud/feature/gg/AdSplashUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_92

    :cond_75
    const/4 v6, 0x0

    .line 15
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-static {p1, v1, v4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-static {p1, v1, v3}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_92
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "_adio.dcloud.feature.ad.dcloud.ADHandler"

    .line 1
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBgColor()I
    .registers 3

    const-string v0, "bg"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, -0x1

    :goto_f
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    const-string v0, "img"

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2d

    .line 4
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 7
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e

    :cond_23
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v2

    :goto_2e
    if-eqz v0, :cond_36

    .line 15
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_36
    return-object v2
.end method

.method public getImgContainer()Landroid/widget/FrameLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onFinishShow()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_d

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->appid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    .line 5
    :cond_d
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->container:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_14
    return-void
.end method

.method public onWillCloseSplash()V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->pullTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1194

    cmp-long v4, v0, v2

    if-ltz v4, :cond_10

    .line 2
    invoke-virtual {p0}, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->onFinishShow()V

    :cond_10
    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->mCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setPullTime(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lio/dcloud/feature/gg/dcloud/ADBaseSplashView;->pullTime:J

    return-void
.end method
