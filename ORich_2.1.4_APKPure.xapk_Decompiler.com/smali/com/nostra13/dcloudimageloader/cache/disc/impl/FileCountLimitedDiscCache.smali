###### Class com.nostra13.dcloudimageloader.cache.disc.impl.FileCountLimitedDiscCache (com.nostra13.dcloudimageloader.cache.disc.impl.FileCountLimitedDiscCache)
.class public Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;
.super Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/impl/FileCountLimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method


# virtual methods
.method protected getSize(Ljava/io/File;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
