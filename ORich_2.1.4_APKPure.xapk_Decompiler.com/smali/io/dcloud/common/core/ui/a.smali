###### Class io.dcloud.common.core.ui.a (io.dcloud.common.core.ui.a)
.class Lio/dcloud/common/core/ui/a;
.super Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ISysEventListener;
.implements Lio/dcloud/common/DHInterface/IWebAppRootView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/a$k;,
        Lio/dcloud/common/core/ui/a$l;,
        Lio/dcloud/common/core/ui/a$o;,
        Lio/dcloud/common/core/ui/a$n;,
        Lio/dcloud/common/core/ui/a$m;
    }
.end annotation


# instance fields
.field private A:Lio/dcloud/common/adapter/ui/DHImageView;

.field a:Lio/dcloud/common/DHInterface/ICallBack;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Lio/dcloud/common/core/ui/b;

.field e:Lio/dcloud/common/core/ui/b;

.field f:Lio/dcloud/common/core/ui/b;

.field g:Lio/dcloud/common/core/ui/b;

.field h:Z

.field i:Ljava/lang/String;

.field j:Lio/dcloud/common/DHInterface/IApp;

.field k:Lio/dcloud/common/DHInterface/IActivityHandler;

.field l:Lio/dcloud/common/core/ui/a$k;

.field m:Lio/dcloud/common/DHInterface/ICallBack;

.field n:J

.field o:Z

.field p:Z

.field private q:Z

.field r:I

.field private s:Z

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field u:Lio/dcloud/common/core/ui/a$m;

.field private v:Lio/dcloud/common/core/ui/a$n;

.field private w:Lio/dcloud/common/core/ui/a$o;

.field protected x:B

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->a:Lio/dcloud/common/DHInterface/ICallBack;

    .line 4
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    .line 6
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    .line 7
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    .line 8
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    .line 9
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    .line 10
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/a;->h:Z

    .line 13
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    .line 22
    new-instance v1, Lio/dcloud/common/core/ui/a$k;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/a$k;-><init>(Lio/dcloud/common/core/ui/a;)V

    iput-object v1, p0, Lio/dcloud/common/core/ui/a;->l:Lio/dcloud/common/core/ui/a$k;

    .line 59
    new-instance v1, Lio/dcloud/common/core/ui/a$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/a$b;-><init>(Lio/dcloud/common/core/ui/a;)V

    iput-object v1, p0, Lio/dcloud/common/core/ui/a;->m:Lio/dcloud/common/DHInterface/ICallBack;

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lio/dcloud/common/core/ui/a;->n:J

    const/4 v1, 0x0

    .line 845
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/a;->o:Z

    .line 846
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/a;->p:Z

    .line 852
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/a;->q:Z

    .line 963
    iput v1, p0, Lio/dcloud/common/core/ui/a;->r:I

    .line 1025
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/a;->s:Z

    .line 1027
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lio/dcloud/common/core/ui/a;->t:Ljava/util/ArrayList;

    .line 1149
    new-instance v2, Lio/dcloud/common/core/ui/a$n;

    invoke-direct {v2, p0}, Lio/dcloud/common/core/ui/a$n;-><init>(Lio/dcloud/common/core/ui/a;)V

    iput-object v2, p0, Lio/dcloud/common/core/ui/a;->v:Lio/dcloud/common/core/ui/a$n;

    .line 1201
    new-instance v2, Lio/dcloud/common/core/ui/a$o;

    invoke-direct {v2, p0}, Lio/dcloud/common/core/ui/a$o;-><init>(Lio/dcloud/common/core/ui/a;)V

    iput-object v2, p0, Lio/dcloud/common/core/ui/a;->w:Lio/dcloud/common/core/ui/a$o;

    .line 1495
    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 1496
    sget-object p3, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz p3, :cond_54

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/a;->o:Z

    .line 1497
    iput-object p2, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    .line 1498
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 1499
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    .line 1500
    new-instance p3, Lio/dcloud/common/core/ui/a$l;

    invoke-direct {p3, p0, p1, p0}, Lio/dcloud/common/core/ui/a$l;-><init>(Lio/dcloud/common/core/ui/a;Landroid/content/Context;Lio/dcloud/common/core/ui/a;)V

    invoke-virtual {p0, p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    .line 1501
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    .line 1502
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    .line 1503
    invoke-interface {p2, p0}, Lio/dcloud/common/DHInterface/IAppInfo;->setWebAppRootView(Lio/dcloud/common/DHInterface/IWebAppRootView;)V

    .line 1504
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1505
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1506
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onDeviceNetChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1507
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1508
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onConfigurationChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1509
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSimStateChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1510
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardShow:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1511
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1512
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1513
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardHide:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1514
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppTrimMemory:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1515
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p0, p3}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 1516
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    const-string p3, "Device"

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 1517
    sget-object p2, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string p3, "last_notify_net_type"

    invoke-static {p1, p2, p3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1518
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType()Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_101

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netchange last_net_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";cur_net_type:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NetCheckReceiver"

    invoke-static {v1, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    sget-object p2, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    :cond_101
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->m:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->addClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;II)V
    .registers 6

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHAppRootView.pushFrameView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1, p2}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 6
    invoke-virtual {p0, p1, p3}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;I)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/b;

    .line 175
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 176
    iget v5, v4, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_26

    move v5, v1

    .line 178
    :cond_26
    iget v6, v4, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    add-int v7, v6, v5

    if-lez v7, :cond_33

    if-ge v6, v1, :cond_33

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->right:I

    add-int/2addr v4, v5

    if-gtz v4, :cond_10

    .line 179
    :cond_33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 182
    :cond_37
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 7
    new-instance v6, Lcom/dcloud/android/graphics/Region;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Lcom/dcloud/android/graphics/Region;-><init>(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_f
    if-ltz v7, :cond_7d

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lio/dcloud/common/core/ui/b;

    .line 10
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_73

    .line 11
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 12
    iget-boolean v1, v8, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_7a

    .line 13
    iget-boolean v1, v8, Lio/dcloud/common/core/ui/b;->a:Z

    if-eqz v1, :cond_41

    .line 14
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    .line 15
    invoke-virtual {p0, p1, v8}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    goto :goto_7a

    .line 18
    :cond_41
    invoke-virtual {v8}, Lio/dcloud/common/core/ui/b;->h()V

    .line 20
    invoke-virtual {p0, v6}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 21
    invoke-virtual {p0, p2, v8}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_7d

    .line 25
    :cond_51
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasTransparentValue()Z

    move-result v1

    if-nez v1, :cond_6f

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object v0, p0

    move-object v1, v6

    .line 26
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_6f

    .line 29
    :cond_68
    invoke-virtual {p0, p2, v8}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_7d

    .line 30
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p1, v8}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    goto :goto_7a

    .line 40
    :cond_73
    invoke-virtual {p0, p2, v8}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_7d

    :cond_7a
    :goto_7a
    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    :cond_7d
    :goto_7d
    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/a;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/a;->q:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/a;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 4

    const-string v0, "fullscreen"

    .line 189
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 190
    invoke-static {v0, v1, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 191
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setFullScreen(Z)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/adapter/util/ViewOptions;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/adapter/util/ViewOptions;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    return-object p0
.end method


# virtual methods
.method public a(Lio/dcloud/common/core/ui/b;IZ)Lio/dcloud/common/adapter/ui/DHImageView;
    .registers 11

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Lio/dcloud/common/core/ui/a$l;

    .line 207
    iget-object v2, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_65

    .line 208
    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez v2, :cond_1a

    .line 209
    invoke-virtual {p3}, Lio/dcloud/common/core/ui/k;->getLeftImageView()Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 211
    :cond_1a
    iget-object v2, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/INativeView;->isAnimate()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 212
    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 213
    iput-object v3, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    goto :goto_65

    .line 215
    :cond_2a
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eq p2, p3, :cond_4c

    .line 216
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_47

    .line 217
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    :cond_47
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    :cond_4c
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-object p3, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-virtual {p2, p1, p3}, Lio/dcloud/common/adapter/ui/DHImageView;->addNativeView(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/INativeView;)V

    .line 222
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v3}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 224
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object p1

    .line 229
    :cond_65
    :goto_65
    invoke-virtual {p0, p3}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 231
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p1, :cond_74

    .line 232
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 233
    iput-object v3, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    :cond_74
    return-object v3

    .line 238
    :cond_75
    iget-object v2, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    const/4 v5, 0x1

    if-eqz v2, :cond_7c

    const/4 p1, 0x0

    goto :goto_df

    :cond_7c
    if-ne v5, p2, :cond_d6

    .line 243
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p2, :cond_d6

    .line 244
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_d6

    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_d6

    .line 245
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, p3, :cond_c4

    .line 246
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 247
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    :cond_bf
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 251
    :cond_c4
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 252
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 253
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object p1

    .line 256
    :cond_d6
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 p1, 0x1

    :goto_df
    if-eqz v2, :cond_128

    .line 259
    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_128

    .line 260
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez p2, :cond_f1

    .line 261
    invoke-virtual {p3}, Lio/dcloud/common/core/ui/k;->getLeftImageView()Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 263
    :cond_f1
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eq p2, p3, :cond_113

    .line 264
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_10e

    .line 265
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v6, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 267
    :cond_10e
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 270
    :cond_113
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 271
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 273
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_131

    .line 275
    :cond_128
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p2, :cond_131

    .line 276
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 277
    iput-object v3, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 281
    :cond_131
    :goto_131
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p2, :cond_141

    .line 282
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->isSlipping()Z

    move-result p2

    if-eqz p2, :cond_13c

    return-object v3

    .line 285
    :cond_13c
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->refreshImagerView()V

    .line 287
    :cond_141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==============B\u622a\u56fe\u8017\u65f6="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p2, v0

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mabo"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget v0, Lio/dcloud/common/util/BaseInfo;->sTimeoutCapture:I

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_16f

    .line 291
    sget p1, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    add-int/2addr p1, v5

    sput p1, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 292
    sget p2, Lio/dcloud/common/util/BaseInfo;->sTimeOutMax:I

    if-le p1, p2, :cond_173

    .line 293
    sput-boolean v4, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureB:Z

    goto :goto_173

    :cond_16f
    if-eqz p1, :cond_173

    .line 296
    sput v4, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 299
    :cond_173
    :goto_173
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object p1
.end method

