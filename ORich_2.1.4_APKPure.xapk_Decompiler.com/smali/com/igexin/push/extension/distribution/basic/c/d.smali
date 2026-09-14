###### Class com.igexin.push.extension.distribution.basic.c.d (com.igexin.push.extension.distribution.basic.c.d)
.class public Lcom/igexin/push/extension/distribution/basic/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:Lcom/igexin/push/extension/distribution/basic/c/d;


# instance fields
.field private b:Lcom/igexin/push/extension/distribution/basic/e/a;

.field private c:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/extension/distribution/basic/c/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/f;->a()Lcom/igexin/push/extension/distribution/basic/c/f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "/sdcard/libs//com.getui.sdk.deviceId.db"

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/basic/c/d;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/d;->d:Lcom/igexin/push/extension/distribution/basic/c/d;

    if-nez v0, :cond_d

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/c/d;

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/basic/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/c/d;->d:Lcom/igexin/push/extension/distribution/basic/c/d;

    :cond_d
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/d;->d:Lcom/igexin/push/extension/distribution/basic/c/d;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_27

    aget-object v3, v0, v2

    :cond_a
    :goto_a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_a

    :cond_1a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0, v3}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/io/File;)V

    goto :goto_a

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|save deviceId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_97

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6a

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_6a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|create file "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_66} :catch_a2
    .catchall {:try_start_2d .. :try_end_66} :catchall_a0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_6a
    :try_start_6a
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_71} :catch_a2
    .catchall {:try_start_6a .. :try_end_71} :catchall_a0

    :try_start_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V1|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_94
    .catchall {:try_start_71 .. :try_end_8f} :catchall_91

    move-object v2, v1

    goto :goto_97

    :catchall_91
    move-exception p1

    move-object v2, v1

    goto :goto_c4

    :catch_94
    move-exception p1

    move-object v2, v1

    goto :goto_a3

    :cond_97
    :goto_97
    if-eqz v2, :cond_9c

    :goto_99
    :try_start_99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9c

    :catch_9c
    :cond_9c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_c3

    :catchall_a0
    move-exception p1

    goto :goto_c4

    :catch_a2
    move-exception p1

    :goto_a3
    :try_start_a3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/extension/distribution/basic/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_a0

    if-eqz v2, :cond_9c

    goto :goto_99

    :goto_c3
    return-void

    :goto_c4
    if-eqz v2, :cond_c9

    :try_start_c6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_c9

    :catch_c9
    :cond_c9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/e/b;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    const-string v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/igexin/push/extension/distribution/basic/e/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/e/b;->close()V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_29

    :catchall_29
    :cond_29
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 8

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_85

    const/16 v0, 0x400

    new-array v0, v0, [B

    :try_start_1b
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_79
    .catchall {:try_start_1b .. :try_end_22} :catchall_6a

    :try_start_22
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_68
    .catchall {:try_start_22 .. :try_end_27} :catchall_64

    :goto_27
    :try_start_27
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_33

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_27

    :cond_33
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v0

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "\\|"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_59

    const-string v4, "V1"

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    aget-object v0, v0, v5
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_58} :catch_62
    .catchall {:try_start_27 .. :try_end_58} :catchall_60

    move-object v1, v0

    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5c

    :catch_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_85

    goto :goto_85

    :catchall_60
    move-exception v0

    goto :goto_66

    :catch_62
    nop

    goto :goto_7b

    :catchall_64
    move-exception v0

    move-object v3, v1

    :goto_66
    move-object v1, v2

    goto :goto_6c

    :catch_68
    move-object v3, v1

    goto :goto_7b

    :catchall_6a
    move-exception v0

    move-object v3, v1

    :goto_6c
    if-eqz v1, :cond_73

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    nop

    :cond_73
    :goto_73
    if-eqz v3, :cond_78

    :try_start_75
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_78

    :catch_78
    :cond_78
    throw v0

    :catch_79
    move-object v2, v1

    move-object v3, v2

    :goto_7b
    if-eqz v2, :cond_82

    :try_start_7d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_82

    :catch_81
    nop

    :cond_82
    :goto_82
    if-eqz v3, :cond_85

    goto :goto_5c

    :catch_85
    :cond_85
    :goto_85
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "imageurl"

    const-string v1, ""

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/basic/c/d;->b()Lcom/igexin/push/extension/distribution/basic/e/a;

    move-result-object v2

    iput-object v2, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->b:Lcom/igexin/push/extension/distribution/basic/e/a;

    const/4 v8, 0x0

    :try_start_b
    const-string v3, "image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_8f
    .catchall {:try_start_b .. :try_end_1d} :catchall_88

    if-eqz v8, :cond_82

    :cond_1f
    :goto_1f
    move-object v2, v1

    :cond_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    const-string v3, "imagesrc"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3f} :catch_80
    .catchall {:try_start_20 .. :try_end_3f} :catchall_88

    if-nez v3, :cond_20

    :cond_41
    :try_start_41
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->b:Lcom/igexin/push/extension/distribution/basic/e/a;

    const-string v3, "image"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/ImgCache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_7d} :catch_8f
    .catchall {:try_start_41 .. :try_end_7d} :catchall_88

    goto :goto_1f

    :cond_7e
    move-object v1, v2

    goto :goto_82

    :catch_80
    move-object v1, v2

    goto :goto_90

    :cond_82
    :goto_82
    if-eqz v8, :cond_93

    :goto_84
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_93

    :catchall_88
    move-exception p1

    if-eqz v8, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw p1

    :catch_8f
    nop

    :goto_90
    if-eqz v8, :cond_93

    goto :goto_84

    :cond_93
    :goto_93
    return-object v1
