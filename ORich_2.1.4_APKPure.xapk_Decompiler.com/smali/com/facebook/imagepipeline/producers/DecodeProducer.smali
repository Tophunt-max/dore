###### Class com.facebook.imagepipeline.producers.DecodeProducer (com.facebook.imagepipeline.producers.DecodeProducer)
.class public Lcom/facebook/imagepipeline/producers/DecodeProducer;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;,
        Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;,
        Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ENCODED_IMAGE_SIZE:Ljava/lang/String; = "encodedImageSize"

.field public static final EXTRA_BITMAP_BYTES:Ljava/lang/String; = "byteCount"

.field public static final EXTRA_BITMAP_SIZE:Ljava/lang/String; = "bitmapSize"

.field public static final EXTRA_HAS_GOOD_QUALITY:Ljava/lang/String; = "hasGoodQuality"

.field public static final EXTRA_IMAGE_FORMAT_NAME:Ljava/lang/String; = "imageFormat"

.field public static final EXTRA_IS_FINAL:Ljava/lang/String; = "isFinal"

.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field public static final PRODUCER_NAME:Ljava/lang/String; = "DecodeProducer"

.field public static final REQUESTED_IMAGE_SIZE:Ljava/lang/String; = "requestedImageSize"

.field public static final SAMPLE_SIZE:Ljava/lang/String; = "sampleSize"


# instance fields
.field private final mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

.field private final mCloseableReferenceFactory:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

.field private final mDecodeCancellationEnabled:Z

.field private final mDownsampleEnabled:Z

.field private final mDownsampleEnabledForNetwork:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxBitmapSize:I

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private final mReclaimMemoryRunnable:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRecoverFromDecoderOOM:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/ByteArrayPool;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/decoder/ImageDecoder;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZZZLcom/facebook/imagepipeline/producers/Producer;ILcom/facebook/imagepipeline/core/CloseableReferenceFactory;Ljava/lang/Runnable;Lcom/facebook/common/internal/Supplier;)V
    .registers 13
    .param p11    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "byteArrayPool",
            "executor",
            "imageDecoder",
            "progressiveJpegConfig",
            "downsampleEnabled",
            "downsampleEnabledForNetwork",
            "decodeCancellationEnabled",
            "inputProducer",
            "maxBitmapSize",
            "closeableReferenceFactory",
            "reclaimMemoryRunnable",
            "recoverFromDecoderOOM"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/ByteArrayPool;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/decoder/ImageDecoder;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/producers/Producer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;I",
            "Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;",
            "Ljava/lang/Runnable;",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/ByteArrayPool;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    .line 99
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 100
    invoke-static {p3}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    .line 101
    invoke-static {p4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    .line 102
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabled:Z

    .line 103
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabledForNetwork:Z

    .line 104
    invoke-static {p8}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/producers/Producer;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 105
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    .line 106
    iput p9, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mMaxBitmapSize:I

    .line 107
    iput-object p10, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mCloseableReferenceFactory:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    .line 108
    iput-object p11, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mReclaimMemoryRunnable:Ljava/lang/Runnable;

    .line 109
    iput-object p12, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mRecoverFromDecoderOOM:Lcom/facebook/common/internal/Supplier;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabled:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mCloseableReferenceFactory:Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDownsampleEnabledForNetwork:Z

    return p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/lang/Runnable;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mReclaimMemoryRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/common/internal/Supplier;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mRecoverFromDecoderOOM:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 12
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
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DecodeProducer#produceResults"

    .line 118
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 120
    :cond_b
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 123
    new-instance v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    iget v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mMaxBitmapSize:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V

    goto :goto_3e

    .line 127
    :cond_27
    new-instance v4, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mByteArrayPool:Lcom/facebook/common/memory/ByteArrayPool;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;-><init>(Lcom/facebook/common/memory/ByteArrayPool;)V

    .line 128
    new-instance v8, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mDecodeCancellationEnabled:Z

    iget v7, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mMaxBitmapSize:I

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZI)V

    move-object v0, v8

    .line 137
    :goto_3e
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_4d

    .line 139
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 140
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_4c
    return-void

    :catchall_4d
    move-exception p1

    .line 139
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 140
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 142
    :cond_57
    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.DecodeProducer.LocalImagesProgressiveDecoder (com.facebook.imagepipeline.producers.DecodeProducer$LocalImagesProgressiveDecoder)
