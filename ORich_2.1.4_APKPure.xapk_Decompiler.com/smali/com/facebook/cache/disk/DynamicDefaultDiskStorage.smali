###### Class com.facebook.cache.disk.DynamicDefaultDiskStorage (com.facebook.cache.disk.DynamicDefaultDiskStorage)
.class public Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/DiskStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseDirectoryName:Ljava/lang/String;

.field private final mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field volatile mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;

    sput-object v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/common/internal/Supplier;Ljava/lang/String;Lcom/facebook/cache/common/CacheErrorLogger;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "version",
            "baseDirectoryPathSupplier",
            "baseDirectoryName",
            "cacheErrorLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/CacheErrorLogger;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mVersion:I

    .line 55
    iput-object p4, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 56
    iput-object p2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    .line 57
    iput-object p3, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mBaseDirectoryName:Ljava/lang/String;

    .line 58
    new-instance p1, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V

    iput-object p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    return-void
.end method

.method private createStorage()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v1}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mBaseDirectoryName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->createRootDirectoryIfNecessary(Ljava/io/File;)V

    .line 181
    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage;

    iget v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mVersion:I

    iget-object v3, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage;-><init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V

    .line 182
    new-instance v2, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    invoke-direct {v2, v0, v1}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;-><init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V

    iput-object v2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    return-void
.end method

.method private shouldCreateNewStorage()Z
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    .line 164
    iget-object v1, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->delegate:Lcom/facebook/cache/disk/DiskStorage;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->rootDirectory:Ljava/io/File;

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->rootDirectory:Ljava/io/File;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method


# virtual methods
.method public clearAll()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->clearAll()V

    return-void
.end method

.method public contains(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
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

    .line 96
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->contains(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createRootDirectoryIfNecessary(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootDirectory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->mkdirs(Ljava/io/File;)V
    :try_end_3
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_3} :catch_f

    .line 197
    sget-object v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->TAG:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Created cache directory %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_f
    move-exception p1

    .line 190
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->TAG:Ljava/lang/Class;

    const-string v3, "createRootDirectoryIfNecessary"

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->logError(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    throw p1
.end method

.method deleteOldStorageIfNecessary()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->delegate:Lcom/facebook/cache/disk/DiskStorage;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->rootDirectory:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 174
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->rootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileTree;->deleteRecursively(Ljava/io/File;)Z

    :cond_13
    return-void
.end method

.method declared-synchronized get()Lcom/facebook/cache/disk/DiskStorage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->shouldCreateNewStorage()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 156
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->deleteOldStorageIfNecessary()V

    .line 157
    invoke-direct {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->createStorage()V

    .line 159
    :cond_d
    iget-object v0, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->mCurrentState:Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;

    iget-object v0, v0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->delegate:Lcom/facebook/cache/disk/DiskStorage;

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cache/disk/DiskStorage;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->getDumpInfo()Lcom/facebook/cache/disk/DiskStorage$DiskDumpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;
    .registers 4
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->getResource(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/binaryresource/BinaryResource;

    move-result-object p1

    return-object p1
.end method

.method public getStorageName()Ljava/lang/String;
    .registers 2

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->getStorageName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const-string v0, ""

    return-object v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;
    .registers 4
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

    .line 117
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->insert(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/DiskStorage$Inserter;

    move-result-object p1

    return-object p1
.end method

.method public isEnabled()Z
    .registers 2

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->isEnabled()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->isExternal()Z

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    const/4 v0, 0x0

    return v0
.end method

.method public purgeUnexpectedResources()V
    .registers 4

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cache/disk/DiskStorage;->purgeUnexpectedResources()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    .line 111
    sget-object v1, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->TAG:Ljava/lang/Class;

    const-string v2, "purgeUnexpectedResources"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->remove(Lcom/facebook/cache/disk/DiskStorage$Entry;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/DiskStorage;->remove(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
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

    .line 101
    invoke-virtual {p0}, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;->get()Lcom/facebook/cache/disk/DiskStorage;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/DiskStorage;->touch(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class com.facebook.cache.disk.DynamicDefaultDiskStorage.State (com.facebook.cache.disk.DynamicDefaultDiskStorage$State)
.class Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;
.super Ljava/lang/Object;
.source "DynamicDefaultDiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DynamicDefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public final delegate:Lcom/facebook/cache/disk/DiskStorage;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final rootDirectory:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/facebook/cache/disk/DiskStorage;)V
    .registers 3
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/cache/disk/DiskStorage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rootDirectory",
            "delegate"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->delegate:Lcom/facebook/cache/disk/DiskStorage;

    .line 45
    iput-object p1, p0, Lcom/facebook/cache/disk/DynamicDefaultDiskStorage$State;->rootDirectory:Ljava/io/File;

    return-void
.end method
