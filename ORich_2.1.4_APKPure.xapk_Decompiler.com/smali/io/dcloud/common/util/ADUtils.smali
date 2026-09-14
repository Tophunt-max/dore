###### Class io.dcloud.common.util.ADUtils (io.dcloud.common.util.ADUtils)
.class public Lio/dcloud/common/util/ADUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/ADUtils$ADLoadData;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

.field private static final TAG:Ljava/lang/String; = "ADUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/util/ADUtils$1;

    invoke-direct {v0}, Lio/dcloud/common/util/ADUtils$1;-><init>()V

    sput-object v0, Lio/dcloud/common/util/ADUtils;->DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs ADHandlerMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-array v2, v1, [Ljava/lang/Class;

    if-eqz p1, :cond_1a

    .line 2
    array-length v3, p1

    if-lez v3, :cond_1a

    .line 3
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/Class;

    .line 4
    :goto_c
    array-length v3, p1

    if-ge v1, v3, :cond_1a

    .line 5
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1a
    const-string v1, "io.dcloud.feature.gg.dcloud.ADHandler"

    .line 8
    invoke-static {v1, p0, v0, v2, p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    return-object v0
.end method

.method static synthetic access$000()Lcom/dcloud/android/downloader/callback/DownloadListener;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/util/ADUtils;->DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/ADUtils;->getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkADDownload(Landroid/app/Activity;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v15, p0

    const-string v0, "ad_download_data"

    .line 1
    invoke-static {v15, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_89

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    .line 6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "expiresTime"

    .line 7
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "name"

    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v0, "pname"

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "url"

    .line 10
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "appid"

    .line 11
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "tid"

    .line 12
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "adid"

    .line 13
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "type"

    .line 14
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "ua"

    .line 15
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object v6

    long-to-int v0, v3

    .line 17
    invoke-interface {v6, v0}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->getDownloadById(I)Lcom/dcloud/android/downloader/domain/DownloadInfo;

    move-result-object v1

    .line 19
    new-instance v2, Lio/dcloud/common/util/ADUtils$4;

    move-object v0, v2

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v15, v17

    invoke-direct/range {v0 .. v15}, Lio/dcloud/common/util/ADUtils$4;-><init>(Lcom/dcloud/android/downloader/domain/DownloadInfo;Landroid/app/Activity;JLjava/lang/String;Lcom/dcloud/android/downloader/callback/DCDownloadManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object v15, v0

    goto :goto_1a

    :cond_89
    return-void
.end method

.method public static downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v10, Lio/dcloud/common/util/ADUtils$7;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lio/dcloud/common/util/ADUtils$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V
    .registers 25

    move-object v0, p0

    move-object/from16 v7, p4

    move-object/from16 v1, p6

    const-string v2, "."

    if-eqz p10, :cond_c

    .line 1
    :try_start_9
    invoke-static {p0}, Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V

    .line 4
    :cond_c
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/ADUtils;->getDdDataForUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_13

    return-void

    .line 7
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v2, 0x0

    goto :goto_48

    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_48
    invoke-static {v7, v3, v2}, Lio/dcloud/common/util/PdrUtil;->getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 8
    new-instance v12, Lio/dcloud/common/util/ADUtils$ADLoadData;

    invoke-direct {v12}, Lio/dcloud/common/util/ADUtils$ADLoadData;-><init>()V

    move-object/from16 v6, p5

    .line 9
    iput-object v6, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->name:Ljava/lang/String;

    .line 10
    iput-object v1, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->pname:Ljava/lang/String;

    .line 11
    iput-object v7, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->url:Ljava/lang/String;

    move-wide/from16 v1, p7

    .line 12
    iput-wide v1, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->expiresTime:J

    move-object/from16 v4, p3

    .line 13
    iput-object v4, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->adid:Ljava/lang/String;

    move-object v2, p1

    .line 14
    iput-object v2, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->appid:Ljava/lang/String;

    move-object v3, p2

    .line 15
    iput-object v3, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->tid:Ljava/lang/String;

    move-object/from16 v11, p11

    .line 16
    iput-object v11, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->ua:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6b} :catch_89

    const-string v8, "application/vnd.android.package-archive"

    .line 18
    :try_start_6d
    new-instance v9, Lio/dcloud/common/util/ADUtils$2;

    invoke-direct {v9}, Lio/dcloud/common/util/ADUtils$2;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v10, p9

    move-object/from16 v11, p11

    invoke-static/range {v1 .. v11}, Lio/dcloud/common/util/ADUtils;->loadADFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;ZLjava/lang/String;)J

    move-result-wide v0

    .line 29
    iput-wide v0, v12, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    .line 30
    invoke-static {v12}, Lio/dcloud/common/util/ADUtils;->saveLoadData(Lio/dcloud/common/util/ADUtils$ADLoadData;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_88} :catch_89

    goto :goto_a7

    :catch_89
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadApk exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ADUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a7
    return-void
.end method

.method public static getDdDataForUrl(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "ad_download_data"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    :try_start_26
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_35} :catch_38

    if-eqz v1, :cond_1a

    return-object v2

    :catch_38
    move-exception v1

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDownloadDataKey(J)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_download_data_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad_install_data_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLoadData(J)Lorg/json/JSONObject;
    .registers 3

    const-string v0, "ad_download_data"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    :try_start_10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception p0

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public static getSplashAdpId()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Lio/dcloud/common/DHInterface/IApp;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v3

    const-string v3, "_adpid_"

    aput-object v3, v0, v4

    const-string v3, "UNIAD_SPLASH_ADPID"

    aput-object v3, v0, v5

    const-string v3, "io.dcloud.feature.gg.AdSplashUtil"

    const-string v4, "getSplashAdpId"

    invoke-static {v3, v4, v2, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadADFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;ZLjava/lang/String;)J
    .registers 19

    if-eqz p9, :cond_f

    const/16 v4, 0x1d

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v7, p10

    .line 1
    invoke-static/range {v0 .. v7}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    invoke-direct {v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;-><init>()V

    move-object v3, p6

    invoke-virtual {v2, p6}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->setPath(Ljava/lang/String;)Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;

    move-result-object v1

    move-object v2, p0

    invoke-virtual {v1, p0}, Lcom/dcloud/android/downloader/domain/DownloadInfo$Builder;->build(Landroid/content/Context;)Lcom/dcloud/android/downloader/domain/DownloadInfo;

    move-result-object v1

    move-object/from16 v2, p8

    .line 6
    invoke-virtual {v1, v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setTag(Ljava/lang/Object;)V

    .line 7
    sget-object v2, Lio/dcloud/common/util/ADUtils;->DOWNLOAD_DC_LISTENER:Lcom/dcloud/android/downloader/callback/DownloadListener;

    invoke-virtual {v1, v2}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->download(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 9
    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static loadAppTip(Landroid/content/Context;)V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/ADUtils$6;

    invoke-direct {v0}, Lio/dcloud/common/util/ADUtils$6;-><init>()V

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method

.method public static openBrowser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "com.android.browser"

    .line 1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->VIVO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_1a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_2f

    goto :goto_4d

    :catch_2f
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openBrowser exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4d
    return-void
.end method

.method public static openDeepLink(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 1
    :try_start_1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    const/high16 v1, 0x10000000

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    return v0

    :catch_30
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openDeepLink exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    const/4 p0, 0x0

    return p0
.end method

.method public static openStreamApp(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/String;)V
    .registers 9

    const-string v0, "richurl"

    const-string v1, "arguments"

    .line 1
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "__start_from__"

    .line 2
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    .line 3
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_a5

    const-string v3, "io.dcloud.appstream.StreamAppMainActivity"

    if-nez p3, :cond_3b

    :try_start_1b
    const-string p3, "com.qihoo.appstore"

    .line 5
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    const-string p3, "io.dcloud.appstream.StreamAppListFakeActivity"

    .line 6
    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    :cond_29
    const-string p3, "com.aspire.mm"

    .line 7
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_37

    const-string p3, "io.dcloud.StreamAppLauncherActivity"

    .line 8
    invoke-virtual {v2, p4, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    .line 10
    :cond_37
    invoke-virtual {v2, p4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    .line 12
    :cond_3b
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result p3

    if-eqz p3, :cond_48

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_48
    :goto_48
    const-string p3, "appid"

    .line 15
    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_stream_app"

    const/4 p3, 0x1

    .line 16
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_9c

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5a} :catch_a5

    if-eqz p4, :cond_6a

    const-string p1, "__extras__"

    .line 22
    :try_start_5e
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 25
    :cond_6a
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6e} :catch_a5

    if-eqz p4, :cond_7f

    const-string p1, "direct_page"

    .line 26
    :try_start_72
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "__start_first_web__"

    .line 27
    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_80

    :cond_7f
    move p3, p1

    :goto_80
    if-eqz p3, :cond_9c

    .line 31
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "action"

    const-string p4, "app"

    .line 32
    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "parameters"

    .line 33
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_93} :catch_a5

    const-string p2, "rules_msg"

    .line 34
    :try_start_95
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9c
    const/high16 p1, 0x10000000

    .line 38
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a4} :catch_a5

    goto :goto_c3

    :catch_a5
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "openStreamApp exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ADUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c3
    return-void
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lio/dcloud/WebviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_42

    :catch_24
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openUrl exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ADUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_42
    return-void
.end method

.method public static removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "ad_download_data"

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-static {p1, p2}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7
    :try_start_1b
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method

.method public static removeLoadAppData(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "ad_install_data"

    .line 1
    invoke-static {p0, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/ADUtils;->getLoadAppDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 3
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 7
    :try_start_16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_21

    :catch_1c
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_20
    const/4 v1, 0x0

    .line 12
    :goto_21
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public static runThreadCheckADDownload(Landroid/app/Activity;)V
    .registers 3

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/util/ADUtils$3;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/ADUtils$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v9, Lio/dcloud/common/util/ADUtils$5;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils$5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static saveLoadData(Lio/dcloud/common/util/ADUtils$ADLoadData;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ad_download_data"

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    invoke-static {v1, v2}, Lio/dcloud/common/util/ADUtils;->getDownloadDataKey(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->name:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->url:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->pname:Ljava/lang/String;

    const-string v4, "pname"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-wide v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    const-string v5, "id"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 10
    iget-wide v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->expiresTime:J

    const-string v5, "expiresTime"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->tid:Ljava/lang/String;

    const-string v4, "tid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->appid:Ljava/lang/String;

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->adid:Ljava/lang/String;

    const-string v4, "adid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object p0, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->ua:Ljava/lang/String;

    const-string v3, "ua"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_72
    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass1 (io.dcloud.common.util.ADUtils$1)
.class final Lio/dcloud/common/util/ADUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/downloader/callback/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ADUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Lcom/dcloud/android/downloader/domain/DownloadInfo;Lcom/dcloud/android/downloader/exception/DownloadException;)V
    .registers 12

    .line 1
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/dcloud/common/util/ADUtils;->getLoadData(J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "appid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "tid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "adid"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/dcloud/android/downloader/exception/DownloadException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string p1, "ua"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x20

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public onDownloadSuccess(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V
    .registers 22

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v9, "appid"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "tid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "adid"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "ua"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v1, "pname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v13 .. v19}, Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_53
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/common/DHInterface/ILoadCallBack;

    if-eqz v1, :cond_7c

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/ILoadCallBack;

    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v0}, Lio/dcloud/common/DHInterface/ILoadCallBack;->onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_83

    .line 12
    :cond_7c
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    :goto_83
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dcloud/android/downloader/DownloadService;->getDownloadManager(Landroid/content/Context;)Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    move-result-object v0

    move-object/from16 v1, p1

    .line 15
    invoke-interface {v0, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    return-void
.end method

.method public onDownloading(JJ)V
    .registers 5

    return-void
.end method

.method public onPaused()V
    .registers 1

    return-void
.end method

.method public onRemoved()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onWaited()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass2 (io.dcloud.common.util.ADUtils$2)
.class final Lio/dcloud/common/util/ADUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_f

    .line 1
    new-instance p1, Landroid/content/Intent;

    check-cast p3, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass3 (io.dcloud.common.util.ADUtils$3)
.class final Lio/dcloud/common/util/ADUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->runThreadCheckADDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$3;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/ADUtils$3;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/ADUtils;->checkADDownload(Landroid/app/Activity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass4 (io.dcloud.common.util.ADUtils$4)
.class final Lio/dcloud/common/util/ADUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->checkADDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dataType:Ljava/lang/String;

.field final synthetic val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

.field final synthetic val$expiresTime:J

.field final synthetic val$id:J

.field final synthetic val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pname:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dcloud/android/downloader/domain/DownloadInfo;Landroid/app/Activity;JLjava/lang/String;Lcom/dcloud/android/downloader/callback/DCDownloadManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iput-wide p3, p0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    iput-object p5, p0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iput-wide p7, p0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    iput-object p9, p0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iput-object p10, p0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iput-object p11, p0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iput-object p12, p0, Lio/dcloud/common/util/ADUtils$4;->val$url:Ljava/lang/String;

    iput-object p13, p0, Lio/dcloud/common/util/ADUtils$4;->val$name:Ljava/lang/String;

    iput-object p14, p0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iput-object p15, p0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getStatus()I

    move-result v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const-wide/16 v3, 0x0

    packed-switch v1, :pswitch_data_100

    goto/16 :goto_ff

    .line 29
    :pswitch_14
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_ff

    .line 30
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v1, v3, v4}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 31
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 32
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    invoke-static {v1, v8}, Lio/dcloud/common/adapter/util/DownloadUtil;->getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 33
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-object v4, v0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iget-object v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iget-object v7, v0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iget-object v9, v0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 36
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips3:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto/16 :goto_ff

    .line 43
    :pswitch_53
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_ff

    .line 44
    iget-wide v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_75

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_75

    .line 47
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v1, v2, v3}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 48
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto/16 :goto_ff

    .line 52
    :cond_75
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->resume(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 53
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-static {}, Lio/dcloud/common/util/ADUtils;->access$000()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V

    .line 54
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips2:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto :goto_ff

    .line 55
    :pswitch_91
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v5, v6, v7}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 56
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b4

    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    const-string v6, "wanka"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 57
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_b3

    .line 58
    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v2, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    :cond_b3
    return-void

    .line 61
    :cond_b4
    iget-wide v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_cc

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_cc

    .line 64
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_ff

    .line 65
    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v2, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto :goto_ff

    .line 70
    :cond_cc
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v3, :cond_d5

    .line 71
    iget-object v4, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v4, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 73
    :cond_d5
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-object v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iget-object v7, v0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iget-object v8, v0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iget-object v9, v0, Lio/dcloud/common/util/ADUtils$4;->val$url:Ljava/lang/String;

    iget-object v10, v0, Lio/dcloud/common/util/ADUtils$4;->val$name:Ljava/lang/String;

    iget-object v11, v0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iget-wide v12, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    const/4 v14, 0x0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_ec

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_ed

    :cond_ec
    const/4 v15, 0x0

    :goto_ed
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-static/range {v5 .. v16}, Lio/dcloud/common/util/ADUtils;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 74
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips2:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    :cond_ff
    :goto_ff
    return-void

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_91
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_14
        :pswitch_91
    .end packed-switch
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass5 (io.dcloud.common.util.ADUtils$5)
.class final Lio/dcloud/common/util/ADUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$5;->val$packName:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/util/ADUtils$5;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/ADUtils$5;->val$appid:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/common/util/ADUtils$5;->val$tid:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$5;->val$adid:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/util/ADUtils$5;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ADUtils$5;->val$context:Landroid/content/Context;

    const-string v1, "ad_install_data"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/ADUtils$5;->val$packName:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/ADUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_13
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$5;->val$packName:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_56

    const-string v4, "packName"

    if-eqz v3, :cond_34

    .line 6
    :try_start_1d
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$5;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lio/dcloud/common/util/ADUtils$5;->val$path:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->parseApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_28

    return-void

    .line 10
    :cond_28
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/ADUtils;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    .line 13
    :cond_34
    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$5;->val$packName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_39} :catch_56

    :goto_39
    const-string v3, "appid"

    .line 15
    :try_start_3b
    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$5;->val$appid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_40} :catch_56

    const-string v3, "tid"

    .line 16
    :try_start_42
    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$5;->val$tid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_56

    const-string v3, "adid"

    .line 17
    :try_start_49
    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$5;->val$adid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_56

    const-string v3, "ua"

    .line 18
    :try_start_50
    iget-object v4, p0, Lio/dcloud/common/util/ADUtils$5;->val$ua:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_5a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass6 (io.dcloud.common.util.ADUtils$6)
.class final Lio/dcloud/common/util/ADUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroid/content/Context;

    sget v0, Lio/dcloud/base/R$string;->dcloud_common_download_tips1:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.AnonymousClass7 (io.dcloud.common.util.ADUtils$7)
.class final Lio/dcloud/common/util/ADUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->downloadCommit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$at:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dec:Ljava/lang/String;

.field final synthetic val$dem:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$7;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/util/ADUtils$7;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/util/ADUtils$7;->val$adid:Ljava/lang/String;

    iput p5, p0, Lio/dcloud/common/util/ADUtils$7;->val$at:I

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$7;->val$dec:Ljava/lang/String;

    iput-object p7, p0, Lio/dcloud/common/util/ADUtils$7;->val$dem:Ljava/lang/String;

    iput-object p8, p0, Lio/dcloud/common/util/ADUtils$7;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ADUtils$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/common/util/ADUtils$7;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/util/ADUtils$7;->val$tid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/util/ADUtils$7;->val$adid:Ljava/lang/String;

    iget v4, p0, Lio/dcloud/common/util/ADUtils$7;->val$at:I

    iget-object v5, p0, Lio/dcloud/common/util/ADUtils$7;->val$dec:Ljava/lang/String;

    iget-object v6, p0, Lio/dcloud/common/util/ADUtils$7;->val$dem:Ljava/lang/String;

    invoke-static {}, Lio/dcloud/common/util/ADUtils;->getSplashAdpId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lio/dcloud/common/util/ADUtils$7;->val$ua:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lio/dcloud/g/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

###### Class io.dcloud.common.util.ADUtils.ADLoadData (io.dcloud.common.util.ADUtils$ADLoadData)
.class public Lio/dcloud/common/util/ADUtils$ADLoadData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ADUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADLoadData"
.end annotation


# instance fields
.field public adid:Ljava/lang/String;

.field public appid:Ljava/lang/String;

.field public expiresTime:J

.field public id:J

.field public name:Ljava/lang/String;

.field public pname:Ljava/lang/String;

.field public tid:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public ua:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 10
    iput-object v0, p0, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    return-void
.end method
