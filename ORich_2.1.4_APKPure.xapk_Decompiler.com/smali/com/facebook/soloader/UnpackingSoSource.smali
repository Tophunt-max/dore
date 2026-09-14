###### Class com.facebook.soloader.UnpackingSoSource (com.facebook.soloader.UnpackingSoSource)
.class public abstract Lcom/facebook/soloader/UnpackingSoSource;
.super Lcom/facebook/soloader/DirectorySoSource;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/UnpackingSoSource$Unpacker;,
        Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;,
        Lcom/facebook/soloader/UnpackingSoSource$InputDso;,
        Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;,
        Lcom/facebook/soloader/UnpackingSoSource$Dso;
    }
.end annotation


# static fields
.field private static final DEPS_FILE_NAME:Ljava/lang/String; = "dso_deps"

.field private static final LOCK_FILE_NAME:Ljava/lang/String; = "dso_lock"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "dso_manifest"

.field private static final MANIFEST_VERSION:B = 0x1t

.field private static final STATE_CLEAN:B = 0x1t

.field private static final STATE_DIRTY:B = 0x0t

.field private static final STATE_FILE_NAME:Ljava/lang/String; = "dso_state"

.field private static final TAG:Ljava/lang/String; = "fb-UnpackingSoSource"


# instance fields
.field private mAbis:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected mCorruptedLib:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLibsBeingLoaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 56
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 59
    invoke-static {p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/facebook/soloader/DirectorySoSource;-><init>(Ljava/io/File;I)V

    .line 56
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;B)V

    return-void
.end method

