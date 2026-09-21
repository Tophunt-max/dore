###### Class com.appsflyer.internal.cg (com.appsflyer.internal.cg)
.class public Lcom/appsflyer/internal/cg;
.super Lcom/appsflyer/internal/cj;
.source ""


# instance fields
.field public final AFInAppEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "google"

    .line 38
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/cj;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    return-void
.end method

.method private static values(Landroid/content/Context;)Z
    .registers 4

    .line 43
    invoke-static {}, Lcom/appsflyer/internal/ag;->AFInAppEventType()Lcom/appsflyer/internal/ag;

    .line 44
    invoke-static {p0}, Lcom/appsflyer/internal/ag;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    .line 3774
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/ag;->valueOf(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_16

    const-string p0, "Install referrer will not load, the counter > 1, "

    .line 46
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    return v2

    :cond_16
    const-string v0, "com.android.installreferrer.api.InstallReferrerClient"

    .line 51
    :try_start_18
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 52
    invoke-static {p0, v1}, Lcom/appsflyer/internal/aa;->valueOf(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "Install referrer is allowed"

    .line 53
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_28} :catch_3b
    .catchall {:try_start_18 .. :try_end_28} :catchall_30

    const/4 p0, 0x1

    return p0

    :cond_2a
    const-string p0, "Install referrer is not allowed"

    .line 63
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return v2

    :catchall_30
    move-exception p0

    const-string v1, "An error occurred while trying to verify manifest : "

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 57
    :catch_3b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Class "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final AFKeystoreWrapper(Landroid/content/Context;)V
    .registers 4

    .line 68
    invoke-static {p1}, Lcom/appsflyer/internal/cg;->values(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 69
    :cond_7
    invoke-virtual {p0}, Lcom/appsflyer/internal/cj;->AFInAppEventParameterName()V

    .line 71
    :try_start_a
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    const-string v1, "Connecting to Install Referrer Library..."

    .line 72
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/appsflyer/internal/cg$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/appsflyer/internal/cg$1;-><init>(Lcom/appsflyer/internal/cg;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception p1

    const-string v0, "referrerClient -> startConnection"

    .line 154
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.appsflyer.internal.cg.AnonymousClass1 (com.appsflyer.internal.cg$1)
.class final Lcom/appsflyer/internal/cg$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/cg;->AFKeystoreWrapper(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/internal/cg;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/cg;Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iput-object p2, p0, Lcom/appsflyer/internal/cg$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsflyer/internal/cg$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .registers 2

    const-string v0, "Install Referrer service disconnected"

    .line 150
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .registers 10

    const-string v0, "instant"

    const-string v1, "ReferrerClient: InstallReferrer is not ready"

    const-string v2, "err"

    .line 76
    iget-object v3, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v3, v3, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v3, v3, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/cg$1;->val$context:Landroid/content/Context;

    const-string v5, "com.android.vending"

    invoke-static {v4, v5}, Lcom/appsflyer/internal/aa;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "api_ver"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v3, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v3, v3, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/cg$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "api_ver_name"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "response"

    if-eq p1, v3, :cond_16c

    if-eqz p1, :cond_7e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4e

    const-string p1, "responseCode not found."

    .line 141
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    goto/16 :goto_17a

    :cond_4e
    const-string p1, "InstallReferrer DEVELOPER_ERROR"

    .line 133
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "DEVELOPER_ERROR"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17a

    :cond_5e
    const-string p1, "InstallReferrer FEATURE_NOT_SUPPORTED"

    .line 125
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17a

    .line 129
    :cond_6e
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "SERVICE_UNAVAILABLE"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "InstallReferrer not supported"

    .line 130
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    goto/16 :goto_17a

    .line 82
    :cond_7e
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v3, "OK"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_87
    const-string p1, "InstallReferrer connected"

    .line 84
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->isReady()Z

    move-result p1

    if-eqz p1, :cond_13c

    .line 86
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b2

    .line 89
    iget-object v3, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v3, v3, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    const-string v4, "val"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v3, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v3, v3, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "referrer"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_b2
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v3

    .line 93
    iget-object v1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v1, v1, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    const-string v5, "clk"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v1, v1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "click_ts"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v3

    .line 96
    iget-object v1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v1, v1, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    const-string v5, "install"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v1, v1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v5, "install_begin_ts"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_f3
    .catchall {:try_start_87 .. :try_end_f3} :catchall_147

    .line 101
    :try_start_f3
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    move-result v3

    .line 102
    iget-object v4, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v4, v4, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_109
    .catch Ljava/lang/NoSuchMethodError; {:try_start_f3 .. :try_end_109} :catch_109
    .catchall {:try_start_f3 .. :try_end_109} :catchall_147

    :catch_109
    :try_start_109
    const-string v0, "click_server_ts"

    .line 108
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampServerSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "install_begin_server_ts"

    .line 109
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampServerSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "install_version"

    .line 110
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_109 .. :try_end_12c} :catch_12c
    .catchall {:try_start_109 .. :try_end_12c} :catchall_147

    .line 113
    :catch_12c
    :try_start_12c
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17a

    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "google_custom"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17a

    .line 116
    :cond_13c
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_146
    .catchall {:try_start_12c .. :try_end_146} :catchall_147

    goto :goto_17a

    :catchall_147
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get install referrer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object v0, v0, Lcom/appsflyer/internal/cg;->AFInAppEventType:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17a

    :cond_16c
    const-string p1, "InstallReferrer SERVICE_DISCONNECTED"

    .line 137
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->init(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    iget-object p1, p1, Lcom/appsflyer/internal/cg;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "SERVICE_DISCONNECTED"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17a
    :goto_17a
    const-string p1, "Install Referrer collected locally"

    .line 143
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->this$0:Lcom/appsflyer/internal/cg;

    invoke-virtual {p1}, Lcom/appsflyer/internal/cg;->valueOf()V

    .line 145
    iget-object p1, p0, Lcom/appsflyer/internal/cg$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    return-void
.end method
