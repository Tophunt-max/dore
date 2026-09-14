###### Class io.dcloud.feature.aps.APSFeatureImpl (io.dcloud.feature.aps.APSFeatureImpl)
.class public Lio/dcloud/feature/aps/APSFeatureImpl;
.super Lio/dcloud/common/DHInterface/BaseFeature;
.source "APSFeatureImpl.java"


# static fields
.field public static CLEAR_NOTIFICATION:Ljava/lang/String; = "__CLEAR_NOTIFICATION"

.field public static CLILK_NOTIFICATION:Ljava/lang/String; = "__CLILK_NOTIFICATION"

.field public static CREATE_NOTIFICATION:Ljava/lang/String; = "__CREATE_NOTIFICATION"

.field public static final F_CLEAR_NOTIFICATION:Ljava/lang/String; = "__CLEAR_NOTIFICATION"

.field public static final F_CLILK_NOTIFICATION:Ljava/lang/String; = "__CLILK_NOTIFICATION"

.field public static final F_CREATE_NOTIFICATION:Ljava/lang/String; = "__CREATE_NOTIFICATION"

.field public static final F_REMOVE_NOTIFICATION:Ljava/lang/String; = "__REMOVE_NOTIFICATION"

.field public static PRE:Ljava/lang/String; = null

.field public static REMOVE_NOTIFICATION:Ljava/lang/String; = "__REMOVE_NOTIFICATION"


# instance fields
.field private mNotificationReceiver:Lio/dcloud/feature/aps/NotificationReceiver;

.field protected mPushManager:Lio/dcloud/feature/aps/PushManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/BaseFeature;-><init>()V

    return-void
.end method

.method public static addNeedExecMessage(Landroid/content/Context;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 2

    .line 194
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/feature/aps/PushManager;->addNeedExecMessage(Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method

.method public static addNeedExecReceiveMessage(Landroid/content/Context;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 2

    .line 189
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    .line 190
    invoke-virtual {p0, p1}, Lio/dcloud/feature/aps/PushManager;->addNeedExecReceiveMessage(Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method

.method public static addPushMessage(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 3

    .line 172
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    .line 173
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/aps/PushManager;->addPushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method

.method public static execScript(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 177
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    .line 178
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/aps/PushManager;->execScript(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static initNotification(Landroid/content/Context;)V
    .registers 3

    .line 119
    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    .line 122
    :cond_a
    sget-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->CREATE_NOTIFICATION:Ljava/lang/String;

    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_76

    .line 123
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__CREATE_NOTIFICATION"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->CREATE_NOTIFICATION:Ljava/lang/String;

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__REMOVE_NOTIFICATION"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->REMOVE_NOTIFICATION:Ljava/lang/String;

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__CLEAR_NOTIFICATION"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->CLEAR_NOTIFICATION:Ljava/lang/String;

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/feature/aps/APSFeatureImpl;->PRE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__CLILK_NOTIFICATION"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/feature/aps/APSFeatureImpl;->CLILK_NOTIFICATION:Ljava/lang/String;

    :cond_76
    return-void
.end method

.method public static isNeedDynamicsReceiver(Landroid/content/Context;)Z
    .registers 2

    .line 198
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private registReceiver(Landroid/content/Context;)V
    .registers 4

    .line 108
    invoke-static {p1}, Lio/dcloud/feature/aps/APSFeatureImpl;->isNeedDynamicsReceiver(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 109
    new-instance p1, Lio/dcloud/feature/aps/NotificationReceiver;

    iget-object v0, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lio/dcloud/feature/aps/NotificationReceiver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mNotificationReceiver:Lio/dcloud/feature/aps/NotificationReceiver;

    .line 110
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->CLEAR_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->REMOVE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->CREATE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mNotificationReceiver:Lio/dcloud/feature/aps/NotificationReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2e
    return-void
.end method

.method public static sendCreateNotificationBroadcast(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 4

    .line 183
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p0, p1, p2}, Lio/dcloud/feature/aps/PushManager;->sendCreateNotificationBroadcast(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .registers 3

    .line 156
    :try_start_0
    iget-object p1, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mNotificationReceiver:Lio/dcloud/feature/aps/NotificationReceiver;

    if-eqz p1, :cond_f

    .line 157
    iget-object p1, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mNotificationReceiver:Lio/dcloud/feature/aps/NotificationReceiver;

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_f
    invoke-virtual {p0}, Lio/dcloud/feature/aps/APSFeatureImpl;->loadModules()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    .line 162
    check-cast v0, Lio/dcloud/feature/aps/AbsPushService;

    invoke-virtual {v0}, Lio/dcloud/feature/aps/AbsPushService;->onStop()V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_1f

    :catch_31
    :cond_31
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 5

    .line 79
    :try_start_0
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_11

    .line 80
    iget-object v0, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mPushManager:Lio/dcloud/feature/aps/PushManager;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/dcloud/feature/aps/PushManager;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/BaseFeature;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .registers 3

    .line 90
    invoke-super {p0, p1, p2}, Lio/dcloud/common/DHInterface/BaseFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/aps/APSFeatureImpl;->mPushManager:Lio/dcloud/feature/aps/PushManager;

    .line 93
    invoke-static {p1}, Lio/dcloud/feature/aps/APSFeatureImpl;->initNotification(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, p1}, Lio/dcloud/feature/aps/APSFeatureImpl;->registReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onReceiver(Landroid/content/Intent;)V
    .registers 4

    .line 145
    invoke-super {p0, p1}, Lio/dcloud/common/DHInterface/BaseFeature;->onReceiver(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lio/dcloud/feature/aps/APSFeatureImpl;->loadModules()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    .line 149
    check-cast v1, Lio/dcloud/feature/aps/AbsPushService;

    invoke-virtual {v1, p1}, Lio/dcloud/feature/aps/AbsPushService;->onReceiver(Landroid/content/Intent;)V

    goto :goto_13

    :cond_25
    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 6

    .line 132
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/BaseFeature;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 136
    :cond_a
    invoke-virtual {p0}, Lio/dcloud/feature/aps/APSFeatureImpl;->loadModules()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 137
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;

    .line 139
    check-cast v1, Lio/dcloud/feature/aps/AbsPushService;

    invoke-virtual {v1, p1, p2, p3}, Lio/dcloud/feature/aps/AbsPushService;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V

    goto :goto_1a

    :cond_2c
    return-void
.end method
