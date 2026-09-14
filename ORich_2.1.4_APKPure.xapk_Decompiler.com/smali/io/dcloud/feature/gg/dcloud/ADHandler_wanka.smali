###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka (io.dcloud.feature.gg.dcloud.ADHandler_wanka)
.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;
.super Lio/dcloud/feature/gg/dcloud/ADHandler;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->isRun(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->checkRunLoad(Landroid/content/Context;Lorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 1
    invoke-static/range {p0 .. p6}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    invoke-static/range {p0 .. p7}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->runApp(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V

    return-void
.end method

.method private static checkRunLoad(Landroid/content/Context;Lorg/json/JSONObject;I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    add-int/lit8 v1, p2, 0x1

    .line 3
    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;

    invoke-direct {v2, p1, p0, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;-><init>(Lorg/json/JSONObject;Landroid/content/Context;I)V

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p0, p2

    invoke-virtual {v0, v2, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "template"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const/4 v3, 0x1

    const-string v4, "clktrackers"

    if-ne v0, v3, :cond_4e

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v0

    if-eqz v0, :cond_23

    return-void

    .line 7
    :cond_23
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 10
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;

    invoke-direct {v2, p1, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v4}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    goto/16 :goto_d3

    :cond_3f
    const-string v2, "url"

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 32
    iget-object v1, p1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d3

    .line 35
    :cond_4e
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 37
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 40
    :cond_5f
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 41
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ba

    invoke-static {p0, v0}, Lio/dcloud/common/util/LoadAppUtils;->isAppLoad(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 43
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p2

    if-eqz p2, :cond_82

    return-void

    .line 47
    :cond_82
    :try_start_82
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "dplk"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->isDefense:Z

    if-eqz p2, :cond_a5

    const/4 p2, 0x0

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p2, "android.intent.category.BROWSABLE"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_a5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v0, 0x10000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    if-eqz p2, :cond_d3

    .line 57
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b4
    .catch Ljava/net/URISyntaxException; {:try_start_82 .. :try_end_b4} :catch_b5

    return-void

    :catch_b5
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_d3

    .line 65
    :cond_ba
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;

    invoke-direct {v1, p1, p0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;-><init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-nez p1, :cond_d3

    .line 74
    invoke-static {p0}, Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V

    goto :goto_d3

    .line 78
    :cond_d0
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method private static click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 22

    move-object v0, p0

    move-object/from16 v12, p2

    move-object/from16 v1, p6

    const-string v2, "report"

    .line 1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "dwnlsts"

    .line 2
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 4
    invoke-static {v4, v1, v3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_16
    const-string v3, "data"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bundle"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/ADUtils;->getDdDataForUrl(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_29

    return-void

    .line 15
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v4, 0x0

    goto :goto_60

    :cond_48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lio/dcloud/base/R$string;->in_package:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_60
    invoke-static {v12, v3, v4}, Lio/dcloud/common/util/PdrUtil;->getFileNameByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 19
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "ua"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_77

    :cond_75
    const-string v3, ""

    :goto_77
    move-object v14, v3

    .line 21
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 22
    new-instance v7, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;

    invoke-direct {v7, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v14

    invoke-static/range {v1 .. v8}, Lio/dcloud/feature/gg/dcloud/ADSim;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_92
    new-instance v9, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;

    invoke-direct {v9, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 v10, 0x1

    const-string v8, "application/vnd.android"

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v6, v13

    move-object/from16 v7, p2

    move-object v11, v14

    invoke-static/range {v1 .. v11}, Lio/dcloud/common/util/ADUtils;->loadADFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/ILoadCallBack;ZLjava/lang/String;)J

    move-result-wide v1

    .line 53
    new-instance v3, Lio/dcloud/common/util/ADUtils$ADLoadData;

    invoke-direct {v3}, Lio/dcloud/common/util/ADUtils$ADLoadData;-><init>()V

    .line 54
    invoke-static {p0}, Lio/dcloud/feature/gg/AdSplashUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->name:Ljava/lang/String;

    .line 55
    iput-object v13, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->pname:Ljava/lang/String;

    .line 56
    iput-object v12, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->url:Ljava/lang/String;

    move-object/from16 v0, p3

    .line 57
    iput-object v0, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->appid:Ljava/lang/String;

    move-object/from16 v0, p4

    .line 58
    iput-object v0, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->tid:Ljava/lang/String;

    move-object/from16 v0, p5

    .line 59
    iput-object v0, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->adid:Ljava/lang/String;

    const-string v0, "wanka"

    .line 60
    iput-object v0, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->type:Ljava/lang/String;

    .line 61
    iput-wide v1, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->id:J

    .line 62
    iput-object v14, v3, Lio/dcloud/common/util/ADUtils$ADLoadData;->ua:Ljava/lang/String;

    .line 65
    :try_start_cc
    invoke-static {v3}, Lio/dcloud/common/util/ADUtils;->saveLoadData(Lio/dcloud/common/util/ADUtils$ADLoadData;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_d5

    :catch_d0
    move-exception v0

    move-object v1, v0

    .line 67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d5
    return-void
.end method

.method private static click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p3

    new-instance p4, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;

    invoke-direct {p4, p2, p1, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;-><init>(Lorg/json/JSONArray;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static dplk_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "dplktrackers"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 3
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method static handleAdData_wanka(Landroid/content/Context;Lorg/json/JSONObject;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler;->handleAdData_dcloud(Landroid/content/Context;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private static handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    .registers 16

    add-int/lit8 v6, p3, -0x1

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTrackers_wanka template = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; t_count="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; tagMsg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ";  url="

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p3

    new-instance p6, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;

    move-object v0, p6

    move v1, p7

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;-><init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {p3, p6}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_63

    move-object/from16 v3, p0

    .line 5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "template_type"

    .line 6
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "ua"

    .line 8
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2e

    .line 9
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "webview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v16, 0x1

    goto :goto_30

    :cond_2e
    const/16 v16, 0x0

    :goto_30
    const-string v6, "u-a"

    :try_start_32
    const-string v7, "ua-webview"

    .line 14
    invoke-static {v7}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    nop

    :goto_3d
    const-string v6, "url"

    .line 16
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "http_method"

    .line 17
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v6, "content"

    .line 18
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x2

    if-ne v5, v8, :cond_58

    const/4 v13, 0x1

    goto :goto_59

    :cond_58
    const/4 v13, 0x0

    :goto_59
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 19
    invoke-static/range {v9 .. v16}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_63
    return-void
.end method

.method private static handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    return-void
.end method

.method private static isRun(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 7
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_36
    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "wanka"

    .line 1
    invoke-static {v0, p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static runApp(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "intltrackers"

    :try_start_2
    const-string v1, "report"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 4
    invoke-static {v1, p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x1

    .line 7
    invoke-static {p0, p1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->checkRunLoad(Landroid/content/Context;Lorg/json/JSONObject;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_1a
    invoke-static {p0, p2}, Lio/dcloud/common/util/RuningAcitvityUtil;->StartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static view_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string p2, "imptrackers"

    .line 3
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$1)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->checkRunLoad(Landroid/content/Context;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_sec:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$srcJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$_sec:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "actvtrackers"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    invoke-static {v0, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_38

    :cond_26
    const-string v0, "no actvtrackers"

    .line 8
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    goto :goto_38

    .line 10
    :cond_2c
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$_sec:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_38

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$200(Landroid/content/Context;Lorg/json/JSONObject;I)V

    :cond_38
    :goto_38
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass2 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$2)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10

    .line 1
    check-cast p2, Lorg/json/JSONObject;

    const-string p1, "data"

    .line 2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "dstlink"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p2, "clickid"

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "tid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    :try_start_20
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "click_id"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_30
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v3, v1, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adid:Ljava/lang/String;

    invoke-virtual {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$300(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 14
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lio/dcloud/common/util/ADUtils;->loadAppTip(Landroid/content/Context;)V

    :cond_4c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass3 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$3)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->data()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iget-object v5, v3, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->mOriginalAppid:Ljava/lang/String;

    iget-object v7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$3;->val$adid:Ljava/lang/String;

    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$300(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass4 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$4)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_url(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$clktrackers:Lorg/json/JSONArray;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$clktrackers:Lorg/json/JSONArray;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v0, "ua"

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$clktrackers:Lorg/json/JSONArray;

    if-eqz v1, :cond_81

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_8
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$clktrackers:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 4
    :try_start_10
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$clktrackers:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "template_type"

    .line 5
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 6
    iget-object v5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v5}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v5

    .line 8
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_37

    .line 9
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "webview"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_33} :catch_7a

    if-eqz v6, :cond_37

    const/4 v11, 0x1

    goto :goto_38

    :cond_37
    const/4 v11, 0x0

    :goto_38
    const-string v6, "u-a"

    :try_start_3a
    const-string v8, "ua-webview"

    .line 13
    invoke-static {v8}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "url"

    .line 14
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lio/dcloud/feature/gg/dcloud/ADHandler;->formatUrl(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http_method"

    .line 15
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "content"

    .line 16
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v4, v7, :cond_6f

    .line 18
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$adData:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    invoke-virtual {v3}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->isEClick()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 19
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v5}, Lio/dcloud/feature/gg/dcloud/ADSim;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 21
    :cond_69
    iget-object v3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$4;->val$context:Landroid/content/Context;

    invoke-static {v3, v5}, Lio/dcloud/common/util/ADUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    :cond_6f
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "clktrackers"

    move-object v4, v5

    move-object v5, v3

    .line 24
    invoke-static/range {v4 .. v11}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$400(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_81
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass5 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$5)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$httpMethod:I

.field final synthetic val$isHeader:Z

.field final synthetic val$needHandleResponse:Z

.field final synthetic val$t_count:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/common/DHInterface/ICallBack;)V
    .registers 8

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    iput p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$content:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    iput p6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$t_count:I

    iput-object p7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ua-webview"

    .line 3
    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 5
    :goto_17
    iget v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    const/4 v3, 0x1

    if-nez v2, :cond_25

    .line 7
    :try_start_1c
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_2f

    :catch_23
    nop

    goto :goto_2f

    :cond_25
    if-ne v2, v3, :cond_2f

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$content:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object v1

    .line 12
    :cond_2f
    :goto_2f
    iget-boolean v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    if-eqz v2, :cond_8f

    if-eqz v1, :cond_8f

    .line 14
    :try_start_35
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ret"

    .line 15
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "msg"

    .line 16
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTrackers_wanka Runnable Error url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    .line 18
    iget v7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$t_count:I

    if-lez v7, :cond_7d

    .line 19
    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iget v6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    iget-boolean v8, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    iget-object v9, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    invoke-static/range {v4 .. v11}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$400(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    .line 21
    :cond_7d
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    goto :goto_8f

    .line 22
    :cond_83
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_8f

    .line 23
    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8f
    :goto_8f
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass6 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$6)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fullJson:Lorg/json/JSONObject;

.field final synthetic val$report:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$report:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$fullJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_14

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$report:Lorg/json/JSONObject;

    const-string p2, "dwnltrackers"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$6;->val$fullJson:Lorg/json/JSONObject;

    invoke-static {p1, p3, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    :cond_11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

###### Class io.dcloud.feature.gg.dcloud.ADHandler_wanka.AnonymousClass7 (io.dcloud.feature.gg.dcloud.ADHandler_wanka$7)
.class final Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/ILoadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->click_wanka_other(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fullJson:Lorg/json/JSONObject;

.field final synthetic val$report:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;->val$report:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;->val$fullJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_1b

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;->val$report:Lorg/json/JSONObject;

    const-string v0, "dwnltrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;->val$fullJson:Lorg/json/JSONObject;

    invoke-static {p1, v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 5
    :cond_11
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$7;->val$fullJson:Lorg/json/JSONObject;

    check-cast p3, Landroid/content/Intent;

    invoke-static {p2, p1, p3}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$500(Landroid/content/Context;Lorg/json/JSONObject;Landroid/content/Intent;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method
