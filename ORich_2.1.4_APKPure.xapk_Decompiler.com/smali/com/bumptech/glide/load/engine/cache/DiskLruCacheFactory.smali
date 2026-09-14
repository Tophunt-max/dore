###### Class com.bumptech.glide.load.engine.cache.DiskLruCacheFactory (com.bumptech.glide.load.engine.cache.DiskLruCacheFactory)
.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
    }
.end annotation


# instance fields
.field private final cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

.field private final diskCacheSize:J


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:J

    .line 55
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 36
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->cacheDirectoryGetter:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 66
    :cond_a
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    return-object v1

    .line 70
    :cond_1d
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->diskCacheSize:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.AnonymousClass1 (com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$1)
.class Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diskCacheFolder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;->val$diskCacheFolder:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .registers 3

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$1;->val$diskCacheFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.AnonymousClass2 (com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$2)
.class Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$diskCacheFolder:Ljava/lang/String;

.field final synthetic val$diskCacheName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/io/File;
    .registers 4

    .line 39
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheFolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$2;->val$diskCacheName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter (com.bumptech.glide.load.engine.cache.DiskLruCacheFactory$CacheDirectoryGetter)
.class public interface abstract Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CacheDirectoryGetter"
.end annotation


# virtual methods
.method public abstract getCacheDirectory()Ljava/io/File;
.end method
