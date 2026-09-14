###### Class io.dcloud.feature.barcode2.decoding.InactivityTimer (io.dcloud.feature.barcode2.decoding.InactivityTimer)
.class public final Lio/dcloud/feature/barcode2/decoding/InactivityTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/barcode2/decoding/InactivityTimer$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_SECONDS:I = 0x12c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer$DaemonThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer$DaemonThreadFactory;-><init>(Lio/dcloud/feature/barcode2/decoding/InactivityTimer$1;)V

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object v1, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 8
    iput-object p1, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->activity:Landroid/app/Activity;

    .line 9
    invoke-virtual {p0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->onActivity()V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_b
    return-void
.end method


# virtual methods
.method public onActivity()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->cancel()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/dcloud/feature/barcode2/decoding/FinishListener;

    iget-object v2, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lio/dcloud/feature/barcode2/decoding/FinishListener;-><init>(Landroid/app/Activity;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x12c

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->cancel()V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/barcode2/decoding/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

###### Class io.dcloud.feature.barcode2.decoding.InactivityTimer.AnonymousClass1 (io.dcloud.feature.barcode2.decoding.InactivityTimer$1)
.class synthetic Lio/dcloud/feature/barcode2/decoding/InactivityTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.feature.barcode2.decoding.InactivityTimer.DaemonThreadFactory (io.dcloud.feature.barcode2.decoding.InactivityTimer$DaemonThreadFactory)
.class final Lio/dcloud/feature/barcode2/decoding/InactivityTimer$DaemonThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/barcode2/decoding/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaemonThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/barcode2/decoding/InactivityTimer$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lio/dcloud/feature/barcode2/decoding/InactivityTimer$DaemonThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
