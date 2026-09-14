###### Class com.igexin.push.extension.distribution.gbd.f.a.a (com.igexin.push.extension.distribution.gbd.f.a.a)
.class public Lcom/igexin/push/extension/distribution/gbd/f/a/a;
.super Lcom/igexin/push/extension/distribution/gbd/f/d;


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/f/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/d;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    return-void
.end method

.method private n()Ljava/lang/String;
    .registers 5

    const-string v0, "d69998bb013e45f2"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_2f

    :try_start_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    move-exception v2

    goto :goto_31

    :catch_2f
    move-exception v2

    move-object v1, v0

    :goto_31
    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p1, :cond_f

    :try_start_4
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p1, :cond_f

    :try_start_4
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public a(Ljava/util/Map;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p1, :cond_1f

    if-nez p2, :cond_d

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_d
    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->n()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/i;->a([BLjava/lang/String;Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/a;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return-void
.end method
