###### Class com.nostra13.dcloudimageloader.core.assist.DiscCacheUtil (com.nostra13.dcloudimageloader.core.assist.DiscCacheUtil)
.class public final Lcom/nostra13/dcloudimageloader/core/assist/DiscCacheUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findInCache(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;)Ljava/io/File;
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;)Z
    .registers 2

    .line 1
    invoke-interface {p1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method
