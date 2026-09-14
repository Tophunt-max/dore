###### Class com.nostra13.dcloudimageloader.cache.memory.impl.LimitedAgeMemoryCache (com.nostra13.dcloudimageloader.cache.memory.impl.LimitedAgeMemoryCache)
.class public Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;


# instance fields
.field private final cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxAge:J


# direct methods
.method public constructor <init>(Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    .line 11
    iput-wide p2, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->maxAge:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->clear()V

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_23

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->maxAge:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_23

    .line 3
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_23
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

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
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->keys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 3
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return p2
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/memory/impl/LimitedAgeMemoryCache;->cache:Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;

    invoke-interface {v0, p1}, Lcom/nostra13/dcloudimageloader/cache/memory/MemoryCacheAware;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
