###### Class io.dcloud.common.DHInterface.message.ActionBus (io.dcloud.common.DHInterface.message.ActionBus)
.class public Lio/dcloud/common/DHInterface/message/ActionBus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lio/dcloud/common/DHInterface/message/ActionBus;


# instance fields
.field observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/common/DHInterface/message/EnumUniqueID;",
            "Lio/dcloud/common/DHInterface/message/AbsActionObserver;",
            ">;"
        }
    .end annotation
.end field

.field supportMessageType:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lio/dcloud/common/DHInterface/message/action/IAction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/DHInterface/message/ActionBus;

    invoke-direct {v0}, Lio/dcloud/common/DHInterface/message/ActionBus;-><init>()V

    sput-object v0, Lio/dcloud/common/DHInterface/message/ActionBus;->instance:Lio/dcloud/common/DHInterface/message/ActionBus;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->supportMessageType:Ljava/util/HashSet;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->observers:Ljava/util/HashMap;

    .line 18
    iget-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->supportMessageType:Ljava/util/HashSet;

    const-class v1, Lio/dcloud/common/DHInterface/message/action/BadgeSyncAction;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getInstance()Lio/dcloud/common/DHInterface/message/ActionBus;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/message/ActionBus;->instance:Lio/dcloud/common/DHInterface/message/ActionBus;

    return-object v0
.end method


# virtual methods
.method public observeAction(Lio/dcloud/common/DHInterface/message/AbsActionObserver;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->observers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/message/AbsActionObserver;->getObserverUniqueID()Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    .line 6
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->observers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/message/AbsActionObserver;->getObserverUniqueID()Lio/dcloud/common/DHInterface/message/EnumUniqueID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public sendToBus(Lio/dcloud/common/DHInterface/message/action/IAction;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    iget-object v1, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->supportMessageType:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 7
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->observers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/message/AbsActionObserver;

    if-nez v1, :cond_2a

    goto :goto_1b

    .line 15
    :cond_2a
    invoke-virtual {v1, p1}, Lio/dcloud/common/DHInterface/message/AbsActionObserver;->handleMessage(Lio/dcloud/common/DHInterface/message/action/IAction;)Z

    goto :goto_1b

    :cond_2e
    const/4 p1, 0x1

    return p1
.end method

.method public stopObserve(Lio/dcloud/common/DHInterface/message/EnumUniqueID;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/DHInterface/message/ActionBus;->observers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
