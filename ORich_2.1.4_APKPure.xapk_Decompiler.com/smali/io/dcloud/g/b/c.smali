###### Class io.dcloud.g.b.c (io.dcloud.g.b.c)
.class Lio/dcloud/g/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICore;


# static fields
.field private static i:Lio/dcloud/g/b/c;


# instance fields
.field a:Z

.field b:Landroid/content/Context;

.field c:Lio/dcloud/common/DHInterface/AbsMgr;

.field d:Lio/dcloud/common/DHInterface/AbsMgr;

.field e:Lio/dcloud/common/DHInterface/AbsMgr;

.field f:Lio/dcloud/common/DHInterface/AbsMgr;

.field private g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IBoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/g/b/c;->a:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/g/b/c;->b:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lio/dcloud/g/b/c;->c:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 5
    iput-object v0, p0, Lio/dcloud/g/b/c;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 6
    iput-object v0, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 7
    iput-object v0, p0, Lio/dcloud/g/b/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 15
    iput-object v0, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    .line 17
    iput-object v0, p0, Lio/dcloud/g/b/c;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)Lio/dcloud/g/b/c;
    .registers 3

    .line 2
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lio/dcloud/g/b/c;

    invoke-direct {v0}, Lio/dcloud/g/b/c;-><init>()V

    sput-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    .line 3
    :cond_b
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    iput-object p0, v0, Lio/dcloud/g/b/c;->b:Landroid/content/Context;

    .line 4
    iput-object p1, v0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    .line 5
    invoke-static {v0}, Lio/dcloud/feature/internal/sdk/SDK;->initSDK(Lio/dcloud/common/DHInterface/ICore;)V

    .line 6
    sget-object p0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6f

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_32

    if-eq p1, v3, :cond_25

    if-eq p1, v2, :cond_e

    goto :goto_71

    .line 173
    :cond_e
    check-cast p2, [Ljava/lang/Object;

    .line 174
    aget-object p1, p2, v0

    check-cast p1, Landroid/app/Activity;

    .line 175
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 176
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    .line 177
    aget-object p2, p2, v3

    check-cast p2, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    .line 178
    invoke-virtual {p0, p1, v0, v2, p2}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;

    goto :goto_71

    .line 179
    :cond_25
    iget-object p1, p0, Lio/dcloud/g/b/c;->h:Ljava/util/HashMap;

    check-cast p2, Lio/dcloud/common/DHInterface/IBoot;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_71

    .line 186
    :cond_32
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_45

    .line 187
    check-cast p2, Lio/dcloud/common/DHInterface/IApp;

    .line 188
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 189
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    .line 191
    :cond_45
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_5a

    .line 192
    check-cast p2, [Ljava/lang/Object;

    .line 193
    aget-object p1, p2, v0

    check-cast p1, Landroid/app/Activity;

    .line 194
    aget-object v0, p2, v3

    check-cast v0, Landroid/content/Intent;

    .line 195
    aget-object p2, p2, v2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object p2, v1

    goto :goto_5e

    :cond_5a
    move-object p1, v1

    move-object p2, p1

    move-object v0, p2

    move-object v2, v0

    .line 197
    :goto_5e
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 198
    invoke-static {}, Lio/dcloud/g/b/a;->f()Lio/dcloud/g/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/g/b/a;->g()V

    .line 199
    :cond_6b
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    goto :goto_71

    .line 200
    :cond_6f
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    :goto_71
    return-object v1
.end method

.method private a()V
    .registers 7

    const-string v0, "DCLOUD_LOCALE"

    .line 201
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "_"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/util/Locale;

    array-length v2, v0

    const-string v3, ""

    if-lez v2, :cond_2d

    const/4 v2, 0x0

    aget-object v4, v0, v2

    if-eqz v4, :cond_2d

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    :cond_2d
    move-object v2, v3

    :goto_2e
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_3c

    aget-object v4, v0, v5

    if-eqz v4, :cond_3c

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_3c
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_42
    return-void
.end method

.method private a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 4

    .line 41
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, v0, p2}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 34
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz v0, :cond_2e

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->s_Is_DCloud_Packaged:Z

    if-nez v0, :cond_2e

    .line 36
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsBase()Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v1, "ns"

    .line 37
    invoke-static {p1, v0, v1}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 38
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 40
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/b/c$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/g/b/c$a;-><init>(Lio/dcloud/g/b/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_2e
    return-void
.end method

.method private a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V
    .registers 10

    .line 128
    iget-object v0, p0, Lio/dcloud/g/b/c;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_51

    .line 129
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 131
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IBoot;

    if-nez v1, :cond_1d

    goto :goto_e

    .line 134
    :cond_1d
    :try_start_1d
    sget-object v2, Lio/dcloud/g/b/c$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_36

    const/4 v3, 0x4

    if-eq v2, v3, :cond_32

    goto :goto_e

    .line 148
    :cond_32
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onResume()V

    goto :goto_e

    .line 149
    :cond_36
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onPause()V

    goto :goto_e

    .line 150
    :cond_3a
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onStop()V

    goto :goto_e

    .line 151
    :cond_3e
    move-object v2, p3

    check-cast v2, Landroid/os/Bundle;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, p1, v2, v3}, Lio/dcloud/common/DHInterface/IBoot;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4b} :catch_4c

    goto :goto_e

    :catch_4c
    move-exception v1

    .line 164
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :cond_51
    return-void
