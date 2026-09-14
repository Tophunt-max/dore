###### Class com.igexin.push.core.f.b (com.igexin.push.core.f.b)
.class Lcom/igexin/push/core/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/f/c;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/core/f/b;->b:J

    return-void
.end method

.method private a()Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/f/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    iget-wide v2, p0, Lcom/igexin/push/core/f/b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_12

    goto :goto_26

    :cond_12
    iget-object v0, p0, Lcom/igexin/push/core/f/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-wide v2, p0, Lcom/igexin/push/core/f/b;->b:J

    sget-wide v4, Lcom/igexin/push/core/f;->r:J
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_2f

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :cond_26
    :goto_26
    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/push/core/f/b;->a:Ljava/lang/String;

    sget-wide v2, Lcom/igexin/push/core/f;->r:J

    iput-wide v2, p0, Lcom/igexin/push/core/f/b;->b:J

    return v1

    :catchall_2f
    move-exception v0

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/push/core/f/b;->a:Ljava/lang/String;

    sget-wide v1, Lcom/igexin/push/core/f;->r:J

    iput-wide v1, p0, Lcom/igexin/push/core/f/b;->b:J

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string p1, "BasicSDStorage|get device id from file : "

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    invoke-static {v1}, Lcom/igexin/push/util/g;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_25

    const-string v1, "BasicSDStorage|read file device id = null"

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_25
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_44

    :try_start_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicSDStorage|read file device id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_40} :catch_41

    goto :goto_5c

    :catch_41
    move-exception v1

    move-object v0, v2

    goto :goto_45

    :catch_44
    move-exception v1

    :goto_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    move-object v2, v0

    :goto_5c
    return-object v2
.end method

.method public a(Landroid/content/Context;J)V
    .registers 4

    invoke-direct {p0}, Lcom/igexin/push/core/f/b;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/igexin/push/util/g;->a()V

    :cond_9
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BasicSDStorage|save device id to file : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    :try_start_27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_64

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicSDStorage|create file : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed !!!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5d} :catch_85
    .catchall {:try_start_27 .. :try_end_5d} :catchall_83

    invoke-static {p1}, Lcom/igexin/push/util/n;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_64
    :try_start_64
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/igexin/push/core/f;->U:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_85
    .catchall {:try_start_64 .. :try_end_6b} :catchall_83

    :try_start_6b
    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_74} :catch_79
    .catchall {:try_start_6b .. :try_end_74} :catchall_76

    move-object p1, v1

    goto :goto_7c

    :catchall_76
    move-exception p2

    move-object p1, v1

    goto :goto_a0

    :catch_79
    move-exception p2

    move-object p1, v1

    goto :goto_86

    :cond_7c
    :goto_7c
    invoke-static {p1}, Lcom/igexin/push/util/n;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_9f

    :catchall_83
    move-exception p2

    goto :goto_a0

    :catch_85
    move-exception p2

    :goto_86
    :try_start_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicSDStorage|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_83

    goto :goto_7c

    :goto_9f
    return-void

    :goto_a0
    invoke-static {p1}, Lcom/igexin/push/util/n;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p2
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 p1, 0x0

    :try_start_1
    sget-object v0, Lcom/igexin/push/core/f;->T:Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/push/util/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "BasicSDStorage | read file cid id = null"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object p1

    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\\|"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_32

    aget-object v0, v0, v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_32

    if-eqz v0, :cond_31

    :try_start_28
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_31

    if-eqz v1, :cond_31

    goto :goto_32

    :catch_31
    :cond_31
    move-object p1, v0

    :catch_32
    :cond_32
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicSDStorage|get cid from file cid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/push/core/f/b;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/igexin/push/util/g;->a()V

    :cond_9
    return-void
.end method

.method public c(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    sget-object p1, Lcom/igexin/push/core/f;->T:Ljava/lang/String;

    invoke-static {p1}, Lcom/igexin/push/util/g;->a(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_10

    const-string p1, "BasicSDStorage|read session from file, not exist"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-wide v0

    :cond_10
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    const-string p1, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p1, 0x7

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2f

    :cond_29
    const/16 p1, 0x14

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_2f
    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3c
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_46

    cmp-long p1, v2, v0

    if-eqz p1, :cond_5f

    move-wide v0, v2

    goto :goto_5f

    :catch_46
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicSDStorage|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicSDStorage|session : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-wide v0
.end method
