###### Class com.bumptech.glide.load.engine.cache.MemoryCacheAdapter (com.bumptech.glide.load.engine.cache.MemoryCacheAdapter)
.class public Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .registers 1

    return-void
.end method

.method public getCurrentSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxSize()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 40
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void
.end method

.method public setSizeMultiplier(F)V
    .registers 2

    return-void
.end method

.method public trimMemory(I)V
    .registers 2

    return-void
.end method
