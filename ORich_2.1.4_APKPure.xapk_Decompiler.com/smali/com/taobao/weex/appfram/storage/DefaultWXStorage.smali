###### Class com.taobao.weex.appfram.storage.DefaultWXStorage (com.taobao.weex.appfram.storage.DefaultWXStorage)
.class public Lcom/taobao/weex/appfram/storage/DefaultWXStorage;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# instance fields
.field private mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)J
    .registers 3

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetLength()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performGetAllKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_a
    if-eqz p1, :cond_25

    .line 50
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_25

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method

.method private performGetAllKeys()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "key"

    .line 321
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "default_wx_storage"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 323
    :goto_20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 324
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_38
    .catchall {:try_start_20 .. :try_end_31} :catchall_36

    goto :goto_20

    .line 331
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_36
    move-exception v0

    goto :goto_57

    :catch_38
    move-exception v2

    :try_start_39
    const-string v3, "weex_storage"

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultWXStorage occurred an exception when execute getAllKeys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_36

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 332
    throw v0
.end method

.method private performGetItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const-string v0, "weex_storage"

    .line 245
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_c

    return-object v1

    :cond_c
    const-string v10, "value"

    .line 250
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "default_wx_storage"

    const-string v5, "key=?"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 256
    :try_start_23
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 257
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "timestamp"

    .line 259
    sget-object v5, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v4}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "default_wx_storage"

    const-string v6, "key= ?"

    new-array v7, v11, [Ljava/lang/String;

    aput-object p1, v7, v12

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v11, :cond_5f

    const-string v3, "success"

    goto :goto_61

    :cond_5f
    const-string v3, "failed"

    :goto_61
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for operation [getItem(key = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_80} :catch_8a
    .catchall {:try_start_23 .. :try_end_80} :catchall_88

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_84
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_88
    move-exception p1

    goto :goto_a7

    :catch_8a
    move-exception p1

    .line 268
    :try_start_8b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultWXStorage occurred an exception when execute getItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_88

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_a7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 272
    throw p1
.end method

.method private performGetLength()J
    .registers 8

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    :cond_b
    const-string v3, "SELECT count(key) FROM default_wx_storage"

    const/4 v4, 0x0

    .line 302
    :try_start_e
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_1e
    .catchall {:try_start_e .. :try_end_16} :catchall_1c

    if-eqz v4, :cond_1b

    .line 309
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1b
    return-wide v0

    :catchall_1c
    move-exception v0

    goto :goto_3f

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string v3, "weex_storage"

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DefaultWXStorage occurred an exception when execute getLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_1c

    if-eqz v4, :cond_3e

    .line 309
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3e
    return-wide v1

    :goto_3f
    if-eqz v4, :cond_44

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 311
    :cond_44
    throw v0
.end method

.method private performRemoveItem(Ljava/lang/String;)Z
    .registers 8

    .line 276
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v2, "default_wx_storage"

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 283
    invoke-virtual {v0, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_1b

    if-ne p1, v4, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :catch_1b
    move-exception p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultWXStorage occurred an exception when execute removeItem:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "weex_storage"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 14

    .line 164
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 169
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set k-v to storage(key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isPersistent:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",allowRetry:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "weex_storage"

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "INSERT OR REPLACE INTO default_wx_storage VALUES (?,?,?,?);"

    const/4 v6, 0x0

    .line 172
    sget-object v7, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->sDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 174
    :try_start_4b
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 175
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v0, 0x1

    .line 176
    invoke-virtual {v6, v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 177
    invoke-virtual {v6, v2, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 178
    invoke-virtual {v6, v2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x4

    if-eqz p3, :cond_64

    const-wide/16 v7, 0x1

    goto :goto_66

    :cond_64
    const-wide/16 v7, 0x0

    .line 179
    :goto_66
    invoke-virtual {v6, v2, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 180
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_74
    .catchall {:try_start_4b .. :try_end_6c} :catchall_72

    if-eqz v6, :cond_71

    .line 196
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_71
    return v0

    :catchall_72
    move-exception p1

    goto :goto_c6

    :catch_74
    move-exception v0

    .line 183
    :try_start_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultWXStorage occurred an exception when execute setItem :"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_c0

    if-eqz p4, :cond_c0

    .line 185
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->trimToSize()Z

    move-result p4

    if-eqz p4, :cond_c0

    .line 188
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retry set k-v to storage(key:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performSetItem(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1
    :try_end_ba
    .catchall {:try_start_75 .. :try_end_ba} :catchall_72

    if-eqz v6, :cond_bf

    .line 196
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bf
    return p1

    :cond_c0
    if-eqz v6, :cond_c5

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    return v1

    :goto_c6
    if-eqz v6, :cond_cb

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 198
    :cond_cb
    throw p1
.end method

.method private trimToSize()Z
    .registers 14

    const-string v0, "weex_storage"

    .line 205
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mDatabaseSupplier:Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_c

    return v1

    .line 210
    :cond_c
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v11, "key"

    const-string v12, "persistent"

    .line 213
    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "default_wx_storage"

    const-string v9, "timestamp ASC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    .line 215
    :try_start_26
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    div-int/lit8 v4, v4, 0xa
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_5b
    .catchall {:try_start_26 .. :try_end_2c} :catchall_59

    const/4 v5, 0x0

    .line 216
    :cond_2d
    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 217
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_47

    const/4 v7, 0x1

    goto :goto_48

    :cond_47
    const/4 v7, 0x0

    :goto_48
    if-nez v7, :cond_2d

    if-eqz v6, :cond_2d

    add-int/lit8 v5, v5, 0x1

    .line 221
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_51} :catch_57
    .catchall {:try_start_2d .. :try_end_51} :catchall_59

    if-ne v5, v4, :cond_2d

    .line 230
    :cond_53
    :goto_53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_76

    :catch_57
    move-exception v4

    goto :goto_5d

    :catchall_59
    move-exception v0

    goto :goto_a7

    :catch_5b
    move-exception v4

    const/4 v5, 0x0

    .line 228
    :goto_5d
    :try_start_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DefaultWXStorage occurred an exception when execute trimToSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5d .. :try_end_75} :catchall_59

    goto :goto_53

    :goto_76
    if-gtz v5, :cond_79

    return v1

    .line 237
    :cond_79
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    invoke-direct {p0, v2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->performRemoveItem(Ljava/lang/String;)Z

    goto :goto_7d

    .line 240
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items by lru"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 230
    :goto_a7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 231
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 147
    new-instance v1, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 118
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 76
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 104
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 90
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 62
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 132
    new-instance v0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;-><init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    invoke-direct {p0, v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass1 (com.taobao.weex.appfram.storage.DefaultWXStorage$1)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 62
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 65
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$value:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$1;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_15

    return-void

    .line 69
    :cond_15
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass2 (com.taobao.weex.appfram.storage.DefaultWXStorage$2)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 76
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$100(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getItemResult(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$2;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_11

    return-void

    .line 83
    :cond_11
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass3 (com.taobao.weex.appfram.storage.DefaultWXStorage$3)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 4

    .line 90
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->removeItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_11

    return-void

    .line 97
    :cond_11
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass4 (com.taobao.weex.appfram.storage.DefaultWXStorage$4)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$300(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getLengthResult(J)Ljava/util/Map;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$4;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_f

    return-void

    .line 111
    :cond_f
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass5 (com.taobao.weex.appfram.storage.DefaultWXStorage$5)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$400(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->getAllkeysResult(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$5;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_f

    return-void

    .line 125
    :cond_f
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass6 (com.taobao.weex.appfram.storage.DefaultWXStorage$6)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .registers 5

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$000(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->setItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$6;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_14

    return-void

    .line 139
    :cond_14
    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    return-void
.end method

###### Class com.taobao.weex.appfram.storage.DefaultWXStorage.AnonymousClass7 (com.taobao.weex.appfram.storage.DefaultWXStorage$7)
.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$needCloseService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->val$needCloseService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    invoke-static {v0}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$500(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;)Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/storage/WXSQLiteOpenHelper;->closeDatabase()V

    .line 152
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$7;->val$needCloseService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1b

    .line 153
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_1b

    :catch_11
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weex_storage"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method
