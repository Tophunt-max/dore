###### Class com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck (com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck)
.class public Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;
.super Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;
.source "AnimationBackendDelegateWithInactivityCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
        ">",
        "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final INACTIVITY_CHECK_POLLING_TIME_MS:J = 0x3e8L

.field static final INACTIVITY_THRESHOLD_MS:J = 0x7d0L


# instance fields
.field private mInactivityCheckPollingTimeMs:J

.field private mInactivityCheckScheduled:Z

.field private mInactivityListener:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInactivityThresholdMs:J

.field private final mIsInactiveCheck:Ljava/lang/Runnable;

.field private mLastDrawnTimeMs:J

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 7
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackend;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "animationBackend",
            "inactivityListener",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckScheduled:Z

    const-wide/16 v0, 0x7d0

    .line 68
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityThresholdMs:J

    const-wide/16 v0, 0x3e8

    .line 69
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckPollingTimeMs:J

    .line 76
    new-instance p1, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;

    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mIsInactiveCheck:Ljava/lang/Runnable;

    .line 99
    iput-object p2, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityListener:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    .line 100
    iput-object p3, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 101
    iput-object p4, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$002(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckScheduled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->isInactive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityListener:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->maybeScheduleInactivityCheck()V

    return-void
.end method

.method public static createForBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            ":",
            "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;",
            ">(TT;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->createForBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static createForBackend(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "backend",
            "inactivityListener",
            "monotonicClock",
            "scheduledExecutorServiceForUiThread"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/AnimationBackend;",
            ">(TT;",
            "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;-><init>(Lcom/facebook/fresco/animation/backend/AnimationBackend;Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;Lcom/facebook/common/time/MonotonicClock;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private isInactive()Z
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mLastDrawnTimeMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityThresholdMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private declared-synchronized maybeScheduleInactivityCheck()V
    .registers 6

    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckScheduled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckScheduled:Z

    .line 139
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mIsInactiveCheck:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckPollingTimeMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 142
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mLastDrawnTimeMs:J

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegate;->drawFrame(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    .line 108
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->maybeScheduleInactivityCheck()V

    return p1
.end method

.method public getInactivityCheckPollingTimeMs()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckPollingTimeMs:J

    return-wide v0
.end method

.method public getInactivityThresholdMs()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityThresholdMs:J

    return-wide v0
.end method

.method public setInactivityCheckPollingTimeMs(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityCheckPollingTimeMs"
        }
    .end annotation

    .line 121
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityCheckPollingTimeMs:J

    return-void
.end method

.method public setInactivityListener(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;)V
    .registers 2
    .param p1    # Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityListener"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityListener:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    return-void
.end method

.method public setInactivityThresholdMs(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inactivityThresholdMs"
        }
    .end annotation

    .line 129
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->mInactivityThresholdMs:J

    return-void
.end method

###### Class com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck.AnonymousClass1 (com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck$1)
.class Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;
.super Ljava/lang/Object;
.source "AnimationBackendDelegateWithInactivityCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;


# direct methods
.method constructor <init>(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    monitor-enter v0

    .line 81
    :try_start_3
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->access$002(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;Z)Z

    .line 82
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->access$100(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 83
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->access$200(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 84
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->access$200(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;->onInactive()V

    goto :goto_28

    .line 87
    :cond_23
    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$1;->this$0:Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;

    invoke-static {v1}, Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;->access$300(Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;)V

    .line 89
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

###### Class com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck.InactivityListener (com.facebook.fresco.animation.backend.AnimationBackendDelegateWithInactivityCheck$InactivityListener)
.class public interface abstract Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck$InactivityListener;
.super Ljava/lang/Object;
.source "AnimationBackendDelegateWithInactivityCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/backend/AnimationBackendDelegateWithInactivityCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InactivityListener"
.end annotation


# virtual methods
.method public abstract onInactive()V
.end method
