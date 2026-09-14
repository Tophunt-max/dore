###### Class com.taobao.weex.WXEnvironment (com.taobao.weex.WXEnvironment)
.class public Lcom/taobao/weex/WXEnvironment;
.super Ljava/lang/Object;
.source "WXEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    }
.end annotation


# static fields
.field public static AUTO_ADJUST_ENV_DEVICE_WIDTH:Z = false

.field public static AUTO_UPDATE_APPLICATION_SCREEN_SIZE:Z = false

.field private static COPY_SO_DES_DIR:Ljava/lang/String; = null

.field public static final CORE_JSB_SO_NAME:Ljava/lang/String; = "weexjsb"

.field public static CORE_JSB_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JSC_SO_NAME:Ljava/lang/String; = "jsc"

.field private static CORE_JSC_SO_PATH:Ljava/lang/String; = null

.field private static CORE_JSS_ICU_PATH:Ljava/lang/String; = null

.field public static CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JSS_SO_NAME:Ljava/lang/String; = "weexjss"

.field private static CORE_JSS_SO_PATH:Ljava/lang/String; = null

.field public static final CORE_JST_SO_NAME:Ljava/lang/String; = "weexjst"

.field public static final CORE_SO_NAME:Ljava/lang/String; = "weexcore"

.field public static final DEV_Id:Ljava/lang/String;

.field public static final EAGLE:Ljava/lang/String; = "eagle"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static JS_LIB_SDK_VERSION:Ljava/lang/String; = null

.field public static volatile JsFrameworkInit:Z = false

.field private static LIB_LD_PATH:Ljava/lang/String; = null

.field public static final OS:Ljava/lang/String; = "android"

.field public static final SETTING_EXCLUDE_X86SUPPORT:Ljava/lang/String; = "env_exclude_x86"

.field public static SETTING_FORCE_VERTICAL_SCREEN:Z = false

.field public static final SYS_MODEL:Ljava/lang/String;

.field public static SYS_VERSION:Ljava/lang/String; = null

.field public static final WEEX_CURRENT_KEY:Ljava/lang/String; = "wx_current_url"

.field public static WXSDK_VERSION:Ljava/lang/String; = null

.field private static isApkDebug:Z = false

.field public static isPerf:Z = false

.field public static volatile isWsFixMode:Z = false

.field private static mViewProt:F = 0.0f

.field private static mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings; = null

.field private static openDebugLog:Z = false

.field private static options:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sApplication:Landroid/app/Application; = null

.field public static sComponentsAndModulesReadyTime:J = 0x0L

.field private static sDebugFlagInit:Z = false

.field public static sDebugMode:Z = false

.field public static sDebugNetworkEventReporterEnable:Z = false

.field public static sDebugServerConnectable:Z = false

.field public static sDebugWsUrl:Ljava/lang/String; = null

.field public static sDefaultWidth:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static sDynamicMode:Z = false

.field public static sDynamicUrl:Ljava/lang/String; = null

.field public static final sForceEnableDevTool:Z = true

.field private static sGlobalFontFamily:Ljava/lang/String;

.field public static sInAliWeex:Z

.field public static sJSFMStartListenerTime:J

.field public static sJSLibInitTime:J

.field public static sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

.field public static sRemoteDebugMode:Z

.field public static sRemoteDebugProxyUrl:Ljava/lang/String;

.field public static sSDKInitExecuteTime:J

.field public static sSDKInitInvokeTime:J

.field public static sSDKInitStart:J

.field public static sSDKInitTime:J

