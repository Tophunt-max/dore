###### Class io.dcloud.common.util.db.DCStorage (io.dcloud.common.util.db.DCStorage)
.class public Lio/dcloud/common/util/db/DCStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    }
.end annotation


# static fields
.field public static final ERROR_DEF:I = -0x1

.field public static final ERROR_FULL:I = -0x2

.field public static final ERROR_NO_KEY:I = -0x3

.field public static final SUCCESS:I = 0x1

.field private static mInstance:Lio/dcloud/common/util/db/DCStorage;


# instance fields
.field private DBFILE_NAME:Ljava/lang/String;

.field private DCDBFILE_START:Ljava/lang/String;

.field private ERROR_TAG:Ljava/lang/String;

.field private TABLET_TAG:Ljava/lang/String;

.field private mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_storage"

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->TABLET_TAG:Ljava/lang/String;

    const-string v0, "_dbfile"

    .line 3
    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    const-string v0, "DCDBFile_"

    .line 4
    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    const-string v0, "__ERROR__"

    .line 5
    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getSQLiteOpenHelper(Landroid/content/Context;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/common/util/db/DCStorage;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method private clearDBFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method private getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/apps/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/dbfile/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->TABLET_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDBFileValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_65

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x9

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    :try_start_27
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_31} :catch_55
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_31} :catch_4e
    .catchall {:try_start_27 .. :try_end_31} :catchall_4c

    .line 12
    :goto_31
    :try_start_31
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 15
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_3f} :catch_49
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3f} :catch_46
    .catchall {:try_start_31 .. :try_end_3f} :catchall_43

    .line 22
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_65

    goto :goto_65

    :catchall_43
    move-exception p1

    move-object v2, v3

    goto :goto_5f

    :catch_46
    move-exception p1

    move-object v2, v3

    goto :goto_4f

    :catch_49
    move-exception p1

    move-object v2, v3

    goto :goto_56

    :catchall_4c
    move-exception p1

    goto :goto_5f

    :catch_4e
    move-exception p1

    .line 23
    :goto_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v2, :cond_65

    goto :goto_5b

    :catch_55
    move-exception p1

    .line 27
    :goto_56
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_4c

    if-eqz v2, :cond_65

    .line 26
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_65

    goto :goto_65

    :goto_5f
    if-eqz v2, :cond_64

    .line 32
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_64

    .line 35
    :catch_64
    :cond_64
    throw p1

    :catch_65
    :cond_65
    :goto_65
    return-object v1
.end method

.method public static getDCStorage(Landroid/content/Context;)Lio/dcloud/common/util/db/DCStorage;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    .line 2
    new-instance v0, Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    .line 4
    :cond_d
    sget-object p0, Lio/dcloud/common/util/db/DCStorage;->mInstance:Lio/dcloud/common/util/db/DCStorage;

    return-object p0
.end method

.method private getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1a

    const/4 v0, -0x2

    if-eq p2, v0, :cond_13

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const-string p1, ""

    return-object p1

    .line 1
    :cond_c
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_success:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_13
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_ceiling_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1a
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_not_find_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private removeDBFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->removeDBFile(Ljava/lang/String;)V

    return-void
.end method

.method private removeDBFile(Ljava/lang/String;)V
    .registers 3

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 6
    :cond_7
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_23
    return-void
.end method

.method private saveDBFileValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getBaseDBFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_12
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/common/util/db/DCStorage;->DBFILE_NAME:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_44

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 17
    :cond_44
    :try_start_44
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 19
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 23
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_67} :catch_68

    goto :goto_84

    :catch_68
    move-exception p2

    .line 26
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_84
    return-object p1
.end method


