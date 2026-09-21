###### Class io.dcloud.g.a.f (io.dcloud.g.a.f)
.class public Lio/dcloud/g/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IAppInfo;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lio/dcloud/common/DHInterface/IWebAppRootView;

.field private c:Lio/dcloud/common/DHInterface/IOnCreateSplashView;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field protected h:Z

.field private i:I

.field j:Lio/dcloud/common/adapter/util/ViewRect;

.field k:Lio/dcloud/common/util/AppStatusBarManager;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    .line 4
    iput-object v0, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    .line 5
    iput-object v0, p0, Lio/dcloud/g/a/f;->c:Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lio/dcloud/g/a/f;->d:I

    .line 9
    iput v1, p0, Lio/dcloud/g/a/f;->e:I

    .line 11
    iput v1, p0, Lio/dcloud/g/a/f;->f:I

    .line 15
    iput v1, p0, Lio/dcloud/g/a/f;->g:I

    .line 18
    iput-boolean v1, p0, Lio/dcloud/g/a/f;->h:Z

    .line 21
    iput v1, p0, Lio/dcloud/g/a/f;->i:I

    .line 23
    new-instance v2, Lio/dcloud/common/adapter/util/ViewRect;

    invoke-direct {v2}, Lio/dcloud/common/adapter/util/ViewRect;-><init>()V

    iput-object v2, p0, Lio/dcloud/g/a/f;->j:Lio/dcloud/common/adapter/util/ViewRect;

    const-string v2, "none"

    .line 25
    iput-object v2, p0, Lio/dcloud/g/a/f;->l:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lio/dcloud/g/a/f;->m:Ljava/lang/String;

    .line 31
    iput-boolean v1, p0, Lio/dcloud/g/a/f;->n:Z

    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/util/AppStatusBarManager;

    invoke-direct {v0, p1, p0}, Lio/dcloud/common/util/AppStatusBarManager;-><init>(Landroid/app/Activity;Lio/dcloud/g/a/f;)V

    iput-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    .line 4
    :cond_b
    iput-object p1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    return-void
.end method

.method public checkSelfPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->checkSelfPermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public clearMaskLayerCount()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lio/dcloud/g/a/f;->i:I

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppViewRect()Lio/dcloud/common/adapter/util/ViewRect;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->j:Lio/dcloud/common/adapter/util/ViewRect;

    return-object v0
.end method

.method public getInt(I)I
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 p1, -0x1

    goto :goto_12

    .line 1
    :cond_a
    iget p1, p0, Lio/dcloud/g/a/f;->e:I

    goto :goto_12

    .line 2
    :cond_d
    iget p1, p0, Lio/dcloud/g/a/f;->g:I

    goto :goto_12

    .line 3
    :cond_10
    iget p1, p0, Lio/dcloud/g/a/f;->d:I

    :goto_12
    return p1
.end method

.method public getMaskLayerCount()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/g/a/f;->i:I

    return v0
.end method

.method public getOnCreateSplashView()Lio/dcloud/common/DHInterface/IOnCreateSplashView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->c:Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    return-object v0
.end method

.method public getRequestedOrientation()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/f;->h:Z

    return v0
.end method

.method public isVerticalScreen()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    return-object v0
.end method

