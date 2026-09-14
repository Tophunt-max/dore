###### Class com.igexin.push.extension.distribution.gbd.f.a.b (com.igexin.push.extension.distribution.gbd.f.a.b)
.class public Lcom/igexin/push/extension/distribution/gbd/f/a/b;
.super Lcom/igexin/push/extension/distribution/gbd/f/d;


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/f/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/f/d;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p1, :cond_f

    :try_start_4
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

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

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p1, :cond_f

    :try_start_4
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

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
    .registers 6
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
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "header"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    return-void
.end method