.method a(I)Lio/dcloud/common/core/ui/b;
    .registers 5

    .line 61
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 63
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    if-ne v2, p1, :cond_8

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    return-object v1
.end method

.method public a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;
    .registers 4

    .line 166
    sget-boolean p1, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const/4 p1, -0x1

    .line 167
    invoke-interface {p2, p1, v0}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 169
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    const-string v0, "waiting"

    .line 56
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 60
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/core/ui/a$e;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/a$e;-><init>(Lio/dcloud/common/core/ui/a;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IFrameView;",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 186
    :cond_9
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 187
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_50

    .line 188
    new-instance v0, Lcom/dcloud/android/graphics/Region;

    invoke-direct {v0}, Lcom/dcloud/android/graphics/Region;-><init>()V

    add-int/lit8 p1, p1, -0x1

    :goto_1a
    if-ltz p1, :cond_50

    .line 190
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 191
    iget-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v2, :cond_46

    .line 192
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_46

    .line 193
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 195
    iget v3, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v4, v1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v5, v1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v6, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    .line 197
    :cond_46
    invoke-virtual {p0, v0}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;)Z

    move-result v1

    if-eqz v1, :cond_4d

    goto :goto_50

    :cond_4d
    add-int/lit8 p1, p1, -0x1

    goto :goto_1a

    :cond_50
    :goto_50
    return-void
.end method

