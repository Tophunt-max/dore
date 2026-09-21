###### Class com.facebook.imagepipeline.memory.BitmapCounter (com.facebook.imagepipeline.memory.BitmapCounter)
.class public Lcom/facebook/imagepipeline/memory/BitmapCounter;
.super Ljava/lang/Object;
.source "BitmapCounter.java"


# instance fields
.field private mCount:I

.field private final mMaxCount:I

.field private final mMaxSize:I

.field private mSize:J

.field private final mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxCount",
            "maxSize"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 32
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-lez p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 33
    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 34
    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I

    .line 35
    iput p2, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I

    .line 36
    new-instance p1, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;-><init>(Lcom/facebook/imagepipeline/memory/BitmapCounter;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;

    return-void
.end method


# virtual methods
.method public declared-synchronized decrease(Landroid/graphics/Bitmap;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_1
    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 73
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v3, "No bitmaps registered."

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    int-to-long v3, p1

    .line 74
    iget-wide v5, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string v5, "Bitmap size bigger than the total registered size: %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    iget-wide v7, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    .line 78
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    .line 74
    invoke-static {v0, v5, v6}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    .line 80
    iget p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 81
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxCount()I
    .registers 2

    monitor-enter p0

    .line 94
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxSize()I
    .registers 2

    monitor-enter p0

    .line 98
    :try_start_1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReleaser()Lcom/facebook/common/references/ResourceReleaser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mUnpooledBitmapsReleaser:Lcom/facebook/common/references/ResourceReleaser;

    return-object v0
.end method

.method public declared-synchronized getSize()J
    .registers 3

    monitor-enter p0

    .line 90
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increase(Landroid/graphics/Bitmap;)Z
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    invoke-static {p1}, Lcom/facebook/imageutils/BitmapUtil;->getSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 58
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxCount:I

    if-ge v0, v1, :cond_21

    iget-wide v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J

    int-to-long v3, p1

    add-long v5, v1, v3

    iget p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mMaxSize:I

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-lez p1, :cond_18

    goto :goto_21

    :cond_18
    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 61
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mCount:I

    add-long/2addr v1, v3

    .line 62
    iput-wide v1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter;->mSize:J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    .line 63
    monitor-exit p0

    return p1

    :cond_21
    :goto_21
    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return p1

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.facebook.imagepipeline.memory.BitmapCounter.AnonymousClass1 (com.facebook.imagepipeline.memory.BitmapCounter$1)
.class Lcom/facebook/imagepipeline/memory/BitmapCounter$1;
.super Ljava/lang/Object;
.source "BitmapCounter.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/BitmapCounter;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/memory/BitmapCounter;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/BitmapCounter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;->this$0:Lcom/facebook/imagepipeline/memory/BitmapCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;->this$0:Lcom/facebook/imagepipeline/memory/BitmapCounter;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/BitmapCounter;->decrease(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :catchall_9
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    throw v0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 37
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BitmapCounter$1;->release(Landroid/graphics/Bitmap;)V

    return-void
.end method