.class Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalImagesProgressiveDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "decodeCancellationEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "ZI)V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 520
    invoke-direct/range {p0 .. p5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V

    return-void
.end method


# virtual methods
.method protected getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 534
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result p1

    return p1
.end method

.method protected getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
    .registers 2

    const/4 v0, 0x0

    .line 539
    invoke-static {v0, v0, v0}, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->of(IZZ)Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .registers 4
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    monitor-enter p0

    .line 526
    :try_start_1
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$LocalImagesProgressiveDecoder;->isNotLast(I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_10

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    .line 527
    monitor-exit p0

    return p1

    .line 529
    :cond_a
    :try_start_a
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.DecodeProducer.NetworkImagesProgressiveDecoder (com.facebook.imagepipeline.producers.DecodeProducer$NetworkImagesProgressiveDecoder)
.class Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkImagesProgressiveDecoder"
.end annotation


# instance fields
.field private mLastScheduledScanNumber:I

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private final mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;ZI)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "progressiveJpegParser",
            "progressiveJpegConfig",
            "decodeCancellationEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;",
            "Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;",
            "ZI)V"
        }
    .end annotation

    .line 555
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move v5, p7

    .line 556
    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V

    .line 557
    invoke-static {p4}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    .line 558
    invoke-static {p5}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    const/4 p1, 0x0

    .line 559
    iput p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mLastScheduledScanNumber:I

    return-void
.end method


# virtual methods
.method protected getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 591
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->getBestScanEndOffset()I

    move-result p1

    return p1
.end method

