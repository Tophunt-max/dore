###### Class io.dcloud.common.core.a.a (io.dcloud.common.core.a.a)
.class public Lio/dcloud/common/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lio/dcloud/common/DHInterface/IApp;
    .registers 4

    .line 2
    invoke-static {}, Lio/dcloud/EntryProxy;->getInstnace()Lio/dcloud/EntryProxy;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/EntryProxy;->getCoreHandler()Lio/dcloud/common/DHInterface/ICore;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/a/a;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lorg/json/JSONObject;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/a/a;->e(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static bc(Ljava/lang/String;)V
    .registers 12

    const-string v0, "did"

    const-string v1, "urd"

    const-string v2, "ret"

    const-string v3, "pdr"

    const-string v4, "report_uni_verify_GYUID"

    const-string v5, ""

    .line 1
    invoke-static {v3, v4, v5}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "start_statistics_data"

    .line 4
    invoke-static {v4}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "commit_app_list_time"

    const-wide/16 v6, 0x0

    .line 5
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v6, 0x186a0

    div-long/2addr v8, v6

    const-wide/16 v6, 0x6590

    cmp-long v10, v8, v6

    if-ltz v10, :cond_6a

    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isChannelGooglePlay()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 7
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v7, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_48

    invoke-static {}, Lio/dcloud/common/adapter/util/PlatformUtil;->checkGTAndYoumeng()Z

    move-result v6

    if-eqz v6, :cond_6a

    :cond_48
    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    .line 8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    sget-object v6, Lio/dcloud/common/util/BaseInfo;->sChannel:Ljava/lang/String;

    const-string v7, "|xiaomi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    goto :goto_6a

    .line 10
    :cond_5b
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 14
    :cond_6a
    :goto_6a
    :try_start_6a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9c

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_79} :catch_10e

    if-nez p0, :cond_9c

    const-string p0, "OK"

    :try_start_7d
    const-string v2, "desc"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9c

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9c

    .line 17
    invoke-static {v3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_93
    .catch Lorg/json/JSONException; {:try_start_7d .. :try_end_93} :catch_10e

    const-string v2, "_deviceId"

    .line 18
    :try_start_95
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_9c
    sget-boolean p0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p0, :cond_118

    const-string p0, "data"

    .line 21
    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 22
    :goto_a8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_f4

    .line 23
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "action"

    .line 24
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "webview"

    .line 25
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_95 .. :try_end_be} :catch_10e

    const-string v7, "delay"

    if-eqz v6, :cond_d0

    .line 26
    :try_start_c2
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 27
    new-instance v6, Lio/dcloud/common/core/a/a$a;

    invoke-direct {v6, v3}, Lio/dcloud/common/core/a/a$a;-><init>(Lorg/json/JSONObject;)V

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_f1

    :cond_d0
    const-string v6, "push"

    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    .line 35
    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 36
    new-instance v6, Lio/dcloud/common/core/a/a$b;

    invoke-direct {v6, v3}, Lio/dcloud/common/core/a/a$b;-><init>(Lorg/json/JSONObject;)V

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_f1

    :cond_e6
    const-string v6, "apk"

    .line 43
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 44
    invoke-static {v3}, Lio/dcloud/common/core/a/a;->c(Lorg/json/JSONObject;)V

    :cond_f1
    :goto_f1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 47
    :cond_f4
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_118

    .line 48
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_118

    .line 50
    invoke-static {p0, v0}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Z)[B

    move-result-object p0

    .line 51
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V
    :try_end_10d
    .catch Lorg/json/JSONException; {:try_start_c2 .. :try_end_10d} :catch_10e

    goto :goto_118

    :catch_10e
    move-exception p0

    .line 56
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IDBridge"

    invoke-static {v0, p0}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    :goto_118
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)V
    .registers 11

    const-string v0, "adid"

    .line 1
    invoke-static {}, Lio/dcloud/common/core/a/a;->a()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v2, "url"

    .line 16
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tid"

    .line 17
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 18
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 23
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-gez v8, :cond_32

    return-void

    .line 27
    :cond_32
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/.system/apks/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-gez v2, :cond_63

    .line 30
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_72

    .line 31
    :cond_63
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v2, v7, v4

    if-nez v2, :cond_72

    return-void

    .line 34
    :cond_72
    :goto_72
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1d

    invoke-static {v2, v7, v3, v8, v9}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_94

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 38
    :cond_94
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 39
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v6, 0x1000

    .line 41
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 42
    new-array v4, v5, [B

    .line 45
    :goto_a5
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b1

    const/4 v6, 0x0

    .line 46
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_a5

    .line 48
    :cond_b1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 51
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {p0, v2, v3, v0, v1}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_ca
    return-void
.end method

.method private static d(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/core/a/a;->a()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 12
    :cond_7
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/16 p0, 0x34

    invoke-interface {v0, v1, p0, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainMgrData(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static e(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    invoke-static {}, Lio/dcloud/common/core/a/a;->a()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "icon"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 14
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/dcloudimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Lio/dcloud/common/core/a/a$c;

    invoke-direct {v3, p0, v0}, Lio/dcloud/common/core/a/a$c;-><init>(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IApp;)V

    invoke-virtual {v2, v1, v3}, Lcom/nostra13/dcloudimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;)V

    :cond_25
    return-void
.end method

.method public static gd()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lio/dcloud/common/core/a/a;->a()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 3
    :cond_9
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "start_statistics_data"

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0, v1}, Lio/dcloud/g/b/h/a;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "ps"

    .line 10
    :try_start_1e
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->existsStreamEnv()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_56

    const-string v1, "psd"

    .line 11
    :try_start_2b
    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_56

    const-string v1, "paid"

    :try_start_36
    const-string v3, "adid"

    .line 12
    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->URDJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_45} :catch_56

    const-string v1, "urv"

    if-eqz v0, :cond_50

    :try_start_49
    const-string v3, "version"

    .line 14
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4f} :catch_56

    goto :goto_52

    :cond_50
    const-string v0, "0.1"

    :goto_52
    :try_start_52
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    nop

    .line 18
    :goto_57
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_57

    .line 19
    :cond_63
    :goto_63
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    goto :goto_63

    .line 20
    :cond_70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.common.core.a.a.RunnableC0027a (io.dcloud.common.core.a.a$a)
.class final Lio/dcloud/common/core/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/a/a;->bc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/a/a$a;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/a/a$a;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lio/dcloud/common/core/a/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.common.core.a.a.b (io.dcloud.common.core.a.a$b)
.class final Lio/dcloud/common/core/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/a/a;->bc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/a/a$b;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/a/a$b;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lio/dcloud/common/core/a/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method

###### Class io.dcloud.common.core.a.a.c (io.dcloud.common.core.a.a$c)
.class final Lio/dcloud/common/core/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/core/assist/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/a/a;->e(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IApp;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/a/a$c;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

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

    if-eqz p3, :cond_6b

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/a/a$c;->a:Lorg/json/JSONObject;

    const-string p2, "title"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/a/a$c;->a:Lorg/json/JSONObject;

    const-string p2, "content"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "dcloud.push.broswer"

    const-string v0, "true"

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "io.dcloud.PandoraEntry"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lio/dcloud/common/core/a/a$c;->a:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "__json__"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "appid"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

    const-string v0, "adid"

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object p2, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 12
    iget-object p1, p0, Lio/dcloud/common/core/a/a$c;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p1, p0, Lio/dcloud/common/core/a/a$c;->a:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move-object v1, v3

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lio/dcloud/common/util/NotificationUtil;->createCustomNotification(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V

    :cond_6b
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