.field public static volatile sUseRunTimeApi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 64
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 66
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "9.0.0"

    .line 67
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    .line 69
    :cond_18
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_2e

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "10.0.0"

    .line 70
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    .line 73
    :cond_2e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    const-string v0, "0.29.6"

    .line 81
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    const-string v0, "0.28.0"

    .line 83
    sput-object v0, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getDevId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    const/16 v0, 0x2ee

    .line 87
    sput v0, Lcom/taobao/weex/WXEnvironment;->sDefaultWidth:I

    const/4 v0, 0x0

    .line 88
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 92
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    const/4 v1, 0x1

    .line 97
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    .line 99
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->AUTO_UPDATE_APPLICATION_SCREEN_SIZE:Z

    .line 101
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 106
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    const-string v2, ""

    .line 108
    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sDebugWsUrl:Ljava/lang/String;

    .line 109
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 110
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 111
    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugProxyUrl:Ljava/lang/String;

    .line 112
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugNetworkEventReporterEnable:Z

    const-wide/16 v3, 0x0

    .line 113
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 115
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 116
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    .line 117
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    .line 119
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 121
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J

    .line 123
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isWsFixMode:Z

    .line 128
    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sComponentsAndModulesReadyTime:J

    .line 130
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sInAliWeex:Z

    .line 132
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    .line 133
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    .line 134
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    .line 135
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    .line 137
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    const/4 v1, 0x0

    .line 146
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 148
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 150
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    .line 152
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSC_SO_PATH:Ljava/lang/String;

    .line 154
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    .line 156
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    .line 158
    sput-object v1, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    const v1, 0x443b8000    # 750.0f

    .line 160
    sput v1, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    .line 169
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string v3, "os"

    const-string v4, "android"

    .line 171
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    const-string v3, "osName"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    .line 207
    sput-object v2, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 293
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static copySoDesDir()Ljava/lang/String;
    .registers 4

    .line 304
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 305
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_13

    const-string v0, "sApplication is null, so copy path will be null"

    .line 306
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_13
    const-string v0, "/cache/weex/libs"

    .line 312
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 315
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 317
    :cond_31
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    :goto_50
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_59
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_0 .. :try_end_5f} :catchall_60

    goto :goto_68

    :catchall_60
    move-exception v0

    .line 328
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 330
    :cond_68
    :goto_68
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->COPY_SO_DES_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static extractSo()Z
    .registers 7

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 540
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_34

    .line 541
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 543
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_34

    aget-object v5, v1, v4

    .line 544
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 545
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_31

    .line 547
    :cond_2e
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 552
    :cond_34
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 554
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_95

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 559
    :try_start_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 560
    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXFileUtils;->extractSo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_78} :catch_7c

    if-eqz v3, :cond_68

    :cond_7a
    const/4 v0, 0x1

    return v0

    :catch_7c
    move-exception v0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractSo error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_95
    return v2
.end method

.method private static findIcuPath()Ljava/lang/String;
    .registers 4

    .line 575
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/maps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 578
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_12} :catch_3d
    .catchall {:try_start_8 .. :try_end_12} :catchall_3b

    .line 580
    :cond_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v3, "icudt"

    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x2f

    .line 583
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 585
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2e} :catch_39
    .catchall {:try_start_12 .. :try_end_2e} :catchall_46

    .line 595
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_31

    :catch_31
    return-object v0

    .line 589
    :cond_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_39
    .catchall {:try_start_32 .. :try_end_35} :catchall_46

    .line 595
    :goto_35
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_45

    goto :goto_45

    :catch_39
    move-exception v0

    goto :goto_3f

    :catchall_3b
    move-exception v0

    goto :goto_48

    :catch_3d
    move-exception v0

    move-object v2, v1

    .line 591
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_46

    if-eqz v2, :cond_45

    goto :goto_35

    :catch_45
    :cond_45
    :goto_45
    return-object v1

    :catchall_46
    move-exception v0

    move-object v1, v2

    :goto_48
    if-eqz v1, :cond_4d

    .line 595
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4d

    .line 599
    :catch_4d
    :cond_4d
    throw v0
.end method

.method public static findSoPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 606
    const-class v0, Lcom/taobao/weex/WXEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 608
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s Path is"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 613
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'s Path is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but file does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 617
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 618
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const-string p0, "cache dir is null"

    .line 620
    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_7f
    const-string v3, "/cache"

    .line 624
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_96

    .line 625
    new-instance v0, Ljava/io/File;

    const-string v4, "/lib"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 628
    :cond_96
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "use lib so"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object v0

    .line 633
    :cond_b6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object p0

    .line 634
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_ca

    .line 636
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 639
    :cond_ca
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    move-result p0

    if-eqz p0, :cond_de

    .line 641
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_de
    return-object v0
.end method

.method private static getAppCacheFile()Ljava/lang/String;
    .registers 2

    .line 274
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "WXEnvironment getAppCacheFile Exception: "

    .line 276
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_17
    return-object v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .registers 3

    .line 258
    :try_start_0
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 260
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "WXEnvironment getAppVersionName Exception: "

    .line 262
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    :goto_1c
    return-object v0
