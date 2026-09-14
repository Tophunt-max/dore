###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer)
.class public Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;,
        Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;,
        Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final PRODUCER_NAME:Ljava/lang/String; = "PriorityStarvingThrottlingProducer"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mMaxSimultaneousRequests:I

.field private mNumCurrentRequests:I

.field private final mPendingRequests:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/Producer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "maxSimultaneousRequests",
            "executor",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mMaxSimultaneousRequests:I

    .line 46
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 47
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 48
    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;

    invoke-direct {p2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;-><init>()V

    const/16 p3, 0xb

    invoke-direct {p1, p3, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mPendingRequests:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mNumCurrentRequests:I

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)Ljava/util/Queue;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mPendingRequests:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$210(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)I
    .registers 3

    .line 28
    iget v0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mNumCurrentRequests:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mNumCurrentRequests:I

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->produceResultsInternal(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private produceResultsInternal(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 75
    iget-object v1, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v2, "PriorityStarvingThrottlingProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    new-instance v1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;

    iget-object v2, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$1;)V

    iget-object p1, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 55
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v2

    const-string v3, "PriorityStarvingThrottlingProducer"

    .line 56
    invoke-interface {v2, p2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 58
    monitor-enter p0

    .line 59
    :try_start_e
    iget v2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mNumCurrentRequests:I

    iget v3, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mMaxSimultaneousRequests:I

    const/4 v4, 0x1

    if-lt v2, v3, :cond_20

    .line 60
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mPendingRequests:Ljava/util/Queue;

    new-instance v3, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-direct {v3, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;J)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_20
    add-int/2addr v2, v4

    .line 63
    iput v2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->mNumCurrentRequests:I

    const/4 v4, 0x0

    .line 66
    :goto_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_30

    if-nez v4, :cond_2f

    .line 69
    new-instance v2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;J)V

    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->produceResultsInternal(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V

    :cond_2f
    return-void

    :catchall_30
    move-exception p1

    .line 66
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer.AnonymousClass1 (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer$1)
.class synthetic Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$1;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer.Item (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer$Item)
.class Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final consumer:Lcom/facebook/imagepipeline/producers/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final time:J


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "J)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->consumer:Lcom/facebook/imagepipeline/producers/Consumer;

    .line 86
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 87
    iput-wide p3, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->time:J

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer.PriorityComparator (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer$PriorityComparator)
.class Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item<",
            "TT;>;)I"
        }
    .end annotation

    .line 95
    iget-object v0, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    .line 96
    iget-object v1, p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 100
    iget-wide v0, p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->time:J

    long-to-double v0, v0

    iget-wide p1, p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;->time:J

    long-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    .line 103
    :cond_19
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result p1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/common/Priority;->ordinal()I

    move-result p2

    if-le p1, p2, :cond_25

    const/4 p1, -0x1

    return p1

    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "o1",
            "o2"
        }
    .end annotation

    .line 91
    check-cast p1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    check-cast p2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$PriorityComparator;->compare(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)I

    move-result p1

    return p1
.end method

###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer.ThrottlerConsumer (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer$ThrottlerConsumer)
.class Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "PriorityStarvingThrottlingProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThrottlerConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    .line 116
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$1;)V
    .registers 4

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;-><init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/Consumer;)V

    return-void
.end method

.method private onRequestFinished()V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->access$100(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    if-nez v1, :cond_16

    .line 144
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->access$210(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)I

    .line 146
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_28

    if-eqz v1, :cond_27

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->access$400(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;-><init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    return-void

    :catchall_28
    move-exception v1

    .line 146
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method


# virtual methods
.method protected onCancellationImpl()V
    .registers 2

    .line 135
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    .line 136
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    return-void
.end method

.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 130
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    return-void
.end method

.method protected onNewResultImpl(Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 122
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->isLast(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 123
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V

    :cond_10
    return-void
.end method

###### Class com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer.ThrottlerConsumer.AnonymousClass1 (com.facebook.imagepipeline.producers.PriorityStarvingThrottlingProducer$ThrottlerConsumer$1)
.class Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;
.super Ljava/lang/Object;
.source "PriorityStarvingThrottlingProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->onRequestFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;

.field final synthetic val$nextRequest:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$nextRequest"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;->val$nextRequest:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;->this$1:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer;->this$0:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$ThrottlerConsumer$1;->val$nextRequest:Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;->access$300(Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer;Lcom/facebook/imagepipeline/producers/PriorityStarvingThrottlingProducer$Item;)V

    return-void
.end method
