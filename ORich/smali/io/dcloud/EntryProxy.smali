###### Class io.dcloud.EntryProxy (io.dcloud.EntryProxy)
.class public Lio/dcloud/EntryProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lio/dcloud/EntryProxy;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Lio/dcloud/g/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/EntryProxy;->b:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    return-void
.end method

.method private clearData()V
    .registers 3

    const-string v0, "EntryProxy"

    const-string v1, " clearData"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lio/dcloud/EntryProxy;->b:Z

    .line 5
    invoke-static {}, Lio/dcloud/common/adapter/util/AndroidResources;->clearData()V

    .line 6
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->clearData()V

    .line 7
    iput-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    return-void
.end method

.method public static getInstnace()Lio/dcloud/EntryProxy;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)Lio/dcloud/EntryProxy;
    .registers 2

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lio/dcloud/EntryProxy;->init(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)Lio/dcloud/EntryProxy;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)Lio/dcloud/EntryProxy;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/dcloud/application/DCLoudApplicationImpl;->setContext(Landroid/content/Context;)V

    .line 3
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 4
    sget-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    if-eqz v1, :cond_2a

    .line 5
    iget-object v1, v1, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    invoke-virtual {v1}, Lio/dcloud/g/b/d;->a()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/dcloud/common/DHInterface/ICore;->setmCoreListener(Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V

    .line 7
    sget-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    iget-object v1, v1, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    invoke-virtual {v1}, Lio/dcloud/g/b/d;->b()Landroid/content/Context;

    move-result-object v1

    if-eq v1, v0, :cond_2a

    .line 8
    sget-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    invoke-virtual {v1, p0}, Lio/dcloud/EntryProxy;->destroy(Landroid/app/Activity;)V

    .line 11
    :cond_2a
    sget-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    if-nez v1, :cond_41

    .line 12
    new-instance v1, Lio/dcloud/EntryProxy;

    invoke-direct {v1}, Lio/dcloud/EntryProxy;-><init>()V

    sput-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    .line 13
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 14
    sget-object v1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    new-instance v2, Lio/dcloud/g/b/d;

    invoke-direct {v2, v0, p1}, Lio/dcloud/g/b/d;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V

    iput-object v2, v1, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    .line 16
    :cond_41
    sget-object p1, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    iget-object p1, p1, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object p0, Lio/dcloud/EntryProxy;->d:Lio/dcloud/EntryProxy;

    return-object p0
.end method


# virtual methods
.method public destroy(Landroid/app/Activity;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/EntryProxy;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public didCreate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/EntryProxy;->b:Z

    return v0
.end method

.method public getCoreHandler()Lio/dcloud/common/DHInterface/ICore;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lio/dcloud/g/b/d;->a()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntryActivity()Landroid/app/Activity;
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onConfigurationChanged(Landroid/app/Activity;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;I)V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z
    .registers 7

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    .line 4
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onCreate(Landroid/app/Activity;)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 6
    iget-object v1, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    invoke-virtual {v1, p1, p2, p3, p4}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)V

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v0, v0}, Lio/dcloud/EntryProxy;->onCreate(Landroid/os/Bundle;Landroid/widget/FrameLayout;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/widget/FrameLayout;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lio/dcloud/EntryProxy;->onCreate(Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/dcloud/EntryProxy;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lio/dcloud/g/b/d;->a(Landroid/app/Activity;)V

    .line 2
    :cond_7
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lio/dcloud/g/b/d;->b(Landroid/app/Activity;)V

    .line 2
    :cond_7
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->onStop()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    .line 3
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lio/dcloud/EntryProxy;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2f

    .line 6
    iget-object v0, p0, Lio/dcloud/EntryProxy;->c:Lio/dcloud/g/b/d;

    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {v0, p1}, Lio/dcloud/g/b/d;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 8
    invoke-direct {p0}, Lio/dcloud/EntryProxy;->clearData()V

    goto :goto_2f

    .line 11
    :cond_27
    invoke-direct {p0}, Lio/dcloud/EntryProxy;->clearData()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method
