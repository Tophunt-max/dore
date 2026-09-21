###### Class com.taobao.weex.appfram.websocket.WebSocketModule (com.taobao.weex.appfram.websocket.WebSocketModule)
.class public Lcom/taobao/weex/appfram/websocket/WebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WebSocketModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

.field private webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    const-string v0, "WebSocketModule"

    const-string v1, "create new instance"

    .line 50
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    return-object p1
.end method

.method private reportErrorIfNoAdapter()Z
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-nez v0, :cond_14

    .line 153
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const-string v1, "No implementation found for IWebSocketAdapter"

    if-eqz v0, :cond_d

    .line 154
    invoke-virtual {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError(Ljava/lang/String;)V

    :cond_d
    const-string v0, "WebSocketModule"

    .line 156
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-eqz v0, :cond_1c

    const-string v0, "WebSocketModule"

    const-string v1, "close"

    .line 56
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 59
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 60
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_37

    .line 61
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 62
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v1, p1, p2, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    :cond_37
    return-void
.end method

.method public WebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-eqz v0, :cond_1c

    const-string v0, "WebSocketModule"

    const-string v1, "close"

    .line 69
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 72
    :cond_1c
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 73
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_37

    .line 74
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 75
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    :cond_37
    return-void
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_17

    .line 90
    sget-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v0

    if-eqz p1, :cond_12

    .line 93
    :try_start_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_12

    .line 98
    :catch_12
    :cond_12
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {p1, v0, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    :cond_17
    return-void
.end method

.method public destroy()V
    .registers 4

    .line 132
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_17

    .line 145
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 147
    :cond_17
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1a
    return-void
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_7

    .line 119
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$302(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_7
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_7

    .line 126
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$402(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_7
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_7

    .line 112
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$202(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_7
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_7

    .line 105
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$102(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_7
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

###### Class com.taobao.weex.appfram.websocket.WebSocketModule.AnonymousClass1 (com.taobao.weex.appfram.websocket.WebSocketModule$1)
.class Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/websocket/WebSocketModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close session with instance id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    iget-object v1, v1, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketModule"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->destroy()V

    .line 139
    :cond_2f
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    return-void
.end method

###### Class com.taobao.weex.appfram.websocket.WebSocketModule.WebSocketEventListener (com.taobao.weex.appfram.websocket.WebSocketModule$WebSocketEventListener)
.class Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/appfram/websocket/WebSocketModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketEventListener"
.end annotation


# instance fields
.field private onClose:Lcom/taobao/weex/bridge/JSCallback;

.field private onError:Lcom/taobao/weex/bridge/JSCallback;

.field private onMessage:Lcom/taobao/weex/bridge/JSCallback;

.field private onOpen:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V
    .registers 3

    .line 162
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V

    return-void
.end method

.method static synthetic access$102(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$202(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_26

    .line 192
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 194
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "wasClean"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_14

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "data"

    .line 204
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .registers 5

    const-string v0, "data"

    .line 177
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_1c

    .line 178
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 180
    :try_start_c
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 181
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_14

    goto :goto_17

    .line 183
    :catch_14
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_17
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public onOpen()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_d

    .line 171
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
