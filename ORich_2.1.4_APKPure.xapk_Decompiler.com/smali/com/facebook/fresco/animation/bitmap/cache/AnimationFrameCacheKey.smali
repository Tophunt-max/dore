###### Class com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey (com.facebook.fresco.animation.bitmap.cache.AnimationFrameCacheKey)
.class public Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;
.super Ljava/lang/Object;
.source "AnimationFrameCacheKey.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# static fields
.field private static final URI_PREFIX:Ljava/lang/String; = "anim://"


# instance fields
.field private final mAnimationUriString:Ljava/lang/String;

.field private final mDeepEquals:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageId",
            "deepEquals"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "anim://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    return-void
.end method


# virtual methods
.method public containsUri(Landroid/net/Uri;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    if-nez v0, :cond_9

    .line 52
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    if-ne p0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    if-eqz p1, :cond_25

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    goto :goto_25

    .line 62
    :cond_1a
    check-cast p1, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;

    .line 63
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return p1
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mDeepEquals:Z

    if-nez v0, :cond_9

    .line 69
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 71
    :cond_9
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/cache/AnimationFrameCacheKey;->mAnimationUriString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
