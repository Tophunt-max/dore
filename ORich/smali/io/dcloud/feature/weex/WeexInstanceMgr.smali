###### Class io.dcloud.feature.weex.WeexInstanceMgr (io.dcloud.feature.weex.WeexInstanceMgr)
.class public Lio/dcloud/feature/weex/WeexInstanceMgr;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lcom/taobao/weex/IWXStatisticsListener;
.implements Lio/dcloud/common/DHInterface/IUniInstanceMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;,
        Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;
    }
.end annotation


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "weexPlus"

.field private static instance:Lio/dcloud/feature/weex/WeexInstanceMgr;


# instance fields
.field TAG:Ljava/lang/String;

.field private callBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private complier:Ljava/lang/String;

.field private control:Ljava/lang/String;

.field private featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

.field private instanceHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private isAssetsRes:Z

.field private isJSFKFileNotFound:Z

.field private isJsFrameworkReady:Z

.field private isUniServiceCreated:Z

.field private isWeexInitEnd:Z

.field private jsSACName:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field private mHandler:Landroid/os/Handler;

.field private mPreInstanceId:Ljava/lang/String;

.field private mPreUniAppid:Ljava/lang/String;

.field private mPreUniMPCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mReladyCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

.field private mUniNViewModules:Ljava/lang/String;

.field private mVueVersion:I

.field private render:Ljava/lang/String;

.field private sb:Ljava/lang/StringBuffer;

.field private serviceWrapperMapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WeexInstanceMgr"

    .line 99
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    const-string v1, "weex"

    .line 109
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    const-string v1, "auto"

    .line 110
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    const-string v1, "uni-app-config"

    .line 111
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    const-string v1, "uni-v3"

    .line 112
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const/4 v1, 0x2

    .line 113
    iput v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    const/4 v1, 0x0

    .line 114
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    .line 115
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 116
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    .line 118
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    .line 121
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    .line 928
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 940
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 941
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 1006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/WeexInstanceMgr;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 97
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 2

    .line 97
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/WeexInstanceMgr;)Landroid/app/Application;
    .registers 1

    .line 97
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;)Landroid/app/Application;
    .registers 2

    .line 97
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 1

    .line 97
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->wrapperDestroy()V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V
    .registers 3

    .line 97
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private clearHandler()V
    .registers 2

    .line 1047
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 1048
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    :cond_7
    return-void
.end method

.method private forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V
    .registers 4

    .line 765
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 767
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_c

    .line 769
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V

    goto :goto_c

    .line 772
    :cond_1e
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 774
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_2a

    .line 776
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_2a

    :catch_3c
    move-exception p1

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forEach---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_55
    return-void
.end method

.method private getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8

    const/4 v0, 0x0

    .line 346
    :try_start_1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    goto :goto_10

    .line 350
    :cond_e
    sput-object p2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 352
    :goto_10
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p2, :cond_1d

    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p2, 0x1

    .line 353
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/www/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 354
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    if-eqz v1, :cond_54

    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v1, :cond_54

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_bb

    if-nez v1, :cond_54

    .line 356
    :try_start_47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    :cond_54
    move-object v1, v0

    :goto_55
    if-nez v1, :cond_c0

    if-eqz p2, :cond_7a

    .line 364
    :try_start_59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_82

    .line 366
    :cond_7a
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 368
    :goto_82
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 372
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_a6} :catch_b8

    goto :goto_b5

    .line 375
    :cond_a7
    :try_start_a7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b3} :catch_b4

    goto :goto_b5

    :catch_b4
    nop

    :goto_b5
    if-eqz v0, :cond_c0

    goto :goto_bf

    :catch_b8
    move-exception p1

    move-object v0, v1

    goto :goto_bc

    :catch_bb
    move-exception p1

    .line 384
    :goto_bc
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bf
    move-object v1, v0

    :cond_c0
    return-object v1
.end method