.end method

.method static synthetic a(Lio/dcloud/g/b/c;Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "core"

    invoke-static {v1, v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lio/dcloud/i/b;

    invoke-direct {v0, p0}, Lio/dcloud/i/b;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object v0, p0, Lio/dcloud/g/b/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/g/b/c;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lio/dcloud/g/b/c;->h:Ljava/util/HashMap;

    .line 6
    iget-object v0, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    invoke-static {p1, p0, v0}, Lio/dcloud/common/util/BaseInfo;->parseControl(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)[Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->initLogger(Landroid/content/Context;)V

    .line 8
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->init(Landroid/content/Context;)V

    .line 10
    new-instance v0, Lio/dcloud/g/a/a;

    invoke-direct {v0, p0}, Lio/dcloud/g/a/a;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object v0, p0, Lio/dcloud/g/b/c;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 12
    new-instance v0, Lio/dcloud/common/core/ui/l;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/l;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object v0, p0, Lio/dcloud/g/b/c;->c:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 13
    new-instance v0, Lio/dcloud/common/util/net/NetMgr;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/net/NetMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object v0, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lio/dcloud/g/b/c;->a:Z

    .line 16
    :try_start_40
    invoke-direct {p0, p1}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    move-exception p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSDKData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 85
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Z)Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Z)Lio/dcloud/common/DHInterface/IApp;
    .registers 13

    const-string v0, "GET_STATUS_BY_APPID"

    .line 98
    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncStartApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xc

    invoke-virtual {p0, v1, v3, p2}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2d

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x1

    .line 105
    :goto_2e
    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/dcloud/g/b/c;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-ne v4, v3, :cond_6e

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " STATUS_UN_RUNNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    if-eqz p4, :cond_6e

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ShowSplash"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 111
    invoke-interface {p4, p1}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    :cond_6e
    if-eqz v0, :cond_ba

    .line 116
    :try_start_70
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_APP_SET_ROOTVIEW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u542f\u52a8"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    .line 117
    invoke-virtual {p0, v1, v5, v2}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 118
    invoke-interface {v1, p4}, Lio/dcloud/common/DHInterface/IAppInfo;->setOnCreateSplashView(Lio/dcloud/common/DHInterface/IOnCreateSplashView;)V

    if-eqz p5, :cond_a5

    if-eq v0, v3, :cond_a0

    if-ne v4, v3, :cond_a5

    .line 121
    :cond_a0
    sget-object p4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p4, p3}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a5} :catch_a6

    :cond_a5
    return-object v1

    .line 126
    :catch_a6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncStartApp appid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :cond_ba
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5

    .line 165
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 166
    iget-boolean v2, p0, Lio/dcloud/g/b/c;->a:Z

    if-eqz v2, :cond_14

    .line 167
    iget-object v2, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v2, :cond_11

    .line 168
    invoke-virtual {v2, v0, v1}, Lio/dcloud/common/DHInterface/AbsMgr;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 170
    :cond_11
    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 172
    :cond_14
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 9

    .line 42
    iget-object p2, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 43
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreStop()Z

    move-result p2

    xor-int/2addr p2, v0

    goto :goto_c

    :cond_b
    const/4 p2, 0x1

    :goto_c
    if-eqz p3, :cond_15

    .line 46
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xd

    invoke-virtual {p0, v1, v2, p3}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/4 v1, 0x0

    if-eqz p2, :cond_73

    .line 49
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p2

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "appid"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    if-eqz p2, :cond_70

    if-nez p3, :cond_70

    const/16 p2, 0xa

    .line 55
    sget-object v2, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_65

    if-eqz p3, :cond_44

    .line 57
    invoke-direct {p0, p1, p3}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    .line 59
    :cond_44
    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p4, p3, v0

    const/16 p4, 0x20

    invoke-virtual {p0, p2, p4, p3}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 60
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_5e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_5f

    :cond_5e
    const/4 p2, 0x0

    :goto_5f
    if-nez p2, :cond_73

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_73

    .line 65
    :cond_65
    new-instance v0, Lio/dcloud/g/b/c$b;

    invoke-direct {v0, p0, p3, p1, p4}, Lio/dcloud/g/b/c$b;-><init>(Lio/dcloud/g/b/c;Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    int-to-long p1, p2

    const/4 p3, 0x0

    invoke-static {v0, p1, p2, p3}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    goto :goto_73

    .line 81
    :cond_70
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_73
    :goto_73
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;)V
    .registers 6

    .line 7
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    .line 8
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->resetSysWebViewState()V

    .line 9
    invoke-direct {p0}, Lio/dcloud/g/b/c;->a()V

    .line 10
    sput-object p3, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz p3, :cond_10

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    .line 12
    :cond_10
    iget-boolean v0, p0, Lio/dcloud/g/b/c;->a:Z

    if-eqz v0, :cond_15

    return-void

    .line 13
    :cond_15
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/g/b/c;->b(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Core onInit mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 17
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-direct {p0, p1, p3, p2}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Core onInit mCoreListener="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 20
    :try_start_4e
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz p1, :cond_5f

    sget-object p2, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-ne p1, p2, :cond_57

    goto :goto_5f

    .line 24
    :cond_57
    iget-object p1, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    if-eqz p1, :cond_6b

    .line 25
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreInitEnd(Lio/dcloud/common/DHInterface/ICore;)V

    goto :goto_6b

    .line 26
    :cond_5f
    :goto_5f
    iget-object p1, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    if-eqz p1, :cond_6b

    .line 27
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreInitEnd(Lio/dcloud/common/DHInterface/ICore;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 127
    new-instance v0, Lio/dcloud/g/b/c$c;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/dcloud/g/b/c$c;-><init>(Lio/dcloud/g/b/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    return-void
.end method

.method a(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 9

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_49

    .line 89
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/manifest.json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_49

    return v2

    :cond_49
    const-string v0, "direct_page"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {p2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    return v2

    :cond_58
    const/4 p2, 0x0

    const-string v0, "has_stream_splash"

    .line 97
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .registers 5

    .line 19
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 21
    iget-object v2, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v2, v0, v1}, Lio/dcloud/common/DHInterface/AbsMgr;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/app/Activity;)Z
    .registers 9

    .line 1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/DownloadUtil;->stop()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "io.dcloud.feature.apsqh.QHNotifactionReceiver"

    const-string v5, "doSaveNotifications"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_1f
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, v1, v6}, Lio/dcloud/g/b/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 7
    iput-boolean v3, p0, Lio/dcloud/g/b/c;->a:Z

    const-string v2, "onStop"

    .line 8
    invoke-static {v3, v2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, v1, v6}, Lio/dcloud/g/b/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 10
    sput-object v6, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    .line 11
    iget-object p1, p0, Lio/dcloud/g/b/c;->c:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 12
    iput-object v6, p0, Lio/dcloud/g/b/c;->c:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 13
    iget-object p1, p0, Lio/dcloud/g/b/c;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 14
    iput-object v6, p0, Lio/dcloud/g/b/c;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 15
    iget-object p1, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 16
    iput-object v6, p0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 17
    iget-object p1, p0, Lio/dcloud/g/b/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 18
    iput-object v6, p0, Lio/dcloud/g/b/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    const-string p1, "Main_Path"

    const-string v1, "core exit"

    .line 19
    invoke-static {p1, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_58
    return v0
.end method

.method public dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_7

    .line 1
    invoke-direct {p0, p2, p3}, Lio/dcloud/g/b/c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_55

    .line 4
    :cond_7
    :try_start_7
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    if-nez v0, :cond_d

    sput-object p0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    .line 5
    :cond_d
    sget-object v0, Lio/dcloud/g/b/c$d;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    goto :goto_54

    .line 19
    :cond_22
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    iget-object v0, v0, Lio/dcloud/g/b/c;->c:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_54

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_55

    .line 21
    :cond_2d
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    iget-object v0, v0, Lio/dcloud/g/b/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_54

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_55

    .line 23
    :cond_38
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    iget-object v0, v0, Lio/dcloud/g/b/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_54

    .line 24
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_55

    .line 25
    :cond_43
    sget-object v0, Lio/dcloud/g/b/c;->i:Lio/dcloud/g/b/c;

    iget-object v0, v0, Lio/dcloud/g/b/c;->d:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_54

    .line 26
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4d} :catch_4e

    goto :goto_55

    :catch_4e
    move-exception p1

    const-string p2, "Core.dispatchEvent"

    .line 42
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    const/4 p1, 0x0

    :goto_55
    return-object p1
.end method

.method public obtainContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/g/b/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 11

    .line 1
    instance-of v0, p3, Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2
    move-object v0, p3

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 4
    :cond_d
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz v0, :cond_13

    move-object v0, v1

    goto :goto_15

    :cond_13
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 5
    :goto_15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2d

    const-string v3, "appid"

    .line 8
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 9
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2d
    :goto_2d
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v5, v3}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    if-eqz v2, :cond_77

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_77

    .line 15
    check-cast p3, [Ljava/lang/Object;

    .line 16
    aget-object p3, p3, v4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x4

    if-ne p3, v4, :cond_77

    .line 18
    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 20
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz p2, :cond_6f

    .line 21
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 23
    :cond_6f
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    :cond_76
    return v5

    .line 28
    :cond_77
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setmCoreListener(Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/g/b/c;->g:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    return-void
.end method

###### Class io.dcloud.g.b.c.a (io.dcloud.g.b.c$a)
.class Lio/dcloud/g/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/b/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/g/b/c;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lio/dcloud/g/b/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ret"

    const-string v1, "https://service.dcloud.net.cn/sta/so?p=a&pn=%s&ver=%s&appid=%s"

    .line 1
    :try_start_4
    iget-object v2, p0, Lio/dcloud/g/b/c$a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lio/dcloud/g/b/c$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    iget-object v5, p0, Lio/dcloud/g/b/c$a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v2, 0x2

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_55

    .line 7
    iget-object v0, p0, Lio/dcloud/g/b/c$a;->a:Landroid/content/Context;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    const-string v2, "ns"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    return-void
.end method

###### Class io.dcloud.g.b.c.b (io.dcloud.g.b.c$b)
.class Lio/dcloud/g/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/g/b/c;


# direct methods
.method constructor <init>(Lio/dcloud/g/b/c;Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/g/b/c$b;->d:Lio/dcloud/g/b/c;

    iput-object p2, p0, Lio/dcloud/g/b/c$b;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/g/b/c$b;->b:Landroid/app/Activity;

    iput-object p4, p0, Lio/dcloud/g/b/c$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lio/dcloud/g/b/c$b;->a:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_b

    .line 2
    iget-object v0, p0, Lio/dcloud/g/b/c$b;->d:Lio/dcloud/g/b/c;

    iget-object v1, p0, Lio/dcloud/g/b/c$b;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lio/dcloud/g/b/c;->a(Lio/dcloud/g/b/c;Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    .line 4
    :cond_b
    iget-object p1, p0, Lio/dcloud/g/b/c$b;->d:Lio/dcloud/g/b/c;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/dcloud/g/b/c$b;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/dcloud/g/b/c$b;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v1}, Lio/dcloud/g/b/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2c

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2c
    if-nez v3, :cond_40

    .line 6
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/g/b/c$b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_40

    const/4 p1, 0x0

    .line 7
    sput-object p1, Lio/dcloud/common/util/BaseInfo;->sLastRunApp:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lio/dcloud/g/b/c$b;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_40
    return-void
.end method

###### Class io.dcloud.g.b.c.C0064c (io.dcloud.g.b.c$c)
.class Lio/dcloud/g/b/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/g/b/c;


# direct methods
.method constructor <init>(Lio/dcloud/g/b/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/g/b/c$c;->d:Lio/dcloud/g/b/c;

    iput-object p2, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    iput-object p4, p0, Lio/dcloud/g/b/c$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onExecuteBegin()V
    .registers 1

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/g/b/c$c;->d:Lio/dcloud/g/b/c;

    iget-object v1, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/g/b/c$c;->c:Ljava/lang/String;

    instance-of v4, v1, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    if-eqz v4, :cond_10

    move-object v4, v1

    check-cast v4, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/dcloud/g/b/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;

    .line 2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    .line 3
    iget-object v0, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v1, :cond_29

    .line 4
    check-cast v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object v1, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lio/dcloud/common/DHInterface/IActivityHandler;->onAsyncStartAppEnd(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    .line 2
    :goto_d
    iget-object v1, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    invoke-static {v1}, Lio/dcloud/common/util/db/DCStorage;->getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 4
    iget-object v2, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/common/util/db/DCStorage;->checkSPstorageToDB(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    nop

    .line 8
    :cond_1c
    :goto_1c
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 9
    iget-object v0, p0, Lio/dcloud/g/b/c$c;->b:Landroid/app/Activity;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v1, :cond_31

    .line 10
    check-cast v0, Lio/dcloud/common/DHInterface/IActivityHandler;

    iget-object v1, p0, Lio/dcloud/g/b/c$c;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->onAsyncStartAppStart(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_31
    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.g.b.c.d (io.dcloud.g.b.c$d)
.class synthetic Lio/dcloud/g/b/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/g/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    invoke-static {}, Lio/dcloud/common/DHInterface/IMgr$MgrType;->values()[Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/dcloud/g/b/c$d;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lio/dcloud/g/b/c$d;->b:[I

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->NetMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lio/dcloud/g/b/c$d;->b:[I

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lio/dcloud/g/b/c$d;->b:[I

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    .line 2
    :catch_33
    invoke-static {}, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->values()[Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lio/dcloud/g/b/c$d;->a:[I

    :try_start_3c
    sget-object v5, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lio/dcloud/g/b/c$d;->a:[I

    sget-object v4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v0, Lio/dcloud/g/b/c$d;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    :catch_58
    :try_start_58
    sget-object v0, Lio/dcloud/g/b/c$d;->a:[I

    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_62

    :catch_62
    return-void
.end method