.end method

.method public b()Lcom/igexin/push/extension/distribution/basic/e/a;
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->b:Lcom/igexin/push/extension/distribution/basic/e/a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/igexin/push/extension/distribution/basic/e/a;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/basic/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->b:Lcom/igexin/push/extension/distribution/basic/e/a;

    :cond_d
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->b:Lcom/igexin/push/extension/distribution/basic/e/a;

    return-object v0
.end method

.method public c()V
    .registers 10

    const-string v0, "image"

    const-string v1, "taskid"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/basic/c/d;->b()Lcom/igexin/push/extension/distribution/basic/e/a;

    move-result-object v5

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createtime <= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v6, v2}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6f

    :cond_30
    :goto_30
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/basic/c/d;->b()Lcom/igexin/push/extension/distribution/basic/e/a;

    move-result-object v3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v3, v0, v5, v6}, Lcom/igexin/push/extension/distribution/basic/e/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/igexin/push/extension/distribution/basic/c/g;->s:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-direct {p0, v3}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6e} :catch_79
    .catchall {:try_start_d .. :try_end_6e} :catchall_72

    goto :goto_30

    :cond_6f
    if-eqz v4, :cond_7f

    goto :goto_7c

    :catchall_72
    move-exception v0

    if-eqz v4, :cond_78

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_78
    throw v0

    :catch_79
    nop

    if-eqz v4, :cond_7f

    :goto_7c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7f
    return-void
.end method

.method public d()V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/igexin/push/core/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    new-instance v1, Lcom/igexin/push/extension/distribution/basic/c/e;

    invoke-direct {v1, p0}, Lcom/igexin/push/extension/distribution/basic/c/e;-><init>(Lcom/igexin/push/extension/distribution/basic/c/d;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-direct {p0, v3}, Lcom/igexin/push/extension/distribution/basic/c/d;->a(Ljava/io/File;)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_29
    return-void
.end method

.method public e()V
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/d/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/basic/c/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    sput-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->c(Ljava/lang/String;)V

    goto :goto_26

    :cond_1d
    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    if-eqz v0, :cond_26

    sget-object v0, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/basic/c/d;->b(Ljava/lang/String;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public f()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/basic/c/d;->c:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/extension/distribution/basic/c/f;->a()Lcom/igexin/push/extension/distribution/basic/c/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
