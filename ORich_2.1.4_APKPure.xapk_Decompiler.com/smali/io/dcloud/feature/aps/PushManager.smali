###### Class io.dcloud.feature.aps.PushManager (io.dcloud.feature.aps.PushManager)
.class Lio/dcloud/feature/aps/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field protected static mPushManager:Lio/dcloud/feature/aps/PushManager;


# instance fields
.field apsFeatureImpl:Lio/dcloud/feature/aps/APSFeatureImpl;

.field public mAppsmMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/aps/PushMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseAbsPushService:Lio/dcloud/feature/aps/AbsPushService;

.field protected mNeedExecMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/aps/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedExecMessages_receive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/aps/PushMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mWebViewCallbackIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mBaseAbsPushService:Lio/dcloud/feature/aps/AbsPushService;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages_receive:Ljava/util/ArrayList;

    return-void
.end method

.method private addWindowCloseListener(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 372
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 373
    new-instance v0, Lio/dcloud/feature/aps/PushManager$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/aps/PushManager$2;-><init>(Lio/dcloud/feature/aps/PushManager;)V

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;
    .registers 1

    .line 82
    invoke-static {p0}, Lio/dcloud/feature/aps/APSFeatureImpl;->initNotification(Landroid/content/Context;)V

    .line 83
    sget-object p0, Lio/dcloud/feature/aps/PushManager;->mPushManager:Lio/dcloud/feature/aps/PushManager;

    if-nez p0, :cond_e

    .line 84
    new-instance p0, Lio/dcloud/feature/aps/PushManager;

    invoke-direct {p0}, Lio/dcloud/feature/aps/PushManager;-><init>()V

    sput-object p0, Lio/dcloud/feature/aps/PushManager;->mPushManager:Lio/dcloud/feature/aps/PushManager;

    .line 86
    :cond_e
    sget-object p0, Lio/dcloud/feature/aps/PushManager;->mPushManager:Lio/dcloud/feature/aps/PushManager;

    return-object p0
.end method


# virtual methods
.method public addNeedExecMessage(Lio/dcloud/feature/aps/PushMessage;)V
    .registers 3

    .line 237
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 238
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    :cond_f
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNeedExecReceiveMessage(Lio/dcloud/feature/aps/PushMessage;)V
    .registers 3

    .line 244
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages_receive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 5

    if-nez p1, :cond_4

    .line 226
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    .line 228
    :cond_4
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchEvent(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__Mkey__Push__.execCallback_Push(\'%s\', \'%s\', %s);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    instance-of v2, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v2, :cond_28

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plus.push."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_28
    const-string v1, "click"

    .line 187
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_68

    .line 188
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 189
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/feature/aps/PushMessage;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    aput-object p3, v7, v3

    .line 191
    invoke-virtual {v6}, Lio/dcloud/feature/aps/PushMessage;->toJSON()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v0, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 192
    invoke-interface {p1, v6}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    goto :goto_42

    .line 195
    :cond_62
    iget-object p1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_a3

    :cond_68
    const-string v1, "receive"

    .line 197
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 198
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages_receive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 199
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages_receive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/feature/aps/PushMessage;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p2, v7, v4

    aput-object p3, v7, v3

    .line 200
    invoke-virtual {v6}, Lio/dcloud/feature/aps/PushMessage;->toJSON()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v2

    invoke-static {v0, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-interface {p1, v6}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    goto :goto_7e

    .line 204
    :cond_9e
    iget-object p1, p0, Lio/dcloud/feature/aps/PushManager;->mNeedExecMessages_receive:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_a3
    :goto_a3
    return-void
.end method

.method public execScript(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 430
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/DHInterface/IWebview;

    .line 431
    move-object v4, v3

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_c

    .line 432
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "__Mkey__Push__.execCallback_Push(\'%s\', \'%s\', %s);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    instance-of v6, v3, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v6, :cond_4a

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plus.push."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    :cond_4a
    iget-object v5, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_c

    .line 438
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_60
    if-ltz v6, :cond_c

    .line 441
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v1

    aput-object p1, v9, v7

    const/4 v10, 0x2

    aput-object p2, v9, v10

    .line 442
    invoke-static {v4, v9}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 443
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_80

    .line 444
    invoke-interface {v3, v9}, Lio/dcloud/common/DHInterface/IWebview;->executeScript(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_80
    add-int/lit8 v6, v6, -0x1

    goto :goto_60

    :cond_83
    return v2
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/BaseFeature;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 116
    invoke-virtual {p4}, Lio/dcloud/common/DHInterface/BaseFeature;->loadModules()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 119
    invoke-virtual {p4}, Lio/dcloud/common/DHInterface/BaseFeature;->loadModules()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lio/dcloud/feature/aps/AbsPushService;

    goto :goto_33

    .line 121
    :cond_26
    iget-object p4, p0, Lio/dcloud/feature/aps/PushManager;->mBaseAbsPushService:Lio/dcloud/feature/aps/AbsPushService;

    if-nez p4, :cond_31

    .line 122
    new-instance p4, Lio/dcloud/feature/aps/PushManager$1;

    invoke-direct {p4, p0}, Lio/dcloud/feature/aps/PushManager$1;-><init>(Lio/dcloud/feature/aps/PushManager;)V

    iput-object p4, p0, Lio/dcloud/feature/aps/PushManager;->mBaseAbsPushService:Lio/dcloud/feature/aps/AbsPushService;

    .line 134
    :cond_31
    iget-object p4, p0, Lio/dcloud/feature/aps/PushManager;->mBaseAbsPushService:Lio/dcloud/feature/aps/AbsPushService;

    .line 136
    :goto_33
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e6

    goto/16 :goto_97

    :sswitch_40
    const-string v4, "getAllMessage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_49

    goto :goto_97

    :cond_49
    const/4 v2, 0x7

    goto :goto_97

    :sswitch_4b
    const-string v4, "getClientInfoAsync"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_97

    :cond_54
    const/4 v2, 0x6

    goto :goto_97

    :sswitch_56
    const-string v4, "getClientInfo"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5f

    goto :goto_97

    :cond_5f
    const/4 v2, 0x5

    goto :goto_97

    :sswitch_61
    const-string v4, "clear"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_97

    :cond_6a
    const/4 v2, 0x4

    goto :goto_97

    :sswitch_6c
    const-string v4, "addEventListener"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_75

    goto :goto_97

    :cond_75
    const/4 v2, 0x3

    goto :goto_97

    :sswitch_77
    const-string v4, "remove"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_80

    goto :goto_97

    :cond_80
    const/4 v2, 0x2

    goto :goto_97

    :sswitch_82
    const-string v4, "setAutoNotification"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8b

    goto :goto_97

    :cond_8b
    const/4 v2, 0x1

    goto :goto_97

    :sswitch_8d
    const-string v4, "createMessage"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_96

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :goto_97
    packed-switch v2, :pswitch_data_108

    goto :goto_e3

    .line 170
    :pswitch_9b
    invoke-virtual {p0, v0}, Lio/dcloud/feature/aps/PushManager;->getAllMessages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e4

    :pswitch_a0
    if-eqz p4, :cond_aa

    .line 144
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p1, p2}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfoAsync(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto :goto_e3

    .line 146
    :cond_aa
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "{code:-1,message:\'no push platform\'}"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_e3

    :pswitch_b9
    if-eqz p4, :cond_e3

    .line 139
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p4, p1}, Lio/dcloud/feature/aps/AbsPushService;->getClientInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e4

    :pswitch_c4
    if-eqz p4, :cond_e3

    .line 156
    invoke-virtual {p4, v1, v0}, Lio/dcloud/feature/aps/AbsPushService;->clear(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e3

    :pswitch_ca
    if-eqz p4, :cond_e3

    .line 161
    invoke-virtual {p4, v1, p1, p3}, Lio/dcloud/feature/aps/AbsPushService;->addEventListener(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;)V

    goto :goto_e3

    :pswitch_d0
    if-eqz p4, :cond_e3

    .line 166
    invoke-virtual {p4, v1, p3, v0}, Lio/dcloud/feature/aps/AbsPushService;->remove(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_e3

    :pswitch_d6
    if-eqz p4, :cond_e3

    .line 174
    invoke-virtual {p4, p1, p3, v0}, Lio/dcloud/feature/aps/AbsPushService;->setAutoNotification(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Ljava/lang/String;)Z

    goto :goto_e3

    :pswitch_dc
    if-eqz p4, :cond_e3

    .line 151
    invoke-virtual {p4, p1, p3, v0, v1}, Lio/dcloud/feature/aps/AbsPushService;->createMessage(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e4

    :cond_e3
    :goto_e3
    const/4 p1, 0x0

    :goto_e4
    return-object p1

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x412ddc95 -> :sswitch_8d
        -0x3a095744 -> :sswitch_82
        -0x37b5077c -> :sswitch_77
        -0x254d19b3 -> :sswitch_6c
        0x5a5b64d -> :sswitch_61
        0x2ff1a70f -> :sswitch_56
        0x35617cad -> :sswitch_4b
        0x7a15ef1c -> :sswitch_40
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_d6
        :pswitch_d0
        :pswitch_ca
        :pswitch_c4
        :pswitch_b9
        :pswitch_a0
        :pswitch_9b
    .end packed-switch
.end method

.method public findPushMessage(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/aps/PushMessage;
    .registers 10

    if-nez p1, :cond_4

    .line 289
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez p1, :cond_48

    .line 294
    iget-object p1, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    iget-object v3, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_1a

    .line 299
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/feature/aps/PushMessage;

    .line 300
    iget-object v6, v5, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    move-object v0, v5

    goto :goto_1a

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_48
    if-eqz p1, :cond_63

    .line 307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4e
    if-ge v1, v2, :cond_63

    .line 309
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/feature/aps/PushMessage;

    .line 310
    iget-object v4, v3, Lio/dcloud/feature/aps/PushMessage;->mUUID:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    move-object v0, v3

    goto :goto_63

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_63
    :goto_63
    return-object v0
.end method

.method public findWebViewCallbacks(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_26

    .line 337
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 340
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 341
    invoke-direct {p0, p1}, Lio/dcloud/feature/aps/PushManager;->addWindowCloseListener(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_3c

    .line 343
    :cond_1c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    goto :goto_3c

    .line 347
    :cond_26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0, p1}, Lio/dcloud/feature/aps/PushManager;->addWindowCloseListener(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 351
    iget-object p2, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    :goto_3c
    return-object p2
.end method

.method protected getAllMessages(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 400
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 401
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    .line 402
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4b

    .line 403
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_4b

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arr["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/feature/aps/PushMessage;

    .line 407
    invoke-virtual {v4}, Lio/dcloud/feature/aps/PushMessage;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    .line 408
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_4b
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "(function(){var arr = new Array;%s;return arr;})();"

    invoke-static {v0, p1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removePushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 4

    if-nez p1, :cond_4

    .line 264
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->PDR:Ljava/lang/String;

    .line 266
    :cond_4
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_31

    .line 267
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 268
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removePushMessage"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "push"

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public removeWebviewCallback(Lio/dcloud/common/DHInterface/IWebview;)V
    .registers 3

    .line 362
    iget-object v0, p0, Lio/dcloud/feature/aps/PushManager;->mWebViewCallbackIds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendCreateNotificationBroadcast(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V
    .registers 5

    .line 106
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lio/dcloud/feature/aps/APSFeatureImpl;->CREATE_NOTIFICATION:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Lio/dcloud/feature/aps/PushMessage;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

###### Class io.dcloud.feature.aps.PushManager.AnonymousClass1 (io.dcloud.feature.aps.PushManager$1)
.class Lio/dcloud/feature/aps/PushManager$1;
.super Lio/dcloud/feature/aps/AbsPushService;
.source "PushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/aps/PushManager;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/BaseFeature;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/aps/PushManager;


# direct methods
.method constructor <init>(Lio/dcloud/feature/aps/PushManager;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lio/dcloud/feature/aps/PushManager$1;->this$0:Lio/dcloud/feature/aps/PushManager;

    invoke-direct {p0}, Lio/dcloud/feature/aps/AbsPushService;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientInfoAsync(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 9

    .line 130
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const-string v2, "{code:-1,message:\'no push platform\'}"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Lio/dcloud/feature/aps/AbsPushService;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

###### Class io.dcloud.feature.aps.PushManager.AnonymousClass2 (io.dcloud.feature.aps.PushManager$2)
.class Lio/dcloud/feature/aps/PushManager$2;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/aps/PushManager;->addWindowCloseListener(Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/aps/PushManager;


# direct methods
.method constructor <init>(Lio/dcloud/feature/aps/PushManager;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lio/dcloud/feature/aps/PushManager$2;->this$0:Lio/dcloud/feature/aps/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    const-string v0, "window_close"

    .line 376
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "close"

    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_10
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_24

    .line 377
    iget-object p1, p0, Lio/dcloud/feature/aps/PushManager$2;->this$0:Lio/dcloud/feature/aps/PushManager;

    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/aps/PushManager;->removeWebviewCallback(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 378
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method
