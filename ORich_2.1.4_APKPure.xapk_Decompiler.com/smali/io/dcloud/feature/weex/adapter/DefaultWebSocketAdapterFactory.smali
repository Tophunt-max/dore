###### Class io.dcloud.feature.weex.adapter.DefaultWebSocketAdapterFactory (io.dcloud.feature.weex.adapter.DefaultWebSocketAdapterFactory)
.class public Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketAdapterFactory.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .registers 2

    .line 31
    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;-><init>()V

    return-object v0
.end method
