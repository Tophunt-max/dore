###### Class com.facebook.imagepipeline.producers.NetworkFetchProducer (com.facebook.imagepipeline.producers.NetworkFetchProducer)
.class public Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field public static final INTERMEDIATE_RESULT_PRODUCER_EVENT:Ljava/lang/String; = "intermediate_result"

.field public static final PRODUCER_NAME:Ljava/lang/String; = "NetworkFetchProducer"

.field private static final READ_SIZE:I = 0x4000

.field static final TIME_BETWEEN_PARTIAL_RESULTS_MS:J = 0x64L


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field protected final mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/PooledByteBufferFactory;Lcom/facebook/common/memory/ByteArrayPool;Lcom/facebook/imagepipeline/producers/NetworkFetcher;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledByteBufferFactory",
            "byteArrayPool",
            "networkFetcher"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    .line 59
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 60
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onFailure(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onCancellation(Lcom/facebook/imagepipeline/producers/FetchState;)V

    return-void
.end method

.method protected static calculateProgress(II)F
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloaded",
            "total"
        }
    .end annotation

    if-lez p1, :cond_6

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    neg-int p0, p0

    int-to-double v0, p0

    const-wide v2, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v0, v2

    .line 136
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/FetchState;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 223
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_12
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected static notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 7
    .param p2    # Lcom/facebook/imagepipeline/common/BytesRange;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "status",
            "responseBytesRange",
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/PooledByteBufferOutputStream;",
            "I",
            "Lcom/facebook/imagepipeline/common/BytesRange;",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    const/4 v0, 0x0

    .line 185
    :try_start_9
    new-instance v1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_26

    .line 186
    :try_start_e
    invoke-virtual {v1, p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->setBytesRange(Lcom/facebook/imagepipeline/common/BytesRange;)V

    .line 187
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->parseMetaData()V

    .line 188
    sget-object p2, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->NETWORK:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setEncodedImageOrigin(Lcom/facebook/imagepipeline/image/EncodedImageOrigin;)V

    .line 189
    invoke-interface {p3, v1, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_23

    .line 191
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 192
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_23
    move-exception p1

    move-object v0, v1

    goto :goto_27

    :catchall_26
    move-exception p1

    .line 191
    :goto_27
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 192
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 193
    throw p1
.end method

.method private onCancellation(Lcom/facebook/imagepipeline/producers/FetchState;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithCancellation(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    return-void
.end method

.method private onFailure(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "e"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 201
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 203
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private shouldPropagateIntermediateResults(Lcom/facebook/imagepipeline/producers/FetchState;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_c
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->shouldPropagate(Lcom/facebook/imagepipeline/producers/FetchState;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected getSystemUptime()J
    .registers 3

    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleFinalResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "fetchState"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->getExtraMap(Lcom/facebook/imagepipeline/producers/FetchState;I)Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v2

    const-string v3, "NetworkFetchProducer"

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onUltimateProducerReached(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 166
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    const-string v1, "network"

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->putOriginExtra(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getOnNewResultStatusFlags()I

    move-result v0

    or-int/2addr v0, v2

    .line 170
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getResponseBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    .line 172
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object p2

    .line 167
    invoke-static {p1, v0, v1, v2, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method protected maybeHandleIntermediateResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "fetchState"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->getSystemUptime()J

    move-result-wide v0

    .line 143
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->shouldPropagateIntermediateResults(Lcom/facebook/imagepipeline/producers/FetchState;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 144
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getLastIntermediateResultTimeMs()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3b

    .line 146
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/FetchState;->setLastIntermediateResultTimeMs(J)V

    .line 148
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    .line 150
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v1

    const-string v2, "NetworkFetchProducer"

    const-string v3, "intermediate_result"

    .line 149
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerEvent(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getOnNewResultStatusFlags()I

    move-result v0

    .line 154
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getResponseBytesRange()Lcom/facebook/imagepipeline/common/BytesRange;

    move-result-object v1

    .line 155
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    .line 156
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/FetchState;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object p2

    .line 151
    invoke-static {p1, v0, v1, v2, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->notifyConsumer(Lcom/facebook/common/memory/PooledByteBufferOutputStream;ILcom/facebook/imagepipeline/common/BytesRange;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    :cond_3b
    return-void
.end method

.method protected onResponse(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/io/InputStream;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "responseData",
            "responseContentLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p3, :cond_9

    .line 98
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v0, p3}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream(I)Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v0

    goto :goto_f

    .line 100
    :cond_9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mPooledByteBufferFactory:Lcom/facebook/common/memory/PooledByteBufferFactory;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBufferFactory;->newOutputStream()Lcom/facebook/common/memory/PooledByteBufferOutputStream;

    move-result-object v0

    .line 102
    :goto_f
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lcom/facebook/common/memory/ByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 105
    :cond_19
    :goto_19
    :try_start_19
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_38

    if-lez v2, :cond_19

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->write([BII)V

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->maybeHandleIntermediateResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V

    .line 109
    invoke-virtual {v0}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result v2

    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->calculateProgress(II)F

    move-result v2

    .line 110
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/FetchState;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    goto :goto_19

    .line 113
    :cond_38
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-virtual {v0}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->size()I

    move-result p3

    invoke-interface {p2, p1, p3}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->onFetchCompletion(Lcom/facebook/imagepipeline/producers/FetchState;I)V

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->handleFinalResult(Lcom/facebook/common/memory/PooledByteBufferOutputStream;Lcom/facebook/imagepipeline/producers/FetchState;)V
    :try_end_44
    .catchall {:try_start_19 .. :try_end_44} :catchall_4d

    .line 116
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p1, v1}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    return-void

    :catchall_4d
    move-exception p1

    .line 116
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-interface {p2, v1}, Lcom/facebook/common/memory/ByteArrayPool;->release(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0}, Lcom/facebook/common/memory/PooledByteBufferOutputStream;->close()V

    .line 118
    throw p1
.end method

.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 5
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
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object v0

    const-string v1, "NetworkFetchProducer"

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->createFetchState(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/FetchState;

    move-result-object p1

    .line 67
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    new-instance v0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V

    invoke-interface {p2, p1, v0}, Lcom/facebook/imagepipeline/producers/NetworkFetcher;->fetch(Lcom/facebook/imagepipeline/producers/FetchState;Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.producers.NetworkFetchProducer.AnonymousClass1 (com.facebook.imagepipeline.producers.NetworkFetchProducer$1)
.class Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;
.super Ljava/lang/Object;
.source "NetworkFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/NetworkFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

.field final synthetic val$fetchState:Lcom/facebook/imagepipeline/producers/FetchState;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fetchState"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->val$fetchState:Lcom/facebook/imagepipeline/producers/FetchState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->val$fetchState:Lcom/facebook/imagepipeline/producers/FetchState;

    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->access$100(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->val$fetchState:Lcom/facebook/imagepipeline/producers/FetchState;

    invoke-static {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->access$000(Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;Lcom/facebook/imagepipeline/producers/FetchState;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Ljava/io/InputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "responseLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NetworkFetcher->onResponse"

    .line 73
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->this$0:Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer$1;->val$fetchState:Lcom/facebook/imagepipeline/producers/FetchState;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/producers/NetworkFetchProducer;->onResponse(Lcom/facebook/imagepipeline/producers/FetchState;Ljava/io/InputStream;I)V

    .line 76
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 77
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1b
    return-void
.end method
