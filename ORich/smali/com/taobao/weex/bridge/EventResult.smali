###### Class com.taobao.weex.bridge.EventResult (com.taobao.weex.bridge.EventResult)
.class public Lcom/taobao/weex/bridge/EventResult;
.super Ljava/lang/Object;
.source "EventResult.java"


# instance fields
.field private result:Ljava/lang/Object;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/EventResult;->success:Z

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/bridge/EventResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/taobao/weex/bridge/EventResult;->success:Z

    return v0
.end method

.method public onCallback(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/EventResult;->success:Z

    .line 35
    iput-object p1, p0, Lcom/taobao/weex/bridge/EventResult;->result:Ljava/lang/Object;

    return-void
.end method
