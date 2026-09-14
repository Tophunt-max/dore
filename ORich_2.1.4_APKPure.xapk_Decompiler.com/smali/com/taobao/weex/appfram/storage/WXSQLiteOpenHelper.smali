###### Class com.taobao.weex.appfram.storage.WXSQLiteOpenHelper (com.taobao.weex.appfram.storage.WXSQLiteOpenHelper)
.class public Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WXSQLiteOpenHelper.java"


# static fields
.field static final COLUMN_KEY:Ljava/lang/String; = "key"

.field static final COLUMN_PERSISTENT:Ljava/lang/String; = "persistent"

.field static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DATABASE_NAME:Ljava/lang/String; = "WXStorage"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final SLEEP_TIME_MS:I = 0x1e

.field private static final STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

.field static final TABLE_STORAGE:Ljava/lang/String; = "default_wx_storage"

.field static final TAG_STORAGE:Ljava/lang/String; = "weex_storage"

.field static sDateFormatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mMaximumDatabaseSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "WXStorage"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 68
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/32 v0, 0x3200000

    .line 41
    iput-wide v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    .line 69
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'default_wx_storage\'"

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1f
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    if-lez v1, :cond_15

    if-eqz v0, :cond_14

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    return-void

    :cond_15
    :try_start_15
    const-string v1, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

    .line 215
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

    .line 217
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    if-eqz v0, :cond_28

    .line 220
    :goto_25
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_28
    return-void

    :goto_29
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_2e
    throw p1
.end method

.method private deleteDB()Z
    .registers 3

    .line 197
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->closeDatabase()V

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mContext:Landroid/content/Context;

    const-string v1, "WXStorage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized closeDatabase()V
    .registers 2

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 206
    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ensureDatabase()V
    .registers 5

    monitor-enter p0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_62

    if-eqz v0, :cond_d

    .line 151
    monitor-exit p0

    return-void

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x2

    if-ge v0, v1, :cond_31

    if-lez v0, :cond_16

    .line 161
    :try_start_13
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 163
    :cond_16
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_1c} :catch_1d
    .catchall {:try_start_13 .. :try_end_1c} :catchall_42

    goto :goto_31

    :catch_1d
    move-exception v1

    .line 166
    :try_start_1e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_42

    const-wide/16 v1, 0x1e

    .line 170
    :try_start_23
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_42

    goto :goto_2e

    .line 172
    :catch_27
    :try_start_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 175
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_42

    if-nez v0, :cond_37

    .line 176
    monitor-exit p0

    return-void

    .line 179
    :cond_37
    :try_start_37
    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->createTableIfNotExists(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_42

    goto :goto_60

    :catchall_42
    move-exception v0

    const/4 v1, 0x0

    .line 183
    :try_start_44
    iput-object v1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "weex_storage"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureDatabase failed, throwable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_44 .. :try_end_60} :catchall_62

    .line 187
    :goto_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->ensureDatabase()V

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS default_wx_storage (key TEXT PRIMARY KEY,value TEXT NOT NULL,timestamp TEXT NOT NULL,persistent INTEGER DEFAULT 0)"

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 13

    const-string v0, "exec sql : "

    if-eq p2, p3, :cond_104

    const/4 v1, 0x2

    if-ne p3, v1, :cond_fe

    const/4 v1, 0x1

    if-ne p2, v1, :cond_fe

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage is updating from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "weex_storage"

    invoke-static {v4, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :try_start_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 110
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "ALTER TABLE default_wx_storage ADD COLUMN timestamp TEXT;"

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "ALTER TABLE default_wx_storage ADD COLUMN persistent INTEGER;"

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE default_wx_storage SET timestamp = \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' , "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "persistent"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = 0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage updated success ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_be} :catch_c1
    .catchall {:try_start_28 .. :try_end_be} :catchall_bf

    goto :goto_e9

    :catchall_bf
    move-exception p2

    goto :goto_fa

    :catch_c1
    move-exception v0

    .line 129
    :try_start_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage updated failed from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_c2 .. :try_end_e8} :catchall_bf

    const/4 v1, 0x0

    .line 132
    :goto_e9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-nez v1, :cond_104

    const-string p2, "storage is rollback,all data will be removed"

    .line 136
    invoke-static {v4, p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 138
    invoke-virtual {p0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_104

    .line 132
    :goto_fa
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 133
    throw p2

    .line 141
    :cond_fe
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->deleteDB()Z

    .line 142
    invoke-virtual {p0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_104
    :goto_104
    return-void
.end method

.method public declared-synchronized setMaximumSize(J)V
    .registers 4

    monitor-enter p0

    .line 190
    :try_start_1
    iput-wide p1, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mMaximumDatabaseSize:J

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_a

    .line 192
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setMaximumSize(J)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 194
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
