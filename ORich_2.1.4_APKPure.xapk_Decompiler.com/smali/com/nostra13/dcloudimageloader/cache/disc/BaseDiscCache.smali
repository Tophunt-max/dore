###### Class com.nostra13.dcloudimageloader.cache.disc.BaseDiscCache (com.nostra13.dcloudimageloader.cache.disc.BaseDiscCache)
.class public abstract Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;


# static fields
.field private static final ERROR_ARG_NULL:Ljava/lang/String; = "\"%s\" argument must be not null"


# instance fields
.field protected cacheDir:Ljava/io/File;

.field private fileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"%s\" argument must be not null"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_20

    if-eqz p2, :cond_10

    .line 8
    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    .line 9
    iput-object p2, p0, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    return-void

    .line 10
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "fileNameGenerator"

    aput-object v2, p2, v1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v2, "cacheDir"

    aput-object v2, p2, v1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    .line 7
    aget-object v3, v0, v2

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->fileNameGenerator:Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->cacheDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
