###### Class com.taobao.weex.tracing.Stopwatch (com.taobao.weex.tracing.Stopwatch)
.class public Lcom/taobao/weex/tracing/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;
    }
.end annotation


# static fields
.field private static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/taobao/weex/tracing/Stopwatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private splits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private startMillis:J

.field private startNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    return-void
.end method

.method public static getProcessEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 76
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tack()D

    .line 77
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-object v1, v1, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/Stopwatch;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    return-object v1

    .line 81
    :cond_21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static lastTickStamp()J
    .registers 2

    .line 103
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 105
    :try_start_6
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-wide v0

    :catchall_11
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static millisUntilNow(J)D
    .registers 4

    .line 124
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static nanosToMillis(J)D
    .registers 4

    long-to-double p0, p0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static prepare()V
    .registers 2

    .line 38
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_10

    .line 39
    new-instance v1, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-direct {v1}, Lcom/taobao/weex/tracing/Stopwatch;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public static split(Ljava/lang/String;)V
    .registers 7

    .line 59
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 61
    :try_start_6
    new-instance v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;-><init>()V

    .line 62
    sget-object v1, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v2, v2, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J

    .line 63
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tackAndTick()D

    move-result-wide v4

    .line 64
    iput-object p0, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->fname:Ljava/lang/String;

    .line 65
    iput-wide v4, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->duration:D

    .line 66
    iput-wide v2, v0, Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;->startMillis:J

    .line 67
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/tracing/Stopwatch;

    iget-object p0, p0, Lcom/taobao/weex/tracing/Stopwatch;->splits:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static tack()D
    .registers 7

    .line 86
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 88
    :try_start_6
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v1, v1, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1d

    const-string v5, "Stopwatch"

    const-string v6, "Should call Stopwatch.tick() before Stopwatch.tack() called"

    .line 90
    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 93
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/Stopwatch;

    iput-wide v3, v0, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    .line 94
    invoke-static {v5, v6}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-wide v0

    :catchall_2f
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public static tackAndTick()D
    .registers 2

    .line 114
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tack()D

    move-result-wide v0

    .line 115
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tick()V

    return-wide v0
.end method

.method public static tick()V
    .registers 6

    .line 44
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 46
    :try_start_6
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->prepare()V

    .line 47
    sget-object v0, Lcom/taobao/weex/tracing/Stopwatch;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    iget-wide v1, v1, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    const-string v1, "Stopwatch"

    const-string v2, "Stopwatch is not reset"

    .line 48
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_20
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/weex/tracing/Stopwatch;->startNanos:J

    .line 51
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/tracing/Stopwatch;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/tracing/Stopwatch;->startMillis:J
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3d
    :goto_3d
    return-void
.end method

###### Class com.taobao.weex.tracing.Stopwatch.ProcessEvent (com.taobao.weex.tracing.Stopwatch$ProcessEvent)
.class public Lcom/taobao/weex/tracing/Stopwatch$ProcessEvent;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/tracing/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessEvent"
.end annotation


# instance fields
.field public duration:D

.field public fname:Ljava/lang/String;

.field public startMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