.method private getConfigParam()Ljava/lang/String;
    .registers 5

    .line 492
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "__HtMl_Id__"

    const-string v2, "__uniapp_webview"

    .line 493
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "platform"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 499
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    const-string v3, "Android"

    .line 501
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vendor"

    const-string v3, "Google"

    .line 502
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    .line 503
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 506
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CONNECTION_TYPE"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "networkinfo"

    .line 507
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 3

    .line 1040
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 1041
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    .line 1043
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 993
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 996
    :try_start_4
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_e

    :catch_9
    move-exception p1

    .line 998
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_e
    return-object p1
.end method

.method private handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;
    .registers 5

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p3, :cond_13

    .line 407
    new-instance p3, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, p3

    :cond_13
    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 411
    :try_start_16
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1f
    const/4 p1, 0x0

    .line 416
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    if-eqz v0, :cond_2c

    .line 417
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    .line 419
    :cond_2c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 420
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :cond_37
    return-object p1
.end method

.method private initJSFramework(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const-string v0, "vueVersion"

    const-string v1, "nvueCompiler"

    const-string v2, "renderer"

    const-string v3, "plus"

    .line 309
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v4

    const-string v5, "uni-v3"

    const-string v6, "uni-app"

    if-eqz v4, :cond_27

    .line 310
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    iput-object v5, p1, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    .line 311
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    iput-object v6, p1, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    .line 312
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    const-string p2, "auto"

    iput-object p2, p1, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    return-void

    .line 315
    :cond_27
    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_86

    const/4 v4, 0x1

    .line 318
    :try_start_30
    invoke-direct {p0, p2, p1, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 319
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 320
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 321
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 322
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 323
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 324
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    iput-object v5, p2, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    .line 325
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 326
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    .line 328
    :cond_66
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 329
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    .line 332
    :cond_76
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 333
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_86} :catch_86

    :catch_86
    :cond_86
    return-void
.end method

.method private makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 14

    const-string v0, "__uniapp__service"

    .line 520
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 521
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 526
    :goto_1d
    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/weex/WXViewWrapper;-><init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 527
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 528
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 530
    :cond_3d
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private preUniControlService(Landroid/app/Application;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 976
    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 977
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    invoke-direct {v1, p1}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    const-string v2, "app-service.js"

    .line 979
    invoke-direct {p0, p1, p2, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app-config.js"

    .line 980
    invoke-direct {p0, p1, p2, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 981
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "plus_appid"

    .line 982
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "preload"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundleUrl"

    .line 984
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " plus.weexBridge.preloadReady(\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\"use weex:vue\""

    .line 987
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 988
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v2, "__uniapp__service"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 989
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preUniControlService------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerReflexWeexPlugin(Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 458
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_amap.AMapPluginImpl"

    const-string v5, "initPlugin"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 459
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_scroller.DCScrollerPluginImpl"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 460
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_barcode.BarcodePlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 461
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_livepusher.LivePusherPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 462
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_media.VideoPlayerPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 463
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_text.DCWXTextPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 464
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_input.DCWXInputRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 465
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.gcanvas.GCanvasRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 466
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_switch.DCWXSwitchPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 468
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "io.dcloud.feature.weex_ad.DCWXAdPlugin"

    invoke-static {p1, v5, v6, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v0, "sClassName"

    .line 470
    invoke-static {p1, v0, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 471
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_d3

    .line 472
    check-cast p1, Ljava/util/HashMap;

    .line 473
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    const-string v1, "image"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-class v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const-string v1, "web-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXView;

    const-string v1, "view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-class v0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    const-string v1, "cover-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v1, "slider"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d3
    return-void
.end method

.method private reloadWeexEngine()V
    .registers 1

    .line 759
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    .line 760
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void
.end method

.method public static declared-synchronized self()Lio/dcloud/feature/weex/WeexInstanceMgr;
    .registers 2

    const-class v0, Lio/dcloud/feature/weex/WeexInstanceMgr;

    monitor-enter v0

    .line 124
    :try_start_3
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    if-nez v1, :cond_e

    .line 125
    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;-><init>()V

    sput-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    .line 127
    :cond_e
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private unRegisterUniappService()V
    .registers 2

    .line 453
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKEngine;->unRegisterService(Ljava/lang/String;)Z

    return-void
.end method

.method private wrapperDestroy()V
    .registers 2

    .line 739
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$7;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$7;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    .line 747
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 748
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 749
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 750
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->reloadWeexEngine()V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6

    :try_start_0
    const-string v0, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v1, "sClassName"

    const/4 v2, 0x0

    .line 484
    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 485
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_14

    .line 486
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-void
.end method

.method public createWeexService(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .registers 6

    .line 542
    new-instance v0, Lio/dcloud/feature/weex/WXServiceWrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXServiceWrapper;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 543
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 6

    .line 513
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    .line 514
    invoke-virtual {p1, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 614
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_9

    .line 615
    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPathByWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 7

    .line 662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 663
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 665
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 666
    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_10

    .line 668
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_3b
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXBaseWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .registers 6

    .line 622
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 624
    iget-object v3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex/WXBaseWrapper;

    if-eqz v2, :cond_b

    .line 626
    iget-object v3, v2, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v3, p1, :cond_b

    move-object v1, v2

    goto :goto_b

    :cond_27
    return-object v1
.end method

.method findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .registers 3

    .line 590
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 591
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    .line 593
    :cond_11
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 594
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .registers 3

    .line 580
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 581
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXServiceWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXServiceWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    .line 583
    :cond_13
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 584
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXServiceWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .registers 5

    .line 555
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 556
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_12

    .line 559
    iget-object v2, v1, Lio/dcloud/feature/weex/WXServiceWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_12

    return-object v1

    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method

.method findWXViewWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .registers 3

    .line 548
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 549
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 5

    .line 635
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 636
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 637
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_a

    .line 639
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_a

    .line 640
    iget-object p1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 10

    .line 600
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_a

    goto :goto_b

    :cond_a
    move-object p1, p2

    :goto_b
    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "ui"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "findWebview"

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 p1, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, p2

    aput-object p4, v4, v3

    aput-object v4, v2, p1

    const/16 p1, 0xa

    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 602
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_2e

    .line 603
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebviewByInstanceId(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .registers 5

    .line 648
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 650
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_a

    .line 652
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 653
    iget-object p1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComplier()Ljava/lang/String;
    .registers 2

    .line 819
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    return-object v0
.end method

.method public getControl()Ljava/lang/String;
    .registers 2

    .line 827
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    return-object v0
.end method

.method public getPreInstanceId()Ljava/lang/String;
    .registers 2

    .line 943
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniAppid()Ljava/lang/String;
    .registers 2

    .line 946
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniMPCallBack(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 3

    .line 1008
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1009
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUniMPFeature()Ljava/lang/String;
    .registers 2

    const-string v0, "io.dcloud.feature.unimp.UniMPFeature"

    return-object v0
.end method

.method public getUniNViewModules()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    return-object v0
.end method

.method public getVueVersion()I
    .registers 2

    .line 830
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    return v0
.end method

.method init(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method public initAppForPath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 395
    invoke-static {p1, p2}, Lio/dcloud/common/util/AppRuntime;->isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return-void
.end method

.method public initStatisticsListener()V
    .registers 2

    .line 304
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V

    return-void
.end method

.method public initUniappPlugin(Landroid/app/Application;)V
    .registers 3

    .line 1057
    invoke-static {}, Lio/dcloud/feature/uniapp/UniMoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/MoudlesLoader;->onCreate(Landroid/app/Application;)V

    return-void
.end method

.method public initWeexEnv(Landroid/app/Application;)V
    .registers 10

    .line 174
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const-string v1, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1a

    new-array v0, v4, [Ljava/lang/Class;

    .line 175
    const-class v5, Landroid/app/Application;

    aput-object v5, v0, v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string v6, "registerReloadReceiver"

    invoke-static {v1, v6, v2, v0, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1a
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setApplication(Landroid/app/Application;)V

    .line 178
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 179
    new-instance v0, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 180
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-direct {v5, p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-nez v5, :cond_4f

    new-array v5, v4, [Ljava/lang/Class;

    .line 183
    const-class v6, Landroid/app/Application;

    aput-object v6, v5, v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string v7, "initDebugEnvironment"

    invoke-static {v1, v7, v2, v5, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_4f
    new-instance v1, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 186
    invoke-static {p1}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getDraweeControllerBuilderSupplier()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->initialize(Lcom/facebook/common/internal/Supplier;)V

    .line 188
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 189
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

    invoke-direct {v1, p1}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;

    .line 190
    new-instance v1, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 191
    new-instance v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;

    .line 192
    new-instance v1, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->setWxConfigAdapter(Lcom/taobao/weex/adapter/IWXConfigAdapter;)V

    .line 195
    invoke-static {p1, v0}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 197
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initStatisticsListener()V

    .line 199
    :try_start_a3
    new-instance v0, Ljava/lang/String;

    const-string v1, "io/dcloud/weexUniJs.js"

    invoke-static {v1, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 200
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    .line 201
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-direct {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getConfigParam()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var plusContext = {};plusContext.getLocationHerf = function(plus){\n    return plus.weex.config.bundleUrl;\n};var param = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "image"

    .line 208
    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "cover-view"

    .line 209
    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "u-image"

    .line 210
    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "cover-image"

    .line 211
    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 212
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "slider"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 213
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXView;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "view"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    const-string v0, "u-web-view"

    .line 214
    const-class v1, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "plus"

    .line 215
    const-class v1, Lio/dcloud/feature/weex/extend/PlusModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "DCloud-Crypto"

    .line 216
    const-class v1, Lio/dcloud/feature/weex/extend/RandomBytesModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "plusstorage"

    .line 217
    const-class v1, Lio/dcloud/feature/weex/extend/PlusStorageModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "uni-tabview"

    .line 218
    const-class v1, Lio/dcloud/feature/weex/extend/DCTabBarModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 219
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_159

    const-string v0, "uniMP"

    .line 220
    const-class v1, Lio/dcloud/feature/weex/extend/DCUniMPModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    :cond_159
    const-string v0, "event"

    .line 224
    const-class v1, Lio/dcloud/feature/weex/extend/WXEventModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 225
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_174

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "weexPlus"

    .line 227
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 229
    :cond_174
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_183

    .line 230
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerUniappService(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    :cond_183
    invoke-virtual {p1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/unincomponents.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const-string v1, "unincomponents"

    .line 234
    invoke-static {v1, v0}, Lcom/taobao/weex/WXEnvironment;->setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v0, "uni-webSocket"

    .line 235
    const-class v1, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 236
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingX;->register()V

    .line 237
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerReflexWeexPlugin(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p0, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setWeexInitEnd(Z)V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_1a2} :catch_1a3

    goto :goto_1a7

    :catch_1a3
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a7
    :goto_1a7
    return-void
.end method

.method public initWeexEnv(Lio/dcloud/common/DHInterface/INativeAppInfo;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 167
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getCofusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    .line 168
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    :cond_f
    return-void
.end method

.method public isJSFKFileNotFound()Z
    .registers 2

    .line 1061
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return v0
.end method

.method public isJsFrameworkReady()Z
    .registers 2

    .line 845
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return v0
.end method

.method public isUniAppAssetsRes()Z
    .registers 2

    .line 449
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return v0
.end method

.method public isUniServiceCreated(Lio/dcloud/common/DHInterface/IApp;)Z
    .registers 3

    const-string v0, "nvueLaunchMode"

    .line 930
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 931
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uni-v3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 932
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1

    .line 934
    :cond_23
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "v8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    const/4 p1, 0x1

    return p1

    .line 937
    :cond_31
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1
.end method

.method public isWeexInitEnd()Z
    .registers 2

    .line 834
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return v0
.end method

.method public loadWeexToAppid(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    .line 290
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_12

    if-eqz p3, :cond_19

    :cond_12
    const/4 p1, 0x0

    .line 293
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setJsFrameworkReady(Z)V

    .line 294
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->restartWeex()V

    :cond_19
    return-void
.end method

.method onActivityDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 711
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    return-void
.end method

.method onActivityDestroy(Z)V
    .registers 6

    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 715
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 716
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_15

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_32

    :cond_15
    if-eqz p1, :cond_26

    .line 719
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$5;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32

    .line 726
    :cond_26
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$6;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$6;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_32
    :goto_32
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 735
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method onActivityPause()V
    .registers 2

    .line 694
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$3;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 703
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$4;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;IILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResume()V
    .registers 2

    .line 685
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$2;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onFirstScreen()V
    .registers 1

    return-void
.end method

.method public onFirstView()V
    .registers 1

    return-void
.end method

.method public onHeadersReceived()V
    .registers 1

    return-void
.end method

.method public onHttpFinish()V
    .registers 1

    return-void
.end method

.method public onHttpStart()V
    .registers 1

    return-void
.end method

.method public onJsFrameworkReady()V
    .registers 3

    const/4 v0, 0x1

    .line 860
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 862
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_10

    .line 863
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$9;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    .line 872
    :cond_10
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    .line 873
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;

    .line 874
    invoke-interface {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;->onJsFrameworkReady()V

    goto :goto_18

    :cond_28
    return-void
.end method

.method public onJsFrameworkStart()V
    .registers 1

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 808
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$8;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;I[Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onSDKEngineInitialize()V
    .registers 1

    return-void
.end method

.method public onSubProcess(Landroid/app/Application;)V
    .registers 3

    .line 300
    invoke-static {}, Lio/dcloud/weex/MoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/MoudlesLoader;->onSubProcess(Landroid/app/Application;)V

    return-void
.end method

.method public preUniMP(Landroid/app/Application;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 5

    .line 1014
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p3, :cond_12

    const/16 p1, -0x65

    const-string p2, ""

    .line 1016
    invoke-interface {p3, p1, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_12
    if-eqz p3, :cond_19

    .line 1021
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    :cond_19
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result p3

    if-eqz p3, :cond_28

    .line 1024
    new-instance p3, Lio/dcloud/feature/weex/WeexInstanceMgr$10;

    invoke-direct {p3, p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr$10;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    goto :goto_2e

    .line 1034
    :cond_28
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    .line 1035
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public registerUniappService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 430
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 431
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, "app-config-service.js"

    invoke-direct {v0, p1, p2, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_2e

    const/4 v0, 0x0

    .line 434
    :try_start_1b
    invoke-direct {p0, p2, p1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 435
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 437
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public reloadWXServiceWrapper()V
    .registers 4

    .line 568
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 569
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 571
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_12

    .line 573
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXServiceWrapper;->reload()V

    goto :goto_12

    :cond_2c
    return-void
.end method

.method public removeWeexView(Ljava/lang/String;)V
    .registers 3

    .line 677
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 678
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 679
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXViewWrapper;->onDestroy()V

    :cond_13
    return-void
.end method

.method public restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .registers 6

    .line 258
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    if-eqz v0, :cond_22

    :cond_16
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 259
    :cond_22
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    if-eqz v0, :cond_27

    return-void

    .line 262
    :cond_27
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    const-string v1, "restartWeex-------"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3a

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    .line 266
    :cond_3a
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$1;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_46
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public setJSFKFileNotFound(Z)V
    .registers 2

    .line 1065
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return-void
.end method

.method public setJsFrameworkReady(Z)V
    .registers 2

    .line 841
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return-void
.end method

.method public setUniNViewModuleReladyCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 151
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setUniNViewModules(Ljava/lang/String;)V
    .registers 5

    .line 132
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 134
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v2, 0x0

    .line 135
    invoke-interface {v1, v2, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 137
    :cond_21
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_26
    return-void
.end method

.method public setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V
    .registers 5

    .line 950
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    const-string p1, "fast"

    if-eqz p2, :cond_13

    const-string v0, "nvueLaunchMode"

    .line 953
    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 954
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    move-object p2, p1

    .line 958
    :goto_14
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uni-v3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 959
    :cond_32
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    if-eqz p1, :cond_62

    .line 960
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 961
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 962
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz p2, :cond_40

    .line 964
    iget-boolean v0, p2, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v0, :cond_40

    .line 966
    invoke-virtual {p2}, Lio/dcloud/feature/weex/WXViewWrapper;->getWaitServiceRenderList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    goto :goto_40

    :cond_62
    return-void
.end method

.method public setWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .registers 3

    .line 914
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 915
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public setWeexInitEnd(Z)V
    .registers 2

    .line 837
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return-void
.end method

.method public unWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .registers 3

    .line 920
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 921
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public weexDebugReload()V
    .registers 5

    .line 797
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 798
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 799
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 800
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 801
    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    const-string v3, "snc:CID"

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass1 (io.dcloud.feature.weex.WeexInstanceMgr$1)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$1;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;Landroid/app/Application;Ljava/lang/String;)V
    .registers 5

    .line 266
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 269
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$000(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    .line 270
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    .line 271
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$202(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;)Landroid/app/Application;

    .line 272
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$200(Lio/dcloud/feature/weex/WeexInstanceMgr;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setJsFrameworkReady(Z)V

    .line 274
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$300(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$application:Landroid/app/Application;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerUniappService(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->restartWeex()V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass10 (io.dcloud.feature.weex.WeexInstanceMgr$10)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$10;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniMP(Landroid/app/Application;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Application;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V
    .registers 4

    .line 1024
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$context:Landroid/app/Application;

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$appid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_c

    .line 1028
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iget-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$context:Landroid/app/Application;

    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$10;->val$appid:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$500(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass2 (io.dcloud.feature.weex.WeexInstanceMgr$2)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$2;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 685
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$2;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    .line 688
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityResume()V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 685
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$2;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass3 (io.dcloud.feature.weex.WeexInstanceMgr$3)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$3;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 694
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$3;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    .line 697
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityPause()V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 694
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$3;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass4 (io.dcloud.feature.weex.WeexInstanceMgr$4)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$4;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;IILandroid/content/Intent;)V
    .registers 5

    .line 703
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$requestCode:I

    iput p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$resultCode:I

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 5

    .line 706
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$requestCode:I

    iget v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$resultCode:I

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->val$data:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/weex/WXBaseWrapper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 703
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$4;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass5 (io.dcloud.feature.weex.WeexInstanceMgr$5)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$5;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 719
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$5;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 722
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$5;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass6 (io.dcloud.feature.weex.WeexInstanceMgr$6)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$6;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 726
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$6;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 729
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$6;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass7 (io.dcloud.feature.weex.WeexInstanceMgr$7)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$7;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->wrapperDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$7;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 743
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onDestroy()V

    :cond_5
    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 739
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$7;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass8 (io.dcloud.feature.weex.WeexInstanceMgr$8)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$8;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener<",
        "Lio/dcloud/feature/weex/WXBaseWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

.field final synthetic val$grantResults:[I

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;I[Ljava/lang/String;[I)V
    .registers 5

    .line 808
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    iput p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$requestCode:I

    iput-object p3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$permissions:[Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$grantResults:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 812
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$requestCode:I

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$permissions:[Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->val$grantResults:[I

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/weex/WXBaseWrapper;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onEach(Ljava/lang/Object;)V
    .registers 2

    .line 808
    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr$8;->onEach(Lio/dcloud/feature/weex/WXBaseWrapper;)V

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.AnonymousClass9 (io.dcloud.feature.weex.WeexInstanceMgr$9)
.class Lio/dcloud/feature/weex/WeexInstanceMgr$9;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;->onJsFrameworkReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .registers 2

    .line 863
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 866
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$100(Lio/dcloud/feature/weex/WeexInstanceMgr;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 867
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;->this$0:Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.EachListener (io.dcloud.feature.weex.WeexInstanceMgr$EachListener)
.class interface abstract Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EachListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onEach(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class io.dcloud.feature.weex.WeexInstanceMgr.IWXStatisticsCallBack (io.dcloud.feature.weex.WeexInstanceMgr$IWXStatisticsCallBack)
.class public interface abstract Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/WeexInstanceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IWXStatisticsCallBack"
.end annotation


# virtual methods
.method public abstract onJsFrameworkReady()V
.end method
