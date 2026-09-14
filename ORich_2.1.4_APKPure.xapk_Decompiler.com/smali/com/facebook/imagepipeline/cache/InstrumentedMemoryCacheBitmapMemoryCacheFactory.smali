###### Class com.facebook.imagepipeline.cache.InstrumentedMemoryCacheBitmapMemoryCacheFactory (com.facebook.imagepipeline.cache.InstrumentedMemoryCacheBitmapMemoryCacheFactory)
.class public Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCacheBitmapMemoryCacheFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bitmapMemoryCache",
            "imageCacheStatsTracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;",
            ")",
            "Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache<",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-interface {p1, p0}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->registerBitmapMemoryCache(Lcom/facebook/imagepipeline/cache/MemoryCache;)V

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;-><init>(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V

    .line 41
    new-instance p1, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;

    invoke-direct {p1, p0, v0}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;-><init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;)V

    return-object p1
.end method

###### Class com.facebook.imagepipeline.cache.InstrumentedMemoryCacheBitmapMemoryCacheFactory.AnonymousClass1 (com.facebook.imagepipeline.cache.InstrumentedMemoryCacheBitmapMemoryCacheFactory$1)
.class final Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCacheBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory;->get(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/MemoryCacheTracker<",
        "Lcom/facebook/cache/common/CacheKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$imageCacheStatsTracker"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->val$imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheHit(Lcom/facebook/cache/common/CacheKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->val$imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onBitmapCacheHit(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method

.method public bridge synthetic onCacheHit(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->onCacheHit(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method

.method public onCacheMiss(Lcom/facebook/cache/common/CacheKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->val$imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onBitmapCacheMiss(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method

.method public bridge synthetic onCacheMiss(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->onCacheMiss(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method

.method public onCachePut(Lcom/facebook/cache/common/CacheKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->val$imageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;->onBitmapCachePut(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method

.method public bridge synthetic onCachePut(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCacheBitmapMemoryCacheFactory$1;->onCachePut(Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method
