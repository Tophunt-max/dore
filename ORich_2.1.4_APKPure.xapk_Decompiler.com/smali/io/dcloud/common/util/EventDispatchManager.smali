###### Class io.dcloud.common.util.EventDispatchManager (io.dcloud.common.util.EventDispatchManager)
.class public Lio/dcloud/common/util/EventDispatchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;
    }
.end annotation


# static fields
.field private static instance:Lio/dcloud/common/util/EventDispatchManager;


# instance fields
.field private dispatchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/util/EventDispatchManager;->dispatchListeners:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lio/dcloud/common/util/EventDispatchManager;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/EventDispatchManager;->instance:Lio/dcloud/common/util/EventDispatchManager;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lio/dcloud/common/util/EventDispatchManager;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lio/dcloud/common/util/EventDispatchManager;->instance:Lio/dcloud/common/util/EventDispatchManager;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lio/dcloud/common/util/EventDispatchManager;

    invoke-direct {v1}, Lio/dcloud/common/util/EventDispatchManager;-><init>()V

    sput-object v1, Lio/dcloud/common/util/EventDispatchManager;->instance:Lio/dcloud/common/util/EventDispatchManager;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 8
    :cond_17
    :goto_17
    sget-object v0, Lio/dcloud/common/util/EventDispatchManager;->instance:Lio/dcloud/common/util/EventDispatchManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/EventDispatchManager;->dispatchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public dispatchEvent(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/EventDispatchManager;->dispatchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_1d

    .line 2
    iget-object v1, p0, Lio/dcloud/common/util/EventDispatchManager;->dispatchListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;

    invoke-interface {v1, p1, p2}, Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1d

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_1d
    :goto_1d
    return v1
.end method

.method public removeListener(Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;)V
    .registers 3

    if-eqz p1, :cond_7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/EventDispatchManager;->dispatchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

###### Class io.dcloud.common.util.EventDispatchManager.ActivityEventDispatchListener (io.dcloud.common.util.EventDispatchManager$ActivityEventDispatchListener)
.class public interface abstract Lio/dcloud/common/util/EventDispatchManager$ActivityEventDispatchListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/EventDispatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityEventDispatchListener"
.end annotation


# virtual methods
.method public abstract onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
.end method
