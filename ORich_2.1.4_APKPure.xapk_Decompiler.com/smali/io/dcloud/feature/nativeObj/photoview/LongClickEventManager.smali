###### Class io.dcloud.feature.nativeObj.photoview.LongClickEventManager (io.dcloud.feature.nativeObj.photoview.LongClickEventManager)
.class public Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;
    }
.end annotation


# static fields
.field private static instance:Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;


# instance fields
.field private clicks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->clicks:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->instance:Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->instance:Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    invoke-direct {v1}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;-><init>()V

    sput-object v1, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->instance:Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 7
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->instance:Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;

    return-object v0
.end method


# virtual methods
.method public addOnlongClickListener(Ljava/lang/String;Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->clicks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fireEvent(Lorg/json/JSONObject;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->clicks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->clicks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;

    if-eqz v1, :cond_a

    .line 4
    invoke-virtual {v1, p1}, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->onLongClickListener(Lorg/json/JSONObject;)V

    goto :goto_a

    :cond_24
    return-void
.end method

.method public removeOnLongClickListener(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;->clicks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class io.dcloud.feature.nativeObj.photoview.LongClickEventManager.OnLongClickListener (io.dcloud.feature.nativeObj.photoview.LongClickEventManager$OnLongClickListener)
.class public abstract Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnLongClickListener"
.end annotation


# instance fields
.field callbackIds:Ljava/lang/String;

.field pwebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method protected constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->pwebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 3
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->callbackIds:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCallbackIds()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->callbackIds:Ljava/lang/String;

    return-object v0
.end method

.method public getPwebview()Lio/dcloud/common/DHInterface/IWebview;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/nativeObj/photoview/LongClickEventManager$OnLongClickListener;->pwebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object v0
.end method

.method public abstract onLongClickListener(Lorg/json/JSONObject;)V
.end method