.method private deleteUnmentionedFiles([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 188
    :goto_a
    array-length v3, v0

    if-ge v2, v3, :cond_6a

    .line 189
    aget-object v3, v0, v2

    const-string v4, "dso_state"

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "dso_lock"

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "dso_deps"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    const-string v4, "dso_manifest"

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_67

    :cond_30
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_32
    if-nez v4, :cond_45

    .line 198
    array-length v6, p1

    if-ge v5, v6, :cond_45

    .line 199
    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    const/4 v4, 0x1

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_45
    if-nez v4, :cond_67

    .line 205
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleting unaccounted-for file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "fb-UnpackingSoSource"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_6a
    return-void

    .line 185
    :cond_6b
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to list directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, " write permission"

    const-string v1, "error removing "

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extracting DSO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v3, v3, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb-UnpackingSoSource"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 215
    :try_start_1f
    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/File;->setWritable(Z)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/UnpackingSoSource;->extractDsoImpl(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_68

    .line 220
    iget-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->setWritable(Z)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void

    .line 216
    :cond_4f
    :try_start_4f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot make directory writable for us: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p1

    .line 220
    iget-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p2, v2}, Ljava/io/File;->setWritable(Z)Z

    move-result p2

    if-nez p2, :cond_8c

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_8c
    throw p1
.end method

.method private extractDsoImpl(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rw"

    const-string v1, " write permission"

    const-string v2, "error removing "

    const-string v3, "fb-UnpackingSoSource"

    .line 227
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    iget-object v6, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v6, v6, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 230
    :try_start_15
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_36

    invoke-virtual {v4, v8}, Ljava/io/File;->setWritable(Z)Z

    move-result v7

    if-nez v7, :cond_36

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error adding write permission to: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_36} :catch_bd
    .catchall {:try_start_15 .. :try_end_36} :catchall_bb

    .line 235
    :cond_36
    :try_start_36
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_3d
    .catchall {:try_start_36 .. :try_end_3b} :catchall_bb

    :goto_3b
    move-object v6, v7

    goto :goto_60

    :catch_3d
    move-exception v7

    .line 237
    :try_start_3e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error overwriting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " trying to delete and start over"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 239
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3b

    .line 242
    :goto_60
    iget-object v0, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    .line 243
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-le v0, v8, :cond_70

    .line 245
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    int-to-long v9, v0

    invoke-static {v7, v9, v10}, Lcom/facebook/soloader/SysUtil;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V

    .line 247
    :cond_70
    iget-object p1, p1, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    const v0, 0x7fffffff

    invoke-static {v6, p1, v0, p2}, Lcom/facebook/soloader/SysUtil;->copyBytes(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    .line 248
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    invoke-virtual {v6, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 249
    invoke-virtual {v4, v8, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_83} :catch_bd
    .catchall {:try_start_3e .. :try_end_83} :catchall_bb

    if-eqz p1, :cond_a4

    .line 256
    invoke-virtual {v4, v5}, Ljava/io/File;->setWritable(Z)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_a0
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    return-void

    .line 250
    :cond_a4
    :try_start_a4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot make file executable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_bb} :catch_bd
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_bb

    :catchall_bb
    move-exception p1

    goto :goto_c2

    :catch_bd
    move-exception p1

    .line 253
    :try_start_be
    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->dumbDeleteRecursive(Ljava/io/File;)V

    .line 254
    throw p1
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_bb

    .line 256
    :goto_c2
    invoke-virtual {v4, v5}, Ljava/io/File;->setWritable(Z)Z

    move-result p2

    if-nez p2, :cond_dd

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dd
    if-eqz v6, :cond_e2

    .line 260
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 262
    :cond_e2
    throw p1
.end method

.method private getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    monitor-enter v0

    .line 450
    :try_start_3
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    .line 452
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 453
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->mLibsBeingLoaded:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_15
    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception p1

    .line 456
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public static getSoStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 69
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private refreshLocked(Lcom/facebook/soloader/FileLocker;I[B)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fb-UnpackingSoSource"

    .line 305
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v2, "dso_state"

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v6, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 309
    :try_start_14
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    if-eq v4, v8, :cond_43

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dso store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " regeneration interrupted: wiping clean"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_14 .. :try_end_35} :catch_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_37

    :catch_35
    const/4 v4, 0x0

    goto :goto_43

    :catchall_37
    move-exception p1

    .line 307
    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p2

    .line 317
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p2

    :cond_43
    :goto_43
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 319
    new-instance v5, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v7, "dso_deps"

    invoke-direct {v5, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 321
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    :try_start_55
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v2, v9

    new-array v9, v2, [B

    .line 323
    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10

    if-eq v10, v2, :cond_68

    const-string v2, "short read of so store deps file: marking unclean"

    .line 324
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 328
    :cond_68
    invoke-static {v9, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "deps mismatch on deps store: regenerating"

    .line 329
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_74
    if-eqz v4, :cond_7d

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_7b

    goto :goto_7d

    :cond_7b
    :goto_7b
    move-object v0, v1

    goto :goto_9f

    :cond_7d
    :goto_7d
    const-string v1, "so store dirty: regenerating"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {v6, v3}, Lcom/facebook/soloader/UnpackingSoSource;->writeState(Ljava/io/File;B)V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v0
    :try_end_89
    .catchall {:try_start_55 .. :try_end_89} :catchall_f4

    .line 338
    :try_start_89
    invoke-virtual {v0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v1

    .line 339
    invoke-virtual {v0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;

    move-result-object v2
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_e6

    .line 340
    :try_start_91
    invoke-direct {p0, v4, v1, v2}, Lcom/facebook/soloader/UnpackingSoSource;->regenerate(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_d8

    if-eqz v2, :cond_99

    .line 341
    :try_start_96
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_e6

    :cond_99
    if-eqz v0, :cond_7b

    .line 342
    :try_start_9b
    invoke-virtual {v0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_f4

    goto :goto_7b

    .line 344
    :goto_9f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-nez v0, :cond_a5

    return v3

    .line 352
    :cond_a5
    new-instance v9, Lcom/facebook/soloader/UnpackingSoSource$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v5

    move-object v4, p3

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/soloader/UnpackingSoSource$1;-><init>(Lcom/facebook/soloader/UnpackingSoSource;Ljava/io/File;[BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_d4

    .line 390
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SoSync:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v9, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_d7

    .line 392
    :cond_d4
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_d7
    return v8

    :catchall_d8
    move-exception p1

    .line 339
    :try_start_d9
    throw p1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception p2

    if-eqz v2, :cond_e5

    .line 341
    :try_start_dd
    invoke-virtual {v2}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    goto :goto_e5

    :catchall_e1
    move-exception p3

    :try_start_e2
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e5
    :goto_e5
    throw p2
    :try_end_e6
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception p1

    .line 337
    :try_start_e7
    throw p1
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception p2

    if-eqz v0, :cond_f3

    .line 342
    :try_start_eb
    invoke-virtual {v0}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ef

    goto :goto_f3

    :catchall_ef
    move-exception p3

    :try_start_f0
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f3
    :goto_f3
    throw p2
    :try_end_f4
    .catchall {:try_start_f0 .. :try_end_f4} :catchall_f4

    :catchall_f4
    move-exception p1

    .line 321
    :try_start_f5
    throw p1
    :try_end_f6
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_f6

    :catchall_f6
    move-exception p2

    .line 344
    :try_start_f7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_fa
    .catchall {:try_start_f7 .. :try_end_fa} :catchall_fb

    goto :goto_ff

    :catchall_fb
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ff
    throw p2
.end method

.method private regenerate(BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "regenerating DSO store "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb-UnpackingSoSource"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v3, "dso_manifest"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3f

    .line 273
    :try_start_31
    invoke-static {v2}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->read(Ljava/io/DataInput;)Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_39
    .catchall {:try_start_31 .. :try_end_35} :catchall_36

    goto :goto_40

    :catchall_36
    move-exception p1

    goto/16 :goto_c6

    :catch_39
    move-exception p1

    :try_start_3a
    const-string v3, "error reading existing DSO manifest"

    .line 275
    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    const/4 p1, 0x0

    :goto_40
    const/4 v3, 0x0

    if-nez p1, :cond_4a

    .line 280
    new-instance p1, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    new-array v4, v3, [Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {p1, v4}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    .line 283
    :cond_4a
    iget-object p2, p2, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-direct {p0, p2}, Lcom/facebook/soloader/UnpackingSoSource;->deleteUnmentionedFiles([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    const p2, 0x8000

    new-array p2, p2, [B

    .line 285
    :cond_54
    :goto_54
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 286
    invoke-virtual {p3}, Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;->next()Lcom/facebook/soloader/UnpackingSoSource$InputDso;

    move-result-object v4
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_36

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_60
    if-eqz v5, :cond_8d

    .line 288
    :try_start_62
    iget-object v7, p1, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    array-length v7, v7

    if-ge v6, v7, :cond_8d

    .line 289
    iget-object v7, p1, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    iget-object v8, v4, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v8, v8, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    iget-object v7, p1, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    iget-object v8, v4, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    iget-object v8, v8, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    .line 290
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_88

    const/4 v5, 0x0

    :cond_88
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    :catchall_8b
    move-exception p1

    goto :goto_93

    :cond_8d
    if-eqz v5, :cond_a0

    .line 295
    invoke-direct {p0, v4, p2}, Lcom/facebook/soloader/UnpackingSoSource;->extractDso(Lcom/facebook/soloader/UnpackingSoSource$InputDso;[B)V
    :try_end_92
    .catchall {:try_start_62 .. :try_end_92} :catchall_8b

    goto :goto_a0

    .line 286
    :goto_93
    :try_start_93
    throw p1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p2

    if-eqz v4, :cond_9f

    .line 297
    :try_start_97
    invoke-virtual {v4}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b

    goto :goto_9f

    :catchall_9b
    move-exception p3

    :try_start_9c
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9f
    :goto_9f
    throw p2

    :cond_a0
    :goto_a0
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->close()V
    :try_end_a5
    .catchall {:try_start_9c .. :try_end_a5} :catchall_36

    goto :goto_54

    .line 299
    :cond_a6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Finished regenerating DSO store "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 269
    :goto_c6
    :try_start_c6
    throw p1
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception p2

    .line 299
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d0
    throw p2
.end method

.method private static writeState(Ljava/io/File;B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 174
    :try_start_9
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 176
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 177
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    .line 178
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_21
    move-exception p0

    .line 173
    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p1

    .line 178
    :try_start_24
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p1
.end method


# virtual methods
.method protected getDepsBlock()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;

    move-result-object v1

    .line 412
    :try_start_8
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    const/4 v3, 0x1

    .line 413
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 414
    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 415
    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2b

    .line 416
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_38

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2b
    if-eqz v1, :cond_30

    .line 419
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V

    .line 420
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_38
    move-exception v0

    .line 411
    :try_start_39
    throw v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v2

    if-eqz v1, :cond_45

    .line 419
    :try_start_3d
    invoke-virtual {v1}, Lcom/facebook/soloader/UnpackingSoSource$Unpacker;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw v2
.end method

.method public getSoSourceAbis()[Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    if-nez v0, :cond_8

    .line 77
    invoke-super {p0}, Lcom/facebook/soloader/DirectorySoSource;->getSoSourceAbis()[Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public loadLibrary(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    invoke-direct {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    monitor-enter v0

    .line 477
    :try_start_5
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/facebook/soloader/UnpackingSoSource;->loadLibraryFrom(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_d
    move-exception p1

    .line 478
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected abstract makeUnpacker()Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected prepare(I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "releasing dso store lock for "

    const-string v1, " (syncer thread started)"

    const-string v2, "not releasing dso store lock for "

    const-string v3, "fb-UnpackingSoSource"

    .line 428
    iget-object v4, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->mkdirOrThrow(Ljava/io/File;)V

    .line 429
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v6, "dso_lock"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    invoke-static {v4}, Lcom/facebook/soloader/FileLocker;->lock(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v4

    .line 432
    :try_start_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locked dso store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {p0}, Lcom/facebook/soloader/UnpackingSoSource;->getDepsBlock()[B

    move-result-object v5

    invoke-direct {p0, v4, p1, v5}, Lcom/facebook/soloader/UnpackingSoSource;->refreshLocked(Lcom/facebook/soloader/FileLocker;I[B)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 v4, 0x0

    goto :goto_52

    .line 436
    :cond_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dso store is up-to-date: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_1a .. :try_end_52} :catchall_84

    :goto_52
    if-eqz v4, :cond_6c

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v4}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_83

    .line 443
    :cond_6c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_83
    return-void

    :catchall_84
    move-exception p1

    if-eqz v4, :cond_9f

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {v4}, Lcom/facebook/soloader/FileLocker;->close()V

    goto :goto_b6

    .line 443
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_b6
    throw p1
.end method

.method protected declared-synchronized prepare(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 462
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->getLibraryLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 463
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    .line 465
    :try_start_6
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mCorruptedLib:Ljava/lang/String;

    const/4 p1, 0x2

    .line 466
    invoke-virtual {p0, p1}, Lcom/facebook/soloader/UnpackingSoSource;->prepare(I)V

    .line 467
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 468
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    .line 467
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw p1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSoSourceAbis([Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource;->mAbis:[Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.AnonymousClass1 (com.facebook.soloader.UnpackingSoSource$1)
.class Lcom/facebook/soloader/UnpackingSoSource$1;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/UnpackingSoSource;->refreshLocked(Lcom/facebook/soloader/FileLocker;I[B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/soloader/UnpackingSoSource;

.field final synthetic val$deps:[B

.field final synthetic val$depsFileName:Ljava/io/File;

.field final synthetic val$lock:Lcom/facebook/soloader/FileLocker;

.field final synthetic val$manifest:Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

.field final synthetic val$stateFileName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/UnpackingSoSource;Ljava/io/File;[BLcom/facebook/soloader/UnpackingSoSource$DsoManifest;Ljava/io/File;Lcom/facebook/soloader/FileLocker;)V
    .registers 7

    .line 353
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$depsFileName:Ljava/io/File;

    iput-object p3, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$deps:[B

    iput-object p4, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$manifest:Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    iput-object p5, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$stateFileName:Ljava/io/File;

    iput-object p6, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, " (from syncer thread)"

    const-string v1, "releasing dso store lock for "

    const-string v2, "rw"

    const-string v3, "fb-UnpackingSoSource"

    :try_start_8
    const-string v4, "starting syncer worker"

    .line 358
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$depsFileName:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_7f

    .line 368
    :try_start_14
    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$deps:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 369
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_73

    .line 370
    :try_start_20
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 372
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v5, v5, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    const-string v6, "dso_manifest"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v4, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_7f

    .line 374
    :try_start_33
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$manifest:Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    invoke-virtual {v2, v5}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->write(Ljava/io/DataOutput;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_67

    .line 375
    :try_start_38
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 377
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v2, v2, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/soloader/SysUtil;->fsyncRecursive(Ljava/io/File;)V

    .line 378
    iget-object v2, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$stateFileName:Ljava/io/File;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/facebook/soloader/UnpackingSoSource;->access$000(Ljava/io/File;B)V
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_7f

    .line 380
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_66} :catch_9f

    return-void

    :catchall_67
    move-exception v2

    .line 373
    :try_start_68
    throw v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v4

    .line 375
    :try_start_6a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_72

    :catchall_6e
    move-exception v5

    :try_start_6f
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_72
    throw v4
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_7f

    :catchall_73
    move-exception v2

    .line 367
    :try_start_74
    throw v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v5

    .line 370
    :try_start_76
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v4

    :try_start_7b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7e
    throw v5
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v2

    .line 380
    :try_start_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->this$0:Lcom/facebook/soloader/UnpackingSoSource;

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource;->soDirectory:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$1;->val$lock:Lcom/facebook/soloader/FileLocker;

    invoke-virtual {v0}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 382
    throw v2
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9f} :catch_9f

    :catch_9f
    move-exception v0

    .line 384
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.facebook.soloader.UnpackingSoSource.Dso (com.facebook.soloader.UnpackingSoSource$Dso)
.class public Lcom/facebook/soloader/UnpackingSoSource$Dso;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dso"
.end annotation


# instance fields
.field public final hash:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.DsoManifest (com.facebook.soloader.UnpackingSoSource$DsoManifest)
.class public final Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DsoManifest"
.end annotation


# instance fields
.field public final dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;


# direct methods
.method public constructor <init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    return-void
.end method

.method static final read(Ljava/io/DataInput;)Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 112
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    if-ltz v0, :cond_2a

    .line 117
    new-array v1, v0, [Lcom/facebook/soloader/UnpackingSoSource$Dso;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_24

    .line 119
    new-instance v3, Lcom/facebook/soloader/UnpackingSoSource$Dso;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/facebook/soloader/UnpackingSoSource$Dso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 121
    :cond_24
    new-instance p0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;

    invoke-direct {p0, v1}, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;-><init>([Lcom/facebook/soloader/UnpackingSoSource$Dso;)V

    return-object p0

    .line 114
    :cond_2a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "illegal number of shared libraries"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "wrong dso manifest version"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final write(Ljava/io/DataOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 125
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 126
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v0, 0x0

    .line 127
    :goto_b
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 128
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource$Dso;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;->dsos:[Lcom/facebook/soloader/UnpackingSoSource$Dso;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/facebook/soloader/UnpackingSoSource$Dso;->hash:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_23
    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.InputDso (com.facebook.soloader.UnpackingSoSource$InputDso)
.class public final Lcom/facebook/soloader/UnpackingSoSource$InputDso;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "InputDso"
.end annotation


# instance fields
.field public final content:Ljava/io/InputStream;

.field public final dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;


# direct methods
.method public constructor <init>(Lcom/facebook/soloader/UnpackingSoSource$Dso;Ljava/io/InputStream;)V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->dso:Lcom/facebook/soloader/UnpackingSoSource$Dso;

    .line 140
    iput-object p2, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

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

    .line 145
    iget-object v0, p0, Lcom/facebook/soloader/UnpackingSoSource$InputDso;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

###### Class com.facebook.soloader.UnpackingSoSource.InputDsoIterator (com.facebook.soloader.UnpackingSoSource$InputDsoIterator)
.class public abstract Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "InputDsoIterator"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract hasNext()Z
.end method

.method public abstract next()Lcom/facebook/soloader/UnpackingSoSource$InputDso;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.facebook.soloader.UnpackingSoSource.Unpacker (com.facebook.soloader.UnpackingSoSource$Unpacker)
.class public abstract Lcom/facebook/soloader/UnpackingSoSource$Unpacker;
.super Ljava/lang/Object;
.source "UnpackingSoSource.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/UnpackingSoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Unpacker"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected abstract getDsoManifest()Lcom/facebook/soloader/UnpackingSoSource$DsoManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract openDsoIterator()Lcom/facebook/soloader/UnpackingSoSource$InputDsoIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
