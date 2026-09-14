###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache (dc.squareup.okhttp3.internal.cache.DiskLruCache)
.class public final Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;,
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;,
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Ldc/squareup/okio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 19
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 23
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    .line 52
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 53
    iput p3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 54
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 55
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 56
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 57
    iput p4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 58
    iput-wide p5, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 59
    iput-object p7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    .line 2
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static create(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_34

    if-lez p3, :cond_2c

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const-string v1, "OkHttp DiskLruCache"

    .line 2
    invoke-static {v1, v0}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;-><init>(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 5
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newJournalWriter()Ldc/squareup/okio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object v0

    .line 2
    new-instance v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okio/Sink;)V

    .line 8
    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 4
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_32

    .line 5
    :goto_22
    iget v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_11

    .line 6
    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_32
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 10
    :goto_35
    iget v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_4e

    .line 11
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 12
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 14
    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_52
    return-void
.end method

.method private readJournal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    .line 3
    :try_start_e
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 8
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    const-string v7, "1"

    .line 9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    iget v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    iget v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    const-string v4, ""

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_a8

    if-eqz v4, :cond_7a

    const/4 v0, 0x0

    .line 20
    :goto_53
    :try_start_53
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_a8

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 26
    :catch_5d
    :try_start_5d
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 29
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_70

    .line 30
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_76

    .line 32
    :cond_70
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_a8

    .line 35
    :goto_76
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 36
    :cond_7a
    :try_start_7a
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a8
    .catchall {:try_start_7a .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v0

    .line 58
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_99

    add-int/lit8 v4, v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_28

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_2c

    const-string v5, "REMOVE"

    .line 11
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 12
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_28
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 19
    :cond_2c
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    if-nez v5, :cond_40

    .line 21
    new-instance v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 22
    iget-object v6, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    const/4 v4, 0x5

    if-eq v0, v3, :cond_62

    if-ne v1, v4, :cond_62

    const-string v6, "CLEAN"

    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 27
    iput-boolean v1, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 29
    invoke-virtual {v5, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_83

    :cond_62
    if-ne v0, v3, :cond_76

    if-ne v1, v4, :cond_76

    const-string v4, "DIRTY"

    .line 30
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 31
    new-instance p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V

    iput-object p1, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_83

    :cond_76
    if-ne v0, v3, :cond_84

    const/4 v0, 0x4

    if-ne v1, v0, :cond_84

    const-string v0, "READ"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    :goto_83
    return-void

    .line 35
    :cond_84
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_99
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 3
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_b

    goto :goto_3e

    .line 6
    :cond_b
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v4, v0, v3

    .line 7
    iget-object v4, v4, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v4, :cond_2c

    .line 8
    invoke-virtual {v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 11
    :cond_2f
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    .line 14
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_42

    monitor-exit p0

    return-void

    .line 15
    :cond_3e
    :goto_3e
    :try_start_3e
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_42

    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 2
    iget-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_f5

    const/4 v1, 0x0

    if-eqz p2, :cond_47

    .line 7
    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_47

    const/4 v2, 0x0

    .line 8
    :goto_f
    iget v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_47

    .line 9
    iget-object v3, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2d

    .line 13
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 14
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_fb

    monitor-exit p0

    return-void

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 15
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_47
    :goto_47
    iget p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_7f

    .line 26
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_77

    .line 28
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 29
    iget-object v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 30
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 31
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v3, p1, v1

    .line 32
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {p1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    .line 33
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aput-wide v5, p1, v1

    .line 34
    iget-wide v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    goto :goto_7c

    .line 37
    :cond_77
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 41
    :cond_7f
    iget p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 43
    iget-boolean p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_bb

    .line 44
    iput-boolean v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 45
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 46
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    iget-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 47
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Ldc/squareup/okio/BufferedSink;)V

    .line 48
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    if-eqz p2, :cond_d9

    .line 50
    iget-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_d9

    .line 53
    :cond_bb
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 55
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 56
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 58
    :cond_d9
    :goto_d9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V

    .line 60
    iget-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_ec

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_f3

    .line 61
    :cond_ec
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_f3
    .catchall {:try_start_2d .. :try_end_f3} :catchall_fb

    :cond_f3
    monitor-exit p0

    return-void

    .line 62
    :cond_f5
    :try_start_f5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_fb
    .catchall {:try_start_f5 .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->close()V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 4
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_23

    if-eqz v0, :cond_21

    .line 7
    iget-wide v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_74

    cmp-long v4, v1, p2

    if-eqz v4, :cond_23

    :cond_21
    monitor-exit p0

    return-object v3

    :cond_23
    if-eqz v0, :cond_2b

    .line 11
    :try_start_25
    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_74

    if-eqz p2, :cond_2b

    monitor-exit p0

    return-object v3

    .line 14
    :cond_2b
    :try_start_2b
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez p2, :cond_6b

    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz p2, :cond_34

    goto :goto_6b

    .line 25
    :cond_34
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 26
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p2}, Ldc/squareup/okio/BufferedSink;->flush()V

    .line 28
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_52
    .catchall {:try_start_2b .. :try_end_52} :catchall_74

    if-eqz p2, :cond_56

    monitor-exit p0

    return-object v3

    :cond_56
    if-nez v0, :cond_62

    .line 33
    :try_start_58
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_62
    new-instance p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 37
    iput-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_74

    monitor-exit p0

    return-object p1

    .line 38
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_74

    monitor-exit p0

    return-object v3

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evictAll()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_25

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0, v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 6
    :cond_25
    iput-boolean v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 3
    :cond_7
    :try_start_7
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 6
    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_1a

    goto :goto_4e

    .line 8
    :cond_1a
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_50

    if-nez v0, :cond_22

    monitor-exit p0

    return-object v1

    .line 11
    :cond_22
    :try_start_22
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 12
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 14
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_50

    :cond_4c
    monitor-exit p0

    return-object v0

    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v1

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_80

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 11
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_2c

    .line 13
    :cond_23
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 18
    :cond_2c
    :goto_2c
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_80

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    .line 20
    :try_start_37
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 21
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 22
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3f} :catch_41
    .catchall {:try_start_37 .. :try_end_3f} :catchall_80

    monitor-exit p0

    return-void

    :catch_41
    move-exception v0

    .line 25
    :try_start_42
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 27
    invoke-virtual {v2, v4, v3, v0}, Ldc/squareup/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_42 .. :try_end_6e} :catchall_80

    const/4 v0, 0x0

    .line 34
    :try_start_6f
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->delete()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_75

    .line 36
    :try_start_72
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    goto :goto_79

    :catchall_75
    move-exception v1

    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 37
    throw v1

    .line 40
    :cond_79
    :goto_79
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 42
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_80

    monitor-exit p0

    return-void

    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method journalRebuildRequired()Z
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method declared-synchronized rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 5
    :cond_8
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_ba

    :try_start_14
    const-string v1, "libcore.io.DiskLruCache"

    .line 7
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    const-string v1, "1"

    .line 8
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 10
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 11
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 14
    iget-object v4, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/16 v5, 0x20

    if-eqz v4, :cond_6d

    const-string v4, "DIRTY"

    .line 15
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 16
    iget-object v3, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 17
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    goto :goto_49

    :cond_6d
    const-string v4, "CLEAN"

    .line 19
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 20
    iget-object v4, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 21
    invoke-virtual {v3, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Ldc/squareup/okio/BufferedSink;)V

    .line 22
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;
    :try_end_81
    .catchall {:try_start_14 .. :try_end_81} :catchall_b5

    goto :goto_49

    .line 26
    :cond_82
    :try_start_82
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 29
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 30
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 32
    :cond_98
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 33
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 35
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 37
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_b3
    .catchall {:try_start_82 .. :try_end_b3} :catchall_ba

    monitor-exit p0

    return-void

    :catchall_b5
    move-exception v1

    .line 38
    :try_start_b6
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 39
    throw v1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    const/4 v0, 0x0

    if-nez p1, :cond_17

    monitor-exit p0

    return v0

    .line 7
    :cond_17
    :try_start_17
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 8
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_27

    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit p0

    return p1

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    :cond_7
    const/4 v0, 0x0

    .line 5
    :goto_8
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_25

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 7
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v3, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    const-wide/16 v1, 0x0

    .line 8
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 11
    :cond_25
    iget v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iget-object v2, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 16
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_58
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iput-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 2
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz p1, :cond_e

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 2
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 3
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    :cond_1c
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.AnonymousClass1 (dc.squareup.okhttp3.internal.cache.DiskLruCache$1)
.class Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-boolean v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iget-boolean v4, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v2, v4

    if-eqz v2, :cond_10

    .line 3
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3b

    return-void

    .line 7
    :cond_10
    :try_start_10
    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14
    .catchall {:try_start_10 .. :try_end_13} :catchall_3b

    goto :goto_18

    .line 9
    :catch_14
    :try_start_14
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_3b

    .line 13
    :goto_18
    :try_start_18
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 14
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 15
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    iput v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2a} :catch_2b
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3b

    goto :goto_39

    .line 18
    :catch_2b
    :try_start_2b
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 19
    invoke-static {}, Ldc/squareup/okio/Okio;->blackhole()Ldc/squareup/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v2

    iput-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    .line 21
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3b

    throw v1
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.AnonymousClass2 (dc.squareup.okhttp3.internal.cache.DiskLruCache$2)
.class Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;
.super Ldc/squareup/okhttp3/internal/cache/FaultHidingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Ldc/squareup/okio/BufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okio/Sink;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0, p2}, Ldc/squareup/okhttp3/internal/cache/FaultHidingSink;-><init>(Ldc/squareup/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 3

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.AnonymousClass3 (dc.squareup.okhttp3.internal.cache.DiskLruCache$3)
.class Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3
    :cond_6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 5
    :try_start_9
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-boolean v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    monitor-exit v0

    return v3

    .line 7
    :cond_12
    :goto_12
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 8
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 9
    iget-boolean v4, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v4, :cond_27

    goto :goto_12

    .line 10
    :cond_27
    invoke-virtual {v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2

    if-nez v2, :cond_2e

    goto :goto_12

    .line 12
    :cond_2e
    iput-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 13
    monitor-exit v0

    return v1

    .line 15
    :cond_32
    monitor-exit v0

    return v3

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public next()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 3

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->nextSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    return-object v0

    .line 5
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->next()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 3
    :try_start_5
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->access$000(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_15
    .catchall {:try_start_5 .. :try_end_e} :catchall_11

    .line 8
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    goto :goto_17

    :catchall_11
    move-exception v0

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    .line 9
    throw v0

    .line 10
    :catch_15
    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;->removeSnapshot:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    :goto_17
    return-void

    .line 11
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.Editor (dc.squareup.okhttp3.internal.cache.DiskLruCache$Editor)
.class public final Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 3
    iget-boolean p2, p2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_d

    const/4 p1, 0x0

    goto :goto_11

    :cond_d
    iget p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_11
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_18

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_13

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_13
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_1e
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public abortUnlessCommitted()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    if-ne v1, p0, :cond_13

    .line 4
    :try_start_d
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_13
    .catchall {:try_start_d .. :try_end_13} :catchall_15

    .line 8
    :catch_13
    :cond_13
    :try_start_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_17

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_13

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 8
    :cond_13
    iput-boolean v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_1d
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method detach()V
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_20

    const/4 v0, 0x0

    .line 2
    :goto_7
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v2, :cond_1b

    .line 4
    :try_start_d
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_18

    :catch_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 9
    :cond_1b
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    :cond_20
    return-void
.end method

.method public newSink(I)Ldc/squareup/okio/Sink;
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_35

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_13

    .line 6
    invoke-static {}, Ldc/squareup/okio/Okio;->blackhole()Ldc/squareup/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_13
    iget-boolean v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_1c

    .line 9
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 11
    :cond_1c
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3b

    .line 14
    :try_start_20
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v1, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object p1
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_28} :catch_2f
    .catchall {:try_start_20 .. :try_end_28} :catchall_3b

    .line 18
    :try_start_28
    new-instance v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v1, p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Ldc/squareup/okio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 19
    :catch_2f
    invoke-static {}, Ldc/squareup/okio/Okio;->blackhole()Ldc/squareup/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 20
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_3b
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public newSource(I)Ldc/squareup/okio/Source;
    .registers 6

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_25

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2b

    if-eq v2, p0, :cond_13

    goto :goto_23

    .line 9
    :cond_13
    :try_start_13
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object p1
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1f} :catch_21
    .catchall {:try_start_13 .. :try_end_1f} :catchall_2b

    :try_start_1f
    monitor-exit v0

    return-object p1

    .line 11
    :catch_21
    monitor-exit v0

    return-object v3

    .line 12
    :cond_23
    :goto_23
    monitor-exit v0

    return-object v3

    .line 13
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_2b
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw p1
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.Editor.AnonymousClass1 (dc.squareup.okhttp3.internal.cache.DiskLruCache$Editor$1)
.class Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;
.super Ldc/squareup/okhttp3/internal/cache/FaultHidingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Ldc/squareup/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Ldc/squareup/okio/Sink;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ldc/squareup/okhttp3/internal/cache/FaultHidingSink;-><init>(Ldc/squareup/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 3

    .line 1
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter p1

    .line 2
    :try_start_5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.Entry (dc.squareup.okhttp3.internal.cache.DiskLruCache$Entry)
.class final Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 9

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 4
    iget v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v1, v0, [J

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 5
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 6
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 11
    :goto_24
    iget v2, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_54

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_54
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 6
    :goto_8
    :try_start_8
    array-length v1, p1

    if-ge v0, v1, :cond_18

    .line 7
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_15} :catch_19

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    return-void

    .line 10
    :catch_19
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 11
    :cond_1e
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method snapshot()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 11

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v0, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Ldc/squareup/okio/Source;

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_19
    :try_start_19
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v3, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_2e

    .line 7
    iget-object v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ldc/squareup/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 9
    :cond_2e
    new-instance v9, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Ldc/squareup/okio/Source;[J)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_39} :catch_3a

    return-object v9

    :catch_3a
    nop

    .line 12
    :goto_3b
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v8, v2, :cond_4d

    .line 13
    aget-object v2, v0, v8

    if-eqz v2, :cond_4d

    .line 14
    aget-object v1, v0, v8

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 22
    :cond_4d
    :try_start_4d
    invoke-virtual {v1, p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_50

    :catch_50
    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_52
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method writeLengths(Ldc/squareup/okio/BufferedSink;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 2
    invoke-interface {p1, v5}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

###### Class dc.squareup.okhttp3.internal.cache.DiskLruCache.Snapshot (dc.squareup.okhttp3.internal.cache.DiskLruCache$Snapshot)
.class public final Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Ldc/squareup/okio/Source;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Ldc/squareup/okio/Source;[J)V
    .registers 7

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 4
    iput-object p5, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Ldc/squareup/okio/Source;

    .line 5
    iput-object p6, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    return-void
.end method

.method static synthetic access$000(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Ldc/squareup/okio/Source;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public edit()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLength(I)J
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSource(I)Ldc/squareup/okio/Source;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->sources:[Ldc/squareup/okio/Source;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public key()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