# virtual methods
.method public declared-synchronized checkSPstorageToDB(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_storages"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v3, v4}, Lio/dcloud/common/util/db/DCStorage;->performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    move-result-object v4

    .line 7
    iget v4, v4, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 8
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2e

    .line 12
    :cond_4d
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .registers 2

    .line 1
    new-instance v0, Lio/dcloud/common/util/db/DCStorage$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage$1;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    invoke-virtual {p0, v0}, Lio/dcloud/common/util/db/DCStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_a
    if-eqz p1, :cond_21

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_21

    .line 6
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method

.method public declared-synchronized performClear(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v2, -0x1

    if-nez v0, :cond_1f

    .line 4
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6d

    monitor-exit p0

    return-object v1

    :cond_1f
    const/4 v3, 0x1

    .line 8
    :try_start_20
    iput v3, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_6d

    .line 10
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_49

    .line 12
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->ensureDatabase(Ljava/lang/String;)V

    .line 14
    :cond_49
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->clearDBFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4c} :catch_4d
    .catchall {:try_start_22 .. :try_end_4c} :catchall_6d

    goto :goto_6b

    :catch_4d
    move-exception p2

    .line 16
    :try_start_4e
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_6d

    :goto_6b
    monitor-exit p0

    return-object v1

    :catchall_6d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performGetAllKeys(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 14

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    new-instance v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v10, -0x1

    if-nez v2, :cond_27

    .line 5
    iput v10, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_82

    monitor-exit p0

    return-object v0

    .line 10
    :cond_27
    :try_start_27
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "key"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_82

    .line 13
    :goto_3f
    :try_start_3f
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "key"

    .line 14
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_53
    const/4 v2, 0x1

    .line 16
    iput v2, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 17
    iput-object v11, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_58} :catch_5b
    .catchall {:try_start_3f .. :try_end_58} :catchall_59

    goto :goto_79

    :catchall_59
    move-exception v0

    goto :goto_7e

    :catch_5b
    move-exception v2

    .line 24
    :try_start_5c
    iput v10, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_5c .. :try_end_79} :catchall_59

    .line 23
    :goto_79
    :try_start_79
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_82

    .line 25
    monitor-exit p0

    return-object v0

    .line 27
    :goto_7e
    :try_start_7e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 28
    throw v0
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    :catchall_82
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performGetItem(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 16

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    new-instance v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v10, -0x1

    if-nez v2, :cond_27

    .line 5
    iput v10, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_da

    monitor-exit p0

    return-object v0

    .line 10
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v6, v12

    const-string v5, "key=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_da

    .line 16
    :try_start_40
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 17
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_b3
    .catchall {:try_start_40 .. :try_end_4b} :catchall_b1

    :try_start_4b
    const-string v4, "timestamp"
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_da

    .line 19
    :try_start_4d
    sget-object v5, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v4, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_69} :catch_b3
    .catchall {:try_start_4d .. :try_end_69} :catchall_b1

    :try_start_69
    const-string v5, "key= ?"
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_da

    :try_start_6b
    new-array v6, v11, [Ljava/lang/String;

    aput-object p2, v6, v12

    invoke-virtual {v4, p1, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p1, "value"

    .line 23
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9a

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->DCDBFILE_START:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9a

    .line 26
    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getDBFileValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 28
    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    goto :goto_9c

    .line 30
    :cond_97
    iput-object p2, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    goto :goto_9c

    .line 33
    :cond_9a
    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    .line 35
    :goto_9c
    iput v11, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_9e} :catch_b3
    .catchall {:try_start_6b .. :try_end_9e} :catchall_b1

    .line 48
    :try_start_9e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_da

    monitor-exit p0

    return-object v0

    :cond_a3
    const/4 p1, -0x3

    .line 49
    :try_start_a4
    iput p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 50
    invoke-direct {p0, v1, p1}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ac} :catch_b3
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_b1

    .line 59
    :try_start_ac
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_da

    monitor-exit p0

    return-object v0

    :catchall_b1
    move-exception p1

    goto :goto_d6

    :catch_b3
    move-exception p1

    .line 60
    :try_start_b4
    iput v10, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_d1
    .catchall {:try_start_b4 .. :try_end_d1} :catchall_b1

    .line 64
    :try_start_d1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_da

    monitor-exit p0

    return-object v0

    :goto_d6
    :try_start_d6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    throw p1
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performGetLength(Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 9

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    .line 3
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v0, :cond_27

    .line 5
    iput v3, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 6
    sget p1, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_81

    monitor-exit p0

    return-object v1

    .line 10
    :cond_27
    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT count(key) FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_81

    const/4 v4, 0x0

    .line 13
    :try_start_3d
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->v:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 15
    iput p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4e} :catch_55
    .catchall {:try_start_3d .. :try_end_4e} :catchall_7a

    if-eqz v4, :cond_53

    .line 23
    :try_start_50
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_81

    :cond_53
    monitor-exit p0

    return-object v1

    :catch_55
    move-exception p1

    .line 24
    :try_start_56
    iput v3, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_7a

    if-eqz v4, :cond_78

    .line 29
    :try_start_75
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_81

    :cond_78
    monitor-exit p0

    return-object v1

    :catchall_7a
    if-eqz v4, :cond_7f

    :try_start_7c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_81

    :cond_7f
    monitor-exit p0

    return-object v1

    :catchall_81
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performRemoveItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 12

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v2, -0x1

    if-nez v0, :cond_1f

    .line 4
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_63

    monitor-exit p0

    return-object v1

    .line 11
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_43
    .catchall {:try_start_1f .. :try_end_23} :catchall_63

    :try_start_23
    const-string v4, "key=?"
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_63

    const/4 v5, 0x1

    :try_start_26
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-virtual {v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_34

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/common/util/db/DCStorage;->removeDBFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    if-ne v0, v5, :cond_39

    .line 18
    iput v5, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    goto :goto_61

    :cond_39
    const/4 p2, -0x3

    .line 20
    iput p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 21
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_43
    .catchall {:try_start_26 .. :try_end_42} :catchall_63

    goto :goto_61

    :catch_43
    move-exception p2

    .line 25
    :try_start_44
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_63

    :goto_61
    monitor-exit p0

    return-object v1

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performSetItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/util/db/DCStorage$StorageInfo;
    .registers 13

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage;->mDatabaseSupplier:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;

    invoke-direct {v1, p0}, Lio/dcloud/common/util/db/DCStorage$StorageInfo;-><init>(Lio/dcloud/common/util/db/DCStorage;)V

    const/4 v2, -0x1

    if-nez v0, :cond_1f

    .line 4
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 5
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_no_db_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_10d

    monitor-exit p0

    return-object v1

    .line 10
    :cond_1f
    :try_start_1f
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 11
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 12
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_key_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_10d

    monitor-exit p0

    return-object v1

    .line 15
    :cond_31
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR REPLACE INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lio/dcloud/common/util/db/DCStorage;->getCurrentTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " VALUES (?,?,?);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 17
    sget-object v5, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_10d

    .line 20
    :try_start_57
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    const v7, 0x1b7740

    if-lt v6, v7, :cond_ad

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/common/util/db/DCStorage;->saveDBFileValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_73

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ad

    .line 23
    :cond_73
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 24
    sget p2, Lio/dcloud/base/R$string;->dcloud_storage_write_big_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    .line 25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_ab

    iget-object p2, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " error "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/dcloud/common/util/db/DCStorage;->ERROR_TAG:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_ab} :catch_ce
    .catchall {:try_start_57 .. :try_end_ab} :catchall_cc

    :cond_ab
    monitor-exit p0

    return-object v1

    .line 31
    :cond_ad
    :try_start_ad
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 p2, 0x1

    .line 33
    invoke-virtual {v4, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 34
    invoke-virtual {v4, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 p3, 0x3

    .line 35
    invoke-virtual {v4, p3, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 36
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 37
    iput p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c5} :catch_ce
    .catchall {:try_start_ad .. :try_end_c5} :catchall_cc

    if-eqz v4, :cond_ca

    .line 58
    :try_start_c7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_10d

    :cond_ca
    monitor-exit p0

    return-object v1

    :catchall_cc
    move-exception p1

    goto :goto_107

    :catch_ce
    move-exception p2

    .line 59
    :try_start_cf
    instance-of p3, p2, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p3, :cond_e3

    const/4 p2, -0x2

    .line 67
    iput p2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 68
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/db/DCStorage;->getMsgForCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_dc
    .catchall {:try_start_cf .. :try_end_dc} :catchall_cc

    if-eqz v4, :cond_e1

    .line 76
    :try_start_de
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_10d

    :cond_e1
    monitor-exit p0

    return-object v1

    .line 77
    :cond_e3
    :try_start_e3
    iput v2, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->code:I

    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget p4, Lio/dcloud/base/R$string;->dcloud_storage_native_error:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->meg:Ljava/lang/String;
    :try_end_100
    .catchall {:try_start_e3 .. :try_end_100} :catchall_cc

    if-eqz v4, :cond_105

    .line 82
    :try_start_102
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_10d

    :cond_105
    monitor-exit p0

    return-object v1

    :goto_107
    if-eqz v4, :cond_10c

    :try_start_109
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 84
    :cond_10c
    throw p1
    :try_end_10d
    .catchall {:try_start_109 .. :try_end_10d} :catchall_10d

    :catchall_10d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class io.dcloud.common.util.db.DCStorage.AnonymousClass1 (io.dcloud.common.util.db.DCStorage$1)
.class Lio/dcloud/common/util/db/DCStorage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/db/DCStorage;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/db/DCStorage;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/db/DCStorage;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$000(Lio/dcloud/common/util/db/DCStorage;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->closeDatabase()V

    .line 4
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 5
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-static {v0}, Lio/dcloud/common/util/db/DCStorage;->access$100(Lio/dcloud/common/util/db/DCStorage;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_27
    :goto_27
    iget-object v0, p0, Lio/dcloud/common/util/db/DCStorage$1;->this$0:Lio/dcloud/common/util/db/DCStorage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/db/DCStorage;->access$102(Lio/dcloud/common/util/db/DCStorage;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method

###### Class io.dcloud.common.util.db.DCStorage.StorageInfo (io.dcloud.common.util.db.DCStorage$StorageInfo)
.class public Lio/dcloud/common/util/db/DCStorage$StorageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/db/DCStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StorageInfo"
.end annotation


# instance fields
.field public code:I

.field public meg:Ljava/lang/String;

.field final synthetic this$0:Lio/dcloud/common/util/db/DCStorage;

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/dcloud/common/util/db/DCStorage;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/db/DCStorage$StorageInfo;->this$0:Lio/dcloud/common/util/db/DCStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