.method public requestPermissions([Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public setFullScreen(Z)V
    .registers 4

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    if-eq v0, p1, :cond_1b

    .line 2
    iput-boolean p1, p0, Lio/dcloud/g/a/f;->h:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    if-eqz v0, :cond_11

    .line 4
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/common/util/AppStatusBarManager;->setFullScreen(Landroid/app/Activity;Z)V

    .line 6
    :cond_11
    iget-boolean v0, p0, Lio/dcloud/g/a/f;->h:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    goto :goto_18

    :cond_17
    const/4 v0, 0x3

    :goto_18
    invoke-virtual {p0, v0}, Lio/dcloud/g/a/f;->updateScreenInfo(I)V

    .line 8
    :cond_1b
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    return-void
.end method

.method public setMaskLayer(Z)V
    .registers 2

    if-eqz p1, :cond_9

    .line 1
    iget p1, p0, Lio/dcloud/g/a/f;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/g/a/f;->i:I

    goto :goto_14

    .line 3
    :cond_9
    iget p1, p0, Lio/dcloud/g/a/f;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/dcloud/g/a/f;->i:I

    if-gez p1, :cond_14

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/dcloud/g/a/f;->i:I

    :cond_14
    :goto_14
    return-void
.end method

.method public setOnCreateSplashView(Lio/dcloud/common/DHInterface/IOnCreateSplashView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/f;->c:Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3

    .line 23
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public setRequestedOrientation(Ljava/lang/String;)V
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lio/dcloud/g/a/f$a;

    invoke-direct {v0, p0, p1}, Lio/dcloud/g/a/f$a;-><init>(Lio/dcloud/g/a/f;Ljava/lang/String;)V

    const-wide/16 v1, 0x30

    invoke-static {v0, v1, v2, p1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public setWebAppRootView(Lio/dcloud/common/DHInterface/IWebAppRootView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    return-void
.end method

.method public updateScreenInfo(I)V
    .registers 10

    .line 1
    iget-boolean v0, p0, Lio/dcloud/g/a/f;->h:Z

    if-nez v0, :cond_31

    .line 2
    iget v0, p0, Lio/dcloud/g/a/f;->f:I

    if-nez v0, :cond_31

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lio/dcloud/g/a/f;->f:I

    if-lez v0, :cond_31

    .line 7
    invoke-virtual {p0}, Lio/dcloud/g/a/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    iget v2, p0, Lio/dcloud/g/a/f;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatusBarHeight"

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_31
    iget-object v0, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    iget-object v3, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isAllScreenDevice(Landroid/app/Activity;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9e

    .line 17
    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 19
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 20
    iget-object v2, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    if-eqz v2, :cond_70

    invoke-virtual {v2}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result v2

    if-nez v2, :cond_70

    .line 21
    iget v2, p0, Lio/dcloud/g/a/f;->f:I

    sub-int/2addr v1, v2

    :cond_70
    move v2, v1

    .line 23
    iget-object v1, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isNavigationBarExist(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lio/dcloud/g/a/f;->n:Z

    if-nez v1, :cond_7f

    const/4 v1, 0x1

    goto :goto_80

    :cond_7f
    const/4 v1, 0x0

    .line 25
    :goto_80
    iget-object v6, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v6

    .line 26
    iget-object v7, p0, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_98

    if-eqz v1, :cond_9d

    sub-int/2addr v2, v6

    goto :goto_9d

    :cond_98
    if-eqz v1, :cond_9d

    sub-int v1, v0, v6

    goto :goto_9e

    :cond_9d
    :goto_9d
    move v1, v0

    .line 38
    :cond_9e
    :goto_9e
    iput v2, p0, Lio/dcloud/g/a/f;->e:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a8

    .line 40
    iput v1, p0, Lio/dcloud/g/a/f;->d:I

    .line 41
    iput v2, p0, Lio/dcloud/g/a/f;->g:I

    goto :goto_df

    :cond_a8
    if-ne p1, v5, :cond_c0

    .line 43
    iput v1, p0, Lio/dcloud/g/a/f;->d:I

    if-eqz v3, :cond_b1

    .line 46
    iput v2, p0, Lio/dcloud/g/a/f;->g:I

    goto :goto_df

    .line 48
    :cond_b1
    iget-object p1, p0, Lio/dcloud/g/a/f;->k:Lio/dcloud/common/util/AppStatusBarManager;

    invoke-virtual {p1}, Lio/dcloud/common/util/AppStatusBarManager;->isFullScreenOrImmersive()Z

    move-result p1

    if-eqz p1, :cond_ba

    goto :goto_bc

    :cond_ba
    iget v4, p0, Lio/dcloud/g/a/f;->f:I

    :goto_bc
    sub-int/2addr v2, v4

    iput v2, p0, Lio/dcloud/g/a/f;->g:I

    goto :goto_df

    .line 50
    :cond_c0
    iget-object p1, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    if-eqz p1, :cond_db

    .line 51
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lio/dcloud/g/a/f;->d:I

    .line 52
    iget-object p1, p0, Lio/dcloud/g/a/f;->b:Lio/dcloud/common/DHInterface/IWebAppRootView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lio/dcloud/g/a/f;->g:I

    goto :goto_df

    .line 54
    :cond_db
    iput v1, p0, Lio/dcloud/g/a/f;->d:I

    .line 55
    iput v2, p0, Lio/dcloud/g/a/f;->g:I

    .line 58
    :goto_df
    iget p1, p0, Lio/dcloud/g/a/f;->e:I

    iget v0, p0, Lio/dcloud/g/a/f;->g:I

    if-ge p1, v0, :cond_e7

    .line 59
    iput v0, p0, Lio/dcloud/g/a/f;->e:I

    .line 62
    :cond_e7
    iget-object p1, p0, Lio/dcloud/g/a/f;->j:Lio/dcloud/common/adapter/util/ViewRect;

    iget v1, p0, Lio/dcloud/g/a/f;->d:I

    invoke-virtual {p1, v1, v0}, Lio/dcloud/common/adapter/util/ViewRect;->onScreenChanged(II)V

    return-void
.end method

###### Class io.dcloud.g.a.f.a (io.dcloud.g.a.f$a)
.class Lio/dcloud/g/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/a/f;->setRequestedOrientation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/g/a/f;


# direct methods
.method constructor <init>(Lio/dcloud/g/a/f;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iput-object p2, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 3
    :cond_13
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "landscape-primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 4
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 5
    :cond_26
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "landscape-secondary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 6
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 7
    :cond_3a
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 8
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 9
    :cond_4d
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "portrait-primary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 10
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 11
    :cond_60
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->a:Ljava/lang/String;

    const-string v0, "portrait-secondary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 12
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_7c

    .line 14
    :cond_74
    iget-object p1, p0, Lio/dcloud/g/a/f$a;->b:Lio/dcloud/g/a/f;

    iget-object p1, p1, Lio/dcloud/g/a/f;->a:Landroid/app/Activity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_7c
    return-void
.end method
