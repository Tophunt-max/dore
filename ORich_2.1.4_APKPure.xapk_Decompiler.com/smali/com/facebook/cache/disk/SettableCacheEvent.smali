###### Class com.facebook.cache.disk.SettableCacheEvent (com.facebook.cache.disk.SettableCacheEvent)
.class public Lcom/facebook/cache/disk/SettableCacheEvent;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEvent;


# static fields
.field private static final MAX_RECYCLED:I = 0x5

.field private static final RECYCLER_LOCK:Ljava/lang/Object;

.field private static sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sRecycledCount:I


# instance fields
.field private mCacheKey:Lcom/facebook/cache/common/CacheKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCacheLimit:J

.field private mCacheSize:J

.field private mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mItemSize:J

.field private mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mResourceId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 3

    .line 42
    sget-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    if-eqz v1, :cond_16

    .line 45
    iget-object v2, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    sput-object v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    const/4 v2, 0x0

    .line 46
    iput-object v2, v1, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 47
    sget v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    .line 52
    new-instance v0, Lcom/facebook/cache/disk/SettableCacheEvent;

    invoke-direct {v0}, Lcom/facebook/cache/disk/SettableCacheEvent;-><init>()V

    return-object v0

    :catchall_1d
    move-exception v1

    .line 50
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 147
    iput-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 148
    iput-wide v1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mItemSize:J

    .line 149
    iput-wide v1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheLimit:J

    .line 150
    iput-wide v1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheSize:J

    .line 151
    iput-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    .line 152
    iput-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-void
.end method


# virtual methods
.method public getCacheKey()Lcom/facebook/cache/common/CacheKey;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public getCacheLimit()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-wide v0
.end method

.method public getCacheSize()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-wide v0
.end method

.method public getEvictionReason()Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public getException()Ljava/io/IOException;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object v0
.end method

.method public getItemSize()J
    .registers 3

    .line 81
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mItemSize:J

    return-wide v0
.end method

.method public getResourceId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .registers 4

    .line 132
    sget-object v0, Lcom/facebook/cache/disk/SettableCacheEvent;->RECYCLER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_3
    sget v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_19

    .line 134
    invoke-direct {p0}, Lcom/facebook/cache/disk/SettableCacheEvent;->reset()V

    .line 135
    sget v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sRecycledCount:I

    .line 137
    sget-object v1, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    if-eqz v1, :cond_17

    .line 138
    iput-object v1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mNextRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 140
    :cond_17
    sput-object p0, Lcom/facebook/cache/disk/SettableCacheEvent;->sFirstRecycledEvent:Lcom/facebook/cache/disk/SettableCacheEvent;

    .line 142
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object p0
.end method

.method public setCacheLimit(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheLimit"
        }
    .end annotation

    .line 105
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-object p0
.end method

.method public setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    .line 95
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-object p0
.end method

.method public setEvictionReason(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evictionReason"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object p0
.end method

.method public setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSize"
        }
    .end annotation

    .line 85
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mItemSize:J

    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object p0
.end method
