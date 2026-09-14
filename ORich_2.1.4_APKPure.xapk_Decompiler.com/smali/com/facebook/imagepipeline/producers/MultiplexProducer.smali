###### Class com.facebook.imagepipeline.producers.MultiplexProducer (com.facebook.imagepipeline.producers.MultiplexProducer)
.class public abstract Lcom/facebook/imagepipeline/producers/MultiplexProducer;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final EXTRAS_STARTED_AS_PREFETCH:Ljava/lang/String; = "started_as_prefetch"


# instance fields
.field private final mDedupedRequestsCountKey:Ljava/lang/String;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mKeepCancelledFetchAsLowPriority:Z

.field final mMultiplexers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer;>;"
        }
    .end annotation
.end field

.field private final mProducerName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputProducer",
            "producerName",
            "dedupedRequestsCountKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;-><init>(Lcom/facebook/imagepipeline/producers/Producer;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/Producer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputProducer",
            "producerName",
            "dedupedRequestsCountKey",
            "keepCancelledFetchAsLowPriority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mMultiplexers:Ljava/util/Map;

    .line 81
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mKeepCancelledFetchAsLowPriority:Z

    .line 82
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mProducerName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mDedupedRequestsCountKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mDedupedRequestsCountKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mKeepCancelledFetchAsLowPriority:Z

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Lcom/facebook/imagepipeline/producers/Producer;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mProducerName:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized createAndPutNewMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer;"
        }
    .end annotation

    monitor-enter p0

    .line 132
    :try_start_1
    new-instance v0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mMultiplexers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 134
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected declared-synchronized getExistingMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mMultiplexers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract getKey(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")TK;"
        }
    .end annotation
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "context"
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

    .line 89
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiplexProducer#produceResults"

    .line 90
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 93
    :cond_b
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mProducerName:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->getKey(Lcom/facebook/imagepipeline/producers/ProducerContext;)Ljava/lang/Object;

    move-result-object v0

    :cond_18
    const/4 v1, 0x0

    .line 104
    monitor-enter p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_46

    .line 105
    :try_start_1a
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->getExistingMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    move-result-object v2

    if-nez v2, :cond_25

    .line 107
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->createAndPutNewMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    move-result-object v2

    const/4 v1, 0x1

    .line 110
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_43

    .line 114
    :try_start_26
    invoke-virtual {v2, p1, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addNewConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v1, :cond_39

    .line 118
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isPrefetch()Z

    move-result p1

    invoke-static {p1}, Lcom/facebook/common/util/TriState;->valueOf(Z)Lcom/facebook/common/util/TriState;

    move-result-object p1

    .line 117
    invoke-static {v2, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$000(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/common/util/TriState;)V
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_46

    .line 121
    :cond_39
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 122
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_42
    return-void

    :catchall_43
    move-exception p1

    .line 110
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    .line 121
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_50

    .line 122
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 124
    :cond_50
    throw p1
.end method

.method protected declared-synchronized removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "multiplexer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer;)V"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mMultiplexers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_e

    .line 139
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->mMultiplexers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 141
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.MultiplexProducer.AnonymousClass1 (com.facebook.imagepipeline.producers.MultiplexProducer$1)
.class synthetic Lcom/facebook/imagepipeline/producers/MultiplexProducer$1;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.imagepipeline.producers.MultiplexProducer.Multiplexer (com.facebook.imagepipeline.producers.MultiplexProducer$Multiplexer)
.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Multiplexer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    }
.end annotation


# instance fields
.field private final mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private mLastIntermediateResult:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLastProgress:F

.field private mLastStatus:I

.field private mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Lcom/facebook/common/internal/Sets;->newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 220
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/common/util/TriState;)V
    .registers 2

    .line 163
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumerContextPair",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "TT;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 293
    new-instance v0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method private closeSafely(Ljava/io/Closeable;)V
    .registers 3
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 556
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    :goto_d
    return-void
.end method