.end method

.method public static getApplication()Landroid/app/Application;
    .registers 1

    .line 440
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getCacheDir()Ljava/lang/String;
    .registers 2

    .line 532
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 533
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 535
    :cond_d
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getConfig()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ltr"

    const-string v1, "layoutDirection"

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "os"

    const-string v4, "android"

    .line 215
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppCacheFile()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cacheDir"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->DEV_Id:Ljava/lang/String;

    const-string v4, "devId"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_VERSION:Ljava/lang/String;

    const-string v4, "sysVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->SYS_MODEL:Ljava/lang/String;

    const-string v4, "sysModel"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "weexVersion"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    const-string v4, "logLevel"

    if-eqz v3, :cond_4e

    const-string v3, "log"

    .line 223
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 225
    :cond_4e
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    invoke-interface {v3}, Lio/dcloud/feature/uniapp/utils/AbsLogLevel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :goto_57
    :try_start_57
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isLayoutDirectionRTL()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string v3, "rtl"

    goto :goto_61

    :cond_60
    move-object v3, v0

    :goto_61
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_68

    .line 230
    :catch_65
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_68
    :try_start_68
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "debugMode"

    const-string v1, "true"

    .line 235
    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    const-string v0, "scale"

    .line 237
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "androidStatusBarHeight"

    .line 238
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/NullPointerException; {:try_start_68 .. :try_end_9a} :catch_9b

    goto :goto_a1

    :catch_9b
    move-exception v0

    const-string v1, "WXEnvironment scale Exception: "

    .line 241
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :goto_a1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "appName"

    .line 244
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_bb

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v1, :cond_bb

    .line 245
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bb
    return-object v2
.end method

.method public static getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    const-string v2, "crash"

    .line 489
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 493
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomOptions(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 297
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getCustomOptions()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->options:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 184
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_16

    .line 188
    :cond_10
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    monitor-exit v0

    return-object p0

    .line 186
    :cond_16
    :goto_16
    monitor-exit v0

    return-object p1

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getDevId()Ljava/lang/String;
    .registers 2

    .line 428
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_1b

    :try_start_4
    const-string v1, "phone"

    .line 431
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_1d

    :catch_11
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    .line 433
    :goto_14
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_1b
    const-string v0, ""

    :goto_1d
    return-object v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "mounted"

    .line 455
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 456
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_20

    .line 459
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    .line 457
    :cond_20
    :goto_20
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_2a

    :goto_28
    move-object v0, p0

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 462
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-object v0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 471
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 474
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_3c

    .line 476
    :cond_10
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "files"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3c
    return-object p0
.end method

.method public static getGlobalFontFamilyName()Ljava/lang/String;
    .registers 1

    .line 499
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibJScRealPath()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getLibJssIcuPath()Ljava/lang/String;
    .registers 1

    .line 673
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 674
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->findIcuPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    .line 677
    :cond_e
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_ICU_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibJssRealPath()Ljava/lang/String;
    .registers 2

    .line 659
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test-> findLibJssRuntimeRealPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    return-object v0

    .line 664
    :cond_25
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "weexjss"

    .line 665
    invoke-static {v0}, Lcom/taobao/weex/WXEnvironment;->findSoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test-> findLibJssRealPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 669
    :cond_4b
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_SO_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getLibLdPath()Ljava/lang/String;
    .registers 5

    .line 681
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 682
    const-class v0, Lcom/taobao/weex/WXEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 684
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLdLibraryPath"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 685
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_25} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_25} :catch_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_25} :catch_26

    goto :goto_34

    :catch_26
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_34

    :catch_2b
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_34

    :catch_30
    move-exception v0

    .line 687
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 695
    :cond_34
    :goto_34
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    :try_start_3c
    const-string v0, "java.library.path"

    .line 697
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJScRealPath()Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 707
    :cond_70
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLibLdPath is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->LIB_LD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getViewProt()F
    .registers 1

    .line 162
    sget v0, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    return v0
.end method

.method public static declared-synchronized getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    .registers 3

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 177
    :try_start_3
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 178
    new-instance v1, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    .line 180
    :cond_18
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->mWXDefaultSettings:Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isApkDebugable()Z
    .registers 1

    .line 382
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable(Landroid/app/Application;)Z

    move-result v0

    return v0
