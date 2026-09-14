###### Class com.facebook.imagepipeline.memory.FlexByteArrayPool (com.facebook.imagepipeline.memory.FlexByteArrayPool)
.class public Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;
    }
.end annotation


# instance fields
.field final mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

.field private final mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "params"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget v0, p2, Lcom/facebook/imagepipeline/memory/PoolParams;->maxNumThreads:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 35
    new-instance v0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;->getInstance()Lcom/facebook/imagepipeline/memory/NoOpPoolStatsTracker;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    .line 38
    new-instance p1, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;-><init>(Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/facebook/common/references/CloseableReference;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "[B>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mResourceReleaser:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {p1, v0}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public getMinBufferSize()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->getMinBufferSize()I

    move-result v0

    return v0
.end method

.method public getStats()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->getStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public release([B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->mDelegatePool:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->release(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.facebook.imagepipeline.memory.FlexByteArrayPool.AnonymousClass1 (com.facebook.imagepipeline.memory.FlexByteArrayPool$1)
.class Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lcom/facebook/common/references/ResourceReleaser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/references/ResourceReleaser<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;->this$0:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "unused"
        }
    .end annotation

    .line 39
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;->release([B)V

    return-void
.end method

.method public release([B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$1;->this$0:Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;->release([B)V

    return-void
.end method

###### Class com.facebook.imagepipeline.memory.FlexByteArrayPool.SoftRefByteArrayPool (com.facebook.imagepipeline.memory.FlexByteArrayPool$SoftRefByteArrayPool)
.class Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;
.super Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;
.source "FlexByteArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/FlexByteArrayPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftRefByteArrayPool"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "poolParams",
            "poolStatsTracker"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/GenericByteArrayPool;-><init>(Lcom/facebook/common/memory/MemoryTrimmableRegistry;Lcom/facebook/imagepipeline/memory/PoolParams;Lcom/facebook/imagepipeline/memory/PoolStatsTracker;)V

    return-void
.end method


# virtual methods
.method newBucket(I)Lcom/facebook/imagepipeline/memory/Bucket;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bucketedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/imagepipeline/memory/Bucket<",
            "[B>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/facebook/imagepipeline/memory/OOMSoftReferenceBucket;

    .line 75
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->getSizeInBytes(I)I

    move-result p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/FlexByteArrayPool$SoftRefByteArrayPool;->mPoolParams:Lcom/facebook/imagepipeline/memory/PoolParams;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/PoolParams;->maxNumThreads:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/OOMSoftReferenceBucket;-><init>(III)V

    return-object v0
.end method
