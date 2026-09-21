###### Class dc.squareup.okhttp3.Cache (dc.squareup.okhttp3.Cache)
.class public final Ldc/squareup/okhttp3/Cache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/Cache$CacheResponseBody;,
        Ldc/squareup/okhttp3/Cache$Entry;,
        Ldc/squareup/okhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/io/FileSystem;->SYSTEM:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Ldc/squareup/okhttp3/Cache;-><init>(Ljava/io/File;JLdc/squareup/okhttp3/internal/io/FileSystem;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;JLdc/squareup/okhttp3/internal/io/FileSystem;)V
    .registers 12

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ldc/squareup/okhttp3/Cache$1;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Cache$1;-><init>(Ldc/squareup/okhttp3/Cache;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache;->internalCache:Ldc/squareup/okhttp3/internal/cache/InternalCache;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    .line 46
    invoke-static/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->create(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method private abortQuietly(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    :try_start_2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static key(Ldc/squareup/okhttp3/HttpUrl;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->md5()Ldc/squareup/okio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Ldc/squareup/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static readInt(Ldc/squareup/okio/BufferedSource;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Ldc/squareup/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1d

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1d

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    long-to-int p0, v0

    return p0

    .line 4
    :cond_1d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    .line 8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->delete()V

    return-void
.end method

.method public directory()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->evictAll()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method

.method get(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/Cache;->key(Ldc/squareup/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_9
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_32

    if-nez v0, :cond_12

    return-object v1

    .line 15
    :cond_12
    :try_start_12
    new-instance v2, Ldc/squareup/okhttp3/Cache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Ldc/squareup/okio/Source;

    move-result-object v3

    invoke-direct {v2, v3}, Ldc/squareup/okhttp3/Cache$Entry;-><init>(Ldc/squareup/okio/Source;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_2f

    .line 21
    invoke-virtual {v2, v0}, Ldc/squareup/okhttp3/Cache$Entry;->response(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ldc/squareup/okhttp3/Response;

    move-result-object v0

    .line 23
    invoke-virtual {v2, p1, v0}, Ldc/squareup/okhttp3/Cache$Entry;->matches(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/Response;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 24
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :cond_2e
    return-object v0

    .line 25
    :catch_2f
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :catch_32
    return-object v1
.end method

.method public declared-synchronized hitCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    return-void
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->networkCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/internal/cache/CacheRequest;
    .registers 5

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 5
    :try_start_17
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Cache;->remove(Ldc/squareup/okhttp3/Request;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_1e

    :catch_1e
    return-object v2

    :cond_1f
    const-string v1, "GET"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    return-object v2

    .line 18
    :cond_28
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->hasVaryAll(Ldc/squareup/okhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_2f

    return-object v2

    .line 22
    :cond_2f
    new-instance v0, Ldc/squareup/okhttp3/Cache$Entry;

    invoke-direct {v0, p1}, Ldc/squareup/okhttp3/Cache$Entry;-><init>(Ldc/squareup/okhttp3/Response;)V

    .line 25
    :try_start_34
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/Cache;->key(Ldc/squareup/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_46} :catch_52

    if-nez p1, :cond_49

    return-object v2

    .line 29
    :cond_49
    :try_start_49
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache$Entry;->writeTo(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 30
    new-instance v0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;-><init>(Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_51} :catch_53

    return-object v0

    :catch_52
    move-object p1, v2

    .line 32
    :catch_53
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/Cache;->abortQuietly(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    return-object v2
.end method

.method remove(Ldc/squareup/okhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/Cache;->key(Ldc/squareup/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public declared-synchronized requestCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->requestCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldc/squareup/okhttp3/Cache;->hitCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Ldc/squareup/okhttp3/internal/cache/CacheStrategy;)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldc/squareup/okhttp3/Cache;->requestCount:I

    .line 3
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->networkRequest:Ldc/squareup/okhttp3/Request;

    if-eqz v0, :cond_12

    .line 5
    iget p1, p0, Ldc/squareup/okhttp3/Cache;->networkCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/Cache;->networkCount:I

    goto :goto_1c

    .line 6
    :cond_12
    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Ldc/squareup/okhttp3/Response;

    if-eqz p1, :cond_1c

    .line 8
    iget p1, p0, Ldc/squareup/okhttp3/Cache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/Cache;->hitCount:I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method update(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Response;)V
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Cache$Entry;

    invoke-direct {v0, p2}, Ldc/squareup/okhttp3/Cache$Entry;-><init>(Ldc/squareup/okhttp3/Response;)V

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/Cache$CacheResponseBody;

    iget-object p1, p1, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 5
    :try_start_d
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->edit()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_1a

    if-eqz p1, :cond_1e

    .line 7
    :try_start_13
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache$Entry;->writeTo(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 8
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1b

    goto :goto_1e

    :catch_1a
    const/4 p1, 0x0

    .line 11
    :catch_1b
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/Cache;->abortQuietly(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public urls()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/Cache$2;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/Cache$2;-><init>(Ldc/squareup/okhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->writeAbortCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget v0, p0, Ldc/squareup/okhttp3/Cache;->writeSuccessCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class dc.squareup.okhttp3.Cache.AnonymousClass1 (dc.squareup.okhttp3.Cache$1)
.class Ldc/squareup/okhttp3/Cache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/cache/InternalCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/Cache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache;->get(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public put(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/internal/cache/CacheRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache;->put(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/internal/cache/CacheRequest;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ldc/squareup/okhttp3/Request;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache;->remove(Ldc/squareup/okhttp3/Request;)V

    return-void
.end method

.method public trackConditionalCacheHit()V
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method public trackResponse(Ldc/squareup/okhttp3/internal/cache/CacheStrategy;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Cache;->trackResponse(Ldc/squareup/okhttp3/internal/cache/CacheStrategy;)V

    return-void
.end method

.method public update(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Response;)V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$1;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-virtual {v0, p1, p2}, Ldc/squareup/okhttp3/Cache;->update(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Response;)V

    return-void
.end method

###### Class dc.squareup.okhttp3.Cache.AnonymousClass2 (dc.squareup.okhttp3.Cache$2)
.class Ldc/squareup/okhttp3/Cache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Ldc/squareup/okhttp3/Cache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$2;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Ldc/squareup/okhttp3/Cache;->cache:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ldc/squareup/okhttp3/Cache$2;->canRemove:Z

    .line 4
    :goto_9
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 5
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 7
    :try_start_19
    invoke-virtual {v2, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Ldc/squareup/okio/Source;

    move-result-object v3

    invoke-static {v3}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ldc/squareup/okhttp3/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_27} :catch_30
    .catchall {:try_start_19 .. :try_end_27} :catchall_2b

    .line 14
    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    return v1

    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 15
    throw v0

    .line 16
    :catch_30
    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    goto :goto_9

    :cond_34
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Cache$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$2;->nextUrl:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ldc/squareup/okhttp3/Cache$2;->canRemove:Z

    return-object v0

    .line 6
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/Cache$2;->canRemove:Z

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 3
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class dc.squareup.okhttp3.Cache.CacheRequestImpl (dc.squareup.okhttp3.Cache$CacheRequestImpl)
.class final Ldc/squareup/okhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ldc/squareup/okio/Sink;

.field private cacheOut:Ldc/squareup/okio/Sink;

.field done:Z

.field private final editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Ldc/squareup/okhttp3/Cache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Ldc/squareup/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->cacheOut:Ldc/squareup/okio/Sink;

    .line 4
    new-instance v1, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;-><init>(Ldc/squareup/okhttp3/Cache$CacheRequestImpl;Ldc/squareup/okio/Sink;Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->body:Ldc/squareup/okio/Sink;

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_9

    .line 3
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    .line 6
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    iget v3, v2, Ldc/squareup/okhttp3/Cache;->writeAbortCount:I

    add-int/2addr v3, v1

    iput v3, v2, Ldc/squareup/okhttp3/Cache;->writeAbortCount:I

    .line 7
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    .line 8
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->cacheOut:Ldc/squareup/okio/Sink;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    :try_start_19
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    :catchall_1f
    move-exception v1

    .line 11
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public body()Ldc/squareup/okio/Sink;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->body:Ldc/squareup/okio/Sink;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.Cache.CacheRequestImpl.AnonymousClass1 (dc.squareup.okhttp3.Cache$CacheRequestImpl$1)
.class Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;
.super Ldc/squareup/okio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/Cache$CacheRequestImpl;-><init>(Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldc/squareup/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Ldc/squareup/okhttp3/Cache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache$CacheRequestImpl;Ldc/squareup/okio/Sink;Ldc/squareup/okhttp3/Cache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->this$1:Ldc/squareup/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Ldc/squareup/okhttp3/Cache;

    iput-object p4, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ldc/squareup/okio/ForwardingSink;-><init>(Ldc/squareup/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->this$1:Ldc/squareup/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->this$1:Ldc/squareup/okhttp3/Cache$CacheRequestImpl;

    iget-boolean v2, v1, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v2, :cond_d

    .line 3
    monitor-exit v0

    return-void

    :cond_d
    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v1, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->done:Z

    .line 6
    iget-object v1, v1, Ldc/squareup/okhttp3/Cache$CacheRequestImpl;->this$0:Ldc/squareup/okhttp3/Cache;

    iget v3, v1, Ldc/squareup/okhttp3/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Ldc/squareup/okhttp3/Cache;->writeSuccessCount:I

    .line 7
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_21

    .line 8
    invoke-super {p0}, Ldc/squareup/okio/ForwardingSink;->close()V

    .line 9
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    return-void

    :catchall_21
    move-exception v1

    .line 10
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

###### Class dc.squareup.okhttp3.Cache.CacheResponseBody (dc.squareup.okhttp3.Cache$CacheResponseBody)
.class Ldc/squareup/okhttp3/Cache$CacheResponseBody;
.super Ldc/squareup/okhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Ldc/squareup/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field final snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->getSource(I)Ldc/squareup/okio/Source;

    move-result-object p2

    .line 7
    new-instance p3, Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {p3, p0, p2, p1}, Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;-><init>(Ldc/squareup/okhttp3/Cache$CacheResponseBody;Ldc/squareup/okio/Source;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)V

    invoke-static {p3}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->bodySource:Ldc/squareup/okio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 4

    const-wide/16 v0, -0x1

    .line 1
    :try_start_2
    iget-object v2, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public source()Ldc/squareup/okio/BufferedSource;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody;->bodySource:Ldc/squareup/okio/BufferedSource;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.Cache.CacheResponseBody.AnonymousClass1 (dc.squareup.okhttp3.Cache$CacheResponseBody$1)
.class Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;
.super Ldc/squareup/okio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/Cache$CacheResponseBody;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/Cache$CacheResponseBody;Ldc/squareup/okio/Source;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)V
    .registers 4

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;->this$0:Ldc/squareup/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Ldc/squareup/okio/ForwardingSource;-><init>(Ldc/squareup/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->close()V

    .line 2
    invoke-super {p0}, Ldc/squareup/okio/ForwardingSource;->close()V

    return-void
.end method

###### Class dc.squareup.okhttp3.Cache.Entry (dc.squareup.okhttp3.Cache$Entry)
.class final Ldc/squareup/okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Ldc/squareup/okhttp3/Handshake;

.field private final message:Ljava/lang/String;

.field private final protocol:Ldc/squareup/okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Ldc/squareup/okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Ldc/squareup/okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/Response;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->varyHeaders(Ldc/squareup/okhttp3/Response;)Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    .line 66
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->request()Ldc/squareup/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->protocol()Ldc/squareup/okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 68
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->code:I

    .line 69
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    .line 71
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->handshake()Ldc/squareup/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    .line 72
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 73
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method constructor <init>(Ldc/squareup/okio/Source;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_3
    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 5
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 6
    new-instance v1, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v1}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 7
    invoke-static {v0}, Ldc/squareup/okhttp3/Cache;->readInt(Ldc/squareup/okio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v2, :cond_2a

    .line 9
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ldc/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 11
    :cond_2a
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    .line 13
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 14
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/http/StatusLine;->protocol:Ldc/squareup/okhttp3/Protocol;

    iput-object v2, p0, Ldc/squareup/okhttp3/Cache$Entry;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 15
    iget v2, v1, Ldc/squareup/okhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Ldc/squareup/okhttp3/Cache$Entry;->code:I

    .line 16
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 17
    new-instance v1, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {v1}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 18
    invoke-static {v0}, Ldc/squareup/okhttp3/Cache;->readInt(Ldc/squareup/okio/BufferedSource;)I

    move-result v2

    :goto_4d
    if-ge v3, v2, :cond_59

    .line 20
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldc/squareup/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 22
    :cond_59
    sget-object v2, Ldc/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    sget-object v4, Ldc/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ldc/squareup/okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    .line 25
    invoke-virtual {v1, v4}, Ldc/squareup/okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_74

    .line 27
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_75

    :cond_74
    move-wide v2, v6

    :goto_75
    iput-wide v2, p0, Ldc/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v5, :cond_7d

    .line 30
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :cond_7d
    iput-wide v6, p0, Ldc/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 32
    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    .line 34
    invoke-direct {p0}, Ldc/squareup/okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 35
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_bd

    .line 39
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Ldc/squareup/okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v1

    .line 41
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/Cache$Entry;->readCertificateList(Ldc/squareup/okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 42
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/Cache$Entry;->readCertificateList(Ldc/squareup/okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 43
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 44
    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Ldc/squareup/okhttp3/TlsVersion;

    move-result-object v0

    goto :goto_b6

    :cond_b4
    sget-object v0, Ldc/squareup/okhttp3/TlsVersion;->SSL_3_0:Ldc/squareup/okhttp3/TlsVersion;

    .line 46
    :goto_b6
    invoke-static {v0, v1, v2, v3}, Ldc/squareup/okhttp3/Handshake;->get(Ldc/squareup/okhttp3/TlsVersion;Ldc/squareup/okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Ldc/squareup/okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    goto :goto_dc

    .line 47
    :cond_bd
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;
    :try_end_dc
    .catchall {:try_start_3 .. :try_end_dc} :catchall_e0

    .line 61
    :goto_dc
    invoke-interface {p1}, Ldc/squareup/okio/Source;->close()V

    return-void

    :catchall_e0
    move-exception v0

    invoke-interface {p1}, Ldc/squareup/okio/Source;->close()V

    .line 62
    throw v0
.end method

.method private isHttps()Z
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Ldc/squareup/okio/BufferedSource;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldc/squareup/okhttp3/Cache;->readInt(Ldc/squareup/okio/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_c
    :try_start_c
    const-string v1, "X.509"

    .line 5
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v0, :cond_38

    .line 8
    invoke-interface {p1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Ldc/squareup/okio/Buffer;

    invoke-direct {v5}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 10
    invoke-static {v4}, Ldc/squareup/okio/ByteString;->decodeBase64(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    .line 11
    invoke-virtual {v5}, Ldc/squareup/okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_35} :catch_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    return-object v2

    :catch_39
    move-exception p1

    .line 15
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCertList(Ldc/squareup/okio/BufferedSink;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 2
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_13
    if-ge v0, v2, :cond_31

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 5
    invoke-static {v3}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Ldc/squareup/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v3

    .line 7
    invoke-interface {v3, v1}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;
    :try_end_2e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_2e} :catch_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_31
    return-void

    :catch_32
    move-exception p1

    .line 10
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public matches(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/Response;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Ldc/squareup/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    .line 3
    invoke-static {p2, v0, p1}, Ldc/squareup/okhttp3/internal/http/HttpHeaders;->varyMatches(Ldc/squareup/okhttp3/Response;Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public response(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ldc/squareup/okhttp3/Response;
    .registers 7

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v2}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    .line 6
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Request$Builder;->headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object v2

    .line 8
    new-instance v3, Ldc/squareup/okhttp3/Response$Builder;

    invoke-direct {v3}, Ldc/squareup/okhttp3/Response$Builder;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Ldc/squareup/okhttp3/Response$Builder;->request(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->protocol:Ldc/squareup/okhttp3/Protocol;

    .line 10
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->protocol(Ldc/squareup/okhttp3/Protocol;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->code:I

    .line 11
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->code(I)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->message(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    .line 13
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->headers(Ldc/squareup/okhttp3/Headers;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Ldc/squareup/okhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Ldc/squareup/okhttp3/Cache$CacheResponseBody;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v3}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    .line 15
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Response$Builder;->handshake(Ldc/squareup/okhttp3/Handshake;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 16
    invoke-virtual {p1, v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->sentRequestAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 17
    invoke-virtual {p1, v0, v1}, Ldc/squareup/okhttp3/Response$Builder;->receivedResponseAtMillis(J)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Ldc/squareup/okio/Sink;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    .line 4
    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    .line 6
    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 7
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    .line 8
    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_32
    const-string v4, ": "

    if-ge v3, v1, :cond_54

    .line 10
    iget-object v5, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v5, v3}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v5

    .line 11
    invoke-interface {v5, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Ldc/squareup/okhttp3/Cache$Entry;->varyHeaders:Ldc/squareup/okhttp3/Headers;

    .line 12
    invoke-virtual {v5, v3}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    .line 13
    invoke-interface {v4, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 16
    :cond_54
    new-instance v1, Ldc/squareup/okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->protocol:Ldc/squareup/okhttp3/Protocol;

    iget v5, p0, Ldc/squareup/okhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Ldc/squareup/okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Ldc/squareup/okhttp3/internal/http/StatusLine;-><init>(Ldc/squareup/okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    .line 17
    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 18
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    .line 19
    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 20
    iget-object v1, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v1

    :goto_80
    if-ge v0, v1, :cond_a0

    .line 21
    iget-object v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    invoke-virtual {v3, v0}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v3

    .line 22
    invoke-interface {v3, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v3

    iget-object v5, p0, Ldc/squareup/okhttp3/Cache$Entry;->responseHeaders:Ldc/squareup/okhttp3/Headers;

    .line 23
    invoke-virtual {v5, v0}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v3

    .line 24
    invoke-interface {v3, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    .line 26
    :cond_a0
    sget-object v0, Ldc/squareup/okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 27
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iget-wide v5, p0, Ldc/squareup/okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 28
    invoke-interface {v0, v5, v6}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 29
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 30
    sget-object v0, Ldc/squareup/okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 31
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Ldc/squareup/okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 32
    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 33
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 35
    invoke-direct {p0}, Ldc/squareup/okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 36
    invoke-interface {p1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 37
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Handshake;->cipherSuite()Ldc/squareup/okhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    .line 38
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 39
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/Cache$Entry;->writeCertList(Ldc/squareup/okio/BufferedSink;Ljava/util/List;)V

    .line 40
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/Cache$Entry;->writeCertList(Ldc/squareup/okio/BufferedSink;Ljava/util/List;)V

    .line 41
    iget-object v0, p0, Ldc/squareup/okhttp3/Cache$Entry;->handshake:Ldc/squareup/okhttp3/Handshake;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/Handshake;->tlsVersion()Ldc/squareup/okhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Ldc/squareup/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 43
    :cond_103
    invoke-interface {p1}, Ldc/squareup/okio/Sink;->close()V

    return-void
.end method