.method protected getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->getBestScanNumber()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;->getQualityInfo(I)Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .registers 6
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result v0

    .line 566
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->isNotLast(I)Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->statusHasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_13
    const/4 v1, 0x4

    .line 567
    invoke-static {p2, v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->statusHasFlag(II)Z

    move-result p2

    if-nez p2, :cond_53

    .line 568
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 569
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object p2

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-ne p2, v1, :cond_53

    .line 570
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->parseMoreData(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_55

    const/4 p2, 0x0

    if-nez p1, :cond_33

    .line 571
    monitor-exit p0

    return p2

    .line 573
    :cond_33
    :try_start_33
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->getBestScanNumber()I

    move-result p1

    .line 574
    iget v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mLastScheduledScanNumber:I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_55

    if-gt p1, v1, :cond_3f

    .line 576
    monitor-exit p0

    return p2

    .line 578
    :cond_3f
    :try_start_3f
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;->getNextScanNumberToDecode(I)I

    move-result v1

    if-ge p1, v1, :cond_51

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mProgressiveJpegParser:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;

    .line 579
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/ProgressiveJpegParser;->isEndMarkerRead()Z

    move-result v1
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_55

    if-nez v1, :cond_51

    .line 582
    monitor-exit p0

    return p2

    .line 584
    :cond_51
    :try_start_51
    iput p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$NetworkImagesProgressiveDecoder;->mLastScheduledScanNumber:I
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_55

    .line 586
    :cond_53
    monitor-exit p0

    return v0

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder (com.facebook.imagepipeline.producers.DecodeProducer$ProgressiveDecoder)
.class abstract Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProgressiveDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/CloseableImage;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DECODE_EXCEPTION_MESSAGE_NUM_HEADER_BYTES:I = 0xa


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private mIsFinished:Z

.field private final mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "decodeCancellationEnabled",
            "maxBitmapSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "ZI)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 165
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    const-string p2, "ProgressiveDecoder"

    .line 148
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->TAG:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 167
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getProducerListener()Lcom/facebook/imagepipeline/producers/ProducerListener2;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    .line 168
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 170
    new-instance v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;

    invoke-direct {v0, p0, p1, p3, p5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V

    .line 202
    new-instance p5, Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$500(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget p2, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    invoke-direct {p5, v1, v0, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;I)V

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    .line 203
    new-instance p2, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;

    invoke-direct {p2, p0, p1, p4}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V

    invoke-interface {p3, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .registers 2

    .line 145
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeIncreaseSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 3

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)V
    .registers 1

    .line 145
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    return-void
.end method

.method private doDecode(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v0, p2

    const-string v13, "DecodeProducer"

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    sget-object v2, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v1, v2, :cond_17

    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isNotLast(I)Z

    move-result v1

    if-eqz v1, :cond_17

    return-void

    .line 290
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isFinished()Z

    move-result v1

    if-nez v1, :cond_141

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid(Lcom/facebook/imagepipeline/image/EncodedImage;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_141

    .line 294
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    const-string v2, "unknown"

    if-eqz v1, :cond_33

    .line 296
    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_34

    :cond_33
    move-object v7, v2

    .line 300
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-static/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v6

    const/4 v4, 0x1

    if-eqz v6, :cond_69

    const/16 v5, 0x8

    .line 303
    invoke-static {v0, v5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result v5

    if-nez v5, :cond_69

    const/4 v5, 0x1

    goto :goto_6a

    :cond_69
    const/4 v5, 0x0

    :goto_6a
    const/4 v9, 0x4

    .line 304
    invoke-static {v0, v9}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result v14

    .line 306
    iget-object v15, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v15}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v15

    invoke-virtual {v15}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v15

    if-eqz v15, :cond_93

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v15, Lcom/facebook/imagepipeline/common/ResizeOptions;->width:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/facebook/imagepipeline/common/ResizeOptions;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_94

    :cond_93
    move-object v15, v2

    .line 313
    :goto_94
    :try_start_94
    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->getQueuedTime()J

    move-result-wide v17

    .line 314
    iget-object v1, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v5, :cond_b2

    if-eqz v14, :cond_ad

    goto :goto_b2

    .line 318
    :cond_ad
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I

    move-result v2

    goto :goto_b6

    .line 317
    :cond_b2
    :goto_b2
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v2

    :goto_b6
    if-nez v5, :cond_c0

    if-eqz v14, :cond_bb

    goto :goto_c0

    .line 322
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;

    move-result-object v3

    goto :goto_c2

    .line 319
    :cond_c0
    :goto_c0
    sget-object v3, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    :goto_c2
    move-object v5, v3

    .line 324
    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v14, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v3, v14, v13}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerStart(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_94 .. :try_end_ca} :catchall_13c

    .line 328
    :try_start_ca
    invoke-direct {v11, v12, v2, v5}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->internalDecode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object v14
    :try_end_ce
    .catch Lcom/facebook/imagepipeline/decoder/DecodeException; {:try_start_ca .. :try_end_ce} :catch_f7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_ce} :catch_f4
    .catchall {:try_start_ca .. :try_end_ce} :catchall_13c

    .line 341
    :try_start_ce
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSampleSize()I

    move-result v1
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d2} :catch_f1
    .catchall {:try_start_ce .. :try_end_d2} :catchall_13c

    if-eq v1, v4, :cond_d6

    or-int/lit8 v0, v0, 0x10

    :cond_d6
    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, v17

    move-object v9, v15

    .line 361
    :try_start_dc
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 370
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2, v3, v13, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithSuccess(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 372
    invoke-direct {v11, v12, v14}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->setImageExtras(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;)V

    .line 374
    invoke-direct {v11, v14, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    :try_end_ed
    .catchall {:try_start_dc .. :try_end_ed} :catchall_13c

    .line 376
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void

    :catch_f1
    move-exception v0

    move-object v2, v14

    goto :goto_125

    :catch_f4
    move-exception v0

    const/4 v2, 0x0

    goto :goto_125

    :catch_f7
    move-exception v0

    move-object v2, v0

    .line 330
    :try_start_f9
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getEncodedImage()Lcom/facebook/imagepipeline/image/EncodedImage;

    move-result-object v0

    const-string v14, "ProgressiveDecoder"

    const-string v3, "%s, {uri: %s, firstEncodedBytes: %s, length: %d}"

    new-array v9, v9, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/decoder/DecodeException;->getMessage()Ljava/lang/String;

    move-result-object v19

    const/16 v16, 0x0

    aput-object v19, v9, v16

    aput-object v1, v9, v4

    const/4 v1, 0x2

    const/16 v4, 0xa

    .line 336
    invoke-virtual {v0, v4}, Lcom/facebook/imagepipeline/image/EncodedImage;->getFirstBytesAsHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v1

    const/4 v1, 0x3

    .line 338
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    .line 331
    invoke-static {v14, v3, v9}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    throw v2
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_125} :catch_f4
    .catchall {:try_start_f9 .. :try_end_125} :catchall_13c

    :goto_125
    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-object v9, v15

    .line 346
    :try_start_12a
    invoke-direct/range {v1 .. v10}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 355
    iget-object v2, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v3, v11, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v2, v3, v13, v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->onProducerFinishWithFailure(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 357
    invoke-direct {v11, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_138
    .catchall {:try_start_12a .. :try_end_138} :catchall_13c

    .line 376
    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    return-void

    :catchall_13c
    move-exception v0

    invoke-static/range {p1 .. p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 377
    throw v0

    :cond_141
    :goto_141
    return-void
.end method

.method private getExtraMap(Lcom/facebook/imagepipeline/image/CloseableImage;JLcom/facebook/imagepipeline/image/QualityInfo;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 26
    .param p1    # Lcom/facebook/imagepipeline/image/CloseableImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "image",
            "queueTime",
            "quality",
            "isFinal",
            "imageFormatName",
            "encodedImageSize",
            "requestImageSize",
            "sampleSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            "J",
            "Lcom/facebook/imagepipeline/image/QualityInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 425
    iget-object v6, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerListener:Lcom/facebook/imagepipeline/producers/ProducerListener2;

    iget-object v7, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    const-string v8, "DecodeProducer"

    invoke-interface {v6, v7, v8}, Lcom/facebook/imagepipeline/producers/ProducerListener2;->requiresExtraMap(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a

    const/4 v1, 0x0

    return-object v1

    .line 428
    :cond_1a
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-interface/range {p4 .. p4}, Lcom/facebook/imagepipeline/image/QualityInfo;->isOfGoodEnoughQuality()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    .line 430
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 431
    instance-of v9, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    const-string v10, "sampleSize"

    const-string v11, "requestedImageSize"

    const-string v12, "imageFormat"

    const-string v13, "encodedImageSize"

    const-string v14, "isFinal"

    const-string v15, "hasGoodQuality"

    const-string v0, "queueTime"

    if-eqz v9, :cond_ab

    .line 432
    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 433
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 p1, v1

    const/16 v1, 0x8

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "bitmapSize"

    .line 438
    invoke-interface {v9, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-interface {v9, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-interface {v9, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-interface {v9, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-interface {v9, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-interface {v9, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p9

    .line 445
    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a6

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "byteCount"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_a6
    invoke-static {v9}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_ab
    move-object v1, v5

    .line 451
    new-instance v5, Ljava/util/HashMap;

    const/4 v9, 0x7

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 452
    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {v5, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-interface {v5, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {v5, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-interface {v5, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-interface {v5, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-interface {v5, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {v5}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private handleCancellation()V
    .registers 2

    const/4 v0, 0x1

    .line 504
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 505
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onCancellation()V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    const/4 v0, 0x1

    .line 498
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleResult(Lcom/facebook/imagepipeline/image/CloseableImage;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "decodedImage",
            "status"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    .line 487
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$1100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/CloseableReferenceFactory;->create(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 489
    :try_start_a
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->maybeFinish(Z)V

    .line 490
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 492
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_1c
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 493
    throw p2
.end method

.method private internalDecode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "length",
            "quality"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$800(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$900(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/common/internal/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 386
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$1000(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1
    :try_end_29
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception v1

    if-eqz v0, :cond_46

    .line 392
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$800(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 393
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 396
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$1000(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decode(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    :goto_45
    return-object p1

    .line 389
    :cond_46
    throw v1
.end method

.method private declared-synchronized isFinished()Z
    .registers 2

    monitor-enter p0

    .line 465
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeFinish(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldFinish"
        }
    .end annotation

    .line 474
    monitor-enter p0

    if-eqz p1, :cond_1b

    .line 475
    :try_start_3
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    if-eqz p1, :cond_8

    goto :goto_1b

    .line 478
    :cond_8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onProgressUpdate(F)V

    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mIsFinished:Z

    .line 480
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 481
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->clearJob()V

    return-void

    .line 476
    :cond_1b
    :goto_1b
    :try_start_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    .line 480
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private maybeIncreaseSampleSize(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    sget-object v1, Lcom/facebook/imageformat/DefaultImageFormats;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    if-eq v0, v1, :cond_9

    return-void

    .line 226
    :cond_9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mImageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v0, v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 227
    invoke-static {v0}, Lcom/facebook/imageutils/BitmapUtil;->getPixelSizeForBitmapConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    const/high16 v1, 0x6400000

    .line 229
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSizeJPEG(Lcom/facebook/imagepipeline/image/EncodedImage;II)I

    move-result v0

    .line 230
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSampleSize(I)V

    return-void
.end method

.method private setImageExtras(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/image/CloseableImage;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "image"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_width"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "encoded_height"

    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "encoded_size"

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    instance-of p1, p2, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    if-eqz p1, :cond_4b

    .line 407
    move-object p1, p2

    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3c

    const/4 p1, 0x0

    goto :goto_40

    .line 408
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 409
    :goto_40
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "bitmap_config"

    invoke-interface {v0, v1, p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4b
    if-eqz p2, :cond_56

    .line 412
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getExtras()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/imagepipeline/image/CloseableImage;->setImageExtras(Ljava/util/Map;)V

    :cond_56
    return-void
.end method


# virtual methods
.method protected abstract getIntermediateImageEndOffset(Lcom/facebook/imagepipeline/image/EncodedImage;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation
.end method

.method protected abstract getQualityInfo()Lcom/facebook/imagepipeline/image/QualityInfo;
.end method

.method public onCancellationImpl()V
    .registers 1

    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleCancellation()V

    return-void
.end method

.method public onFailureImpl(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 5
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
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

    .line 236
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "DecodeProducer#onNewResultImpl"

    .line 237
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 239
    :cond_b
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->isLast(I)Z

    move-result v0

    if-eqz v0, :cond_41

    if-nez p1, :cond_27

    .line 242
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is null."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_71

    .line 257
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 258
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_26
    return-void

    .line 244
    :cond_27
    :try_start_27
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->isValid()Z

    move-result v1

    if-nez v1, :cond_41

    .line 245
    new-instance p1, Lcom/facebook/common/util/ExceptionWithNoStacktrace;

    const-string p2, "Encoded image is not valid."

    invoke-direct {p1, p2}, Lcom/facebook/common/util/ExceptionWithNoStacktrace;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->handleError(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_71

    .line 257
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 258
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_40
    return-void

    .line 249
    :cond_41
    :try_start_41
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result p1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_71

    if-nez p1, :cond_51

    .line 257
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_50

    .line 258
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_50
    return-void

    :cond_51
    const/4 p1, 0x4

    .line 252
    :try_start_52
    invoke-static {p2, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->statusHasFlag(II)Z

    move-result p1

    if-nez v0, :cond_62

    if-nez p1, :cond_62

    .line 253
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result p1

    if-eqz p1, :cond_67

    .line 254
    :cond_62
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z
    :try_end_67
    .catchall {:try_start_52 .. :try_end_67} :catchall_71

    .line 257
    :cond_67
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 258
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_70
    return-void

    :catchall_71
    move-exception p1

    .line 257
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_7b

    .line 258
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    .line 260
    :cond_7b
    throw p1
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;I)V
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

    .line 145
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

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

    const v0, 0x3f7d70a4    # 0.99f

    mul-float p1, p1, v0

    .line 265
    invoke-super {p0, p1}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;->onProgressUpdateImpl(F)V

    return-void
.end method

.method protected updateDecodeJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z
    .registers 4
    .param p1    # Lcom/facebook/imagepipeline/image/EncodedImage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "status"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->mJobScheduler:Lcom/facebook/imagepipeline/producers/JobScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/JobScheduler;->updateJob(Lcom/facebook/imagepipeline/image/EncodedImage;I)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder.AnonymousClass1 (com.facebook.imagepipeline.producers.DecodeProducer$ProgressiveDecoder$1)
.class Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/JobScheduler$JobRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

.field final synthetic val$maxBitmapSize:I

.field final synthetic val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$maxBitmapSize",
            "val$producerContext",
            "val$this$0"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    iput p4, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$maxBitmapSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status"
        }
    .end annotation

    if-eqz p1, :cond_6c

    .line 175
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imageformat/ImageFormat;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image_format"

    .line 175
    invoke-interface {v0, v2, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v0, v0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$100(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z

    move-result v0

    if-nez v0, :cond_27

    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/imagepipeline/producers/BaseConsumer;->statusHasFlag(II)Z

    move-result v0

    if-nez v0, :cond_52

    .line 179
    :cond_27
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iget-object v1, v1, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DecodeProducer;->access$200(Lcom/facebook/imagepipeline/producers/DecodeProducer;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 181
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getSourceUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->isNetworkUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 184
    :cond_41
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;

    move-result-object v1

    .line 185
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    iget v2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$maxBitmapSize:I

    .line 183
    invoke-static {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/transcoder/DownsampleUtil;->determineSampleSize(Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/image/EncodedImage;I)I

    move-result v0

    .line 182
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setSampleSize(I)V

    .line 191
    :cond_52
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->val$producerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 192
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImagePipelineConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfigInterface;->getExperiments()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->shouldDownsampleIfLargeBitmap()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 195
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$300(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 198
    :cond_67
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$1;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$400(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    :cond_6c
    return-void
.end method

###### Class com.facebook.imagepipeline.producers.DecodeProducer.ProgressiveDecoder.AnonymousClass2 (com.facebook.imagepipeline.producers.DecodeProducer$ProgressiveDecoder$2)
.class Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;
.super Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;-><init>(Lcom/facebook/imagepipeline/producers/DecodeProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

.field final synthetic val$decodeCancellationEnabled:Z

.field final synthetic val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;Lcom/facebook/imagepipeline/producers/DecodeProducer;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$decodeCancellationEnabled",
            "val$this$0"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$this$0:Lcom/facebook/imagepipeline/producers/DecodeProducer;

    iput-boolean p3, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$decodeCancellationEnabled:Z

    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/BaseProducerContextCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellationRequested()V
    .registers 2

    .line 214
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->val$decodeCancellationEnabled:Z

    if-eqz v0, :cond_9

    .line 215
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$700(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)V

    :cond_9
    return-void
.end method

.method public onIsIntermediateResultExpectedChanged()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$000(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/ProducerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->isIntermediateResultExpected()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 208
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder$2;->this$1:Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;->access$600(Lcom/facebook/imagepipeline/producers/DecodeProducer$ProgressiveDecoder;)Lcom/facebook/imagepipeline/producers/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/JobScheduler;->scheduleJob()Z

    :cond_15
    return-void
.end method
