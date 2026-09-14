###### Class io.dcloud.feature.gg.dcloud.ADhandler_common (io.dcloud.feature.gg.dcloud.ADhandler_common)
.class public Lio/dcloud/feature/gg/dcloud/ADhandler_common;
.super Lio/dcloud/feature/gg/dcloud/ADHandler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/gg/dcloud/ADHandler;-><init>()V

    return-void
.end method

.method static click_common(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "clktracker"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4
    invoke-static {v0, v1, p1}, Lio/dcloud/feature/gg/dcloud/ADhandler_common;->handleTrackers_common(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    .line 6
    :cond_f
    invoke-static {p0, p1, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->click_base(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;)V

    return-void
.end method

.method static handleAdData_common(Landroid/content/Context;Lorg/json/JSONObject;J)V
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

.method static handleTrackers_common(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
    .registers 8

    if-eqz p0, :cond_4d

    const/4 p1, 0x0

    .line 1
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_4d

    .line 2
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->full()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    const-string v3, "ua"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "webview"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 8
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ua-webview"

    .line 9
    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3e
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v1

    new-instance v3, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;

    invoke-direct {v3, v0, v2}, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v1, v3}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4d
    return-void
.end method

.method static handletask_common(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->report()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 4
    invoke-static {p0, p3, p1}, Lio/dcloud/feature/gg/dcloud/ADhandler_common;->handleTrackers_common(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V

    :cond_d
    return-void
.end method

###### Class io.dcloud.feature.gg.dcloud.ADhandler_common.AnonymousClass1 (io.dcloud.feature.gg.dcloud.ADhandler_common$1)
.class final Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADhandler_common;->handleTrackers_common(Lorg/json/JSONArray;Ljava/lang/String;Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalHeaders:Ljava/util/HashMap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;->val$finalHeaders:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADhandler_common$1;->val$finalHeaders:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
