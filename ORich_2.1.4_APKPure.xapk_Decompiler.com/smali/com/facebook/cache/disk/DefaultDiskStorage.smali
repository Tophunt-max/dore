###### Class com.facebook.cache.disk.DefaultDiskStorage (com.facebook.cache.disk.DefaultDiskStorage)
.class public Lcom/facebook/cache/disk/DefaultDiskStorage;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;,
        Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
    }
.end annotation


# static fields
.field private static final CONTENT_FILE_EXTENSION:Ljava/lang/String; = ".cnt"

.field private static final DEFAULT_DISK_STORAGE_VERSION_PREFIX:Ljava/lang/String; = "v2"

.field private static final SHARDING_BUCKET_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final TEMP_FILE_EXTENSION:Ljava/lang/String; = ".tmp"

.field static final TEMP_FILE_LIFETIME_MS:J


# instance fields
.field private final mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final mClock:Lcom/facebook/common/time/Clock;

.field private final mIsExternal:Z

.field private final mRootDirectory:Ljava/io/File;

.field private final mVersionDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    const-class v0, Lcom/facebook/cache/disk/DefaultDiskStorage;

    sput-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TEMP_FILE_LIFETIME_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootDirectory",
            "version",
            "cacheErrorLogger"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    .line 96
    invoke-static {p1, p3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->isExternal(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mIsExternal:Z

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getVersionSubdirectoryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    .line 103
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 104
    invoke-direct {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->recreateDirectoryIfVersionChanges()V

    .line 105
    invoke-static {}, Lcom/facebook/common/time/SystemClock;->get()Lcom/facebook/common/time/SystemClock;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getShardFileInfo(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/Clock;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 41
    invoke-static {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getFileTypefromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/Class;
    .registers 1

    .line 41
    sget-object v0, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method private doRemove(Ljava/io/File;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentFile"
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    return-wide v0

    .line 415
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 416
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_14

    return-wide v0

    :cond_14
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private dumpCacheEntry(Lcom/facebook/cache/disk/DiskStorage$Entry;)Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    check-cast p1, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 449
    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->read()[B

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->typeOfBytes([B)Ljava/lang/String;

    move-result-object v4

    const-string v1, "undefined"

    .line 451
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4a

    const/4 v1, 0x0

    .line 452
    check-cast v1, Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v5, v0, v3

    .line 454
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "0x%02X 0x%02X 0x%02X 0x%02X"

    .line 453
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    :cond_4a
    const-string v0, ""

    :goto_4c
    move-object v6, v0

    .line 456
    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 457
    new-instance v0, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;

    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getSize()J

    move-result-wide v7

    long-to-float v5, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method private static getFileTypefromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, ".cnt"

    .line 563
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, ".tmp"

    .line 565
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    return-object v0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private getFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 373
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    const-string v1, ".cnt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 374
    iget-object p1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->toPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getShardFileInfo(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 539
    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->fromFile(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 543
    :cond_8
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 544
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    return-object v0
.end method

.method private getSubdirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSubdirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getVersionSubdirectoryName(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "v2"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 149
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "%s.ols%d.%d"

    .line 144
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isExternal(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "cacheErrorLogger"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_32

    .line 120
    :try_start_b
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_32

    .line 121
    :try_start_f
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_32

    move v0, p0

    goto :goto_3c

    :catch_15
    move-exception v1

    goto :goto_19

    :catch_17
    move-exception v1

    const/4 p0, 0x0

    .line 125
    :goto_19
    :try_start_19
    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read folder to check if external: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v3, p0, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_32

    goto :goto_3c

    :catch_32
    move-exception p0

    .line 133
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    const-string v3, "failed to get the external storage directory!"

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    return v0
.end method

.method private mkdirs(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_3
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 337
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    throw p1
.end method

.method private query(Ljava/lang/String;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "touch"
        }
    .end annotation

    .line 389
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz p2, :cond_15

    if-eqz v0, :cond_15

    .line 392
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {p2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_15
    return v0
.end method

.method private recreateDirectoryIfVersionChanges()V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    goto :goto_19

    .line 181
    :cond_a
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 183
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v1, :cond_3e

    .line 188
    :try_start_1b
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_20
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_3e

    .line 191
    :catch_21
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version directory could not be created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method private typeOfBytes([B)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 461
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3f

    const/4 v0, 0x0

    .line 462
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_14

    aget-byte v1, p1, v3

    const/16 v2, -0x28

    if-ne v1, v2, :cond_14

    const-string p1, "jpg"

    return-object p1

    .line 464
    :cond_14
    aget-byte v1, p1, v0

    const/16 v2, -0x77

    if-ne v1, v2, :cond_23

    aget-byte v1, p1, v3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_23

    const-string p1, "png"

    return-object p1

    .line 466
    :cond_23
    aget-byte v1, p1, v0

    const/16 v2, 0x52

    const/16 v4, 0x49

    if-ne v1, v2, :cond_32

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_32

    const-string p1, "webp"

    return-object p1

    .line 468
    :cond_32
    aget-byte v0, p1, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_3f

    aget-byte p1, p1, v3

    if-ne p1, v4, :cond_3f

    const-string p1, "gif"

    return-object p1

    :cond_3f
    const-string p1, "undefined"

    return-object p1
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileTree;->deleteContents(Ljava/io/File;)Z

    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    const/4 p2, 0x0

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method getContentFileFor(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    .line 431
    new-instance v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;

    invoke-direct {v1}, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;-><init>()V

    .line 432
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/DiskStorage$Entry;

    .line 433
    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->dumpCacheEntry(Lcom/facebook/cache/disk/DiskStorage$Entry;)Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;

    move-result-object v2

    .line 434
    iget-object v3, v2, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfoEntry;->type:Ljava/lang/String;

    .line 435
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v4, :cond_34

    .line 437
    iget-object v4, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 439
    :cond_34
    iget-object v6, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->typeCounts:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :goto_42
    iget-object v3, v1, Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_48
    return-object v1
.end method

.method public bridge synthetic getEntries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 483
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mVersionDirectory:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/facebook/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V

    .line 484
    invoke-virtual {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->getEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 365
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 366
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {p2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 367
    invoke-static {p1}, Lcom/facebook/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStorageName()Ljava/lang/String;
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance p2, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    const-string v0, ".tmp"

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    .line 347
    iget-object v0, p2, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getSubdirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "insert"

    if-nez v1, :cond_19

    .line 349
    invoke-direct {p0, v0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->mkdirs(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    :cond_19
    :try_start_19
    invoke-virtual {p2, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->createTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 354
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p1

    .line 356
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage;->TAG:Ljava/lang/Class;

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    throw p1
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mIsExternal:Z

    return v0
.end method

.method public purgeUnexpectedResources()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage;->mRootDirectory:Ljava/io/File;

    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    invoke-static {v0, v1}, Lcom/facebook/common/file/FileTree;->walkFileTree(Ljava/io/File;Lcom/facebook/common/file/FileTreeVisitor;)V

    return-void
.end method

.method public remove(Lcom/facebook/cache/disk/DiskStorage$Entry;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 400
    check-cast p1, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;

    .line 401
    invoke-virtual {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/facebook/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 407
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->doRemove(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    const/4 p2, 0x1

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->query(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.AnonymousClass1 (com.facebook.cache.disk.DefaultDiskStorage$1)
.class synthetic Lcom/facebook/cache/disk/DefaultDiskStorage$1;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.cache.disk.DefaultDiskStorage.EntriesCollector (com.facebook.cache.disk.DefaultDiskStorage$EntriesCollector)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/common/file/FileTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntriesCollector"
.end annotation


# instance fields
.field private final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public postVisitDirectory(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    return-void
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    return-void
.end method

.method public visitFile(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$000(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 248
    iget-object v1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    const-string v2, ".cnt"

    if-ne v1, v2, :cond_1b

    .line 249
    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntriesCollector;->result:Ljava/util/List;

    new-instance v2, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;

    iget-object v0, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.EntryImpl (com.facebook.cache.disk.DefaultDiskStorage$EntryImpl)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryImpl"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final resource:Lcom/facebook/binaryresource/FileBinaryResource;

.field private size:J

.field private timestamp:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedFile"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    .line 498
    invoke-static {p2}, Lcom/facebook/binaryresource/FileBinaryResource;->create(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/facebook/binaryresource/FileBinaryResource;

    const-wide/16 p1, -0x1

    .line 499
    iput-wide p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    .line 500
    iput-wide p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .registers 4

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 505
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getResource()Lcom/facebook/binaryresource/BinaryResource;
    .registers 2

    .line 488
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->getResource()Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/facebook/binaryresource/FileBinaryResource;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/facebook/binaryresource/FileBinaryResource;

    return-object v0
.end method

.method public getSize()J
    .registers 6

    .line 524
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_10

    .line 525
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-virtual {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    .line 527
    :cond_10
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->size:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 6

    .line 510
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    .line 511
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->resource:Lcom/facebook/binaryresource/FileBinaryResource;

    invoke-virtual {v0}, Lcom/facebook/binaryresource/FileBinaryResource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    .line 514
    :cond_14
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$EntryImpl;->timestamp:J

    return-wide v0
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.FileInfo (com.facebook.cache.disk.DefaultDiskStorage$FileInfo)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public final resourceId:Ljava/lang/String;

.field public final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "resourceId"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    .line 583
    iput-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .registers 4

    .line 576
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 602
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 603
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_e

    return-object v2

    .line 607
    :cond_e
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-static {v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    return-object v2

    :cond_19
    const/4 v4, 0x0

    .line 612
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, ".tmp"

    .line 613
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_2d

    return-object v2

    .line 618
    :cond_2d
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 621
    :cond_31
    new-instance v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    invoke-direct {v0, v3, p0}, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createTempFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public toPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentPath"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.FileType (com.facebook.cache.disk.DefaultDiskStorage$FileType)
.class public interface abstract annotation Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FileType"
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = ".cnt"

.field public static final TEMP:Ljava/lang/String; = ".tmp"

###### Class com.facebook.cache.disk.DefaultDiskStorage.IncompleteFileException (com.facebook.cache.disk.DefaultDiskStorage$IncompleteFileException)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;
.super Ljava/io/IOException;
.source "DefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncompleteFileException"
.end annotation


# direct methods
.method public constructor <init>(JJ)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expected",
            "actual"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File was not written completely. Expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", found: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.InserterImpl (com.facebook.cache.disk.DefaultDiskStorage$InserterImpl)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage$Inserter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InserterImpl"
.end annotation


# instance fields
.field private final mResourceId:Ljava/lang/String;

.field final mTemporaryFile:Ljava/io/File;

.field final synthetic this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "resourceId",
            "temporaryFile"
        }
    .end annotation

    .line 632
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    .line 634
    iput-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public commit(Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$400(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->commit(Ljava/lang/Object;J)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object p1

    return-object p1
.end method

.method public commit(Ljava/lang/Object;J)Lcom/facebook/binaryresource/BinaryResource;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "debugInfo",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 683
    :try_start_8
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/common/file/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_d
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_8 .. :try_end_d} :catch_1b

    .line 700
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 701
    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    .line 703
    :cond_16
    invoke-static {p1}, Lcom/facebook/binaryresource/FileBinaryResource;->create(Ljava/io/File;)Lcom/facebook/binaryresource/FileBinaryResource;

    move-result-object p1

    return-object p1

    :catch_1b
    move-exception p1

    .line 686
    invoke-virtual {p1}, Lcom/facebook/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_33

    .line 689
    instance-of p3, p2, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez p3, :cond_30

    .line 692
    instance-of p2, p2, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_2d

    .line 693
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_35

    .line 695
    :cond_2d
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_35

    .line 690
    :cond_30
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_35

    .line 688
    :cond_33
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 697
    :goto_35
    iget-object p3, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {p3}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$1000(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p3

    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$900()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "commit"

    invoke-interface {p3, p2, v0, v1, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    throw p1
.end method

.method public writeData(Lcom/facebook/cache/common/WriterCallback;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_7} :catch_35

    .line 653
    :try_start_7
    new-instance v0, Lcom/facebook/common/internal/CountingOutputStream;

    invoke-direct {v0, p2}, Lcom/facebook/common/internal/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 654
    invoke-interface {p1, v0}, Lcom/facebook/cache/common/WriterCallback;->write(Ljava/io/OutputStream;)V

    .line 657
    invoke-virtual {v0}, Lcom/facebook/common/internal/CountingOutputStream;->flush()V

    .line 658
    invoke-virtual {v0}, Lcom/facebook/common/internal/CountingOutputStream;->getCount()J

    move-result-wide v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_30

    .line 663
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 667
    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_24

    return-void

    .line 668
    :cond_24
    new-instance p1, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;

    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw p1

    :catchall_30
    move-exception p1

    .line 663
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 664
    throw p1

    :catch_35
    move-exception p1

    .line 643
    iget-object p2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {p2}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$1000(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p2

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 645
    invoke-static {}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$900()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateResource"

    .line 643
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    throw p1
.end method

###### Class com.facebook.cache.disk.DefaultDiskStorage.PurgingVisitor (com.facebook.cache.disk.DefaultDiskStorage$PurgingVisitor)
.class Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/common/file/FileTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurgingVisitor"
.end annotation


# instance fields
.field private insideBaseDirectory:Z

.field final synthetic this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .registers 3

    .line 270
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method

.method private isExpectedFile(Ljava/io/File;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$000(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 307
    :cond_a
    iget-object v2, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    const-string v3, ".tmp"

    if-ne v2, v3, :cond_15

    .line 308
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->isRecentFile(Ljava/io/File;)Z

    move-result p1

    return p1

    .line 310
    :cond_15
    iget-object p1, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$FileInfo;->type:Ljava/lang/String;

    const/4 v0, 0x1

    const-string v2, ".cnt"

    if-ne p1, v2, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    return v0
.end method

.method private isRecentFile(Ljava/io/File;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$400(Lcom/facebook/cache/disk/DefaultDiskStorage;)Lcom/facebook/common/time/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v2

    sget-wide v4, Lcom/facebook/cache/disk/DefaultDiskStorage;->TEMP_FILE_LIFETIME_MS:J

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method


# virtual methods
.method public postVisitDirectory(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$300(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 291
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-nez v0, :cond_13

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 296
    :cond_13
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$200(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    .line 298
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    :cond_26
    return-void
.end method

.method public preVisitDirectory(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->this$0:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/facebook/cache/disk/DefaultDiskStorage;->access$200(Lcom/facebook/cache/disk/DefaultDiskStorage;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    .line 277
    iput-boolean p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    :cond_13
    return-void
.end method

.method public visitFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->insideBaseDirectory:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$PurgingVisitor;->isExpectedFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 284
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_d
    return-void
.end method
