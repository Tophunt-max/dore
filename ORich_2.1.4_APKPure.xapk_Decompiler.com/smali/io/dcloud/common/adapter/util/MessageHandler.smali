###### Class io.dcloud.common.adapter.util.MessageHandler (io.dcloud.common.adapter.util.MessageHandler)
.class public Lio/dcloud/common/adapter/util/MessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;,
        Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;,
        Lio/dcloud/common/adapter/util/MessageHandler$IMessages;
    }
.end annotation


# static fields
.field private static myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/MessageHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postAndWait(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/util/MessageHandler$2;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/util/MessageHandler$2;-><init>(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)V

    .line 8
    sget-object p0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->invoke(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .registers 4

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeCallbacksAndMessages()V
    .registers 0

    return-void
.end method

.method public static sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V
    .registers 7

    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 p0, 0x1

    aput-object p3, v2, p0

    .line 7
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const/4 p0, 0x1

    aput-object p1, v2, p0

    .line 3
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    sget-object p0, Lio/dcloud/common/adapter/util/MessageHandler;->myHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

###### Class io.dcloud.common.adapter.util.MessageHandler.AnonymousClass1 (io.dcloud.common.adapter.util.MessageHandler$1)
.class final Lio/dcloud/common/adapter/util/MessageHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    instance-of v1, v1, Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    if-eqz v1, :cond_2e

    .line 3
    aget-object v0, p1, v0

    check-cast v0, Lio/dcloud/common/adapter/util/MessageHandler$IMessages;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler$IMessages;->execute(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_2e

    :catch_16
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageHandler.handleMessage e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method

###### Class io.dcloud.common.adapter.util.MessageHandler.AnonymousClass2 (io.dcloud.common.adapter.util.MessageHandler$2)
.class final Lio/dcloud/common/adapter/util/MessageHandler$2;
.super Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/util/MessageHandler;->postAndWait(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/MessageHandler$2;->val$c:Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRun(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$2;->val$c:Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;

    invoke-interface {v0, p1}, Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;->run(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.util.MessageHandler.IMessages (io.dcloud.common.adapter.util.MessageHandler$IMessages)
.class public interface abstract Lio/dcloud/common/adapter/util/MessageHandler$IMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMessages"
.end annotation


# virtual methods
.method public abstract execute(Ljava/lang/Object;)V
.end method

###### Class io.dcloud.common.adapter.util.MessageHandler.UncheckedCallable (io.dcloud.common.adapter.util.MessageHandler$UncheckedCallable)
.class public interface abstract Lio/dcloud/common/adapter/util/MessageHandler$UncheckedCallable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UncheckedCallable"
.end annotation


# virtual methods
.method public abstract run(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
.end method

###### Class io.dcloud.common.adapter.util.MessageHandler.WaitableRunnable (io.dcloud.common.adapter.util.MessageHandler$WaitableRunnable)
.class public abstract Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/util/MessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WaitableRunnable"
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mTimeOutKey:Ljava/lang/String;

.field private mValue:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "evalJSSync_time_out"

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mTimeOutKey:Ljava/lang/String;

    return-void
.end method

.method private join()V
    .registers 3

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x1f4

    .line 4
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_11

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mTimeOutKey:Ljava/lang/String;

    iput-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mValue:Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 11
    :catch_11
    :cond_11
    :goto_11
    :try_start_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_f

    throw v0
.end method


# virtual methods
.method public callBack(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mValue:Ljava/lang/Object;

    .line 2
    monitor-enter p0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public invoke(Landroid/os/Handler;)Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 5
    invoke-direct {p0}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->join()V

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mException:Ljava/lang/Exception;

    if-nez p1, :cond_10

    .line 11
    iget-object p1, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mValue:Ljava/lang/Object;

    return-object p1

    .line 12
    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mException:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 13
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Handler.post() returned false"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onRun(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V
.end method

.method public final run()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0, p0}, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->onRun(Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;)V

    .line 2
    iput-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mException:Ljava/lang/Exception;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception v1

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mValue:Ljava/lang/Object;

    .line 5
    iput-object v1, p0, Lio/dcloud/common/adapter/util/MessageHandler$WaitableRunnable;->mException:Ljava/lang/Exception;

    :goto_c
    return-void
.end method
