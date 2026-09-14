###### Class com.bumptech.glide.load.engine.cache.DiskCache (com.bumptech.glide.load.engine.cache.DiskCache)
.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/bumptech/glide/load/Key;)V
.end method

.method public abstract get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.end method

###### Class com.bumptech.glide.load.engine.cache.DiskCache.Factory (com.bumptech.glide.load.engine.cache.DiskCache$Factory)
.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field public static final DEFAULT_DISK_CACHE_SIZE:I = 0xfa00000


# virtual methods
.method public abstract build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
.end method

###### Class com.bumptech.glide.load.engine.cache.DiskCache.Writer (com.bumptech.glide.load.engine.cache.DiskCache$Writer)
.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Writer"
.end annotation


# virtual methods
.method public abstract write(Ljava/io/File;)Z
.end method