.method private declared-synchronized computeIsIntermediateResultExpected()Z
    .registers 3

    monitor-enter p0

    .line 423
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 424
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    .line 425
    monitor-exit p0

    return v0

    :cond_20
    const/4 v0, 0x0

    .line 428
    monitor-exit p0

    return v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized computeIsPrefetch()Z
    .registers 3

    monitor-enter p0

    .line 405
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 406
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isPrefetch()Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    if-nez v1, :cond_7

    const/4 v0, 0x0

    .line 407
    monitor-exit p0

    return v0

    :cond_20
    const/4 v0, 0x1

    .line 410
    monitor-exit p0

    return v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized computePriority()Lcom/facebook/imagepipeline/common/Priority;
    .registers 4

    monitor-enter p0

    .line 440
    :try_start_1
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 441
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 442
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getPriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/imagepipeline/common/Priority;->getHigherPriority(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    goto :goto_9

    .line 444
    :cond_22
    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startedAsPrefetch"
        }
    .end annotation

    .line 361
    monitor-enter p0

    .line 362
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 363
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-nez v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 366
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 367
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 368
    monitor-exit p0

    return-void

    .line 371
    :cond_2f
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 372
    new-instance v11, Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 374
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    .line 375
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v4

    .line 377
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getCallerContext()Ljava/lang/Object;

    move-result-object v5

    .line 378
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    .line 379
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v7

    .line 380
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v8

    .line 381
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    .line 382
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/ProducerListener2;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;)V

    iput-object v11, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 383
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->putExtras(Ljava/util/Map;)V

    .line 384
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->isSet()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 385
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    const-string v1, "started_as_prefetch"

    .line 386
    invoke-virtual {p1}, Lcom/facebook/common/util/TriState;->asBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 385
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    :cond_87
    new-instance p1, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/imagepipeline/producers/MultiplexProducer$1;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 390
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 392
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_1 .. :try_end_92} :catchall_9c

    .line 393
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$800(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Lcom/facebook/imagepipeline/producers/Producer;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void

    :catchall_9c
    move-exception p1

    .line 392
    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1
.end method

.method private declared-synchronized updateIsIntermediateResultExpected()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 416
    monitor-exit p0

    return-object v0

    .line 419
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsIntermediateResultExpected()Z

    move-result v1

    .line 418
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsIntermediateResultExpectedNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateIsPrefetch()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 398
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 399
    monitor-exit p0

    return-object v0

    .line 401
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computeIsPrefetch()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setIsPrefetchNoCallbacks(Z)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updatePriority()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 434
    monitor-exit p0

    return-object v0

    .line 436
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->computePriority()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setPriorityNoCallbacks(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addNewConsumer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .registers 10
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
            ")Z"
        }
    .end annotation

    .line 235
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 246
    monitor-enter p0

    .line 247
    :try_start_5
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->getExistingMultiplexer(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    move-result-object v1

    if-eq v1, p0, :cond_12

    const/4 p1, 0x0

    .line 248
    monitor-exit p0

    return p1

    .line 250
    :cond_12
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsPrefetch()Ljava/util/List;

    move-result-object v1

    .line 252
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updatePriority()Ljava/util/List;

    move-result-object v2

    .line 253
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->updateIsIntermediateResultExpected()Ljava/util/List;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 255
    iget v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 256
    iget v6, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    .line 257
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_60

    .line 259
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 260
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 261
    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    .line 263
    monitor-enter v0

    .line 265
    :try_start_34
    monitor-enter p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_5d

    .line 266
    :try_start_35
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    if-eq v4, v1, :cond_3b

    const/4 v4, 0x0

    goto :goto_43

    :cond_3b
    if-eqz v4, :cond_43

    .line 269
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v1, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v4

    .line 271
    :cond_43
    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_5a

    if-eqz v4, :cond_54

    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-lez v1, :cond_4e

    .line 275
    :try_start_4b
    invoke-interface {p1, v5}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 277
    :cond_4e
    invoke-interface {p1, v4, v6}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 278
    invoke-direct {p0, v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 280
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5d

    .line 282
    invoke-direct {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    const/4 p1, 0x1

    return p1

    :catchall_5a
    move-exception p1

    .line 271
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p1

    :catchall_5d
    move-exception p1

    .line 280
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw p1

    :catchall_60
    move-exception p1

    .line 257
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method

.method public onCancelled(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "forwardingConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;)V"
        }
    .end annotation

    .line 518
    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_7

    .line 521
    monitor-exit p0

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 524
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    .line 525
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    .line 526
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    .line 527
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 528
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    .line 530
    sget-object p1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->startInputProducerIfHasAttachedConsumers(Lcom/facebook/common/util/TriState;)V

    return-void

    :catchall_1a
    move-exception p1

    .line 528
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public onFailure(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/lang/Throwable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 449
    monitor-enter p0

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_7

    .line 452
    monitor-exit p0

    return-void

    .line 455
    :cond_7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 457
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 458
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 459
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 461
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_51

    .line 463
    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 464
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 465
    monitor-enter v1

    .line 466
    :try_start_2f
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 467
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    .line 468
    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$900(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 469
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 470
    monitor-exit v1

    goto :goto_22

    :catchall_4d
    move-exception p1

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_4d

    throw p1

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    .line 461
    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public onNextResult(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/io/Closeable;I)V
    .registers 10
    .param p2    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "consumer",
            "closeableObject",
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;TT;I)V"
        }
    .end annotation

    .line 480
    monitor-enter p0

    .line 482
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_7

    .line 483
    monitor-exit p0

    return-void

    .line 486
    :cond_7
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->closeSafely(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 487
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 489
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    .line 491
    invoke-static {p3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isNotLast(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 492
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-virtual {v2, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->cloneOrNull(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastIntermediateResult:Ljava/io/Closeable;

    .line 493
    iput p3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastStatus:I

    goto :goto_38

    .line 495
    :cond_2c
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 496
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mKey:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->removeMultiplexer(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    .line 498
    :goto_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_90

    .line 500
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 502
    monitor-enter v2

    .line 503
    :try_start_46
    invoke-static {p3}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->isLast(I)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 504
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 505
    invoke-interface {v3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    .line 506
    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$900(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 507
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    if-eqz v3, :cond_72

    .line 508
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mMultiplexProducerContext:Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->getExtras()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putExtras(Ljava/util/Map;)V

    .line 510
    :cond_72
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/ProducerContext;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$1000(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    :cond_83
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v3, p2, p3}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    .line 513
    monitor-exit v2

    goto :goto_39

    :catchall_8c
    move-exception p1

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_46 .. :try_end_8e} :catchall_8c

    throw p1

    :cond_8f
    return-void

    :catchall_90
    move-exception p1

    .line 498
    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p1
.end method

.method public onProgressUpdate(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forwardingConsumer",
            "progress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/MultiplexProducer<",
            "TK;TT;>.Multiplexer.ForwardingConsumer;F)V"
        }
    .end annotation

    .line 535
    monitor-enter p0

    .line 537
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mForwardingConsumer:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;

    if-eq v0, p1, :cond_7

    .line 538
    monitor-exit p0

    return-void

    .line 541
    :cond_7
    iput p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mLastProgress:F

    .line 542
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->mConsumerContextPairs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 543
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    .line 545
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 546
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 547
    monitor-enter v0

    .line 548
    :try_start_1d
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    .line 549
    monitor-exit v0

    goto :goto_10

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw p1

    :cond_29
    return-void

    :catchall_2a
    move-exception p1

    .line 543
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.MultiplexProducer.Multiplexer.AnonymousClass1 (com.facebook.imagepipeline.producers.MultiplexProducer$Multiplexer$1)
.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->addCallbacks(Landroid/util/Pair;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

.field final synthetic val$consumerContextPair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Landroid/util/Pair;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$consumerContextPair"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 8

    .line 303
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    monitor-enter v0

    .line 304
    :try_start_3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$100(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    .line 306
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$100(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 307
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$200(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Lcom/facebook/imagepipeline/producers/BaseProducerContext;

    move-result-object v3

    move-object v4, v2

    goto :goto_3e

    .line 309
    :cond_26
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v3}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$300(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$400(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v4

    .line 311
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$500(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v5

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_3f

    :cond_3c
    move-object v3, v2

    move-object v4, v3

    :goto_3e
    move-object v5, v4

    .line 314
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_74

    .line 316
    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    .line 317
    invoke-static {v4}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    .line 318
    invoke-static {v5}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    if-eqz v3, :cond_68

    .line 322
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->this$0:Lcom/facebook/imagepipeline/producers/MultiplexProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer;->access$600(Lcom/facebook/imagepipeline/producers/MultiplexProducer;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->isPrefetch()Z

    move-result v0

    if-nez v0, :cond_65

    .line 323
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 324
    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->setPriorityNoCallbacks(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    goto :goto_68

    .line 327
    :cond_65
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->cancel()V

    :cond_68
    :goto_68
    if-eqz v1, :cond_73

    .line 331
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->val$consumerContextPair:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/imagepipeline/producers/Consumer;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    :cond_73
    return-void

    :catchall_74
    move-exception v1

    .line 314
    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public onIsIntermediateResultExpectedChanged()V
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    .line 343
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$500(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsIntermediateResultExpectedChanged(Ljava/util/List;)V

    return-void
.end method

.method public onIsPrefetchChanged()V
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$300(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnIsPrefetchChanged(Ljava/util/List;)V

    return-void
.end method

.method public onPriorityChanged()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$1;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->access$400(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/BaseProducerContext;->callOnPriorityChanged(Ljava/util/List;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.MultiplexProducer.Multiplexer.ForwardingConsumer (com.facebook.imagepipeline.producers.MultiplexProducer$Multiplexer$ForwardingConsumer)
.class Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;
.super Lcom/facebook/imagepipeline/producers/BaseConsumer;
.source "MultiplexProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardingConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/BaseConsumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 564
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;Lcom/facebook/imagepipeline/producers/MultiplexProducer$1;)V
    .registers 3

    .line 564
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;)V

    return-void
.end method


# virtual methods
.method protected onCancellationImpl()V
    .registers 3

    .line 596
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiplexProducer#onCancellation"

    .line 597
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 599
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->onCancelled(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1a

    .line 601
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 602
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    .line 601
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 602
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 604
    :cond_24
    throw v0
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

    .line 582
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiplexProducer#onFailure"

    .line 583
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 585
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->onFailure(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1a

    .line 587
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 588
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_19
    return-void

    :catchall_1a
    move-exception p1

    .line 587
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 588
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 590
    :cond_24
    throw p1
.end method

.method protected onNewResultImpl(Ljava/io/Closeable;I)V
    .registers 4
    .param p1    # Ljava/io/Closeable;
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

    .line 568
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiplexProducer#onNewResult"

    .line 569
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 571
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->onNextResult(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;Ljava/io/Closeable;I)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1a

    .line 573
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 574
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_19
    return-void

    :catchall_1a
    move-exception p1

    .line 573
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 574
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 576
    :cond_24
    throw p1
.end method

.method protected bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 564
    check-cast p1, Ljava/io/Closeable;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->onNewResultImpl(Ljava/io/Closeable;I)V

    return-void
.end method

.method protected onProgressUpdateImpl(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 610
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "MultiplexProducer#onProgressUpdate"

    .line 611
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 613
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;->this$1:Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer;->onProgressUpdate(Lcom/facebook/imagepipeline/producers/MultiplexProducer$Multiplexer$ForwardingConsumer;F)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_1a

    .line 615
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 616
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_19
    return-void

    :catchall_1a
    move-exception p1

    .line 615
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 616
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 618
    :cond_24
    throw p1
.end method
