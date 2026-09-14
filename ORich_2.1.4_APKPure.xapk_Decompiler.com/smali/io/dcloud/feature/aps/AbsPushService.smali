###### Class io.dcloud.feature.aps.AbsPushService (io.dcloud.feature.aps.AbsPushService)
.class public abstract Lio/dcloud/feature/aps/AbsPushService;
.super Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;
.source "AbsPushService.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IReflectAble;


# static fields
.field public static final CLIENTID:Ljava/lang/String; = "clientid_"

.field public static CLIENT_INFO_TEMPLATE:Ljava/lang/String; = "{id:\'%s\',token:\'%s\',clientid:\'%s\',appid:\'%s\',appkey:\'%s\'}"

.field public static PUSH_CLIENT_ID_NAME:Ljava/lang/String; = "clientid"

.field public static PUSH_DB_DEFAULT_AUTO_NOTIFICATION:Ljava/lang/String; = "auto_notification"

.field public static PUSH_DB_NAME:Ljava/lang/String; = "push_db_name"

.field private static final SP_READ_MODE:I


# instance fields
.field public appid:Ljava/lang/String;

.field public appkey:Ljava/lang/String;

.field public appsecret:Ljava/lang/String;

.field public clientid:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->appid:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->appkey:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->appsecret:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/aps/AbsPushService;)Landroid/os/Handler;
    .registers 1

    .line 26
    iget-object p0, p0, Lio/dcloud/feature/aps/AbsPushService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getAutoNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 128
    sget-object p1, Lio/dcloud/feature/aps/AbsPushService;->PUSH_DB_NAME:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 130
    sget-object p1, Lio/dcloud/feature/aps/AbsPushService;->PUSH_DB_DEFAULT_AUTO_NOTIFICATION:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addEventListener(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    invoke-static {p1}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p1

    const/4 v0, 0x2

    .line 147
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p1, p2, v0}, Lio/dcloud/feature/aps/PushManager;->findWebViewCallbacks(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    .line 149
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 150
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p1, p2, p3, v0}, Lio/dcloud/feature/aps/PushManager;->dispatchEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 154
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lio/dcloud/feature/aps/APSFeatureImpl;->CLEAR_NOTIFICATION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_appId"

    .line 155
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public createMessage(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 160
    invoke-static {p4}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object v2

    .line 161
    new-instance v6, Lio/dcloud/feature/aps/PushMessage;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-direct {v6, p2, p1}, Lio/dcloud/feature/aps/PushMessage;-><init>(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)V

    .line 162
    iget-wide p1, v6, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_21

    .line 164
    invoke-virtual {v2, p3, v6}, Lio/dcloud/feature/aps/PushManager;->addPushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    .line 165
    invoke-virtual {v2, p4, p3, v6}, Lio/dcloud/feature/aps/PushManager;->sendCreateNotificationBroadcast(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    goto :goto_35

    .line 167
    :cond_21
    new-instance p1, Lio/dcloud/feature/aps/AbsPushService$3;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p3

    move-object v4, v6

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/aps/AbsPushService$3;-><init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/feature/aps/PushManager;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;Landroid/content/Context;)V

    iget-wide p2, v6, Lio/dcloud/feature/aps/PushMessage;->mDelay:J

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    .line 175
    :goto_35
    iget-object p1, v6, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doHandleAction(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getClientInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 61
    sget-object p1, Lio/dcloud/feature/aps/AbsPushService;->CLIENT_INFO_TEMPLATE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->appid:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->appkey:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getClientInfoAsync(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 13

    .line 66
    iget-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 67
    sget-object v2, Lio/dcloud/feature/aps/AbsPushService;->CLIENT_INFO_TEMPLATE:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v0, 0x3

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->appid:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->appkey:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 68
    sget v7, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_66

    .line 70
    :cond_2c
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientid_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 71
    new-instance v8, Lio/dcloud/feature/aps/AbsPushService$1;

    invoke-direct {v8, p0, p1, p2}, Lio/dcloud/feature/aps/AbsPushService$1;-><init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    .line 82
    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lio/dcloud/feature/aps/AbsPushService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/dcloud/feature/aps/AbsPushService$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lio/dcloud/feature/aps/AbsPushService$2;-><init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-wide/16 p1, 0x3a98

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_66
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lio/dcloud/common/DHInterface/BaseFeature$BaseModule;->init(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p1}, Lio/dcloud/feature/aps/AbsPushService;->initClientId(Landroid/content/Context;)V

    return-void
.end method

.method public initClientId(Landroid/content/Context;)V
    .registers 4

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 108
    sget-object v0, Lio/dcloud/feature/aps/AbsPushService;->PUSH_CLIENT_ID_NAME:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    return-void
.end method

.method public onReceiver(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public remove(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Lio/dcloud/feature/aps/PushManager;->findPushMessage(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/aps/PushMessage;

    move-result-object p2

    .line 139
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lio/dcloud/feature/aps/APSFeatureImpl;->REMOVE_NOTIFICATION:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    iget v2, p2, Lio/dcloud/feature/aps/PushMessage;->nID:I

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 142
    invoke-virtual {v0, p3, p2}, Lio/dcloud/feature/aps/PushManager;->removePushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method

.method public saveClientId(Landroid/content/Context;)V
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 103
    sget-object v0, Lio/dcloud/feature/aps/AbsPushService;->PUSH_CLIENT_ID_NAME:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setAutoNotification(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 112
    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 113
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    sget-object v0, Lio/dcloud/feature/aps/AbsPushService;->PUSH_DB_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 116
    sget-object p3, Lio/dcloud/feature/aps/AbsPushService;->PUSH_DB_DEFAULT_AUTO_NOTIFICATION:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return p2
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.dcloud.feature.aps.AbsPushService.AnonymousClass1 (io.dcloud.feature.aps.AbsPushService$1)
.class Lio/dcloud/feature/aps/AbsPushService$1;
.super Ljava/lang/Object;
.source "AbsPushService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/aps/AbsPushService;->getClientInfoAsync(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/aps/AbsPushService;

.field final synthetic val$callBackId:Ljava/lang/String;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 4

    .line 71
    iput-object p1, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iput-object p2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/aps/AbsPushService$1;->val$callBackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 12

    .line 74
    sget-object v0, Lio/dcloud/feature/aps/AbsPushService;->PUSH_CLIENT_ID_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    .line 75
    :cond_9
    iget-object p2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    invoke-static {p2}, Lio/dcloud/feature/aps/AbsPushService;->access$000(Lio/dcloud/feature/aps/AbsPushService;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    iget-object p2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v0, p0, Lio/dcloud/feature/aps/AbsPushService$1;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 77
    sget-object p2, Lio/dcloud/feature/aps/AbsPushService;->CLIENT_INFO_TEMPLATE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v2, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v2, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v2, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v2, Lio/dcloud/feature/aps/AbsPushService;->appid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$1;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v2, Lio/dcloud/feature/aps/AbsPushService;->appkey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 78
    iget-object v3, p0, Lio/dcloud/feature/aps/AbsPushService$1;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/feature/aps/AbsPushService$1;->val$callBackId:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 79
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

###### Class io.dcloud.feature.aps.AbsPushService.AnonymousClass2 (io.dcloud.feature.aps.AbsPushService$2)
.class Lio/dcloud/feature/aps/AbsPushService$2;
.super Ljava/lang/Object;
.source "AbsPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/aps/AbsPushService;->getClientInfoAsync(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/aps/AbsPushService;

.field final synthetic val$_sp:Landroid/content/SharedPreferences;

.field final synthetic val$callBackId:Ljava/lang/String;

.field final synthetic val$changeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field final synthetic val$iWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 6

    .line 84
    iput-object p1, p0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iput-object p2, p0, Lio/dcloud/feature/aps/AbsPushService$2;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/feature/aps/AbsPushService$2;->val$callBackId:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/aps/AbsPushService$2;->val$_sp:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lio/dcloud/feature/aps/AbsPushService$2;->val$changeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v1, v1, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 88
    iget-object v1, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v2, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    :cond_13
    iget-object v1, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v1, v1, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 90
    sget-object v1, Lio/dcloud/feature/aps/AbsPushService;->CLIENT_INFO_TEMPLATE:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v4, v4, Lio/dcloud/feature/aps/AbsPushService;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v4, v4, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v4, v4, Lio/dcloud/feature/aps/AbsPushService;->clientid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v4, v4, Lio/dcloud/feature/aps/AbsPushService;->appid:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, v0, Lio/dcloud/feature/aps/AbsPushService$2;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iget-object v4, v4, Lio/dcloud/feature/aps/AbsPushService;->appkey:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 91
    iget-object v5, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v6, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$callBackId:Ljava/lang/String;

    sget v8, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_5f

    .line 93
    :cond_51
    iget-object v11, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$iWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v12, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$callBackId:Ljava/lang/String;

    sget v14, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v13, "{code:-1,message:\'failed,check appkey or appid\'}"

    invoke-static/range {v11 .. v16}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 95
    :goto_5f
    iget-object v1, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$_sp:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lio/dcloud/feature/aps/AbsPushService$2;->val$changeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

###### Class io.dcloud.feature.aps.AbsPushService.AnonymousClass3 (io.dcloud.feature.aps.AbsPushService$3)
.class Lio/dcloud/feature/aps/AbsPushService$3;
.super Ljava/lang/Object;
.source "AbsPushService.java"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/aps/AbsPushService;->createMessage(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/aps/AbsPushService;

.field final synthetic val$_appId:Ljava/lang/String;

.field final synthetic val$_context:Landroid/content/Context;

.field final synthetic val$_message:Lio/dcloud/feature/aps/PushMessage;

.field final synthetic val$pushManager:Lio/dcloud/feature/aps/PushManager;


# direct methods
.method constructor <init>(Lio/dcloud/feature/aps/AbsPushService;Lio/dcloud/feature/aps/PushManager;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;Landroid/content/Context;)V
    .registers 6

    .line 167
    iput-object p1, p0, Lio/dcloud/feature/aps/AbsPushService$3;->this$0:Lio/dcloud/feature/aps/AbsPushService;

    iput-object p2, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$pushManager:Lio/dcloud/feature/aps/PushManager;

    iput-object p3, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_appId:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_message:Lio/dcloud/feature/aps/PushMessage;

    iput-object p5, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 5

    .line 170
    iget-object p1, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$pushManager:Lio/dcloud/feature/aps/PushManager;

    iget-object v0, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_appId:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_message:Lio/dcloud/feature/aps/PushMessage;

    invoke-virtual {p1, v0, v1}, Lio/dcloud/feature/aps/PushManager;->addPushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    .line 171
    iget-object p1, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$pushManager:Lio/dcloud/feature/aps/PushManager;

    iget-object v0, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_context:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_appId:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/aps/AbsPushService$3;->val$_message:Lio/dcloud/feature/aps/PushMessage;

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/feature/aps/PushManager;->sendCreateNotificationBroadcast(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    return-void
.end method
