###### Class com.taobao.weex.utils.WXSoInstallMgrSdk (com.taobao.weex.utils.WXSoInstallMgrSdk)
.class public Lcom/taobao/weex/utils/WXSoInstallMgrSdk;
.super Ljava/lang/Object;
.source "WXSoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final STARTUPSO:Ljava/lang/String; = "/libweexjsb.so"

.field private static final STARTUPSOANDROID15:Ljava/lang/String; = "/libweexjst.so"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static mAbi:Ljava/lang/String;

.field static mContext:Landroid/app/Application;

.field private static mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private static mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .registers 2

    const-string v0, "armeabi"

    .line 350
    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 352
    :try_start_a
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 357
    :goto_15
    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 358
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 360
    :cond_1f
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 362
    :cond_29
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    return-object v0
.end method

.method private static _desSoCopyFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 212
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 217
    :cond_10
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 342
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 343
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const-string p0, "Unknown"

    return-object p0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 6

    .line 464
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 467
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_12

    .line 468
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoad(Ljava/lang/String;)V

    goto :goto_19

    .line 470
    :cond_12
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1b

    :cond_19
    :goto_19
    const/4 p0, 0x1

    goto :goto_40

    :catchall_1b
    move-exception p0

    const/4 p1, 0x0

    .line 476
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WX_KEY_EXCEPTION_SDK_INIT_WX_ERR_COPY_FROM_APK] \n Detail Msg is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_loadUnzipSo"

    .line 476
    invoke-static {v1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, ""

    .line 481
    invoke-static {p2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_40
    return p0
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 413
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v0, :cond_7

    const-string p0, ""

    return-object p0

    .line 418
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static checkSoIsValid(Ljava/lang/String;J)Z
    .registers 10

    .line 372
    const-class v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    .line 377
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 378
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    instance-of v5, v5, Ldalvik/system/PathClassLoader;

    if-eqz v5, :cond_95

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    return v2

    .line 384
    :cond_28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, p1, v5

    if-nez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    return v2

    .line 387
    :cond_3d
    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "weex so size check path :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_9 .. :try_end_5e} :catchall_5f

    return v1

    :catchall_5f
    move-exception p0

    .line 394
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for weex so size check fail exception :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v2, "checkSoIsValid"

    .line 394
    invoke-static {v0, p1, v2, p2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "weex so size check fail exception :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_95
    return v1
.end method

.method public static copyJssRuntimeSo()V
    .registers 6

    const-string v0, "wxapm"

    const-string v1, "use_runtime_api"

    const-string v2, "0"

    .line 293
    invoke-static {v0, v1, v2}, Lcom/taobao/weex/utils/WXUtils;->checkGreyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryUseRunTimeApi ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weex"

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_23

    return-void

    :cond_23
    :try_start_23
    const-string v0, "copyJssRuntimeSo: "

    .line 299
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weexjss"

    .line 300
    invoke-static {v0}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 304
    :cond_37
    new-instance v1, Ljava/io/File;

    const-string v3, "libweexjss.so"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "app_version_code_weex"

    const-string v3, "-1"

    .line 308
    invoke-static {v0, v3}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_69

    .line 312
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_69

    .line 315
    :cond_5b
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 316
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    const-string v0, "copyJssRuntimeSo exist:  return"

    .line 317
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 322
    :cond_69
    :goto_69
    const-class v3, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    check-cast v3, Ldalvik/system/PathClassLoader;

    const-string v4, "weexjssr"

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_80

    return-void

    .line 326
    :cond_80
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 327
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXFileUtils;->copyFileWithException(Ljava/io/File;Ljava/io/File;)V

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 330
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    const-string v0, "copyJssRuntimeSo: cp end and return "

    .line 332
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_23 .. :try_end_9f} :catchall_a0

    goto :goto_bb

    :catchall_a0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 335
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyJssRuntimeSo:  exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bb
    return-void
.end method

.method public static copyStartUpSo()V
    .registers 11

    const-string v0, "/cache"

    const-string v1, "/lib"

    .line 228
    :try_start_4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "weexjsb"

    .line 237
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_c9

    const/16 v7, 0x10

    const-string v8, "/libweexjst.so"

    const-string v9, "/libweexjsb.so"

    if-ge v6, v7, :cond_2e

    const/4 v4, 0x0

    :try_start_2a
    const-string v5, "weexjst"

    move-object v6, v8

    goto :goto_2f

    :cond_2e
    move-object v6, v9

    .line 243
    :goto_2f
    invoke-static {v5}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 244
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3c

    .line 245
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 247
    :cond_3c
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    const-string v6, "-1"

    .line 249
    invoke-static {v5, v6}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e

    return-void

    .line 255
    :cond_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_7e

    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7e

    .line 257
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_7e
    if-eqz v4, :cond_86

    .line 261
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 263
    :cond_86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_8b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_8f
    .catchall {:try_start_2a .. :try_end_8f} :catchall_c9

    if-nez v1, :cond_a5

    .line 269
    :try_start_91
    const-class v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v5}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_91 .. :try_end_a4} :catchall_a5

    move-object v0, v2

    .line 277
    :catchall_a5
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b8

    .line 278
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    .line 279
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 283
    :cond_b8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 284
    invoke-static {v0, v10}, Lcom/taobao/weex/utils/WXFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 286
    :cond_c1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_a5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_cd
    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V
    .registers 3

    .line 85
    sput-object p0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    .line 86
    sput-object p1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 87
    sput-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public static initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 9

    .line 112
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mips"

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "initSo"

    const/4 v2, 0x0

    if-eqz p2, :cond_18

    .line 114
    sget-object p0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string p1, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is MIPS"

    invoke-static {v2, p0, v1, p1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0

    :cond_18
    const-string p2, "weexcore"

    .line 122
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 123
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->copyStartUpSo()V

    .line 131
    :cond_23
    :try_start_23
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_25} :catch_33
    .catch Ljava/lang/Error; {:try_start_23 .. :try_end_25} :catch_31

    const-string v3, "c++_shared"

    if-eqz p2, :cond_2d

    .line 132
    :try_start_29
    invoke-interface {p2, v3}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V

    goto :goto_54

    .line 134
    :cond_2d
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_33
    .catch Ljava/lang/Error; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_54

    :catch_31
    move-exception p2

    goto :goto_34

    :catch_33
    move-exception p2

    .line 137
    :goto_34
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load c++_shared failed Detail Error is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-static {v2, v3, v1, v4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 154
    :goto_54
    :try_start_54
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_5c

    .line 155
    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V

    goto :goto_5f

    .line 157
    :cond_5c
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_63
    .catch Ljava/lang/Error; {:try_start_54 .. :try_end_5f} :catch_61

    :goto_5f
    const/4 v0, 0x1

    goto :goto_9f

    :catch_61
    move-exception p2

    goto :goto_64

    :catch_63
    move-exception p2

    :goto_64
    const-string v3, "armeabi"

    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "x86"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 163
    :cond_74
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Detail Error is: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {v2, v3, v1, p0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    :cond_99
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_a0

    :goto_9f
    return v0

    .line 171
    :cond_a0
    throw p2

    .line 144
    :cond_a1
    throw p2
.end method

.method public static isCPUSupport()Z
    .registers 2

    .line 96
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mips"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isExist(Ljava/lang/String;I)Z
    .registers 2

    .line 448
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 449
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isX86()Z
    .registers 2

    .line 91
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .registers 2

    .line 435
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 436
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 438
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/armeabi/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1e

    return v3

    .line 494
    :cond_1e
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v2, :cond_23

    return v3

    .line 499
    :cond_23
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 501
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    const-string v4, ""

    .line 505
    :goto_2e
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 508
    :try_start_34
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_38
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 509
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 510
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4c} :catch_f0
    .catchall {:try_start_34 .. :try_end_4c} :catchall_ee

    if-eqz v8, :cond_38

    .line 519
    :try_start_4e
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 522
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_be

    .line 523
    :try_start_55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "bk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_bb

    .line 525
    :try_start_75
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_b8

    const/16 v6, 0x400

    :try_start_7b
    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 530
    :goto_7e
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_8d

    .line 532
    invoke-static {v6, v3, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_b6

    add-int/2addr v7, v8

    goto :goto_7e

    :cond_8d
    if-eqz v0, :cond_97

    .line 539
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_f0
    .catchall {:try_start_8f .. :try_end_92} :catchall_ee

    goto :goto_97

    :catch_93
    move-exception v0

    .line 541
    :try_start_94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_f0
    .catchall {:try_start_94 .. :try_end_97} :catchall_ee

    :cond_97
    :goto_97
    if-eqz v2, :cond_a1

    .line 547
    :try_start_99
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_f0
    .catchall {:try_start_99 .. :try_end_9c} :catchall_ee

    goto :goto_a1

    :catch_9d
    move-exception v0

    .line 549
    :try_start_9e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_f0
    .catchall {:try_start_9e .. :try_end_a1} :catchall_ee

    :cond_a1
    :goto_a1
    if-eqz v1, :cond_ab

    .line 555
    :try_start_a3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_f0
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_ee

    goto :goto_ab

    :catch_a7
    move-exception v0

    .line 557
    :try_start_a8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :cond_ab
    :goto_ab
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ae} :catch_f0
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_ee

    if-lez v7, :cond_b5

    .line 568
    :try_start_b0
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result p0
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b4} :catch_e7
    .catchall {:try_start_b0 .. :try_end_b4} :catchall_e4

    return p0

    :cond_b5
    return v3

    :catchall_b6
    move-exception p0

    goto :goto_c2

    :catchall_b8
    move-exception p0

    move-object v2, v4

    goto :goto_c2

    :catchall_bb
    move-exception p0

    move-object v1, v4

    goto :goto_c1

    :catchall_be
    move-exception p0

    move-object v0, v4

    move-object v1, v0

    :goto_c1
    move-object v2, v1

    :goto_c2
    if-eqz v0, :cond_cc

    .line 539
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_c8
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_f0
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_ee

    goto :goto_cc

    :catch_c8
    move-exception p1

    .line 541
    :try_start_c9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_f0
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_ee

    :cond_cc
    :goto_cc
    if-eqz v2, :cond_d6

    .line 547
    :try_start_ce
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_f0
    .catchall {:try_start_ce .. :try_end_d1} :catchall_ee

    goto :goto_d6

    :catch_d2
    move-exception p1

    .line 549
    :try_start_d3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_f0
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_ee

    :cond_d6
    :goto_d6
    if-eqz v1, :cond_e0

    .line 555
    :try_start_d8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_dc
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_f0
    .catchall {:try_start_d8 .. :try_end_db} :catchall_ee

    goto :goto_e0

    :catch_dc
    move-exception p1

    .line 557
    :try_start_dd
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :cond_e0
    :goto_e0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e3} :catch_f0
    .catchall {:try_start_dd .. :try_end_e3} :catchall_ee

    .line 565
    :try_start_e3
    throw p0
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e4} :catch_e7
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    :catchall_e4
    move-exception p0

    move-object v5, v4

    goto :goto_114

    :catch_e7
    move-exception p0

    move-object v5, v4

    goto :goto_f1

    .line 585
    :cond_ea
    :goto_ea
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_113

    :catchall_ee
    move-exception p0

    goto :goto_114

    :catch_f0
    move-exception p0

    .line 575
    :goto_f1
    :try_start_f1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 576
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    const-string p2, "unZipSelectedFiles"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WX_KEY_EXCEPTION_SDK_INIT_unZipSelectedFiles] \n Detail msg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 576
    invoke-static {v4, p1, p2, p0, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_110
    .catchall {:try_start_f1 .. :try_end_110} :catchall_ee

    if-eqz v5, :cond_113

    goto :goto_ea

    :cond_113
    :goto_113
    return v3

    :goto_114
    if-eqz v5, :cond_119

    .line 585
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 588
    :cond_119
    throw p0
.end method
