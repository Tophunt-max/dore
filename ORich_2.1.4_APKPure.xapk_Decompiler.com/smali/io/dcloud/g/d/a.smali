###### Class io.dcloud.g.d.a (io.dcloud.g.d.a)
.class public Lio/dcloud/g/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/IPdrModule;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CommitModule"

    .line 2
    iput-object v0, p0, Lio/dcloud/g/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 4
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/g/d/a$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/g/d/a$a;-><init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 11

    :try_start_0
    const-string v0, "url"

    .line 55
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    .line 56
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 57
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 59
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_29

    return-void

    .line 66
    :cond_29
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/.system/apks/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    .line 68
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-gez v0, :cond_5a

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_69

    .line 70
    :cond_5a
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_69

    return-void

    .line 73
    :cond_69
    :goto_69
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1d

    invoke-static {v0, v5, v1, p2, v6}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_87

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 77
    :cond_87
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 78
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v4, 0x1000

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 81
    new-array v2, v3, [B

    .line 84
    :goto_98
    invoke-virtual {p3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a4

    const/4 v4, 0x0

    .line 85
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_98

    .line 87
    :cond_a4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 90
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-static {p3, p1, v1, p2, v0}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b9
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
    .registers 12

    const-string v0, "urd"

    const-string v1, "did"

    const-string v2, "ret"

    if-eqz p3, :cond_f5

    .line 5
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_eb

    const-string v4, "desc"

    const-string v5, "OK"

    if-nez p3, :cond_45

    :try_start_1c
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_45

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_45

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_45

    .line 8
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v6, "pdr"

    invoke-static {p3, v6}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3c} :catch_eb

    const-string v6, "_deviceId"

    .line 9
    :try_start_3e
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v6, v1}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_45
    sget-boolean p3, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p3, :cond_f5

    .line 13
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_f5

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_f5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f5

    const-string p3, "data"

    .line 14
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSK()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSIV()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {p3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-static {v1, v2, p3}, Lio/dcloud/common/util/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p3

    .line 16
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_85
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_d1

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "action"

    .line 19
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "webview"

    .line 20
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_9b} :catch_eb

    const-string v7, "delay"

    if-eqz v6, :cond_ad

    .line 21
    :try_start_9f
    invoke-virtual {v4, v7, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 22
    new-instance v6, Lio/dcloud/g/d/a$b;

    invoke-direct {v6, p0, p1, v4}, Lio/dcloud/g/d/a$b;-><init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V

    int-to-long v4, v5

    invoke-static {v6, v4, v5}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_ce

    :cond_ad
    const-string v6, "push"

    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 30
    invoke-virtual {v4, v7, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 31
    new-instance v6, Lio/dcloud/g/d/a$c;

    invoke-direct {v6, p0, p1, p2, v4}, Lio/dcloud/g/d/a$c;-><init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V

    int-to-long v4, v5

    invoke-static {v6, v4, v5}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_ce

    :cond_c3
    const-string v6, "apk"

    .line 38
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 39
    invoke-direct {p0, p1, p2, v4}, Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_ce
    :goto_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 43
    :cond_d1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 44
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 46
    invoke-static {p1, p3}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Z)[B

    move-result-object p1

    .line 47
    sget-object p2, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ea} :catch_eb

    goto :goto_f5

    :catch_eb
    move-exception p1

    .line 54
    iget-object p2, p0, Lio/dcloud/g/d/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f5
    :goto_f5
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V
    .registers 6

    .line 93
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/16 p2, 0x34

    invoke-interface {p1, v0, p2, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/g/d/a;->b(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "icon"

    .line 1
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Lio/dcloud/g/d/a$d;

    invoke-direct {v2, p0, p3, p1, p2}, Lio/dcloud/g/d/a$d;-><init>(Lio/dcloud/g/d/a;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "start_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_24

    .line 3
    :cond_c
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_24

    .line 4
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    aget-object p1, p2, p1

    check-cast p1, Lio/dcloud/common/DHInterface/IApp;

    const/4 v0, 0x1

    .line 6
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 7
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

###### Class io.dcloud.g.d.a.RunnableC0067a (io.dcloud.g.d.a$a)
.class Lio/dcloud/g/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lio/dcloud/g/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/g/d/a$a;->d:Lio/dcloud/g/d/a;

    iput-object p2, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/g/d/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/g/d/a$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded;charset=utf-8"

    .line 3
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "start_statistics_data"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 5
    iget-object v0, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-static {v0, v5}, Lio/dcloud/g/b/h/a;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v0

    .line 6
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "ps"

    .line 12
    :try_start_28
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_4d

    const-string v0, "psd"

    .line 13
    :try_start_35
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_4d

    const-string v0, "paid"

    .line 14
    :try_start_40
    iget-object v1, p0, Lio/dcloud/g/d/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_4d

    const-string v0, "urv"

    .line 15
    :try_start_47
    iget-object v1, p0, Lio/dcloud/g/d/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_59

    :catch_4d
    move-exception v0

    .line 18
    iget-object v1, p0, Lio/dcloud/g/d/a$a;->d:Lio/dcloud/g/d/a;

    iget-object v1, v1, Lio/dcloud/g/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_59
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_fd

    .line 21
    :goto_5f
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_5f

    .line 22
    :cond_6b
    :goto_6b
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "null"

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_6b

    .line 23
    :cond_78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lio/dcloud/common/util/ZipUtils;->zipString(Ljava/lang/String;)[B

    move-result-object v0

    .line 26
    iget-object v2, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSK()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IApp;->getConfusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IConfusionMgr;->getSIV()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v0}, Lio/dcloud/common/util/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const/4 v2, 0x2

    .line 27
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :try_start_a2
    const-string v2, "utf-8"

    .line 30
    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a2 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 34
    :goto_ad
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->FIRST:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJyd7OSZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14"

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->NORMAL:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJyd7OiZsa2RnfWwmZm18JmtmJ2tnZGRta3wneGR9e2l4eCd7fGl6fH14"

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lio/dcloud/common/util/hostpicker/HostPicker$Host;

    sget-object v1, Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;->BACKUP:Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;

    const-string v7, "YHx8eHsyJydrO2k/Pzs7OCU7a207JTw5Pm0lMWowOSU9Pzk4aT9tbjhtaj8mant4aXh4JmtnZSdgfHx4J2tpew=="

    invoke-direct {v0, v7, v1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;-><init>(Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$Host$PriorityEnum;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Lio/dcloud/common/util/hostpicker/HostPicker;->getInstance()Lio/dcloud/common/util/hostpicker/HostPicker;

    move-result-object v7

    iget-object v0, p0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lio/dcloud/g/d/a$a$a;

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/dcloud/g/d/a$a$a;-><init>(Lio/dcloud/g/d/a$a;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/SharedPreferences;)V

    const-string v0, "StartUp"

    invoke-virtual {v7, v8, v6, v0, v9}, Lio/dcloud/common/util/hostpicker/HostPicker;->pickSuitHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;)V

    :cond_fd
    return-void
.end method

###### Class io.dcloud.g.d.a.RunnableC0067a.C0068a (io.dcloud.g.d.a$a$a)
.class Lio/dcloud/g/d/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/util/hostpicker/HostPicker$HostPickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/d/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/util/HashMap;

.field final synthetic d:Landroid/content/SharedPreferences;

.field final synthetic e:Lio/dcloud/g/d/a$a;


# direct methods
.method constructor <init>(Lio/dcloud/g/d/a$a;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/SharedPreferences;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/g/d/a$a$a;->e:Lio/dcloud/g/d/a$a;

    iput-object p2, p0, Lio/dcloud/g/d/a$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/g/d/a$a$a;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lio/dcloud/g/d/a$a$a;->c:Ljava/util/HashMap;

    iput-object p5, p0, Lio/dcloud/g/d/a$a$a;->d:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/util/hostpicker/HostPicker$Host;->getRealHost()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/g/d/a$a$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/g/d/a$a$a;->b:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZZ)[B

    move-result-object p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    if-eqz p1, :cond_4c

    .line 7
    iget-object v0, p0, Lio/dcloud/g/d/a$a$a;->e:Lio/dcloud/g/d/a$a;

    iget-object v0, v0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pdr"

    const-string v2, "report_uni_verify_GYUID"

    const-string v4, ""

    invoke-static {v0, v1, v2, v4}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/g/d/a$a$a;->c:Ljava/util/HashMap;

    const-string v1, "apps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 10
    iget-object v0, p0, Lio/dcloud/g/d/a$a$a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "commit_app_list_time"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 12
    :cond_41
    iget-object v0, p0, Lio/dcloud/g/d/a$a$a;->e:Lio/dcloud/g/d/a$a;

    iget-object v1, v0, Lio/dcloud/g/d/a$a;->d:Lio/dcloud/g/d/a;

    iget-object v2, v0, Lio/dcloud/g/d/a$a;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v0, v0, Lio/dcloud/g/d/a$a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, Lio/dcloud/g/d/a;->a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V

    :cond_4c
    return v3
.end method

.method public onNoOnePicked()V
    .registers 1

    return-void
.end method

.method public onOneSelected(Lio/dcloud/common/util/hostpicker/HostPicker$Host;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.g.d.a.b (io.dcloud.g.d.a$b)
.class Lio/dcloud/g/d/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lio/dcloud/g/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/g/d/a$b;->c:Lio/dcloud/g/d/a;

    iput-object p2, p0, Lio/dcloud/g/d/a$b;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/g/d/a$b;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/g/d/a$b;->c:Lio/dcloud/g/d/a;

    iget-object v1, p0, Lio/dcloud/g/d/a$b;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/g/d/a$b;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lio/dcloud/g/d/a;->a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.g.d.a.c (io.dcloud.g.d.a$c)
.class Lio/dcloud/g/d/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/d/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lio/dcloud/g/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/g/d/a$c;->d:Lio/dcloud/g/d/a;

    iput-object p2, p0, Lio/dcloud/g/d/a$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iput-object p3, p0, Lio/dcloud/g/d/a$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/g/d/a$c;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/g/d/a$c;->d:Lio/dcloud/g/d/a;

    iget-object v1, p0, Lio/dcloud/g/d/a$c;->a:Lio/dcloud/common/DHInterface/IApp;

    iget-object v2, p0, Lio/dcloud/g/d/a$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/g/d/a$c;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lio/dcloud/g/d/a;->a(Lio/dcloud/g/d/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.g.d.a.d (io.dcloud.g.d.a$d)
.class Lio/dcloud/g/d/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/g/d/a;->b(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/g/d/a;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p2, p0, Lio/dcloud/g/d/a$d;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/dcloud/g/d/a$d;->b:Lio/dcloud/common/DHInterface/IApp;

    iput-object p4, p0, Lio/dcloud/g/d/a$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 11

    if-eqz p3, :cond_6f

    .line 1
    iget-object p1, p0, Lio/dcloud/g/d/a$d;->a:Lorg/json/JSONObject;

    const-string p2, "title"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/g/d/a$d;->a:Lorg/json/JSONObject;

    const-string p2, "content"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object p2, p0, Lio/dcloud/g/d/a$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "io.dcloud.PandoraEntry"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lio/dcloud/g/d/a$d;->a:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "__json__"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lio/dcloud/g/d/a$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "appid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lio/dcloud/g/d/a$d;->c:Ljava/lang/String;

    const-string v0, "adid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "dcloud.push.broswer"

    const-string v0, "true"

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x40000000    # 2.0f

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_50

    const/high16 p2, 0x44000000    # 512.0f

    .line 15
    :cond_50
    iget-object v0, p0, Lio/dcloud/g/d/a$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 16
    iget-object p1, p0, Lio/dcloud/g/d/a$d;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lio/dcloud/g/d/a$d;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v1, v3

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lio/dcloud/common/util/NotificationUtil;->createCustomNotification(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    :cond_6f
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/dcloudimageloader/core/assist/FailReason;)V
    .registers 4

    .line 1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
