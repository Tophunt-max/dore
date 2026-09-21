###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule (io.dcloud.feature.weex_websocket.UniWebSocketModule)
.class public Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "UniWebSocketModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

.field private currentId:Ljava/lang/String;

.field private webSocketAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private webSocketEventListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    const-string v0, "WebSocketModule"

    const-string v1, "create new instance"

    .line 56
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 38
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .registers 1

    .line 38
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 38
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 64
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 66
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 67
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol"

    .line 68
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "header"

    .line 69
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    if-nez v3, :cond_3f

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    .line 75
    :cond_3f
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    return-void

    .line 79
    :cond_50
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_65

    .line 80
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_65
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v3

    .line 83
    new-instance v4, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    invoke-direct {v4, p0, v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 85
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 86
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 87
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 88
    invoke-interface {v3, v1, v2, p1, v4}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    .line 89
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->currentId:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_93} :catch_94

    goto :goto_9a

    :catch_94
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 93
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 121
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 123
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    .line 124
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 125
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_3f

    if-eqz v1, :cond_33

    .line 129
    :try_start_2f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_33} :catch_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_3f

    .line 134
    :catch_33
    :cond_33
    :try_start_33
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, v2, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    goto :goto_45

    :catch_3f
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 136
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 184
    new-instance v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)V

    .line 201
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_17

    .line 202
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 204
    :cond_17
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1a
    return-void
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 164
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    .line 165
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 166
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 174
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    .line 175
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 153
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    .line 154
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 143
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    .line 144
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_26

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_e

    :cond_26
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 105
    :try_start_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 108
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 111
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-void
.end method

###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule.AnonymousClass1 (io.dcloud.feature.weex_websocket.UniWebSocketModule$1)
.class Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;
.super Ljava/lang/Object;
.source "UniWebSocketModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close session with instance id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    iget-object v1, v1, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketModule"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 189
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->destroy()V

    goto :goto_35

    .line 192
    :cond_4b
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$402(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;

    .line 195
    :cond_59
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 196
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    :cond_6a
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$502(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

###### Class io.dcloud.feature.weex_websocket.UniWebSocketModule.WebSocketEventListener (io.dcloud.feature.weex_websocket.UniWebSocketModule$WebSocketEventListener)
.class Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
.super Ljava/lang/Object;
.source "UniWebSocketModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketEventListener"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private onClose:Lcom/taobao/weex/bridge/JSCallback;

.field private onError:Lcom/taobao/weex/bridge/JSCallback;

.field private onMessage:Lcom/taobao/weex/bridge/JSCallback;

.field private onOpen:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .registers 7

    .line 251
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_40

    .line 252
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 253
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 255
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "wasClean"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 260
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 267
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_2e

    .line 268
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 269
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 270
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 273
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 274
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 6

    const-string v0, "data"

    .line 232
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_37

    .line 233
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    iget-object v2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :try_start_13
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "@type"

    .line 237
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "base64"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 238
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 240
    :cond_2b
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_32

    .line 243
    :catch_2f
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_32
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_37
    return-void
.end method

.method public onOpen()V
    .registers 4

    .line 222
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_15

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_15
    return-void
.end method
