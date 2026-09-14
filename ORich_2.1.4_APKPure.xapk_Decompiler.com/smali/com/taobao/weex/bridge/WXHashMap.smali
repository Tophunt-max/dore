###### Class com.taobao.weex.bridge.WXHashMap (com.taobao.weex.bridge.WXHashMap)
.class public Lcom/taobao/weex/bridge/WXHashMap;
.super Ljava/util/HashMap;
.source "WXHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b9851f247f57e21L


# instance fields
.field private instancesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public getInstanceStack()Ljava/util/Stack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getStackTopInstanceId()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    goto :goto_13

    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_13
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 40
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 42
    :cond_15
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1e
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setStackTopInstance(Ljava/lang/String;)V
    .registers 3

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXHashMap;->instancesStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXHashMap;->mTag:Ljava/lang/String;

    return-void
.end method
