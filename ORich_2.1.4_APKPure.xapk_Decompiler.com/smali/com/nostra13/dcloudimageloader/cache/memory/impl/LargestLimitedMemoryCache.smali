###### Class com.nostra13.dcloudimageloader.cache.memory.impl.LargestLimitedMemoryCache (com.nostra13.dcloudimageloader.cache.memory.impl.LargestLimitedMemoryCache)
.class public Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;
.super Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;
.source "SourceFile"


# instance fields
.field private final valueSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-super {p0}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 2
    iget-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/BaseMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_b
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v2, :cond_2a

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    goto :goto_f

    .line 8
    :cond_2a
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_f

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v3, v5

    goto :goto_f

    .line 15
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_49

    .line 16
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LargestLimitedMemoryCache;->valueSizes:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :catchall_49
    move-exception v0

    .line 17
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method
