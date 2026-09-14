###### Class com.taobao.weex.tracing.WXTracing (com.taobao.weex.tracing.WXTracing)
.class public Lcom/taobao/weex/tracing/WXTracing;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/tracing/WXTracing$TraceInfo;,
        Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    }
.end annotation


# static fields
.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/tracing/WXTracing;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentThreadName()Ljava/lang/String;
    .registers 3

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeexJSBridgeThread"

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "JSThread"

    return-object v0

    :cond_13
    const-string v1, "WeeXDomThread"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "DOMThread"

    return-object v0

    .line 104
    :cond_1e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    const-string v0, "UIThread"

    :cond_2a
    return-object v0
.end method

.method public static isAvailable()Z
    .registers 1

    .line 44
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    return v0
.end method

.method public static newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .registers 4

    .line 112
    new-instance v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;-><init>()V

    .line 113
    iput-object p0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->fname:Ljava/lang/String;

    .line 114
    iput-object p1, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result p0

    iput p0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 116
    iput p2, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    return-object v0
.end method

.method public static nextId()I
    .registers 1

    .line 40
    sget-object v0, Lcom/taobao/weex/tracing/WXTracing;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized submit(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    .registers 3

    const-class v0, Lcom/taobao/weex/tracing/WXTracing;

    monitor-enter v0

    .line 48
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getTracingAdapter()Lcom/taobao/weex/adapter/ITracingAdapter;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 50
    invoke-interface {v1, p0}, Lcom/taobao/weex/adapter/ITracingAdapter;->submitTracingEvent(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 52
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

###### Class com.taobao.weex.tracing.WXTracing.TraceEvent (com.taobao.weex.tracing.WXTracing$TraceEvent)
.class public Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/tracing/WXTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceEvent"
.end annotation


# instance fields
.field public classname:Ljava/lang/String;

.field public duration:D

.field public extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public firstScreenFinish:Z

.field public fname:Ljava/lang/String;

.field public iid:Ljava/lang/String;

.field public isSegment:Z

.field public name:Ljava/lang/String;

.field public parentId:I

.field public parentRef:Ljava/lang/String;

.field public parseJsonTime:D

.field public payload:Ljava/lang/String;

.field public ph:Ljava/lang/String;

.field public ref:Ljava/lang/String;

.field public subEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/taobao/weex/tracing/WXTracing$TraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private submitted:Z

.field public tname:Ljava/lang/String;

.field public traceId:I

.field public ts:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentId:I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 82
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 83
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->currentThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public submit()V
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submitted:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submitted:Z

    .line 89
    invoke-static {p0}, Lcom/taobao/weex/tracing/WXTracing;->submit(Lcom/taobao/weex/tracing/WXTracing$TraceEvent;)V

    goto :goto_28

    .line 91
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has been submitted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WXTracing"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    return-void
.end method

###### Class com.taobao.weex.tracing.WXTracing.TraceInfo (com.taobao.weex.tracing.WXTracing$TraceInfo)
.class public Lcom/taobao/weex/tracing/WXTracing$TraceInfo;
.super Ljava/lang/Object;
.source "WXTracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/tracing/WXTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceInfo"
.end annotation


# instance fields
.field public domQueueTime:J

.field public domThreadNanos:J

.field public domThreadStart:J

.field public rootEventId:I

.field public uiQueueTime:J

.field public uiThreadNanos:J

.field public uiThreadStart:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->domThreadStart:J

    .line 126
    iput-wide v0, p0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    return-void
.end method
