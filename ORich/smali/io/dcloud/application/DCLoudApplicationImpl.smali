###### Class io.dcloud.application.DCLoudApplicationImpl (io.dcloud.application.DCLoudApplicationImpl)
.class public Lio/dcloud/application/DCLoudApplicationImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;,
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;,
        Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;
    }
.end annotation


# static fields
.field private static mInstance:Lio/dcloud/application/DCLoudApplicationImpl;


# instance fields
.field private Tag:Ljava/lang/String;

.field private activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

.field private isInit:Z

.field isUniMP:Z

.field private mApplication:Landroid/content/Context;

.field public topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DCLoudApplicationImpl"

    .line 4
    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 149
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 228
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/g/a/b;

    invoke-direct {v0, p1}, Lio/dcloud/g/a/b;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method private initLanguageConfig(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "language_uni_broad_cast_intent"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;

    invoke-direct {v1, p0}, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;)V

    .line 4
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_27

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/language/LanguageUtil;->initAppLanguageForAppBeforeO(Landroid/content/Context;)V

    :cond_27
    return-void
.end method

.method private initX5(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;)V

    :cond_9
    return-void
.end method

.method public static self()Lio/dcloud/application/DCLoudApplicationImpl;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {v0}, Lio/dcloud/application/DCLoudApplicationImpl;-><init>()V

    sput-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    .line 4
    :cond_b
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    return-object v0
.end method


# virtual methods
.method public addActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->addListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_7
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object p1

    :cond_b
    const/16 v1, 0x15

    if-ge v0, v1, :cond_12

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->supportMultiDex(Landroid/content/Context;)V

    .line 7
    :cond_12
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 8
    invoke-static {p1}, Lio/dcloud/a;->a(Landroid/content/Context;)V

    :cond_1b
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/app/Application;Z)V
    .registers 5

    .line 1
    iput-boolean p2, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz p2, :cond_e

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    .line 7
    :cond_e
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    sput-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->onCreate(Landroid/app/Application;)V

    if-eqz p2, :cond_1d

    .line 10
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->initGsmCdmaCell()V

    .line 11
    invoke-static {p1}, Lio/dcloud/common/util/TelephonyUtil;->updateIMEI(Landroid/content/Context;)Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method public isInit()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    return v0
.end method

.method public isMainProcess(Landroid/content/Context;)Z
    .registers 6

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3d

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5
    iget-boolean v2, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-nez v2, :cond_3c

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":unimp"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 7
    iput-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 8
    sput-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    :cond_3c
    move v1, v0

    :cond_3d
    return v1
.end method

.method protected onCreate(Landroid/app/Application;)V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    if-eqz v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 5
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    .line 6
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->webviewSetPath(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 10
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->closeAndroidPDialog()V

    .line 11
    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lio/dcloud/h/a;->a(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    .line 13
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 14
    iget-object v3, p0, Lio/dcloud/application/DCLoudApplicationImpl;->Tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK.isUniMPSDK()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  isMainProcess-="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  isMiniAppProcess="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-nez v3, :cond_5c

    if-nez v0, :cond_66

    :cond_5c
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-boolean v3, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz v3, :cond_6d

    .line 16
    :cond_66
    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->initX5(Landroid/app/Application;)V

    .line 17
    invoke-static {v2}, Lio/dcloud/common/util/AppRuntime;->initWeex(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    goto :goto_72

    :cond_6d
    if-nez v0, :cond_72

    .line 19
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->onSubProcess(Landroid/app/Application;)V

    .line 21
    :cond_72
    :goto_72
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 22
    invoke-static {p1}, Lio/dcloud/a;->a(Landroid/app/Application;)V

    .line 25
    :cond_7b
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mApplication--="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->setContext(Landroid/content/Context;)V

    .line 28
    invoke-static {p1}, Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isSupportOaid()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c1

    :try_start_a2
    const-string v0, "com.bun.miitmdid.core.JLibrary"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a8} :catch_c1

    const-string v3, "InitEntry"

    :try_start_aa
    new-array v4, v1, [Ljava/lang/Class;

    .line 36
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v6

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_c1} :catch_c1

    .line 43
    :catch_c1
    :cond_c1
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    invoke-direct {v0, p0, v2}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;Lio/dcloud/application/DCLoudApplicationImpl$1;)V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->initLanguageConfig(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object p1

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public removeActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->removeListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_7
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 2
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    :cond_6
    return-void
.end method

.method public stopActivityStatusListener()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->stopListener()V

    :cond_7
    return-void
.end method

.method protected supportMultiDex(Landroid/content/Context;)V
    .registers 8

    :try_start_0
    const-string v0, "androidx.multidex.MultiDex"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_1c

    const-string v1, "install"

    const/4 v2, 0x1

    :try_start_9
    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method

.method public webviewSetPath(Landroid/content/Context;)V
    .registers 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_19

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    :cond_19
    return-void
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.AnonymousClass1 (io.dcloud.application.DCLoudApplicationImpl$1)
.class synthetic Lio/dcloud/application/DCLoudApplicationImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.application.DCLoudApplicationImpl.ActivityCallbacks (io.dcloud.application.DCLoudApplicationImpl$ActivityCallbacks)
.class Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityCallbacks"
.end annotation


# instance fields
.field private activityStartCount:I

.field private volatile isBack:Z

.field private isStop:Z

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/application/DCLoudApplicationImpl;


# direct methods
.method private constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    .line 5
    iput-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    .line 6
    iput-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;Lio/dcloud/application/DCLoudApplicationImpl$1;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;)V

    return-void
.end method


# virtual methods
.method public addListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    .line 3
    :cond_b
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iget-object v0, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    iget-object v0, v0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    goto :goto_34

    .line 4
    :cond_8
    iget p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    if-nez p1, :cond_34

    iget-boolean p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    if-eqz p1, :cond_34

    .line 5
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    .line 6
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_34

    .line 7
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;

    if-eqz v0, :cond_22

    .line 9
    invoke-interface {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;->onFront()V

    goto :goto_22

    .line 13
    :cond_34
    :goto_34
    iget p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .line 1
    iget v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->activityStartCount:I

    if-nez v0, :cond_81

    .line 3
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    if-eqz v0, :cond_d

    return-void

    .line 6
    :cond_d
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    :try_start_17
    const-string v0, "activity"

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-le v3, v1, :cond_67

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_67

    .line 13
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    if-eqz v3, :cond_67

    .line 14
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_64} :catch_67

    if-eqz p1, :cond_67

    return-void

    .line 19
    :catch_67
    :cond_67
    iput-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isBack:Z

    .line 20
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6f
    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;

    if-eqz v0, :cond_6f

    .line 22
    invoke-interface {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;->onBack()V

    goto :goto_6f

    :cond_81
    return-void
.end method

.method public removeListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->listeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public stopListener()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->isStop:Z

    return-void
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.ActivityStatusListener (io.dcloud.application.DCLoudApplicationImpl$ActivityStatusListener)
.class public interface abstract Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityStatusListener"
.end annotation


# virtual methods
.method public abstract onBack()V
.end method

.method public abstract onFront()V
.end method

###### Class io.dcloud.application.DCLoudApplicationImpl.DynamicLanguageReceiver (io.dcloud.application.DCLoudApplicationImpl$DynamicLanguageReceiver)
.class public Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/application/DCLoudApplicationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicLanguageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/application/DCLoudApplicationImpl;


# direct methods
.method public constructor <init>(Lio/dcloud/application/DCLoudApplicationImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;->this$0:Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const v0, 0x10008000

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
