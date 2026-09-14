###### Class com.facebook.imagepipeline.image.CloseableAnimatedImage (com.facebook.imagepipeline.image.CloseableAnimatedImage)
.class public Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;
.super Lcom/facebook/imagepipeline/image/CloseableImage;
.source "CloseableAnimatedImage.java"


# instance fields
.field private mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsStateful:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageResult"
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageResult",
            "isStateful"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/facebook/imagepipeline/image/CloseableImage;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    .line 32
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mIsStateful:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 48
    monitor-enter p0

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-nez v0, :cond_7

    .line 50
    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    .line 54
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    .line 55
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->dispose()V

    return-void

    :catchall_f
    move-exception v0

    .line 54
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .registers 2

    monitor-enter p0

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :goto_b
    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .registers 2

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getSizeInBytes()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .registers 2

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_f

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mImageResult:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStateful()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->mIsStateful:Z

    return v0
.end method
