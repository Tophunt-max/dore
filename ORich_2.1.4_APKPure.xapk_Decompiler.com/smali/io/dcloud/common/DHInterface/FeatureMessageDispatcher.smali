###### Class io.dcloud.common.DHInterface.FeatureMessageDispatcher (io.dcloud.common.DHInterface.FeatureMessageDispatcher)
.class public Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;,
        Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;
    }
.end annotation


# static fields
.field public static sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;

    .line 2
    instance-of v2, v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;

    if-eqz v2, :cond_6

    .line 3
    check-cast v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;

    iget-object v1, v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;->mFlag:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_22

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static dispatchMessage(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 22
    invoke-static {v0, p0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    :try_start_0
    sget-object v0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;

    .line 2
    instance-of v2, v1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;

    if-eqz v2, :cond_2a

    .line 3
    move-object v2, v1

    check-cast v2, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;

    iget-object v2, v2, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;->mFlag:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4
    new-instance v2, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$1;

    invoke-direct {v2, p1}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    goto :goto_6

    :cond_2a
    if-eqz p1, :cond_6

    .line 12
    new-instance v2, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$2;

    invoke-direct {v2, p1}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$2;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_6

    :catch_35
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    return-void
.end method

.method public static registerListener(Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unregisterListener(Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->sFeatureMessage:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class io.dcloud.common.DHInterface.FeatureMessageDispatcher.AnonymousClass1 (io.dcloud.common.DHInterface.FeatureMessageDispatcher$1)
.class final Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$1;->val$msg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;

    iget-object v0, p0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$1;->val$msg:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;->onReceiver(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.common.DHInterface.FeatureMessageDispatcher.AnonymousClass2 (io.dcloud.common.DHInterface.FeatureMessageDispatcher$2)
.class final Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$2;->val$msg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;

    iget-object v0, p0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$2;->val$msg:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;->onReceiver(Ljava/lang/Object;)V

    return-void
.end method

###### Class io.dcloud.common.DHInterface.FeatureMessageDispatcher.MessageListener (io.dcloud.common.DHInterface.FeatureMessageDispatcher$MessageListener)
.class public interface abstract Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onReceiver(Ljava/lang/Object;)V
.end method

###### Class io.dcloud.common.DHInterface.FeatureMessageDispatcher.StrongMessageListener (io.dcloud.common.DHInterface.FeatureMessageDispatcher$StrongMessageListener)
.class public abstract Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StrongMessageListener"
.end annotation


# instance fields
.field mFlag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher$StrongMessageListener;->mFlag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract onReceiver(Ljava/lang/Object;)V
.end method
