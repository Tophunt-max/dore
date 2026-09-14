###### Class com.igexin.push.g.a (com.igexin.push.g.a)
.class public Lcom/igexin/push/g/a;
.super Lcom/igexin/b/a/d/e;


# static fields
.field private static d:Lcom/igexin/push/g/a;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J


# direct methods
.method private constructor <init>()V
    .registers 3

    const v0, -0x7ffffff5

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/e;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/g/a;->b:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/g/a;->c:J

    return-void
.end method

.method public static i()Lcom/igexin/push/g/a;
    .registers 4

    sget-object v0, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    if-nez v0, :cond_21

    const-class v0, Lcom/igexin/push/g/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    if-nez v1, :cond_1c

    new-instance v1, Lcom/igexin/push/g/a;

    invoke-direct {v1}, Lcom/igexin/push/g/a;-><init>()V

    sput-object v1, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :goto_21
    sget-object v0, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    return-object v0
.end method

.method public static k()V
    .registers 1

    sget-object v0, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/igexin/push/g/a;->j()V

    :cond_7
    return-void
.end method

.method private v()J
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/g/a;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    cmp-long v6, v0, v4

    if-ltz v6, :cond_19

    iget-object v6, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_19

    return-wide v2

    :cond_19
    iget-object v6, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_24

    return-wide v2

    :cond_24
    iget-object v2, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_32

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_32
    sub-long/2addr v4, v0

    return-wide v4
.end method

.method private w()V
    .registers 7

    sget-object v0, Lcom/igexin/push/core/f;->B:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/igexin/push/g/a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_118

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    return-void

    :cond_30
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v4, "gtpush"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_67

    return-void

    :cond_67
    const/4 v3, 0x0

    :try_start_68
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_99

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_96

    return-void

    :cond_96
    invoke-static {}, Lcom/igexin/b/a/c/a;->a()V

    :cond_99
    invoke-static {}, Lcom/igexin/b/a/c/a;->b()[B

    move-result-object v0

    if-nez v0, :cond_a5

    invoke-static {}, Lcom/igexin/b/a/c/a;->a()V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_a5} :catch_108
    .catchall {:try_start_68 .. :try_end_a5} :catchall_101

    :cond_a5
    :try_start_a5
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/igexin/push/core/f;->aB:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v4, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/io/File;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/CipherOutputStream;

    move-result-object v0
    :try_end_b2
    .catchall {:try_start_a5 .. :try_end_b2} :catchall_b3

    goto :goto_b9

    :catchall_b3
    :try_start_b3
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_b9
    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c7

    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_fb

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_fb} :catch_108
    .catchall {:try_start_b3 .. :try_end_fb} :catchall_101

    :cond_fb
    if-eqz v3, :cond_10c

    :goto_fd
    :try_start_fd
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_10c

    goto :goto_10c

    :catchall_101
    move-exception v0

    if-eqz v3, :cond_107

    :try_start_104
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_107

    :catch_107
    :cond_107
    throw v0

    :catch_108
    nop

    if-eqz v3, :cond_10c

    goto :goto_fd

    :catch_10c
    :cond_10c
    :goto_10c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/g/a;->c:J

    iget-object v0, p0, Lcom/igexin/push/g/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_118
    move-exception v0

    :try_start_119
    monitor-exit p0
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    :try_start_6
    iget-object p1, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_19

    iget-object p1, p0, Lcom/igexin/push/g/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1c

    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .registers 2

    const v0, -0x7ffffff5

    return v0
.end method

.method public b_()V
    .registers 6

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->b_()V

    :goto_3
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/igexin/push/g/a;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_4

    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    :try_start_13
    invoke-direct {p0}, Lcom/igexin/push/g/a;->w()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    goto :goto_3

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    :try_start_19
    throw v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1a

    :catchall_1a
    invoke-direct {p0}, Lcom/igexin/push/g/a;->w()V

    return-void
.end method

.method public d()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/g/a;->n:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected h()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/b/a/d/e;->h()V

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/g/a;->d:Lcom/igexin/push/g/a;

    return-void
.end method

.method public j()V
    .registers 2

    invoke-virtual {p0}, Lcom/igexin/push/g/a;->s()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/igexin/push/g/a;->s()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void
.end method
