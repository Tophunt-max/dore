###### Class com.taobao.weex.appfram.websocket.IWebSocketAdapter (com.taobao.weex.appfram.websocket.IWebSocketAdapter)
.class public interface abstract Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
.super Ljava/lang/Object;
.source "IWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
    }
.end annotation


# static fields
.field public static final HEADER_SEC_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"


# virtual methods
.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract send(Ljava/lang/String;)V
.end method

###### Class com.taobao.weex.appfram.websocket.IWebSocketAdapter.EventListener (com.taobao.weex.appfram.websocket.IWebSocketAdapter$EventListener)
.class public interface abstract Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
.super Ljava/lang/Object;
.source "IWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public abstract onOpen()V
.end method
