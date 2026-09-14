###### Class com.nostra13.dcloudimageloader.cache.memory.impl.FuzzyKeyMemoryCache (com.nostra13.dcloudimageloader.cache.memory.impl.FuzzyKeyMemoryCache)
.class public Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;


# instance fields
.field private final cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

.field private final keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    .line 3
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public keys()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->keyComparator:Ljava/util/Comparator;

    invoke-interface {v3, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_d

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_2a

    .line 10
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v1, v2}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 12
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_32

    .line 13
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :catchall_32
    move-exception p1

    .line 14
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/FuzzyKeyMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
