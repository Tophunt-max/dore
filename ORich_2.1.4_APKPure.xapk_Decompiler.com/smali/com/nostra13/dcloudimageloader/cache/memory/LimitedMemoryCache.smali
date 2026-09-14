###### Class com.nostra13.dcloudimageloader.cache.memory.LimitedMemoryCache (com.nostra13.dcloudimageloader.cache.memory.LimitedMemoryCache)
.class public abstract Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;
.super Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;
.source "SourceFile"


# static fields
.field private static final MAX_NORMAL_CACHE_SIZE:I = 0x1000000

.field private static final MAX_NORMAL_CACHE_SIZE_IN_MB:I = 0x10


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final hardCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    .line 6
    iput p1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v0, 0x1000000

    if-le p1, v0, :cond_2c

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x10

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "You set too large memory cache size (more than %1$d Mb)"

    invoke-static {v0, p1}, Lcom/nostra13/dcloudimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    invoke-super {p0}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;->clear()V

    return-void
.end method

.method protected abstract getSize(Landroid/graphics/Bitmap;)I
.end method

.method protected getSizeLimit()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->sizeLimit:I

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->getSizeLimit()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ge v0, v1, :cond_38

    :cond_10
    :goto_10
    add-int v3, v2, v0

    if-le v3, v1, :cond_2c

    .line 6
    invoke-virtual {p0}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->removeNext()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 8
    iget-object v2, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v3}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    goto :goto_10

    .line 11
    :cond_2c
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 17
    :goto_39
    invoke-super {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    return v0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 3
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->hardCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7
    :cond_18
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected abstract removeNext()Landroid/graphics/Bitmap;
.end method
