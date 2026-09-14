###### Class io.dcloud.WebAppActivity (io.dcloud.WebAppActivity)
.class public Lio/dcloud/WebAppActivity;
.super Lio/dcloud/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/WebAppActivity$f;,
        Lio/dcloud/WebAppActivity$g;
    }
.end annotation


# static fields
.field public static final ONE_SECOND:J = 0x3e8L

.field public static final SPLASH_SECOND:J = 0x1388L


# instance fields
.field A:Landroid/widget/LinearLayout;

.field B:Landroid/widget/FrameLayout;

.field C:Lio/dcloud/common/DHInterface/ICallBack;

.field protected mSplashShowing:Z

.field protected mSplashView:Landroid/view/View;

.field private o:Landroid/app/AlertDialog;

.field private p:Z

.field private q:Landroid/os/Handler;

.field r:Landroid/content/BroadcastReceiver;

.field private s:Lio/dcloud/WebAppActivity$f;

.field t:Landroid/graphics/Bitmap;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Landroid/view/View;

.field x:Z

.field y:Z

.field z:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/b;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->q:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 179
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v1, 0x0

    .line 274
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->v:Z

    .line 275
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    .line 276
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->x:Z

    const/4 v1, 0x1

    .line 600
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->y:Z

    .line 606
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    .line 607
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/widget/LinearLayout;

    .line 711
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->B:Landroid/widget/FrameLayout;

    .line 723
    iput-object v0, p0, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    const/4 v0, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_9f

    const-string v2, "use splashPath="

    const-string v3, "Main_Path"

    if-nez v1, :cond_4b

    :try_start_b
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->y:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_9f

    .line 9
    :try_start_31
    invoke-static {p1}, Lio/dcloud/common/adapter/io/DHFile;->deleteFile(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_9f

    goto :goto_39

    :catch_35
    move-exception v1

    .line 11
    :try_start_36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    if-nez v0, :cond_75

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_75

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    :cond_75
    if-nez v0, :cond_a3

    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a3

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a3
    :goto_a3
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 10

    const-string v0, "DCLOUD_STREAMAPP_CHANNEL"

    .line 26
    invoke-direct {p0, v0}, Lio/dcloud/WebAppActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_22

    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_22

    const-string p3, "string"

    const-string p4, "app_name"

    .line 30
    invoke-static {p1, p3, p4}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    goto :goto_23

    :cond_22
    const/4 p4, 0x0

    :goto_23
    const-string v3, "_12214060304"

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 p4, 0x3

    new-array v0, p4, [Ljava/lang/Class;

    .line 33
    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    const-class v3, Landroid/graphics/Bitmap;

    aput-object v3, v0, v1

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p2, p4, v1

    aput-object p3, p4, v4

    const-string p1, "io.dcloud.html5pframework.splash.SplashView4Yunos"

    invoke-static {p1, v0, p4}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 35
    :cond_4c
    new-instance v0, Lio/dcloud/feature/internal/splash/SplashViewDBackground;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/dcloud/feature/internal/splash/SplashViewDBackground;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/WebAppActivity;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "appid"

    .line 2
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebAppActivity.onCreateSplash().appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " this.appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "splash"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebAppActivity.onCreateSplash().mSplashView is Null ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_4a

    const/4 v6, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x0

    :goto_4b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 6
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 7
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    goto :goto_7b

    :cond_7a
    return-object v6

    .line 12
    :cond_7b
    :goto_7b
    iput-boolean v8, v1, Lio/dcloud/WebAppActivity;->y:Z

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateSplash;intent="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "WebAppActivity"

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "__start_first_web__"

    .line 14
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v10, "direct_page"

    .line 15
    invoke-virtual {v2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a9

    const/4 v10, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v10, 0x0

    :goto_aa
    if-eqz v4, :cond_af

    if-nez v10, :cond_af

    return-object v6

    :cond_af
    const-string v4, "__splash_view__"

    .line 19
    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b8

    return-object v6

    .line 23
    :cond_b8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateSplash hasSplash="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "__plugin_auto_hide__"

    .line 24
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d5

    return-object v6

    :cond_d5
    const-string v4, "__splash_mode__"

    .line 29
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, ""

    const-string v12, "auto"

    if-eqz v11, :cond_fc

    .line 31
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fc

    .line 32
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fd

    const-string v13, "default"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_fd

    :cond_fc
    move-object v11, v12

    .line 35
    :cond_fd
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCreateSplash __splash_mode__="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_129

    const-string v9, "hide_stream_splash"

    .line 36
    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_129

    .line 37
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v6}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    iput-boolean v8, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    return-object v6

    :cond_129
    const-string v9, "icon"

    const-string v13, "__name__"

    const-string v14, "splash/"

    const-string v15, "app_splash_path"

    const-string v8, "splash_temp/"

    const-string v6, "app_icon"

    const-string v7, "drawable"

    move-object/from16 v16, v5

    const-string v5, ".png"

    move-object/from16 v17, v4

    if-eqz v2, :cond_215

    const-string v4, "has_stream_splash"

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .line 41
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_213

    .line 42
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_1fa

    .line 43
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a6

    if-nez v10, :cond_18c

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-direct {v1, v4, v8, v5}, Lio/dcloud/WebAppActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 51
    :cond_18c
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1a6

    .line 52
    new-instance v4, Lio/dcloud/common/DHInterface/SplashView;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v7, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v7}, Lio/dcloud/common/DHInterface/SplashView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 53
    iget-boolean v5, v1, Lio/dcloud/WebAppActivity;->y:Z

    if-nez v5, :cond_1a6

    .line 54
    check-cast v4, Lio/dcloud/common/DHInterface/SplashView;

    sget v5, Lio/dcloud/common/DHInterface/SplashView;->STYLE_BLACK:I

    invoke-virtual {v4, v5}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting(I)V

    .line 58
    :cond_1a6
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_1fa

    .line 59
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c5

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 61
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 63
    :cond_1c5
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v4, v2, v3}, Lio/dcloud/WebAppActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 64
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1fa

    .line 65
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 66
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_1fa

    instance-of v2, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v2, :cond_1fa

    .line 67
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v7, v18

    invoke-static {v4, v7, v9}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/feature/internal/splash/ISplash;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_1fa
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    const-string v0, "IAN"

    const-string v3, "onCreateSplash aliyun ended"

    .line 77
    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_213
    move-object/from16 v7, v18

    .line 79
    :cond_215
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_33c

    .line 82
    :try_start_219
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2cb

    if-nez v10, :cond_257

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lio/dcloud/common/constant/StringConst;->STREAMAPP_KEY_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-direct {v1, v4, v8, v5}, Lio/dcloud/WebAppActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 90
    :cond_257
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2b1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pdr"

    invoke-static {v4, v5}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "update_splash_img_path"

    move-object/from16 v8, v17

    .line 92
    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_271} :catch_336

    if-nez v5, :cond_299

    .line 95
    :try_start_273
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_280

    .line 96
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    goto :goto_299

    .line 98
    :cond_280
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 99
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_295
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_295} :catch_296

    goto :goto_299

    :catch_296
    const/4 v4, 0x0

    .line 103
    :try_start_297
    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 106
    :cond_299
    :goto_299
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2b1

    iget-boolean v4, v1, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v4, :cond_2b1

    .line 107
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-static {v0, v7, v5}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    .line 110
    :cond_2b1
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2cb

    .line 111
    new-instance v4, Lio/dcloud/common/DHInterface/SplashView;

    iget-object v5, v1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    iget-object v8, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v8}, Lio/dcloud/common/DHInterface/SplashView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 112
    iget-boolean v5, v1, Lio/dcloud/WebAppActivity;->y:Z

    if-nez v5, :cond_2cb

    .line 113
    check-cast v4, Lio/dcloud/common/DHInterface/SplashView;

    sget v5, Lio/dcloud/common/DHInterface/SplashView;->STYLE_BLACK:I

    invoke-virtual {v4, v5}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting(I)V

    .line 117
    :cond_2cb
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v4, :cond_324

    .line 118
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2ea

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2ea

    .line 120
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    :cond_2ea
    const-string v4, "Main_Path"

    const-string v5, "use defaultSplash"

    .line 122
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v4, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v4, v2, v3}, Lio/dcloud/WebAppActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 124
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_324

    .line 125
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    .line 126
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_324

    instance-of v2, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v2, :cond_324

    .line 127
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v9}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/dcloud/feature/internal/splash/ISplash;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    :cond_324
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v0, v1, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/dcloud/WebAppActivity;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, v1, Lio/dcloud/WebAppActivity;->mSplashShowing:Z
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_297 .. :try_end_335} :catch_336

    goto :goto_33a

    :catch_336
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33a
    const/4 v2, 0x0

    return-object v2

    :cond_33c
    const/4 v2, 0x0

    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 138
    invoke-static {}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->isPlugin()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 143
    :cond_8
    :try_start_8
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 144
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_42

    goto :goto_2c

    :cond_2b
    move-object v0, v1

    :goto_2c
    if-eqz v0, :cond_41

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 153
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_41
    return-object v1

    :catch_42
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private b(Ljava/lang/String;I)V
    .registers 5

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_APP_DOWNLOAD_ERROR_DIALOG_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 156
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "appid"

    .line 157
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static deviceInjectionGeoLocationJs(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkDeviceHtml5Geo()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    sput-boolean p0, Lio/dcloud/common/util/BaseInfo;->injectionGeolocationJS:Z

    return-void
.end method

.method private f()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v2, "__plugin_auto_hide__"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    .line 3
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAutoHide "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebAppActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5d

    .line 5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "__plugin_auto_hide_show_pname__"

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__plugin_auto_hide_show_activity__"

    .line 7
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    .line 8
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    iget-object v2, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v2, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAutoHide return mini package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    :goto_11
    return-object v0
.end method

.method private h()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dcloud.push.broswer"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/io/PushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_f
    if-eqz v0, :cond_21

    const/4 v1, 0x0

    const-string v2, "is_stream_app"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v1, :cond_21

    const-string v1, "appid"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public addClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method protected addViewToContentView(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_52

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_57

    .line 5
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p1, :cond_4f

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "AppRootView"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 8
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 9
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_57

    :cond_33
    if-nez v1, :cond_4f

    .line 12
    iget-object v3, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-ne v2, v3, :cond_40

    .line 13
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_4f

    :cond_40
    if-lez v0, :cond_4a

    .line 16
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_4f

    .line 18
    :cond_4a
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 25
    :cond_52
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_57
    :goto_57
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_a

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_12

    :cond_a
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_12
    return-void
.end method

.method public backPressed()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic callBack(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/c;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic checkAndRequestPhoneState()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    return-void
.end method

.method public bridge synthetic checkAndRequestStoragePermission()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    return-void
.end method

.method public closeAppStreamSplash(Ljava/lang/String;)V
    .registers 5

    const-string v0, "webappActivity closeAppStreamSplash"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->Plugin2Host_closeAppStreamSplash(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5
    :try_start_13
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->t:Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_3d

    const-string v0, "webappActivity removeView mSplashView"

    .line 12
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v2, v0, Lio/dcloud/WebAppActivity$g;

    if-eqz v2, :cond_34

    .line 14
    check-cast v0, Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Lio/dcloud/WebAppActivity$g;->b()V

    goto :goto_39

    .line 16
    :cond_34
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 18
    :goto_39
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    :cond_3d
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->v:Z

    .line 22
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    .line 24
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_4c

    const/4 v2, 0x1

    .line 25
    invoke-interface {v0, v2, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    .line 28
    :cond_4c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->g()Ljava/lang/String;

    move-result-object p1

    :cond_56
    const-string v0, "onCloseSplashNoAd"

    invoke-static {p0, p1, v0, v1}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeSideBar()V
    .registers 1

    return-void
.end method

.method public finish()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".WebAppActivityFinish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic getActivityState()I
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->getActivityState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTipMsg()Ljava/lang/String;
    .registers 4

    .line 1
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    const-string v1, ""

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1d

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_not_sd_card:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_1d
    const/16 v2, 0x9

    if-ne v0, v2, :cond_37

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_sd_not_space:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    .line 5
    :cond_37
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEt:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_52

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_setting_download_failed:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_52
    const/4 v2, 0x3

    if-eq v0, v2, :cond_58

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6d

    .line 8
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_app_res_download_failed:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6d
    :goto_6d
    return-object v1
.end method

.method public getProgressView()Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_9

    instance-of v1, v0, Lio/dcloud/WebAppActivity$g;

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUrlByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/c;->getUrlByFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasAdService()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->hasAdService()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->v:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public initBackToFrontSplashAd()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->s:Lio/dcloud/WebAppActivity$f;

    if-nez v0, :cond_24

    .line 2
    new-instance v0, Lio/dcloud/WebAppActivity$f;

    invoke-direct {v0, p0, p0}, Lio/dcloud/WebAppActivity$f;-><init>(Lio/dcloud/WebAppActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->s:Lio/dcloud/WebAppActivity$f;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCloudApplication;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->s:Lio/dcloud/WebAppActivity$f;

    invoke-virtual {v0, v1}, Lio/dcloud/application/DCloudApplication;->addActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_24
    return-void
.end method

.method public bridge synthetic isMultiProcessMode()Z
    .registers 2

    .line 1
    invoke-super {p0}, Lio/dcloud/c;->isMultiProcessMode()Z

    move-result v0

    return v0
.end method

.method public isSideBarCanRefresh()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 5
    :goto_7
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 6
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 7
    instance-of v2, v2, Lio/dcloud/common/DHInterface/SplashView;

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method public obtainActivityContentView()Landroid/widget/FrameLayout;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAppActive(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    return-void
.end method

.method public onAppActive(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAppStart(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    return-void
.end method

.method public onAppStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onAppStop(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onAsyncStartAppEnd(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/c;->onAsyncStartAppEnd(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onAsyncStartAppStart(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/c;->onAsyncStartAppStart(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onBackPressed()V
    .registers 4

    const-string v0, "back"

    const-string v1, "WebAppActivity onBackPressed"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->isMultiProcessMode()Z

    move-result v0

    if-nez v0, :cond_18

    .line 3
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->backPressed()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_17

    const/4 v1, 0x1

    if-ne v1, v0, :cond_18

    :cond_17
    return-void

    .line 8
    :cond_18
    iget-object v0, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lio/dcloud/b;->f:Ljava/lang/String;

    :goto_27
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    const-string v2, "onBack"

    invoke-static {p0, v0, v2, v1}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-super {p0}, Lio/dcloud/b;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onCloseSplash()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->onCloseSplash()V

    return-void
.end method

.method public bridge synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/dcloud/common/util/BaseInfo;->startTime:J

    .line 2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/AppRuntime;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    .line 5
    :cond_1e
    invoke-static {p0}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Landroid/content/Context;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Html5Plus-onCreate"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "shortcutactivity"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/ShortCutUtil;->activityNameSDK:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "autocreateshortcut"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/dcloud/common/util/ShortCutUtil;->mAutoCreateShortcut:Z

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extrapro"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 11
    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lio/dcloud/common/util/ShortCutUtil;->extraProSDK:Ljava/util/HashMap;

    .line 13
    :cond_68
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "__intetn_orientation__"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 17
    :cond_80
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/WebAppActivity;->deviceInjectionGeoLocationJs(Landroid/content/Context;)V

    const-string v0, "WebAppActivity"

    const-string v2, "onCreate"

    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->h()V

    .line 21
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-nez v0, :cond_9a

    const-string v0, "run_5app_time_key"

    .line 22
    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 24
    :cond_9a
    invoke-super {p0, p1}, Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 25
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.huawei.intent.action.CLICK_STATUSBAR"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lio/dcloud/WebAppActivity$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$a;-><init>(Lio/dcloud/WebAppActivity;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->r:Landroid/content/BroadcastReceiver;

    const-string v2, "huawei.permission.CLICK_STATUSBAR_BROADCAST"

    .line 51
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->isInit()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 55
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->initView()V

    .line 57
    :cond_c7
    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->f()V

    return-void
.end method

.method public onCreateAdSplash(Landroid/content/Context;)V
    .registers 5

    .line 1
    iget-boolean p1, p0, Lio/dcloud/WebAppActivity;->p:Z

    if-eqz p1, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez p1, :cond_a

    return-void

    .line 3
    :cond_a
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    if-eqz p1, :cond_f

    return-void

    .line 4
    :cond_f
    invoke-super {p0}, Lio/dcloud/b;->hasAdService()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 5
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    new-instance v0, Lio/dcloud/WebAppActivity$b;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$b;-><init>(Lio/dcloud/WebAppActivity;)V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lio/dcloud/a;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    .line 19
    :cond_24
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    if-eqz p1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    iput-boolean v0, p0, Lio/dcloud/WebAppActivity;->v:Z

    if-eqz p1, :cond_55

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 22
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_42
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_55

    .line 24
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_55
    return-void
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1c

    if-gt v1, v2, :cond_1c

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_51

    :cond_1c
    if-le v1, v2, :cond_51

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x500

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_51

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 17
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    .line 18
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    :cond_51
    :goto_51
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v0, :cond_5e

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/dcloud/common/util/BaseInfo;->splashCreateTime:J

    .line 25
    invoke-direct {p0, p1}, Lio/dcloud/WebAppActivity;->b(Landroid/content/Context;)Ljava/lang/Object;

    :cond_5e
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 6

    const-string v0, "WebAppActivity"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lio/dcloud/b;->onDestroy()V

    .line 4
    :try_start_a
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-static {}, Lio/dcloud/common/adapter/util/PermissionUtil;->clearUseRejectedCache()V

    .line 7
    invoke-static {}, Lio/dcloud/common/util/ImageLoaderUtil;->clearCache()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    nop

    .line 9
    :goto_1c
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    :cond_24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/application/DCloudApplication;

    if-eqz v0, :cond_37

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCloudApplication;

    iget-object v2, p0, Lio/dcloud/WebAppActivity;->s:Lio/dcloud/WebAppActivity$f;

    invoke-virtual {v0, v2}, Lio/dcloud/application/DCloudApplication;->removeActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    .line 15
    :cond_37
    iget-object v0, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance(Landroid/app/Activity;)Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->clearData()V

    .line 16
    invoke-static {}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->getInstance()Lio/dcloud/common/core/ui/TabBarWebviewMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/TabBarWebviewMgr;->setLancheTabBar(Lio/dcloud/common/core/ui/TabBarWebview;)V

    .line 17
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_56

    .line 18
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 19
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_56
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    .line 22
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const-string v4, "unregisterReceiver"

    invoke-static {v3, v4, v1, v2, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    .line 24
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/b;->onKeyEventExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLowMemory()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->onLowMemory()V

    return-void
.end method

.method public onNewIntentImpl(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->onNewIntentImpl(Landroid/content/Intent;)V

    const-string v0, "dcloud.push.broswer"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/io/PushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_e
    return-void
.end method

.method public bridge synthetic onPause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->onPause()V

    return-void
.end method

.method public bridge synthetic onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->onResume()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Html5Plus-onResume"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 3
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    .line 5
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    .line 7
    iget-object p1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I

    return-void
.end method

.method public recordDialog(Landroid/app/Dialog;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic registerLocalReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/c;->registerLocalReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public bridge synthetic registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lio/dcloud/c;->registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 3

    .line 2
    invoke-super {p0, p1, p2}, Lio/dcloud/c;->registerReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public removeClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public removeFromRecord(Landroid/app/Dialog;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic sendLocalBroadcast(Landroid/content/Intent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/c;->sendLocalBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setProgressView()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 2
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 3
    iget-object v2, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-ne v1, v2, :cond_1b

    .line 4
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_1e

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1e
    :goto_1e
    new-instance v0, Lio/dcloud/WebAppActivity$g;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lio/dcloud/WebAppActivity$g;-><init>(Lio/dcloud/WebAppActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    .line 9
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setSecondPrivacyAlert()V
    .registers 1

    .line 1
    invoke-super {p0}, Lio/dcloud/b;->setSecondPrivacyAlert()V

    return-void
.end method

.method public setSideBarVisibility(I)V
    .registers 2

    return-void
.end method

.method public setSplashCloseListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v1, p0, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    .line 6
    :cond_d
    iget-boolean p2, p0, Lio/dcloud/WebAppActivity;->x:Z

    if-eqz p2, :cond_14

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 9
    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-direct {p0}, Lio/dcloud/WebAppActivity;->g()Ljava/lang/String;

    move-result-object p1

    :cond_1e
    iget-object p2, p0, Lio/dcloud/WebAppActivity;->w:Landroid/view/View;

    const-string v0, "onWillCloseSplash"

    invoke-static {p0, p1, v0, p2}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/dcloud/WebAppActivity;->x:Z

    return-void
.end method

.method public setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    if-nez v0, :cond_33

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->A:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_29

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_2c

    .line 9
    :cond_29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 11
    :goto_2c
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->setContentView(Lio/dcloud/common/DHInterface/IActivityHandler;)V

    .line 13
    :cond_33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 15
    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    const/4 v0, 0x0

    const-string v3, "io.dcloud.appstream.actionbar.StreamAppActionBarUtil"

    const-string v4, "checkNeedTitleView"

    invoke-static {v3, v4, v0, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/WebAppActivity;->addViewToContentView(Landroid/view/View;)V

    if-eqz p2, :cond_62

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    :cond_62
    sget-object p2, Lio/dcloud/common/util/TestUtil;->START_APP_SET_ROOTVIEW:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWebViewIntoPreloadView(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->B:Landroid/widget/FrameLayout;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->B:Landroid/widget/FrameLayout;

    .line 3
    iget-object v1, p0, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 5
    :cond_13
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->mSplashShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 5
    :cond_10
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    if-nez v0, :cond_21

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    .line 8
    :cond_21
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_tips:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lio/dcloud/common/util/TestUtil$PointTime;->mEc:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3e

    .line 10
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_no_network_tips:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_89

    :cond_3e
    if-eqz p1, :cond_6b

    .line 12
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/dcloud/base/R$string;->dcloud_common_into:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lio/dcloud/base/R$string;->dcloud_common_fail:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getErrorTipMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 14
    :cond_6b
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lio/dcloud/base/R$string;->dcloud_common_run_app_failed:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->getErrorTipMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 16
    :goto_89
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_retry:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/WebAppActivity$c;

    invoke-direct {v1, p0, p2}, Lio/dcloud/WebAppActivity$c;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_close:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/dcloud/WebAppActivity$d;

    invoke-direct {v1, p0, p2}, Lio/dcloud/WebAppActivity$d;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    new-instance v0, Lio/dcloud/WebAppActivity$e;

    invoke-direct {v0, p0, p2}, Lio/dcloud/WebAppActivity$e;-><init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 44
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showSplashWaiting()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/WebAppActivity;->y:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/SplashView;

    if-eqz v1, :cond_f

    .line 2
    check-cast v0, Lio/dcloud/common/DHInterface/SplashView;

    invoke-virtual {v0}, Lio/dcloud/common/DHInterface/SplashView;->showWaiting()V

    :cond_f
    return-void
.end method

.method public sideBarHideMenu()V
    .registers 1

    return-void
.end method

.method public sideBarShowMenu(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public bridge synthetic unregisterReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/c;->unregisterReceiver(Lio/dcloud/feature/internal/reflect/BroadcastReceiver;)V

    return-void
.end method

.method public updateParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const-string v0, "progress"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    instance-of v0, p1, Lio/dcloud/WebAppActivity$g;

    if-eqz v0, :cond_29

    .line 3
    check-cast p1, Lio/dcloud/WebAppActivity$g;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/WebAppActivity$g;->a(I)V

    goto :goto_29

    :cond_1a
    const-string v0, "setProgressView"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity;->setProgressView()V

    goto :goto_29

    .line 8
    :cond_26
    invoke-super {p0, p1, p2}, Lio/dcloud/b;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateSplash(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_d

    instance-of v1, v0, Lio/dcloud/feature/internal/splash/ISplash;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lio/dcloud/feature/internal/splash/ISplash;

    invoke-interface {v0, p1}, Lio/dcloud/feature/internal/splash/ISplash;->setNameText(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

###### Class io.dcloud.WebAppActivity.a (io.dcloud.WebAppActivity$a)
.class Lio/dcloud/WebAppActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    const-string p2, "com.huawei.intent.action.CLICK_STATUSBAR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_46

    .line 4
    :cond_18
    iget-object p2, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    iget-object v0, p2, Lio/dcloud/WebAppActivity;->z:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_46

    invoke-static {p2}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 5
    iget-object p2, p0, Lio/dcloud/WebAppActivity$a;->a:Lio/dcloud/WebAppActivity;

    invoke-static {p2}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 12
    :cond_3f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lio/dcloud/common/util/language/LanguageUtil;->updateDeviceDefLocalLanguage(Ljava/util/Locale;)V

    :cond_46
    :goto_46
    return-void
.end method

###### Class io.dcloud.WebAppActivity.b (io.dcloud.WebAppActivity$b)
.class Lio/dcloud/WebAppActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    iget-object v1, p1, Lio/dcloud/WebAppActivity;->C:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v1, :cond_14

    .line 2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/WebAppActivity;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebAppActivity$b;->a:Lio/dcloud/WebAppActivity;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lio/dcloud/WebAppActivity;->x:Z

    goto :goto_16

    .line 5
    :cond_14
    iput-boolean v0, p1, Lio/dcloud/WebAppActivity;->x:Z

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.WebAppActivity.c (io.dcloud.WebAppActivity$c)
.class Lio/dcloud/WebAppActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$c;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$c;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.d (io.dcloud.WebAppActivity$d)
.class Lio/dcloud/WebAppActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const-string v0, "closewebapp"

    invoke-virtual {p1, v0, p2}, Lio/dcloud/WebAppActivity;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity$d;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$d;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.e (io.dcloud.WebAppActivity$e)
.class Lio/dcloud/WebAppActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/WebAppActivity;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iput-object p2, p0, Lio/dcloud/WebAppActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1c

    .line 2
    iget-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    const-string v1, "closewebapp"

    invoke-virtual {p1, v1, p2}, Lio/dcloud/WebAppActivity;->updateParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/WebAppActivity$e;->b:Lio/dcloud/WebAppActivity;

    iget-object p2, p0, Lio/dcloud/WebAppActivity$e;->a:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lio/dcloud/WebAppActivity;->a(Lio/dcloud/WebAppActivity;Ljava/lang/String;I)V

    return v0

    :cond_1c
    return p3
.end method

###### Class io.dcloud.WebAppActivity.f (io.dcloud.WebAppActivity$f)
.class Lio/dcloud/WebAppActivity$f;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:I

.field d:J

.field final synthetic e:Lio/dcloud/WebAppActivity;


# direct methods
.method public constructor <init>(Lio/dcloud/WebAppActivity;Landroid/app/Activity;)V
    .registers 6

    const-string v0, "splash"

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$f;->e:Lio/dcloud/WebAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lio/dcloud/WebAppActivity$f;->c:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lio/dcloud/WebAppActivity$f;->d:J

    .line 5
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    const-string p2, "io.dcloud.feature.gg.dcloud.ADHandler"

    const-string v1, "AdTag"

    const/4 v2, 0x0

    .line 6
    invoke-static {p2, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "uniad"

    invoke-static {p1, p2, v1}, Lio/dcloud/common/adapter/util/SP;->getsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5a

    .line 10
    :try_start_32
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 12
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "_fr_"

    .line 13
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    const-string p2, "_frt_"

    .line 14
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_4f} :catch_5a

    .line 16
    :try_start_4f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/dcloud/WebAppActivity$f;->c:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    const/16 p1, 0xb4

    .line 18
    :try_start_58
    iput p1, p0, Lio/dcloud/WebAppActivity$f;->c:I
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_5a} :catch_5a

    :catch_5a
    :cond_5a
    :goto_5a
    return-void
.end method

.method private a()V
    .registers 5

    const-string v0, "splash"

    const-string v1, "io.dcloud.feature.gg.dcloud.ADHandler"

    const-string v2, "AdTag"

    const/4 v3, 0x0

    .line 1
    invoke-static {v1, v2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lio/dcloud/WebAppActivity$f;->e:Lio/dcloud/WebAppActivity;

    invoke-virtual {v2}, Lio/dcloud/WebAppActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "uniad"

    invoke-static {v2, v1, v3}, Lio/dcloud/common/adapter/util/SP;->getsBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 5
    :try_start_21
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_fr_"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    const-string v1, "_frt_"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_3e} :catch_56

    .line 11
    :try_start_3e
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/dcloud/WebAppActivity$f;->c:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    const/16 v0, 0xb4

    .line 13
    :try_start_47
    iput v0, p0, Lio/dcloud/WebAppActivity$f;->c:I

    .line 15
    :goto_49
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 16
    invoke-virtual {p0}, Lio/dcloud/WebAppActivity$f;->onBack()V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_56} :catch_56

    :catch_56
    :cond_56
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 11

    .line 17
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const-string v1, "HBuilder"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v0, v1

    .line 21
    :cond_f
    :try_start_f
    invoke-static {}, Lio/dcloud/EntryProxy;->getInstnace()Lio/dcloud/EntryProxy;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v1

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "ad"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    aput-object p1, v4, v5

    const/4 p1, 0x3

    new-array v8, p1, [Ljava/lang/Object;

    aput-object v0, v8, v6

    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    .line 24
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v7

    aput-object p0, v8, v5

    aput-object v8, v4, p1

    .line 25
    invoke-interface {v1, v2, v3, v4}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "recreateSplash"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    goto :goto_15

    .line 7
    :cond_b
    invoke-direct {p0, v0}, Lio/dcloud/WebAppActivity$f;->a(Ljava/lang/String;)V

    goto :goto_15

    .line 8
    :cond_f
    invoke-direct {p0, v0}, Lio/dcloud/WebAppActivity$f;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_15
    return-void
.end method

.method public onBack()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_52

    .line 5
    :cond_15
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4d

    .line 6
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 7
    iget v0, p0, Lio/dcloud/WebAppActivity$f;->c:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_32

    const/16 v0, 0x1e

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 10
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lio/dcloud/WebAppActivity$f;->d:J

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v1, v1

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit16 v0, v0, 0x708

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const/4 v2, 0x2

    .line 13
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_52

    .line 15
    :cond_4a
    iput-wide v1, p0, Lio/dcloud/WebAppActivity$f;->d:J

    goto :goto_52

    .line 17
    :cond_4d
    iput-wide v1, p0, Lio/dcloud/WebAppActivity$f;->d:J

    .line 18
    invoke-direct {p0}, Lio/dcloud/WebAppActivity$f;->a()V

    :cond_52
    :goto_52
    return-void
.end method

.method public onFront()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$f;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_52

    :cond_15
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lio/dcloud/WebAppActivity$f;->b:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget v3, p0, Lio/dcloud/WebAppActivity$f;->c:I

    add-int/lit8 v3, v3, -0x5

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lio/dcloud/WebAppActivity$f;->d:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_4b

    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_4b

    const-string v1, "showSplash"

    .line 7
    invoke-direct {p0, v1}, Lio/dcloud/WebAppActivity$f;->a(Ljava/lang/String;)V

    .line 8
    :cond_4b
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_52
    :goto_52
    return-void
.end method

###### Class io.dcloud.WebAppActivity.g (io.dcloud.WebAppActivity$g)
.class Lio/dcloud/WebAppActivity$g;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/WebAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:Landroid/graphics/Paint;

.field e:I

.field f:I

.field g:I


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity;Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->c:I

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    .line 4
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->e:I

    .line 5
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->f:I

    const/16 p1, 0xff

    .line 6
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->g:I

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/WebAppActivity$g;->a:I

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v0, 0x500

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x780

    if-eq p1, v0, :cond_46

    .line 19
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    const p2, 0x3b9374bc    # 0.0045f

    mul-float p1, p1, p2

    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    goto :goto_4f

    :cond_46
    const/high16 p1, 0x41100000    # 9.0f

    .line 20
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    goto :goto_4f

    :cond_4b
    const/high16 p1, 0x40c00000    # 6.0f

    .line 23
    iput p1, p0, Lio/dcloud/WebAppActivity$g;->b:F

    :goto_4f
    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 1
    new-instance v0, Lio/dcloud/WebAppActivity$g$a;

    invoke-direct {v0, p0}, Lio/dcloud/WebAppActivity$g$a;-><init>(Lio/dcloud/WebAppActivity$g;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(I)V
    .registers 5

    .line 2
    iget v0, p0, Lio/dcloud/WebAppActivity$g;->a:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 3
    iget p1, p0, Lio/dcloud/WebAppActivity$g;->e:I

    iget v1, p0, Lio/dcloud/WebAppActivity$g;->f:I

    if-lt p1, v1, :cond_16

    .line 4
    new-instance p1, Lio/dcloud/WebAppActivity$g$b;

    invoke-direct {p1, p0}, Lio/dcloud/WebAppActivity$g$b;-><init>(Lio/dcloud/WebAppActivity$g;)V

    const-wide/16 v1, 0x5

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_16
    iput v0, p0, Lio/dcloud/WebAppActivity$g;->f:I

    return-void
.end method

.method b()V
    .registers 2

    const/16 v0, 0x64

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/WebAppActivity$g;->a(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/WebAppActivity$g;->g:I

    const/16 v2, 0x1a

    const/16 v3, 0xad

    const/16 v4, 0x19

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget v0, p0, Lio/dcloud/WebAppActivity$g;->c:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->e:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->b:F

    add-float v5, v3, v0

    iget-object v6, p0, Lio/dcloud/WebAppActivity$g;->d:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget p1, p0, Lio/dcloud/WebAppActivity$g;->a:I

    iget p2, p0, Lio/dcloud/WebAppActivity$g;->c:I

    iget v0, p0, Lio/dcloud/WebAppActivity$g;->b:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.g.a (io.dcloud.WebAppActivity$g$a)
.class Lio/dcloud/WebAppActivity$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity$g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity$g;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    iget v1, v0, Lio/dcloud/WebAppActivity$g;->g:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Lio/dcloud/WebAppActivity$g;->g:I

    if-lez v1, :cond_10

    const-wide/16 v1, 0x5

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 5
    :cond_10
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    .line 7
    iget-object v1, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$a;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

###### Class io.dcloud.WebAppActivity.g.b (io.dcloud.WebAppActivity$g$b)
.class Lio/dcloud/WebAppActivity$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/WebAppActivity$g;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/WebAppActivity$g;


# direct methods
.method constructor <init>(Lio/dcloud/WebAppActivity$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    iget v1, v0, Lio/dcloud/WebAppActivity$g;->f:I

    iget v2, v0, Lio/dcloud/WebAppActivity$g;->e:I

    sub-int v3, v1, v2

    const/16 v4, 0xa

    div-int/2addr v3, v4

    const/4 v5, 0x1

    if-le v3, v4, :cond_f

    goto :goto_14

    :cond_f
    if-ge v3, v5, :cond_13

    const/4 v4, 0x1

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    add-int/2addr v2, v4

    .line 7
    iput v2, v0, Lio/dcloud/WebAppActivity$g;->e:I

    if-le v1, v2, :cond_1f

    const-wide/16 v1, 0x5

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_26

    .line 11
    :cond_1f
    iget v2, v0, Lio/dcloud/WebAppActivity$g;->a:I

    if-lt v1, v2, :cond_26

    .line 12
    invoke-virtual {v0}, Lio/dcloud/WebAppActivity$g;->a()V

    .line 14
    :cond_26
    :goto_26
    iget-object v0, p0, Lio/dcloud/WebAppActivity$g$b;->a:Lio/dcloud/WebAppActivity$g;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method
