###### Class io.dcloud.feature.ui.a (io.dcloud.feature.ui.a)
.class public Lio/dcloud/feature/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/a$a;
    }
.end annotation


# instance fields
.field a:Lio/dcloud/common/DHInterface/IWebview;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Lio/dcloud/common/DHInterface/AbsMgr;

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field f:Lio/dcloud/common/DHInterface/IApp;

.field g:Lio/dcloud/common/DHInterface/IActivityHandler;

.field h:Z

.field i:Z

.field j:Z

.field private k:Lio/dcloud/feature/ui/c;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/ui/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/dcloud/feature/ui/a$a;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    .line 13
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 14
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->h:Z

    .line 22
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->i:Z

    .line 26
    iput-boolean v1, p0, Lio/dcloud/feature/ui/a;->j:Z

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->l:Ljava/util/ArrayList;

    .line 542
    new-instance v0, Lio/dcloud/feature/ui/a$a;

    invoke-direct {v0, p0}, Lio/dcloud/feature/ui/a$a;-><init>(Lio/dcloud/feature/ui/a;)V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new AppWidgetMgr   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "appid=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IAN"

    invoke-static {v2, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 651
    iput-object p2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 653
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "pdr"

    .line 655
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 657
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p1

    if-eqz p1, :cond_7c

    .line 659
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 661
    :cond_7c
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 662
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 663
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 664
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p1}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z
    .registers 14

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "{keyType:\'%s\',keyCode:%d}"

    invoke-static {v2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    if-eqz v2, :cond_bd

    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncExecBaseEvent windowCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppWidgetMgr"

    invoke-static {v5, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr v2, v3

    move v4, v2

    :goto_33
    if-ltz v4, :cond_bd

    .line 38
    iget-object v5, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/feature/ui/c;

    if-eqz v5, :cond_b9

    .line 39
    iget-object v6, v5, Lio/dcloud/feature/ui/b;->a:Lio/dcloud/feature/ui/c;

    if-nez v6, :cond_b9

    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v6

    if-nez v6, :cond_4d

    iget-boolean v6, v5, Lio/dcloud/feature/ui/c;->F:Z

    if-eqz v6, :cond_b9

    :cond_4d
    iget-object v6, v5, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_b9

    const-string v6, "back"

    if-ne v2, v4, :cond_67

    .line 41
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 42
    invoke-virtual {v5, p1, v0, p5}, Lio/dcloud/feature/ui/c;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_67

    return v3

    .line 46
    :cond_67
    invoke-virtual {v5, p1, v0, p5}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6e

    goto :goto_b7

    .line 50
    :cond_6e
    sget-boolean v7, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    if-nez v7, :cond_b9

    if-eqz p3, :cond_b9

    .line 52
    invoke-virtual {v5, p3}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b7

    sget-object v7, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p2, v7, :cond_b9

    .line 54
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_87

    const/4 v6, 0x4

    if-eq p4, v6, :cond_b7

    :cond_87
    const-string v6, "menu"

    .line 55
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_93

    const/16 v6, 0x52

    if-eq p4, v6, :cond_b7

    :cond_93
    const-string v6, "volumedown"

    .line 56
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const/16 v6, 0x19

    if-eq p4, v6, :cond_b7

    :cond_9f
    const-string v6, "volumeup"

    .line 57
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/16 v6, 0x18

    if-eq p4, v6, :cond_b7

    :cond_ab
    const-string v6, "search"

    .line 58
    invoke-virtual {v5, v6}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    const/16 v5, 0x54

    if-ne p4, v5, :cond_b9

    :cond_b7
    :goto_b7
    const/4 v1, 0x1

    goto :goto_bd

    :cond_b9
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_33

    :cond_bd
    :goto_bd
    return v1
.end method

.method private f()V
    .registers 2

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->k:Lio/dcloud/feature/ui/c;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->d(Lio/dcloud/feature/ui/c;)V

    return-void
.end method

.method private h()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/c;

    .line 2
    iget-boolean v2, v1, Lio/dcloud/feature/ui/c;->D:Z

    if-eqz v2, :cond_6

    .line 3
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    iget-object v3, v1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->D:Z

    goto :goto_6

    :cond_25
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/ui/b;

    return-object p1
.end method

.method a(I)Lio/dcloud/feature/ui/c;
    .registers 6

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 18
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 19
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    if-ne v3, p1, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;
    .registers 6

    .line 20
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 22
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 23
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;
    .registers 9

    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_43

    .line 26
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 27
    iget-object v3, v2, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->m()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {p1, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, v2, Lio/dcloud/feature/ui/b;->e:Ljava/lang/String;

    .line 30
    invoke-static {p2, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 31
    invoke-static {p3, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 32
    :cond_34
    invoke-virtual {v2}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_46

    if-nez v3, :cond_40

    monitor-exit p0

    return-object v2

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_43
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()V
    .registers 2

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 6

    const-string v0, "plusrequire"

    .line 67
    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    const-string v0, "_www/__wap2app.js"

    .line 68
    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    const-string v0, "_www/__wap2appconfig.js"

    .line 69
    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    .line 71
    :cond_21
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_www/server_index_append.js"

    invoke-interface {p1, v0, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 72
    invoke-interface {p2, v0, v2}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    const-string v0, "_www/server_index_append.css"

    .line 73
    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 76
    invoke-interface {p2, v0, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_44
    const-string v0, "_www/__wap2app.css"

    .line 78
    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 81
    invoke-interface {p2, p1, v1}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V
    .registers 5

    .line 4
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    if-nez p1, :cond_10

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    .line 7
    :cond_10
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 8
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    :cond_1d
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object p2, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object p2, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;)Z
    .registers 5

    .line 14
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_15

    .line 15
    invoke-virtual {p0, p1}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method a(Lio/dcloud/feature/ui/c;)Z
    .registers 5

    .line 59
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 60
    iput-boolean v1, p1, Lio/dcloud/feature/ui/c;->D:Z

    .line 62
    :cond_f
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->D:Z

    if-eqz v0, :cond_26

    iget-object v0, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 63
    invoke-virtual {p1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v2, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 64
    iput-boolean v1, p1, Lio/dcloud/feature/ui/c;->D:Z

    .line 66
    :cond_26
    iget-boolean p1, p1, Lio/dcloud/feature/ui/c;->D:Z

    return p1
.end method

.method declared-synchronized b()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/ui/c;

    .line 7
    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IWebview;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v5

    if-nez v5, :cond_10

    .line 8
    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_10

    :cond_3a
    if-eqz v1, :cond_48

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_48
    const-string v1, "]"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_53

    monitor-exit p0

    return-object v0

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(Lio/dcloud/feature/ui/c;)V
    .registers 3

    .line 16
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;)Z
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    .line 18
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->g:Lio/dcloud/common/DHInterface/IActivityHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_86

    if-eqz p1, :cond_86

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 20
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 22
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const-string v0, "file://"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x7

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_3a
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stripQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_www"

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_55
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v2, v0}, Lio/dcloud/common/util/BaseInfo;->containsInTemplate(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";filePath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :cond_86
    return v1
.end method

.method c(Lio/dcloud/feature/ui/c;)I
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_1e

    .line 5
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/ui/c;

    .line 6
    iget v2, v2, Lio/dcloud/feature/ui/c;->E:I

    .line 7
    iget v3, p1, Lio/dcloud/feature/ui/c;->E:I

    if-gt v2, v3, :cond_1b

    add-int/lit8 v0, v1, 0x1

    goto :goto_1e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_1e
    :goto_1e
    return v0
.end method

.method c()Lio/dcloud/feature/ui/c;
    .registers 2

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method c(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method c(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method d()Lio/dcloud/feature/ui/c;
    .registers 2

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v0

    return-object v0
.end method

.method d(Lio/dcloud/feature/ui/c;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 2
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetMgr.hideMaskLayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v3, 0x1e

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    .line 5
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2e
    return-void
.end method

.method declared-synchronized e()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 3
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/ui/c;

    .line 7
    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->o()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->p()Z

    move-result v5

    if-nez v5, :cond_10

    .line 8
    invoke-virtual {v4}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_10

    :cond_36
    if-eqz v1, :cond_44

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_44
    const-string v1, "]"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-object v0

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Lio/dcloud/feature/ui/c;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method f(Lio/dcloud/feature/ui/c;)V
    .registers 5

    .line 1
    iget-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidgetMgr.showMaskLayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/dcloud/feature/ui/c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_25

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/ui/a;->l:Ljava/util/ArrayList;

    :cond_25
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lio/dcloud/feature/ui/c;->C:Z

    .line 6
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    const/16 v2, 0x1d

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_38
    return-void
.end method

.method g()V
    .registers 2

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/feature/ui/a;->a:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method g(Lio/dcloud/feature/ui/c;)V
    .registers 5

    const-string v0, "Map_Path"

    const-string v1, "sortNWindowByZIndex beign"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object p1, p1, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, p1}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method i()V
    .registers 9

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v3, 0x2c

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v4, :cond_24

    if-eq v1, v3, :cond_24

    if-eq v1, v2, :cond_24

    .line 5
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v5}, Lio/dcloud/common/DHInterface/IApp;->setNeedRefreshApp(Z)V

    goto :goto_6f

    .line 7
    :cond_24
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->setNeedRefreshApp(Z)V

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sub-int/2addr v0, v5

    :goto_38
    if-ltz v0, :cond_6f

    .line 11
    iget-object v6, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/feature/ui/c;

    .line 12
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v7

    if-ne v7, v4, :cond_5a

    .line 14
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    iget-object v6, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-virtual {p0, v7, v6}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_6c

    :cond_5a
    if-eq v7, v3, :cond_69

    if-ne v7, v2, :cond_5f

    goto :goto_69

    .line 18
    :cond_5f
    iget-object v7, v6, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    invoke-virtual {v6, v7, v1, v6}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/feature/ui/c;)V

    goto :goto_6c

    .line 19
    :cond_69
    :goto_69
    invoke-virtual {v6, v6, v5}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/c;Z)V

    :goto_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_6f
    :goto_6f
    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 14

    .line 1
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3
    :cond_6
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_46

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-eq p1, v3, :cond_46

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v3, :cond_14

    goto :goto_46

    .line 78
    :cond_14
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_39

    .line 79
    iget-object p1, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_181

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/ui/c;

    .line 80
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 81
    invoke-virtual {p2}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->dispose()V

    goto :goto_1e

    .line 84
    :cond_39
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppSrcUpZip:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_43

    .line 86
    invoke-direct {p0}, Lio/dcloud/feature/ui/a;->f()V

    .line 87
    invoke-direct {p0}, Lio/dcloud/feature/ui/a;->h()V

    :cond_43
    const/4 v1, 0x0

    goto/16 :goto_181

    .line 88
    :cond_46
    :goto_46
    check-cast p2, [Ljava/lang/Object;

    .line 89
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v9, 0x19

    const/16 v10, 0x18

    if-ne p1, v0, :cond_157

    const/4 v3, 0x4

    if-ne p2, v3, :cond_118

    .line 93
    invoke-virtual {p0}, Lio/dcloud/feature/ui/a;->d()Lio/dcloud/feature/ui/c;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8f

    .line 96
    iget-object v5, v3, Lio/dcloud/feature/ui/c;->y:Lio/dcloud/common/DHInterface/IFrameView;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "back"

    aput-object v7, v6, v2

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    const-string v8, "{keyType:\'%s\',keyCode:%d}"

    invoke-static {v8, v6}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual {v3, v7, v6, v2}, Lio/dcloud/feature/ui/c;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 99
    iget-object v6, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v1, :cond_9d

    .line 100
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v7, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v8, 0x14

    invoke-interface {v2, v6, v8, v7}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_9d

    .line 104
    :cond_8f
    iget-object v5, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v7, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    const/16 v8, 0x2b

    invoke-interface {v5, v6, v8, v7}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/DHInterface/IFrameView;

    :cond_9d
    :goto_9d
    if-nez v2, :cond_109

    if-eqz v5, :cond_109

    .line 107
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    .line 108
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result v7

    if-eqz v7, :cond_b1

    const/4 v2, -0x1

    .line 109
    invoke-interface {v6, v2}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    const/4 v2, 0x1

    goto :goto_b9

    :cond_b1
    if-eqz v3, :cond_b9

    .line 112
    invoke-virtual {p0, v3}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/feature/ui/c;)V

    .line 113
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->e()V

    :cond_b9
    :goto_b9
    if-nez v2, :cond_109

    .line 116
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 117
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/feature/ui/a;->m:Lio/dcloud/feature/ui/a$a;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v6, p0, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v6

    const/16 v7, 0x1a

    invoke-interface {v2, v3, v7, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object v2, v5

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v2

    const-string v6, "0"

    const-string v7, "none"

    .line 122
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f2

    .line 123
    iget v8, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    invoke-static {v6, v8}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    goto :goto_f6

    .line 125
    :cond_f2
    iget v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iput v6, v2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    .line 127
    :goto_f6
    iput-byte v1, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 129
    invoke-static {v7}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_100

    const-string v7, "auto"

    :cond_100
    invoke-virtual {v2, v7}, Lio/dcloud/common/adapter/util/AnimOptions;->setCloseAnimType(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lio/dcloud/feature/ui/a;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-interface {v2, v3, v4, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_109
    if-nez v2, :cond_157

    const/4 v8, 0x0

    const-string v4, "back"

    const-string v6, "back"

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 138
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_157

    :cond_118
    const/16 v3, 0x52

    if-ne p2, v3, :cond_129

    const/4 v8, 0x0

    const-string v4, "menu"

    const-string v6, "menu"

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 141
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_157

    :cond_129
    if-ne p2, v10, :cond_138

    const/4 v8, 0x0

    const-string v4, "volumeup"

    const-string v6, "volumeup"

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 143
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_157

    :cond_138
    if-ne p2, v9, :cond_147

    const/4 v8, 0x0

    const-string v4, "volumedown"

    const-string v6, "volumedown"

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 145
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    goto :goto_157

    :cond_147
    const/16 v3, 0x54

    if-ne p2, v3, :cond_157

    const/4 v8, 0x0

    const-string v4, "search"

    const-string v6, "search"

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    .line 147
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result v2

    :cond_157
    :goto_157
    if-ne p1, v0, :cond_15d

    const-string v0, "keyup"

    :goto_15b
    move-object v6, v0

    goto :goto_16d

    .line 150
    :cond_15d
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyDown:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v0, :cond_164

    const-string v0, "keydown"

    goto :goto_15b

    :cond_164
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyLongPress:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, v0, :cond_16b

    const-string v0, "longpressed"

    goto :goto_15b

    :cond_16b
    const/4 v0, 0x0

    goto :goto_15b

    .line 154
    :goto_16d
    sget-boolean v0, Lio/dcloud/common/adapter/util/DeviceInfo;->isVolumeButtonEnabled:Z

    if-nez v0, :cond_176

    if-eq p2, v10, :cond_177

    if-ne p2, v9, :cond_176

    goto :goto_177

    :cond_176
    move v1, v2

    :cond_177
    :goto_177
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v6

    move-object v5, p1

    move v7, p2

    .line 160
    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/String;IZ)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_181
    :goto_181
    return v1
.end method

###### Class io.dcloud.feature.ui.a.C0050a (io.dcloud.feature.ui.a$a)
.class Lio/dcloud/feature/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dcloud/feature/ui/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I
    .registers 6

    .line 1
    iget v0, p1, Lio/dcloud/feature/ui/c;->E:I

    iget v1, p2, Lio/dcloud/feature/ui/c;->E:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 3
    iget-wide v0, p1, Lio/dcloud/feature/ui/c;->u:J

    iget-wide p1, p2, Lio/dcloud/feature/ui/c;->u:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :cond_12
    :goto_12
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/feature/ui/c;

    check-cast p2, Lio/dcloud/feature/ui/c;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/a$a;->a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I

    move-result p1

    return p1
.end method
