###### Class io.dcloud.common.adapter.io.PushReceiver (io.dcloud.common.adapter.io.PushReceiver)
.class public Lio/dcloud/common/adapter/io/PushReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handle(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "__json__"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "appid"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "adid"

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "tid"

    .line 6
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 8
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v2, Lio/dcloud/common/adapter/io/PushReceiver$1;

    invoke-direct {v2, p0, v3, v4, v5}, Lio/dcloud/common/adapter/io/PushReceiver$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_2f
    const-string p1, "dplk"

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->openDeepLink(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 19
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v0, Lio/dcloud/common/adapter/io/PushReceiver$2;

    invoke-direct {v0, p0, v3, v4, v5}, Lio/dcloud/common/adapter/io/PushReceiver$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    :cond_53
    return-void

    :cond_54
    const-string p1, "click_action"

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "streamapp"

    const-string v7, "browser"

    if-eqz v2, :cond_77

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_76

    move-object p1, v6

    goto :goto_77

    :cond_76
    move-object p1, v7

    :cond_77
    :goto_77
    const-string v1, "url"

    .line 38
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c1

    :cond_87
    const-string v2, "download"

    .line 40
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "downloadAppName"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "bundle"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, ""

    invoke-static/range {v2 .. v13}, Lio/dcloud/common/util/ADUtils;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    goto :goto_c1

    .line 42
    :cond_ad
    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b4

    goto :goto_c1

    .line 44
    :cond_b4
    invoke-static {v7, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/common/util/ADUtils;->openBrowser(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "dcloud.push.broswer"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3
    :try_start_8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4
    invoke-static {p0, p1}, Lio/dcloud/common/adapter/io/PushReceiver;->handle(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

###### Class io.dcloud.common.adapter.io.PushReceiver.AnonymousClass1 (io.dcloud.common.adapter.io.PushReceiver$1)
.class final Lio/dcloud/common/adapter/io/PushReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/io/PushReceiver;->handle(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$tid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/adapter/io/PushReceiver$1;->val$adid:Ljava/lang/String;

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

###### Class io.dcloud.common.adapter.io.PushReceiver.AnonymousClass2 (io.dcloud.common.adapter.io.PushReceiver$2)
.class final Lio/dcloud/common/adapter/io/PushReceiver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/io/PushReceiver;->handle(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$tid:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$adid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$appid:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$tid:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/common/adapter/io/PushReceiver$2;->val$adid:Ljava/lang/String;

    const/16 v4, 0x32

    invoke-static {v0, v1, v2, v3, v4}, Lio/dcloud/common/util/TestUtil$PointTime;->commitTid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
