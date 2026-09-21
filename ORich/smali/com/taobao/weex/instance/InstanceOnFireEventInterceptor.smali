###### Class com.taobao.weex.instance.InstanceOnFireEventInterceptor (com.taobao.weex.instance.InstanceOnFireEventInterceptor)
.class public abstract Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;
.super Ljava/lang/Object;
.source "InstanceOnFireEventInterceptor.java"


# instance fields
.field private listenEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->listenEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInterceptEvent(Ljava/lang/String;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->listenEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->listenEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public getListenEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->listenEvents:Ljava/util/List;

    return-object v0
.end method

.method public abstract onFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public onInterceptFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_3

    return-void

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->listenEvents:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->onFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_e
    return-void
.end method