.method a(Lio/dcloud/common/core/ui/a;I)V
    .registers 12

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Html5Plus-SplashClosed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    if-le p2, v3, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    .line 87
    :goto_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeSplashScreen0 appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";closeSplashDid="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lio/dcloud/common/core/ui/a;->o:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Main_Path"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_13e

    .line 88
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/a;->o:Z

    if-nez v3, :cond_13e

    .line 90
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/a;->q:Z

    if-eqz v3, :cond_58

    return-void

    .line 93
    :cond_58
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_62

    .line 94
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IActivityHandler;->hasAdService()Z

    move-result v3

    xor-int/2addr v3, v2

    goto :goto_63

    :cond_62
    const/4 v3, 0x1

    .line 96
    :goto_63
    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v4, :cond_f8

    .line 97
    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IActivityHandler;->hasAdService()Z

    move-result v4

    if-nez v4, :cond_ad

    new-array v4, v2, [Ljava/lang/Class;

    .line 98
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x0

    const-string v7, "io.dcloud.feature.gg.dcloud.ADHandler"

    const-string v8, "SplashAdIsEnable"

    invoke-static {v7, v8, v6, v4, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_ad

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lio/dcloud/common/util/BaseInfo;->splashCreateTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x9c4

    cmp-long v8, v4, v6

    if-gez v8, :cond_ad

    .line 102
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/a;->q:Z

    .line 103
    new-instance v0, Lio/dcloud/common/core/ui/a$g;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/common/core/ui/a$g;-><init>(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/a;I)V

    sub-long/2addr v6, v4

    invoke-static {v0, v6, v7}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_ad
    if-eqz v3, :cond_b6

    .line 115
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    :cond_b6
    const-string p1, "closeSplashScreen0"

    .line 117
    invoke-static {v0, p1}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 119
    :try_start_bb
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c7} :catch_c8

    goto :goto_e3

    :catch_c8
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e.getMessage()=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e3
    if-eqz v3, :cond_eb

    .line 126
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->onSplashClosed()V

    goto :goto_ff

    .line 128
    :cond_eb
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    new-instance v0, Lio/dcloud/common/core/ui/a$h;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/a$h;-><init>(Lio/dcloud/common/core/ui/a;)V

    invoke-interface {p1, p2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->setSplashCloseListener(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    goto :goto_ff

    .line 142
    :cond_f8
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_ff

    .line 144
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->diyStatusBarState()V

    :cond_ff
    :goto_ff
    const-string p1, "run_5app_time_key"

    .line 149
    invoke-static {p1, v1}, Lio/dcloud/common/util/TestUtil;->getUseTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/dcloud/common/util/BaseInfo;->run5appEndTime:J

    .line 150
    invoke-static {p1}, Lio/dcloud/common/util/TestUtil;->delete(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    iget-wide v0, p0, Lio/dcloud/common/core/ui/a;->n:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v0, "commit"

    invoke-interface {p1, v0, p2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getOnCreateSplashView()Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    move-result-object p1

    if-eqz p1, :cond_122

    .line 156
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCloseSplash()V

    .line 159
    :cond_122
    invoke-static {}, Lio/dcloud/common/core/ui/DCKeyboardManager;->getInstance()Lio/dcloud/common/core/ui/DCKeyboardManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/common/core/ui/DCKeyboardManager;->dhAppRootIsReady(Lio/dcloud/common/core/ui/a;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lio/dcloud/common/util/BaseInfo;->splashCloseTime:J

    .line 161
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_135

    if-nez v3, :cond_139

    :cond_135
    iget-boolean p2, p0, Lio/dcloud/common/core/ui/a;->p:Z

    if-eqz p2, :cond_13e

    .line 162
    :cond_139
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p2, p0}, Lio/dcloud/common/DHInterface/IApp;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 165
    :cond_13e
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/a;->o:Z

    return-void
.end method

.method a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V
    .registers 8

    if-eqz p2, :cond_59

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSplashScreen0 delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";autoClose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";mAppid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "approotview"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 68
    new-instance v0, Lio/dcloud/common/core/ui/a$f;

    invoke-direct {v0, p0, p4, p1, p5}, Lio/dcloud/common/core/ui/a$f;-><init>(Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/a;I)V

    const/16 p1, 0x96

    .line 74
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long p3, p1

    .line 75
    invoke-static {v0, p3, p4, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    goto :goto_59

    .line 83
    :cond_40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "closeSplashScreen2;autoClose;mAppid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p1, p5}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    :cond_59
    :goto_59
    return-void
.end method

.method a(Lio/dcloud/common/core/ui/b;)V
    .registers 4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DHAppRootView.closeFrameView pFrameView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->onDestroy()V

    .line 54
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 4

    .line 198
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    .line 199
    iget-byte v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    iput-byte v0, p0, Lio/dcloud/common/core/ui/a;->x:B

    .line 200
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    iget-byte v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    iput-byte v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 201
    iget-object v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/core/ui/a;->y:Ljava/lang/String;

    .line 202
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    iput-object v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/core/ui/a;->z:Ljava/lang/String;

    .line 204
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    iput-object p2, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)Z
    .registers 7

    .line 300
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_1b

    iget-wide v0, v0, Lio/dcloud/common/adapter/ui/DHImageView;->mBitmapHeight:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    .line 301
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-wide v2, p1, Lio/dcloud/common/adapter/ui/DHImageView;->mBitmapHeight:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    return p1
.end method

.method a(Lcom/dcloud/android/graphics/Region;)Z
    .registers 6

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/dcloud/android/graphics/Region;->fillWholeScreen()Z

    move-result v2

    if-eqz v2, :cond_19

    return v0

    :cond_19
    if-eqz v0, :cond_22

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 47
    invoke-virtual {p1}, Lcom/dcloud/android/graphics/Region;->count()V

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    return v1
.end method

.method a(Lcom/dcloud/android/graphics/Region;IIII)Z
    .registers 12

    add-int v3, p2, p4

    add-int v4, p3, p5

    .line 49
    invoke-virtual {p1, p2, p3, v3, v4}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result p4

    if-nez p4, :cond_12

    .line 51
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_12
    return p4
.end method

.method a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;",
            "Lio/dcloud/common/core/ui/b;",
            ")Z"
        }
    .end annotation

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 5

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clearFrameView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lio/dcloud/common/core/ui/b;

    .line 175
    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v0, :cond_35

    .line 176
    aget-object v3, v1, v2

    .line 178
    :try_start_2a
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->onDestroy()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception v3

    .line 180
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 184
    :cond_35
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 186
    :cond_3a
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->clearView()V

    .line 187
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    if-eqz v0, :cond_44

    .line 188
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_44
    return-void
.end method

.method b(Lio/dcloud/common/core/ui/b;)V
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    .line 4
    iget-byte v8, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 6
    iget-boolean v0, v7, Lio/dcloud/common/core/ui/b;->d:Z

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-nez v0, :cond_20

    iget-boolean v0, v7, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-nez v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasTransparentValue()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 7
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4e

    :cond_2a
    if-eq v8, v10, :cond_41

    if-ne v8, v11, :cond_2f

    goto :goto_41

    :cond_2f
    if-ne v8, v12, :cond_32

    return-void

    :cond_32
    if-eq v8, v9, :cond_36

    if-nez v8, :cond_4e

    .line 22
    :cond_36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v6, v0, v7}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    .line 24
    iput-object v0, v7, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    return-void

    .line 25
    :cond_41
    :goto_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v6, v0, v7}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    .line 27
    iput-object v0, v7, Lio/dcloud/common/core/ui/b;->c:Ljava/util/ArrayList;

    if-eq v8, v11, :cond_4e

    return-void

    .line 44
    :cond_4e
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v15, Lcom/dcloud/android/graphics/Region;

    invoke-direct {v15, v12}, Lcom/dcloud/android/graphics/Region;-><init>(I)V

    .line 48
    iget-object v0, v6, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v5, v0

    :goto_65
    if-ltz v5, :cond_160

    .line 49
    iget-object v0, v6, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/dcloud/common/core/ui/b;

    .line 50
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_151

    .line 51
    iget-boolean v0, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_14e

    .line 52
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->h()V

    .line 53
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    if-eq v8, v9, :cond_113

    if-nez v8, :cond_8b

    goto/16 :goto_113

    :cond_8b
    if-ne v8, v12, :cond_d7

    .line 70
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions_Animate()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    if-ne v4, v7, :cond_96

    if-eqz v1, :cond_96

    move-object v0, v1

    .line 74
    :cond_96
    invoke-virtual {v6, v15}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 75
    invoke-virtual {v6, v13, v4}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_14e

    goto/16 :goto_160

    .line 79
    :cond_a4
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasTransparentValue()Z

    move-result v1

    if-nez v1, :cond_cf

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v15

    move-object v9, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move/from16 v5, v16

    .line 80
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_d2

    .line 84
    :cond_c7
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto/16 :goto_160

    :cond_cf
    move-object v9, v4

    move/from16 v17, v5

    .line 85
    :goto_d2
    invoke-virtual {v6, v14, v9}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_15b

    :cond_d7
    move-object v9, v4

    move/from16 v17, v5

    if-eq v8, v10, :cond_de

    if-ne v8, v11, :cond_15b

    :cond_de
    if-ne v9, v7, :cond_e5

    .line 94
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    goto/16 :goto_15b

    .line 96
    :cond_e5
    invoke-virtual {v6, v15}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 97
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    goto/16 :goto_15b

    .line 99
    :cond_f0
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasTransparentValue()Z

    move-result v1

    if-nez v1, :cond_10f

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object/from16 v0, p0

    move-object v1, v15

    .line 100
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    move-result v0

    if-nez v0, :cond_108

    goto :goto_10f

    .line 104
    :cond_108
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto :goto_160

    .line 105
    :cond_10f
    :goto_10f
    invoke-virtual {v6, v14, v9}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    goto :goto_15b

    :cond_113
    :goto_113
    move-object v9, v4

    move/from16 v17, v5

    .line 106
    invoke-virtual {v6, v15}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;)Z

    move-result v1

    if-nez v1, :cond_122

    invoke-virtual {v15}, Lcom/dcloud/android/graphics/Region;->getFillScreenCounter()I

    move-result v1

    if-le v1, v12, :cond_12b

    :cond_122
    if-eq v7, v9, :cond_12b

    .line 107
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto :goto_160

    .line 111
    :cond_12b
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasTransparentValue()Z

    move-result v1

    if-nez v1, :cond_14a

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object/from16 v0, p0

    move-object v1, v15

    .line 112
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/core/ui/a;->a(Lcom/dcloud/android/graphics/Region;IIII)Z

    move-result v0

    if-nez v0, :cond_143

    goto :goto_14a

    .line 115
    :cond_143
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto :goto_160

    .line 116
    :cond_14a
    :goto_14a
    invoke-virtual {v6, v14, v9}, Lio/dcloud/common/core/ui/a;->b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V

    goto :goto_15b

    :cond_14e
    move/from16 v17, v5

    goto :goto_15b

    :cond_151
    move-object v9, v4

    move/from16 v17, v5

    .line 164
    invoke-virtual {v6, v13, v9}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_15b

    goto :goto_160

    :cond_15b
    :goto_15b
    add-int/lit8 v5, v17, -0x1

    const/4 v9, 0x4

    goto/16 :goto_65

    .line 169
    :cond_160
    :goto_160
    iput-object v13, v7, Lio/dcloud/common/core/ui/b;->c:Ljava/util/ArrayList;

    .line 170
    iput-object v14, v7, Lio/dcloud/common/core/ui/b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method b(Ljava/util/ArrayList;Lio/dcloud/common/core/ui/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;",
            "Lio/dcloud/common/core/ui/b;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method c(Lio/dcloud/common/core/ui/b;)I
    .registers 3

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public c()V
    .registers 8

    const-string v0, "Animation_Path"

    const-string v1, "AppRootView dispatchConfigurationChanged(\u6a2a\u7ad6\u5c4f\u5207\u6362\u3001\u5168\u5c4f\u975e\u5168\u5c4f\u5207\u6362\u3001\u865a\u62df\u8fd4\u56de\u952e\u680f\u9690\u85cf\u663e\u793a) \u5f15\u53d1\u8c03\u6574\u6808\u7a97\u53e3"

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-direct {p0, v1, v0}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 8
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 9
    iget-object v4, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    if-eqz v4, :cond_35

    .line 10
    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    xor-int/lit8 v3, v3, 0x1

    .line 11
    iput-boolean v3, v2, Lio/dcloud/common/core/ui/b;->i:Z

    goto :goto_18

    .line 14
    :cond_3a
    new-instance v0, Lio/dcloud/common/core/ui/a$d;

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/core/ui/a$d;-><init>(Lio/dcloud/common/core/ui/a;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method d()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method d(Lio/dcloud/common/core/ui/b;)Z
    .registers 5

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    if-eq p1, v1, :cond_6

    .line 3
    iget-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public didCloseSplash()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/a;->o:Z

    return v0
.end method

.method public declared-synchronized dispose()V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/a;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    .line 4
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->u:Lio/dcloud/common/core/ui/a$m;

    if-eqz v1, :cond_10

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v1, Lio/dcloud/common/core/ui/a$m;->a:Z

    .line 7
    :cond_10
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v1, :cond_19

    .line 8
    invoke-virtual {v1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    iput-object v0, p0, Lio/dcloud/common/core/ui/a;->A:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 11
    :cond_19
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->dispose()V

    .line 12
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->m:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->removeClickStatusbarCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    .line 13
    sget-object v1, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordView:Lio/dcloud/common/adapter/ui/RecordView;

    if-eqz v1, :cond_2a

    .line 14
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/RecordView;->dispose()V

    .line 16
    :cond_2a
    sput-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->mRecordView:Lio/dcloud/common/adapter/ui/RecordView;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e(Lio/dcloud/common/core/ui/b;)I
    .registers 9

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    const/4 v2, 0x0

    if-ltz v1, :cond_30

    .line 5
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/b;

    .line 6
    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2d

    if-le v0, v4, :cond_2d

    .line 7
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2d

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-eqz v1, :cond_52

    .line 14
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->obtainMainViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v5, v1

    const/4 v4, 0x0

    :goto_3d
    if-ge v2, v3, :cond_53

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 19
    instance-of v6, v6, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-nez v6, :cond_4a

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    :goto_4c
    if-lt v4, v1, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_52
    move v5, v1

    .line 27
    :cond_53
    :goto_53
    invoke-direct {p0, p1, v1, v5}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/b;II)V

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 30
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    :cond_63
    return v1
.end method

.method e()Ljava/util/Stack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    return-object v0
.end method

.method f()Lio/dcloud/common/core/ui/b;
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0
.end method

.method public f(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    .line 3
    iget-byte v0, p0, Lio/dcloud/common/core/ui/a;->x:B

    iput-byte v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->y:Ljava/lang/String;

    iput-object v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->z:Ljava/lang/String;

    iput-object v0, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    return-void
.end method

.method public findFrameViewB(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/common/DHInterface/IFrameView;
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/util/ArrayList;)V

    .line 6
    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/a;->a(Ljava/util/ArrayList;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1d

    return-object v1

    .line 10
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_2b

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    :cond_2b
    return-object v1
.end method

.method g()Lio/dcloud/common/core/ui/b;
    .registers 2

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v0

    return-object v0
.end method

.method g(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/core/ui/a$c;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/core/ui/a$c;-><init>(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public goHome(Lio/dcloud/common/DHInterface/IFrameView;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_1e

    .line 2
    move-object v0, p1

    check-cast v0, Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    const/4 v2, 0x1

    iput-byte v2, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    const-string v2, "none"

    iput-object v2, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public h()V
    .registers 5

    .line 1
    sget-boolean v0, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    const/16 v0, 0x1f4

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v1}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/16 v0, 0x32

    .line 6
    :cond_18
    new-instance v1, Lio/dcloud/common/core/ui/a$j;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/a$j;-><init>(Lio/dcloud/common/core/ui/a;)V

    int-to-long v2, v0

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    :cond_22
    return-void
.end method

.method h(Lio/dcloud/common/core/ui/b;)V
    .registers 7

    .line 7
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->mChildArrayList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4a

    .line 9
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->w:Lio/dcloud/common/core/ui/a$o;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 13
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 14
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lio/dcloud/common/adapter/ui/WebParentView;

    if-nez v4, :cond_1b

    .line 15
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    goto :goto_1b

    .line 18
    :cond_3d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 21
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4a

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 27
    :cond_4a
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->i(Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method public i()Lio/dcloud/common/core/ui/b;
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_2f

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 4
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2c

    iget-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v2, :cond_2c

    goto :goto_2f

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_2f
    :goto_2f
    return-object v1
.end method

.method i(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 5
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 8
    :cond_7
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->sortNativeViewBringToFront()V

    return-void
.end method

.method j()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_40

    .line 6
    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 7
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 8
    iget-boolean v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v2, :cond_3d

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_39

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_39

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3d

    :cond_39
    const/4 v2, 0x4

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_40
    return-void
.end method

.method public k()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lio/dcloud/common/core/ui/k;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/k;

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/k;->c()V

    :cond_11
    return-void
.end method

.method l()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->v:Lio/dcloud/common/core/ui/a$n;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method m()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->v:Lio/dcloud/common/core/ui/a$n;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_22

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/a;->b:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return-void
.end method

.method public onAppActive(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/DHInterface/IApp;)V

    .line 2
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainOriginalAppId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sCurrentAppOriginalAppid:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v0, :cond_3d

    .line 12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isTemporaryFullScreen:Z

    if-eqz v1, :cond_34

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v1, :cond_34

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/a;->o:Z

    if-nez v1, :cond_34

    .line 15
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 17
    :cond_34
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->setViewAsContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 19
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onAppActive setContentView"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Main_Path"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "app_open"

    invoke-static {v0, p1}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onAppStart(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/a;->o:Z

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/a;->p:Z

    if-eqz p1, :cond_a

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/DHInterface/IApp;)V

    .line 7
    :cond_a
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/a$i;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/a$i;-><init>(Lio/dcloud/common/core/ui/a;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->onAppActive(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method

.method public onAppStop(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->onAppUnActive(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method

.method public onAppUnActive(Lio/dcloud/common/DHInterface/IApp;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->u:Lio/dcloud/common/core/ui/a$m;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a$m;->a()V

    :cond_7
    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 15

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "default"

    const-string v1, "p.runtime.launcher = \'%s\';"

    const-string v2, "p.runtime.arguments = %s;"

    const-string v3, "plus.device.imsi = [\'%s\'];"

    const-string v4, "Device"

    const/4 v5, 0x0

    const-string v6, "javascript:"

    const-string v7, "try{if((window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus).runtime)var p=window.__html5plus__&&__html5plus__.isReady?__html5plus__:navigator.plus&&navigator.plus.isReady?navigator.plus:window.plus; %s }catch(_){}"

    const-string v8, "javascript:(function(){if(!((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus)){window.__load__plus__&&window.__load__plus__();}var e = document.createEvent(\'HTMLEvents\');var evt = \'%s\';e.initEvent(evt, false, true);/*console.log(\'dispatch \' + evt + \' event\');*/document.dispatchEvent(e);})();"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, ""

    packed-switch p1, :pswitch_data_344

    goto/16 :goto_310

    :pswitch_22
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "splashclosed"

    aput-object p2, p1, v10

    .line 117
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 118
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto/16 :goto_310

    :pswitch_33
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "trimmemory"

    aput-object p2, p1, v10

    .line 119
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 120
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto/16 :goto_310

    .line 121
    :pswitch_44
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->getLauncherData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "__webapp_reply__"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_ae

    .line 126
    :cond_5d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 127
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, p2}, Lio/dcloud/common/DHInterface/IApp;->setRuntimeArgs(Ljava/lang/String;)V

    new-array p2, v9, [Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainRuntimeArgs(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v10

    invoke-static {v2, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p1, v0, v10

    .line 129
    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p2, v2, v10

    .line 131
    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    .line 132
    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 135
    :goto_ae
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "foreground"

    aput-object v1, p2, v10

    aput-object v0, p2, v9

    const-string v1, "javascript:(function(){if(!((window.__html5plus__&&__html5plus__.isReady)?__html5plus__:(navigator.plus&&navigator.plus.isReady)?navigator.plus:window.plus)){window.__load__plus__&&window.__load__plus__();}var e = document.createEvent(\'HTMLEvents\');var evt = \'%s\';e.initEvent(evt, false, true); e.active = \'%s\';/*console.log(\'dispatch \' + evt + \' event\');*/document.dispatchEvent(e);})();"

    invoke-static {v1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 137
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "active"

    .line 138
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance p2, Lio/dcloud/common/adapter/util/EventActionInfo;

    const-string v0, "foreground"

    invoke-direct {p2, v0, v5, p1}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v5, p2

    goto/16 :goto_310

    :pswitch_e0
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "background"

    aput-object p2, p1, v10

    .line 140
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 141
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto/16 :goto_310

    :pswitch_f1
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "keyboardhide"

    aput-object p2, p1, v10

    .line 142
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 143
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto/16 :goto_310

    :pswitch_102
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "keyboardshow"

    aput-object p2, p1, v10

    .line 144
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 145
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto/16 :goto_310

    .line 146
    :pswitch_113
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v9}, Lio/dcloud/common/DHInterface/IAppInfo;->updateScreenInfo(I)V

    return v10

    .line 147
    :pswitch_119
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->setRuntimeArgs(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->getLaunchType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/dcloud/common/util/BaseInfo;->putLauncherData(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "LAUNCHTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pdr"

    invoke-static {p2, v4, v3}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15f

    goto :goto_160

    :cond_15f
    move-object v0, p2

    :goto_160
    new-array p2, v9, [Ljava/lang/Object;

    .line 157
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3, v9}, Lio/dcloud/common/DHInterface/IApp;->obtainRuntimeArgs(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v10

    invoke-static {v2, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v10

    .line 158
    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v0, v1, v10

    const-string v0, "p.runtime.origin = \'%s\';"

    .line 159
    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p2, v2, v10

    .line 161
    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v10

    .line 162
    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    .line 163
    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v9, [Ljava/lang/Object;

    const-string v3, "newintent"

    aput-object v3, v1, v10

    invoke-static {v8, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "var p = plus;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v3, p1}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_310

    .line 166
    :pswitch_1e4
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f1

    return v10

    .line 168
    :cond_1f1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v0, "last_notify_net_type"

    invoke-static {p1, p2, v0}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25f

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netchange last_net_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";cur_net_type:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetCheckReceiver"

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    invoke-static {p1, v1, v0, p2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "netchange"

    aput-object p2, p1, v10

    .line 176
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v9, [Ljava/lang/Object;

    .line 177
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getUpdateIMSI()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v10

    invoke-static {v3, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 179
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    const-string p1, "netchange"

    invoke-direct {v5, p1, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_310

    :cond_25f
    return v10

    .line 180
    :pswitch_260
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/core/permission/PermissionControler;->checkPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_310

    new-array p1, v9, [Ljava/lang/Object;

    .line 181
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getUpdateIMSI()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v10

    invoke-static {v3, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p2, v9, [Ljava/lang/Object;

    const-string v1, "imsichange"

    aput-object v1, p2, v10

    invoke-static {v8, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 184
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, v1, p1}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_310

    :pswitch_2a6
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "resume"

    aput-object p2, p1, v10

    .line 185
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 186
    sget-boolean p1, Lio/dcloud/common/adapter/util/AndroidResources;->sIMEAlive:Z

    if-nez p1, :cond_2bb

    sget-object p1, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    if-eqz p1, :cond_2bb

    .line 187
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->closeRecordView()V

    .line 189
    :cond_2bb
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 190
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lio/dcloud/common/core/ui/a;->n:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    .line 194
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq p1, v1, :cond_2fb

    const-wide/16 v1, 0x0

    .line 195
    sput-wide v1, Lio/dcloud/common/util/BaseInfo;->run5appEndTime:J

    .line 196
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    iget-wide v1, p0, Lio/dcloud/common/core/ui/a;->n:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "commit"

    invoke-interface {p1, v2, v1}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/core/ui/a;->n:J

    .line 199
    :cond_2fb
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    goto :goto_310

    :pswitch_301
    new-array p1, v9, [Ljava/lang/Object;

    const-string p2, "pause"

    aput-object p2, p1, v10

    .line 200
    invoke-static {v8, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 201
    new-instance v5, Lio/dcloud/common/adapter/util/EventActionInfo;

    invoke-direct {v5, p2}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;)V

    .line 322
    :cond_310
    :goto_310
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_343

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_343

    .line 323
    iget-object p1, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v9

    :goto_321
    if-ltz p1, :cond_343

    .line 324
    iget-object p2, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/core/ui/b;

    .line 325
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_340

    .line 327
    instance-of v0, p2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v0, :cond_33d

    if-eqz v5, :cond_33d

    .line 329
    check-cast p2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p2, v5}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    goto :goto_340

    .line 333
    :cond_33d
    invoke-interface {p2, v11}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    :cond_340
    :goto_340
    add-int/lit8 p1, p1, -0x1

    goto :goto_321

    :cond_343
    return v10

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_301
        :pswitch_2a6
        :pswitch_260
        :pswitch_1e4
        :pswitch_119
        :pswitch_113
        :pswitch_102
        :pswitch_f1
        :pswitch_e0
        :pswitch_44
        :pswitch_33
        :pswitch_22
    .end packed-switch
.end method

.method public onRootViewGlobalLayout(Landroid/view/View;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2
    :cond_7
    sget-boolean v0, Lio/dcloud/common/adapter/ui/AdaWebview;->ScreemOrientationChangedNeedLayout:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    .line 3
    sput-boolean v2, Lio/dcloud/common/adapter/ui/AdaWebview;->ScreemOrientationChangedNeedLayout:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->updateScreenInfo(I)V

    .line 8
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 10
    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_2d

    return-void

    .line 11
    :cond_2d
    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 12
    iget-object v4, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IAppInfo;->isVerticalScreen()Z

    move-result v4

    if-nez v4, :cond_45

    .line 13
    iget-object v3, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    sub-int v3, v0, v3

    :cond_45
    if-eqz v3, :cond_4c

    .line 19
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->updateScreenInfo(I)V

    .line 31
    :cond_4c
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/a;->r:I

    if-eq v0, v1, :cond_6b

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_6b

    .line 32
    invoke-static {}, Lio/dcloud/common/adapter/util/PlatformUtil;->RESET_H_W()V

    .line 33
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/a;->s:Z

    if-nez v0, :cond_69

    .line 34
    sput-boolean v5, Lio/dcloud/common/util/BaseInfo;->sFullScreenChanged:Z

    .line 35
    :cond_69
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/a;->s:Z

    .line 38
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/core/ui/a;->r:I

    return-void
.end method

.method reload(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "\\|"

    move-object/from16 v2, p1

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "weex,io.dcloud.feature.weex.WeexFeature"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v2, :cond_44

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isUniNViewBackgroud()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 8
    iget-object v2, v0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 9
    iget-object v2, v0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 10
    iget-object v10, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v11, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    aput-object v2, v12, v8

    aput-object v6, v12, v9

    const-string v2, "updateServiceReload"

    aput-object v2, v12, v5

    const/4 v2, 0x0

    aput-object v2, v12, v4

    invoke-virtual {v10, v11, v3, v12}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_44
    iget-object v2, v0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    :goto_4b
    if-ltz v2, :cond_cb

    .line 14
    iget-object v10, v0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/common/core/ui/b;

    .line 15
    invoke-virtual {v10}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v11

    .line 16
    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    iget-object v12, v12, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    if-eqz v12, :cond_63

    const/4 v12, 0x1

    goto :goto_64

    :cond_63
    const/4 v12, 0x0

    :goto_64
    if-eqz v11, :cond_c1

    const/4 v13, 0x0

    .line 18
    :goto_67
    array-length v14, v1

    if-ge v13, v14, :cond_c1

    .line 19
    aget-object v14, v1, v13

    if-eqz v12, :cond_9b

    const-string v15, ".js"

    .line 21
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_96

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v14, v15, v8

    .line 24
    iget-object v14, v10, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v10}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v17

    aput-object v17, v4, v8

    aput-object v6, v4, v9

    const-string v17, "updateReload"

    aput-object v17, v4, v5

    const/16 v16, 0x3

    aput-object v15, v4, v16

    const/16 v15, 0xa

    invoke-virtual {v14, v3, v15, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    :cond_96
    const/16 v15, 0xa

    const/16 v16, 0x3

    goto :goto_bb

    :cond_9b
    const/16 v15, 0xa

    const/16 v16, 0x3

    .line 26
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 27
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IWebview;->reload()V

    goto :goto_c5

    .line 29
    :cond_ad
    instance-of v3, v11, Lio/dcloud/common/core/ui/TabBarWebview;

    if-eqz v3, :cond_bb

    .line 30
    move-object v3, v11

    check-cast v3, Lio/dcloud/common/core/ui/TabBarWebview;

    invoke-virtual {v3, v14}, Lio/dcloud/common/core/ui/TabBarWebview;->checkUrlToReload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bb

    goto :goto_c5

    :cond_bb
    :goto_bb
    add-int/lit8 v13, v13, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x3

    goto :goto_67

    :cond_c1
    const/16 v15, 0xa

    const/16 v16, 0x3

    :goto_c5
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    const/4 v4, 0x3

    goto :goto_4b

    :cond_cb
    return-void
.end method

.method reload(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 5
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->reload()V

    :cond_1b
    if-nez p1, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    :goto_21
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.C0029a (io.dcloud.common.core.ui.a$a)
.class synthetic Lio/dcloud/common/core/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->values()[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    :try_start_9
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSimStateChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onDeviceNetChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onConfigurationChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardShow:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyboardHide:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppBackground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppForeground:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppTrimMemory:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lio/dcloud/common/core/ui/a$a;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.b (io.dcloud.common.core.ui.a$b)
.class Lio/dcloud/common/core/ui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$b;->a:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_29

    const-string p2, "com.huawei.intent.action.CLICK_STATUSBAR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$b;->a:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 5
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$b;->a:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 7
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->c()V

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.a.c (io.dcloud.common.core.ui.a$c)
.class Lio/dcloud/common/core/ui/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->g(Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$c;->b:Lio/dcloud/common/core/ui/a;

    iput-object p2, p0, Lio/dcloud/common/core/ui/a$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$c;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p1, p0, Lio/dcloud/common/core/ui/a$c;->a:Lio/dcloud/common/core/ui/b;

    if-eqz p1, :cond_34

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DHAppRootView.popFrameView frame"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/core/ui/a$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$c;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/a$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$c;->b:Lio/dcloud/common/core/ui/a;

    iget-object v0, p0, Lio/dcloud/common/core/ui/a$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/b;)V

    :cond_34
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.d (io.dcloud.common.core.ui.a$d)
.class Lio/dcloud/common/core/ui/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$d;->b:Lio/dcloud/common/core/ui/a;

    iput-object p2, p0, Lio/dcloud/common/core/ui/a$d;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 7

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$d;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$d;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_14
    if-ltz p1, :cond_40

    .line 3
    iget-object v1, p0, Lio/dcloud/common/core/ui/a$d;->b:Lio/dcloud/common/core/ui/a;

    invoke-static {v1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/a$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5
    iget-object v2, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    if-eqz v2, :cond_35

    .line 6
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v4, 0x16

    invoke-virtual {v2, v3, v4, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_35
    iput-boolean v0, v1, Lio/dcloud/common/core/ui/b;->h:Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_3a

    :cond_37
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    :catch_3a
    move-exception p1

    const-string v0, "DHAppRootView onConfigurationChanged"

    .line 12
    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_40
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.e (io.dcloud.common.core.ui.a$e)
.class Lio/dcloud/common/core/ui/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$e;->a:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$e;->a:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->k:Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->showSplashWaiting()V

    :cond_9
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.f (io.dcloud.common.core.ui.a$f)
.class Lio/dcloud/common/core/ui/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lio/dcloud/common/core/ui/a;

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/a;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$f;->d:Lio/dcloud/common/core/ui/a;

    iput-boolean p2, p0, Lio/dcloud/common/core/ui/a$f;->a:Z

    iput-object p3, p0, Lio/dcloud/common/core/ui/a$f;->b:Lio/dcloud/common/core/ui/a;

    iput p4, p0, Lio/dcloud/common/core/ui/a$f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "closeSplashScreen1;autoClose="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/a$f;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ";mAppid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/core/ui/a$f;->d:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "approotview"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$f;->d:Lio/dcloud/common/core/ui/a;

    iget-object v0, p0, Lio/dcloud/common/core/ui/a$f;->b:Lio/dcloud/common/core/ui/a;

    iget v1, p0, Lio/dcloud/common/core/ui/a$f;->c:I

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.a.g (io.dcloud.common.core.ui.a$g)
.class Lio/dcloud/common/core/ui/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;

.field final synthetic b:I

.field final synthetic c:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/a;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$g;->c:Lio/dcloud/common/core/ui/a;

    iput-object p2, p0, Lio/dcloud/common/core/ui/a$g;->a:Lio/dcloud/common/core/ui/a;

    iput p3, p0, Lio/dcloud/common/core/ui/a$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$g;->c:Lio/dcloud/common/core/ui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$g;->c:Lio/dcloud/common/core/ui/a;

    iget-object v1, p0, Lio/dcloud/common/core/ui/a$g;->a:Lio/dcloud/common/core/ui/a;

    iget v2, p0, Lio/dcloud/common/core/ui/a$g;->b:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.a.h (io.dcloud.common.core.ui.a$h)
.class Lio/dcloud/common/core/ui/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$h;->a:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$h;->a:Lio/dcloud/common/core/ui/a;

    iget-object p1, p1, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->onSplashClosed()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$h;->a:Lio/dcloud/common/core/ui/a;

    iget-boolean p2, p1, Lio/dcloud/common/core/ui/a;->o:Z

    if-eqz p2, :cond_17

    iget-object p2, p1, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p2, :cond_17

    .line 3
    sget-object p1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSplashclosed:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p2, p1, p0}, Lio/dcloud/common/DHInterface/IApp;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_17
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lio/dcloud/common/core/ui/a;->p:Z

    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.core.ui.a.i (io.dcloud.common.core.ui.a$i)
.class Lio/dcloud/common/core/ui/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$i;->a:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$i;->a:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/a$i;->a:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/a;->onRootViewGlobalLayout(Landroid/view/View;)V

    if-eqz v0, :cond_27

    .line 3
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_27

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_27
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.j (io.dcloud.common.core.ui.a$j)
.class Lio/dcloud/common/core/ui/a$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$j;->a:Lio/dcloud/common/core/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$j;->a:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 5
    :cond_1c
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$j;->a:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

###### Class io.dcloud.common.core.ui.a.k (io.dcloud.common.core.ui.a$k)
.class Lio/dcloud/common/core/ui/a$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lio/dcloud/common/core/ui/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    .line 3
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/core/ui/a$k;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .line 7
    iget v0, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    return v0
.end method

.method a(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$k;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    if-le p1, v0, :cond_e

    goto :goto_10

    .line 6
    :cond_e
    iput v0, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    :goto_10
    return-void
.end method

.method b(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$k;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/dcloud/common/core/ui/a$k;->a:I

    return-void
.end method

###### Class io.dcloud.common.core.ui.a.l (io.dcloud.common.core.ui.a$l)
.class Lio/dcloud/common/core/ui/a$l;
.super Lio/dcloud/common/core/ui/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/a$l$c;
    }
.end annotation


# instance fields
.field s:Landroid/graphics/Paint;

.field t:I

.field u:I

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Lio/dcloud/common/core/ui/a$l$c;

.field final synthetic z:Lio/dcloud/common/core/ui/a;


# direct methods
.method public constructor <init>(Lio/dcloud/common/core/ui/a;Landroid/content/Context;Lio/dcloud/common/core/ui/a;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/dcloud/common/core/ui/k;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/a;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    const-string p3, ""

    .line 5
    iput-object p3, p0, Lio/dcloud/common/core/ui/a$l;->x:Ljava/lang/String;

    .line 24
    new-instance p3, Lio/dcloud/common/core/ui/a$l$c;

    invoke-direct {p3, p0}, Lio/dcloud/common/core/ui/a$l$c;-><init>(Lio/dcloud/common/core/ui/a$l;)V

    iput-object p3, p0, Lio/dcloud/common/core/ui/a$l;->y:Lio/dcloud/common/core/ui/a$l$c;

    .line 25
    sget p3, Lio/dcloud/common/adapter/util/DeviceInfo;->DEFAULT_FONT_SIZE:F

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDensity:F

    mul-float p3, p3, v0

    float-to-double v0, p3

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v2

    double-to-int p3, v0

    const v0, -0xcccccd

    .line 27
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string p1, "AppRootView"

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 31
    sget p1, Lio/dcloud/base/R$string;->dcloud_common_in_the_buffer:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l;->x:Ljava/lang/String;

    .line 32
    iget-object p2, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/dcloud/common/core/ui/a$l;->t:I

    .line 33
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lio/dcloud/common/core/ui/a$l;->u:I

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    new-instance v0, Lio/dcloud/common/core/ui/a$l$a;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/a$l$a;-><init>(Lio/dcloud/common/core/ui/a$l;)V

    iput-object v0, p1, Lio/dcloud/common/core/ui/a;->a:Lio/dcloud/common/DHInterface/ICallBack;

    goto :goto_16

    .line 12
    :cond_11
    iget-object p1, p0, Lio/dcloud/common/core/ui/k;->m:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->c()V

    :goto_16
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getMaskLayerCount()I

    move-result v0

    if-lez v0, :cond_6a

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->y:Lio/dcloud/common/core/ui/a$l$c;

    iget-boolean v1, v0, Lio/dcloud/common/core/ui/a$l$c;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 4
    iput-boolean v2, v0, Lio/dcloud/common/core/ui/a$l$c;->b:Z

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a$l$c;->run()V

    :cond_19
    const/high16 v0, -0x78000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->x:Ljava/lang/String;

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->v:I

    int-to-float v1, v1

    iget v3, p0, Lio/dcloud/common/core/ui/a$l;->w:I

    int-to-float v3, v3

    iget-object v4, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->y:Lio/dcloud/common/core/ui/a$l$c;

    iget v0, v0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    if-ne v0, v2, :cond_42

    .line 10
    iget v0, p0, Lio/dcloud/common/core/ui/a$l;->v:I

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->t:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->w:I

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    const-string v3, "."

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6f

    :cond_42
    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    .line 12
    iget v0, p0, Lio/dcloud/common/core/ui/a$l;->v:I

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->t:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->w:I

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    const-string v3, ".."

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6f

    :cond_56
    const/4 v1, 0x3

    if-ne v0, v1, :cond_6f

    .line 14
    iget v0, p0, Lio/dcloud/common/core/ui/a$l;->v:I

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->t:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lio/dcloud/common/core/ui/a$l;->w:I

    int-to-float v1, v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/a$l;->s:Landroid/graphics/Paint;

    const-string v3, "..."

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6f

    .line 26
    :cond_6a
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->y:Lio/dcloud/common/core/ui/a$l$c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lio/dcloud/common/core/ui/a$l$c;->b:Z

    :cond_6f
    :goto_6f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getMaskLayerCount()I

    move-result v0

    if-lez v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    invoke-static {p1}, Lio/dcloud/common/core/ui/a;->d(Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/util/ViewRect;->onScreenChanged()V

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/util/PlatformUtil;->RESET_H_W()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object p1, p1, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    iget p2, p0, Lio/dcloud/common/core/ui/a$l;->t:I

    sub-int/2addr p1, p2

    iget p2, p0, Lio/dcloud/common/core/ui/a$l;->u:I

    sub-int/2addr p1, p2

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/core/ui/a$l;->v:I

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object p1, p1, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    mul-double p1, p1, v0

    double-to-int p1, p1

    iput p1, p0, Lio/dcloud/common/core/ui/a$l;->w:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_47

    if-eqz p2, :cond_47

    if-eqz p4, :cond_47

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v3, v2

    sub-int v0, p2, v0

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_32

    sub-int v0, p2, p4

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_47

    :cond_32
    if-le p2, p4, :cond_42

    sub-int v0, p2, p4

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_42

    .line 9
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->closeRecordView()V

    goto :goto_47

    .line 11
    :cond_42
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomeizedInputConnection:Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;

    invoke-virtual {v0, p2, v1}, Lio/dcloud/common/adapter/ui/CustomeizedInputConnection;->showRecordView(IZ)V

    .line 15
    :cond_47
    :goto_47
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->updateScreenInfo(I)V

    .line 16
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onSizeChanged:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput p1, v2, v4

    aput p2, v2, v1

    const/4 v1, 0x2

    aput p3, v2, v1

    const/4 p3, 0x3

    aput p4, v2, p3

    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->callSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 17
    iget-object p3, p0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    invoke-static {p3}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/dcloud/common/adapter/util/ViewRect;->onScreenChanged(II)V

    .line 18
    new-instance p1, Lio/dcloud/common/core/ui/a$l$b;

    invoke-direct {p1, p0}, Lio/dcloud/common/core/ui/a$l$b;-><init>(Lio/dcloud/common/core/ui/a$l;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.a.l.C0030a (io.dcloud.common.core.ui.a$l$a)
.class Lio/dcloud/common/core/ui/a$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a$l;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a$l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a$l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l$a;->a:Lio/dcloud/common/core/ui/a$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l$a;->a:Lio/dcloud/common/core/ui/a$l;

    iget-object p1, p1, Lio/dcloud/common/core/ui/k;->m:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->c()V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/a$l$a;->a:Lio/dcloud/common/core/ui/a$l;

    iget-object p1, p1, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    const/4 p2, 0x0

    iput-object p2, p1, Lio/dcloud/common/core/ui/a;->a:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p2
.end method

###### Class io.dcloud.common.core.ui.a.l.b (io.dcloud.common.core.ui.a$l$b)
.class Lio/dcloud/common/core/ui/a$l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/a$l;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/a$l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a$l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l$b;->a:Lio/dcloud/common/core/ui/a$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l$b;->a:Lio/dcloud/common/core/ui/a$l;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    invoke-static {v0}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l$b;->a:Lio/dcloud/common/core/ui/a$l;

    iget-object v0, v0, Lio/dcloud/common/core/ui/a$l;->z:Lio/dcloud/common/core/ui/a;

    invoke-static {v0}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3
    iget-boolean v2, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v2, :cond_16

    .line 4
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto :goto_16

    :cond_2a
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.l.c (io.dcloud.common.core.ui.a$l$c)
.class Lio/dcloud/common/core/ui/a$l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lio/dcloud/common/core/ui/a$l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a$l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/a$l$c;->c:Lio/dcloud/common/core/ui/a$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    .line 3
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/a$l$c;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/a$l$c;->b:Z

    if-eqz v0, :cond_1d

    .line 2
    iget v0, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l$c;->c:Lio/dcloud/common/core/ui/a$l;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4
    iget v0, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/a$l$c;->c:Lio/dcloud/common/core/ui/a$l;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/dcloud/common/core/ui/a$l$c;->a:I

    :goto_20
    return-void
.end method

###### Class io.dcloud.common.core.ui.a.m (io.dcloud.common.core.ui.a$m)
.class Lio/dcloud/common/core/ui/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field a:Z


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

###### Class io.dcloud.common.core.ui.a.n (io.dcloud.common.core.ui.a$n)
.class Lio/dcloud/common/core/ui/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dcloud/common/core/ui/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)I
    .registers 9

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    return v1

    .line 2
    :cond_9
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v2, :cond_11

    return v3

    .line 3
    :cond_11
    iget v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    iget v2, p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_23

    .line 5
    iget-wide v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    iget-wide p1, p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    cmp-long v0, v4, p1

    if-lez v0, :cond_21

    goto :goto_24

    :cond_21
    const/4 v1, -0x1

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/common/core/ui/b;

    check-cast p2, Lio/dcloud/common/core/ui/b;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/core/ui/a$n;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)I

    move-result p1

    return p1
.end method

###### Class io.dcloud.common.core.ui.a.o (io.dcloud.common.core.ui.a$o)
.class Lio/dcloud/common/core/ui/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dcloud/common/adapter/ui/AdaFrameItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)I
    .registers 9

    .line 1
    instance-of v0, p1, Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_10

    move-object v3, p1

    check-cast v3, Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    if-ne v3, v2, :cond_10

    return v1

    :cond_10
    const/4 v3, -0x1

    if-eqz v0, :cond_1d

    .line 2
    move-object v0, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v2, :cond_1d

    return v3

    .line 4
    :cond_1d
    iget v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    iget v2, p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_2f

    .line 6
    iget-wide v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    iget-wide p1, p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    cmp-long v0, v4, p1

    if-lez v0, :cond_2d

    goto :goto_30

    :cond_2d
    const/4 v1, -0x1

    goto :goto_30

    :cond_2f
    move v1, v0

    :goto_30
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/core/ui/a$o;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)I

    move-result p1

    return p1
.end method
