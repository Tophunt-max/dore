###### Class com.bumptech.glide.load.data.mediastore.MediaStoreUtil (com.bumptech.glide.load.data.mediastore.MediaStoreUtil)
.class public final Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;
.super Ljava/lang/Object;
.source "MediaStoreUtil.java"


# static fields
.field private static final MINI_THUMB_HEIGHT:I = 0x180

.field private static final MINI_THUMB_WIDTH:I = 0x200


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaStoreImageUri(Landroid/net/Uri;)Z
    .registers 2

    .line 33
    invoke-static {p0}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isVideoUri(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_1c

    .line 20
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 21
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public static isMediaStoreVideoUri(Landroid/net/Uri;)Z
    .registers 2

    .line 29
    invoke-static {p0}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/bumptech/glide/load/data/mediastore/MediaStoreUtil;->isVideoUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isThumbnailSize(II)Z
    .registers 3

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_10

    if-eq p1, v0, :cond_10

    const/16 v0, 0x200

    if-gt p0, v0, :cond_10

    const/16 p0, 0x180

    if-gt p1, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static isVideoUri(Landroid/net/Uri;)Z
    .registers 2

    .line 25
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string v0, "video"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