.end method

.method public static isApkDebugable(Landroid/app/Application;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 390
    :cond_4
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    if-eqz p0, :cond_9

    return v0

    .line 394
    :cond_9
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    if-eqz p0, :cond_10

    .line 395
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    return p0

    .line 397
    :cond_10
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    const/4 v1, 0x1

    if-nez p0, :cond_1c

    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz p0, :cond_1c

    .line 398
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    goto :goto_26

    .line 399
    :cond_1c
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-eqz p0, :cond_26

    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez p0, :cond_26

    .line 400
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    .line 417
    :cond_26
    :goto_26
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugFlagInit:Z

    .line 418
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    return p0
.end method

.method public static isCPUSupport()Z
    .registers 4

    .line 371
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "env_exclude_x86"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 372
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isX86()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 373
    :goto_1d
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isCPUSupport()Z

    move-result v1

    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    .line 374
    :goto_27
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WXEnvironment.sSupport:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "isX86AndExclueded: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_49
    return v2
.end method

.method public static isHardwareSupport()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTableDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isTabletDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 363
    :cond_1e
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isCPUSupport()Z

    move-result v0

    return v0
.end method

.method public static isLayoutDirectionRTL()Z
    .registers 2

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_17

    .line 349
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/taobao/weex/R$bool;->weex_is_right_to_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static isOpenDebugLog()Z
    .registers 1

    .line 517
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    return v0
.end method

.method public static isPerf()Z
    .registers 1

    .line 422
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->isPerf:Z

    return v0
.end method

.method public static isSupport()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WXSDKEngine.isInitialized():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 343
    :cond_1a
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isHardwareSupport()Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public static setApkDebugable(Z)V
    .registers 1

    .line 525
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->isApkDebug:Z

    if-nez p0, :cond_7

    const/4 p0, 0x0

    .line 527
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    :cond_7
    return-void
.end method

.method public static setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .registers 4

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set global font family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalFontFamily"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sGlobalFontFamily:Ljava/lang/String;

    .line 505
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    if-nez p1, :cond_24

    .line 507
    invoke-static {p0}, Lcom/taobao/weex/utils/TypefaceUtil;->removeFontDO(Ljava/lang/String;)V

    goto :goto_42

    .line 509
    :cond_24
    new-instance v0, Lcom/taobao/weex/utils/FontDO;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/utils/FontDO;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 510
    invoke-static {v0}, Lcom/taobao/weex/utils/TypefaceUtil;->putFontDO(Lcom/taobao/weex/utils/FontDO;)V

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add new font: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TypefaceUtil"

    invoke-static {p1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public static setOpenDebugLog(Z)V
    .registers 1

    .line 521
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->openDebugLog:Z

    return-void
.end method

.method public static setViewProt(F)V
    .registers 1

    .line 166
    sput p0, Lcom/taobao/weex/WXEnvironment;->mViewProt:F

    return-void
.end method

.method public static declared-synchronized writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v0, Lcom/taobao/weex/WXEnvironment;

    monitor-enter v0

    .line 192
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getWXDefaultSettings()Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_1b

    .line 198
    :cond_16
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->saveValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1d

    .line 199
    monitor-exit v0

    return-void

    .line 196
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public initMetrics()V
    .registers 2

    .line 444
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method

###### Class com.taobao.weex.WXEnvironment.WXDefaultSettings (com.taobao.weex.WXEnvironment$WXDefaultSettings)
.class public Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;
.super Ljava/lang/Object;
.source "WXEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/WXEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXDefaultSettings"
.end annotation


# instance fields
.field private configName:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "weex_default_settings"

    .line 712
    iput-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->configName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 713
    iput-object v1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    :cond_13
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 721
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_30

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_30

    .line 726
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get default settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_4e

    .line 728
    monitor-exit p0

    return-object p2

    .line 722
    :cond_30
    :goto_30
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get default settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " return default value :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4e

    .line 723
    monitor-exit p0

    return-object p2

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 732
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3c

    .line 733
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 734
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_3c

    .line 737
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save default settings "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/taobao/weex/WXEnvironment$WXDefaultSettings;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 739
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3e

    .line 741
    monitor-exit p0

    return-void

    .line 735
    :cond_3c
    :goto_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
