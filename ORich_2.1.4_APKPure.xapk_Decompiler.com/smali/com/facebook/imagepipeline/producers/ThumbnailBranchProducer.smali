###### Class com.facebook.imagepipeline.producers.ThumbnailBranchProducer (com.facebook.imagepipeline.producers.ThumbnailBranchProducer)
.class public Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;
.super Ljava/lang/Object;
.source "ThumbnailBranchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mThumbnailProducers:[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/facebook/imagepipeline/producers/ThumbnailProducer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thumbnailProducers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/producers/ThumbnailProducer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->mThumbnailProducers:[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    .line 32
    array-length p1, p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/facebook/common/internal/Preconditions;->checkElementIndex(II)I

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->produceResultsFromThumbnailProducer(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result p0

    return p0
.end method

.method private findFirstProducerForSize(ILcom/facebook/imagepipeline/common/ResizeOptions;)I
    .registers 5
    .param p2    # Lcom/facebook/imagepipeline/common/ResizeOptions;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "resizeOptions"
        }
    .end annotation

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->mThumbnailProducers:[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    array-length v1, v0

    if-ge p1, v1, :cond_11

    .line 109
    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Lcom/facebook/imagepipeline/producers/ThumbnailProducer;->canProvideImageForSize(Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method private produceResultsFromThumbnailProducer(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")Z"
        }
    .end annotation

    .line 96
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->findFirstProducerForSize(ILcom/facebook/imagepipeline/common/ResizeOptions;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_11
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->mThumbnailProducers:[Lcom/facebook/imagepipeline/producers/ThumbnailProducer;

    aget-object v0, v0, p1

    new-instance v1, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;-><init>(Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V

    invoke-interface {v0, v1, p3}, Lcom/facebook/imagepipeline/producers/ThumbnailProducer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
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

    .line 37
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 38
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    goto :goto_1a

    :cond_10
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->produceResultsFromThumbnailProducer(ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result p2

    if-nez p2, :cond_1a

    .line 42
    invoke-interface {p1, v2, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    :cond_1a
    :goto_1a
    return-void
.end method

###### Class com.facebook.imagepipeline.producers.ThumbnailBranchProducer.ThumbnailConsumer (com.facebook.imagepipeline.producers.ThumbnailBranchProducer$ThumbnailConsumer)
.class Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "ThumbnailBranchProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

.field private final mProducerIndex:I

.field private final mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x0
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "producerIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            "I)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;

    .line 57
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 58
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 59
    iput p4, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerIndex:I

    .line 60
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-void
.end method


# virtual methods
.method protected onFailureImpl(Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;

    iget v1, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->access$000(Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 88
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    :cond_19
    return-void
.end method

.method protected onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V
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
            "newResult",
            "status"
        }
    .end annotation

    if-eqz p1, :cond_18

    .line 66
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->isNotLast(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mResizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 67
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/producers/ThumbnailSizeChecker;->isImageBigEnough(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ResizeOptions;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 68
    :cond_10
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    goto :goto_3b

    .line 69
    :cond_18
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->isLast(I)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 70
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 72
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->this$0:Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;

    iget p2, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerIndex:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 74
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->mProducerContext:Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 73
    invoke-static {p1, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;->access$000(Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer;ILcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 77
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;I)V

    :cond_3b
    :goto_3b
    return-void
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

    .line 47
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/ThumbnailBranchProducer$ThumbnailConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;I)V

    return-void
.end method
