###### Class io.dcloud.common.util.db.DCSQLiteOpenHelper (io.dcloud.common.util.db.DCSQLiteOpenHelper)
.class public Lio/dcloud/common/util/db/DCSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field static final COLUMN_KEY:Ljava/lang/String; = "key"

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)"

.field private static final DATABASE_NAME:Ljava/lang/String; = "DCStorage"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final SLEEP_TIME_MS:I = 0x1e

.field static final TABLE_STORAGE:Ljava/lang/String; = "default_wx_storage"

.field static final TAG_STORAGE:Ljava/lang/String; = "dc_storage"

.field private static mInstance:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

.field static sDateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "DCStorage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'default_wx_storage\'"

    .line 1
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1f
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    if-lez v1, :cond_15

    if-eqz v0, :cond_14

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    return-void

    :cond_15
    :try_start_15
    const-string v1, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)"

    .line 11
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1d

    if-eqz v0, :cond_28

    goto :goto_25

    :catchall_1d
    move-exception p1

    goto :goto_29

    :catch_1f
    move-exception p1

    .line 13
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    if-eqz v0, :cond_28

    .line 16
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-void

    :goto_29
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_2e
    throw p1
.end method

.method private createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 19
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_65
    .catchall {:try_start_1 .. :try_end_21} :catchall_63

    if-lez v1, :cond_29

    if-eqz v0, :cond_28

    .line 36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-void

    .line 37
    :cond_29
    :try_start_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "key"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT PRIMARY KEY,"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "value"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT NOT NULL,"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "timestamp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " TEXT NOT NULL)"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_60} :catch_65
    .catchall {:try_start_29 .. :try_end_60} :catchall_63

    if-eqz v0, :cond_6e

    goto :goto_6b

    :catchall_63
    move-exception p1

    goto :goto_6f

    :catch_65
    move-exception p1

    .line 47
    :try_start_66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_63

    if-eqz v0, :cond_6e

    .line 50
    :goto_6b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6e
    return-void

    :goto_6f
    if-eqz v0, :cond_74

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_74
    throw p1
.end method

.method private deleteDB()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->closeDatabase()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mContext:Landroid/content/Context;

    const-string v1, "DCStorage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSQLiteOpenHelper(Landroid/content/Context;)Lio/dcloud/common/util/db/DCSQLiteOpenHelper;
    .registers 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mInstance:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    invoke-direct {v0, p0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mInstance:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    .line 4
    :cond_b
    sget-object p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mInstance:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 3
    iput-object v1, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    :cond_13
    sput-object v1, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mInstance:Lio/dcloud/common/util/db/DCSQLiteOpenHelper;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ensureDatabase(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_6e

    monitor-exit p0

    return-void

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x2

    if-ge v0, v1, :cond_36

    if-lez v0, :cond_1b

    .line 13
    :try_start_18
    invoke-direct {p0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->deleteDB()Z

    .line 15
    :cond_1b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_21} :catch_22
    .catchall {:try_start_18 .. :try_end_21} :catchall_4e

    goto :goto_36

    :catch_22
    move-exception v1

    .line 18
    :try_start_23
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_4e

    const-wide/16 v1, 0x1e

    .line 22
    :try_start_28
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4e

    goto :goto_33

    .line 24
    :catch_2c
    :try_start_2c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 27
    :cond_36
    :goto_36
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_4e

    if-nez v0, :cond_3c

    monitor-exit p0

    return-void

    .line 30
    :cond_3c
    :try_start_3c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 31
    iget-object p1, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_6c

    .line 33
    :cond_48
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4e

    goto :goto_6c

    :catchall_4e
    move-exception p1

    const/4 v0, 0x0

    .line 37
    :try_start_50
    iput-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureDatabase failed, throwable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dc_storage"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_6e

    :goto_6c
    monitor-exit p0

    return-void

    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->ensureDatabase(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->ensureDatabase(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/util/db/DCSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
