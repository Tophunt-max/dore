###### Class com.facebook.cache.common.SimpleCacheKey (com.facebook.cache.common.SimpleCacheKey)
.class public Lcom/facebook/cache/common/SimpleCacheKey;
.super Ljava/lang/Object;
.source "SimpleCacheKey.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# instance fields
.field final mIsResourceIdForDebugging:Z

.field final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "isResourceIdForDebugging"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mIsResourceIdForDebugging:Z

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

    .line 59
    iget-object v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
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

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 45
    :cond_4
    instance-of v0, p1, Lcom/facebook/cache/common/SimpleCacheKey;

    if-eqz v0, :cond_13

    .line 46
    check-cast p1, Lcom/facebook/cache/common/SimpleCacheKey;

    .line 47
    iget-object v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mIsResourceIdForDebugging:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/facebook/cache/common/SimpleCacheKey;->mKey:Ljava/lang/String;

    return-object v0
.end method
