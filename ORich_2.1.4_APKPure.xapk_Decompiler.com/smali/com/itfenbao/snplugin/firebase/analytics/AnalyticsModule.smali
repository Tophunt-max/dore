###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule)
.class public Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;
.super Lio/dcloud/feature/uniapp/common/UniModule;
.source "AnalyticsModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/common/UniModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInstanceId(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 4
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 36
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    .line 45
    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;

    invoke-direct {v1, p0, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Landroid/content/Context;)V

    invoke-interface {p1, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :catch_12
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    new-instance v1, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;

    invoke-direct {v1, p0, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/Exception;)V

    invoke-interface {p1, v1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public getAppInstanceId_Sync()Ljava/lang/String;
    .registers 2
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
        uiThread = false
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGaid(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 5
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;

    invoke-direct {v2, p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    .line 80
    :cond_1d
    new-instance v0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;

    invoke-direct {v0, p0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V

    invoke-interface {p1, v0}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method public synthetic lambda$getGaid$0$AnalyticsModule(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
    .registers 4

    .line 74
    new-instance v0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;

    invoke-direct {v0, p0, p2}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$getGaid$1$AnalyticsModule(Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 5

    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_13
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_8} :catch_e
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_19

    :catch_9
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->printStackTrace()V

    goto :goto_17

    :catch_e
    move-exception p1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->printStackTrace()V

    goto :goto_17

    :catch_13
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_17
    const-string p1, ""

    .line 74
    :goto_19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;

    invoke-direct {v1, p0, p2, p1}, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 9
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 90
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_60

    .line 99
    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "name"

    .line 100
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 102
    new-instance p1, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :cond_1e
    const-string v2, "params"

    .line 108
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2f

    .line 110
    new-instance p1, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_2f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 120
    :cond_50
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    new-instance p1, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;

    invoke-direct {p1, p0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V

    invoke-interface {p2, p1}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void

    :catch_60
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    new-instance v0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;

    invoke-direct {v0, p0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;-><init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/Exception;)V

    invoke-interface {p2, v0}, Lio/dcloud/feature/uniapp/bridge/UniJSCallback;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lio/dcloud/feature/uniapp/annotation/UniJSMethod;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->mUniSDKInstance:Lio/dcloud/feature/uniapp/AbsSDKInstance;

    invoke-interface {v0}, Lio/dcloud/feature/uniapp/AbsSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass1 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$1)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->getAppInstanceId(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/Exception;)V
    .registers 4

    .line 39
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {p0, p2, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass2 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$2)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->getAppInstanceId(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Landroid/content/Context;)V
    .registers 4

    .line 46
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p0, p2, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass3 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$3)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->lambda$getGaid$0(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field final synthetic val$finalAdid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/String;)V
    .registers 4

    .line 74
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;->val$finalAdid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gaid"

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$3;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass4 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$4)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->getGaid(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "google play service \u4e0d\u53ef\u7528"

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass5 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$5)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Ljava/lang/Exception;)V
    .registers 4

    .line 93
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {p0, p2, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$5;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass6 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$6)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "[name] is required"

    .line 104
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$6;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass7 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$7)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, -0x1

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "[params] is required"

    .line 112
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$7;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.AnalyticsModule.AnonymousClass8 (com.itfenbao.snplugin.firebase.analytics.AnalyticsModule$8)
.class Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;
.super Lcom/alibaba/fastjson/JSONObject;
.source "AnalyticsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->logEvent(Lcom/alibaba/fastjson/JSONObject;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;


# direct methods
.method constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;->this$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 p1, 0x0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    const-string v0, "success"

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule$8;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw (com.itfenbao.snplugin.firebase.analytics.-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw)
.class public final synthetic Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iget-object v1, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$01EknqoW59olm4XHGRSW9jajjWw;->f$2:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    invoke-virtual {v0, v1, v2}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->lambda$getGaid$1$AnalyticsModule(Landroid/content/Context;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;)V

    return-void
.end method

###### Class com.itfenbao.snplugin.firebase.analytics.$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw (com.itfenbao.snplugin.firebase.analytics.-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw)
.class public final synthetic Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

.field public final synthetic f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iput-object p2, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    iput-object p3, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$0:Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;

    iget-object v1, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$1:Lio/dcloud/feature/uniapp/bridge/UniJSCallback;

    iget-object v2, p0, Lcom/itfenbao/snplugin/firebase/analytics/-$$Lambda$AnalyticsModule$SmeTqOEPFqXnKuoOB2huwusaOfw;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/itfenbao/snplugin/firebase/analytics/AnalyticsModule;->lambda$getGaid$0$AnalyticsModule(Lio/dcloud/feature/uniapp/bridge/UniJSCallback;Ljava/lang/String;)V

    return-void
.end method
