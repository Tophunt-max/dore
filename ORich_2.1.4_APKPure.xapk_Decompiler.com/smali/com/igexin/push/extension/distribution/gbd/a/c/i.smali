###### Class com.igexin.push.extension.distribution.gbd.a.c.i (com.igexin.push.extension.distribution.gbd.a.c.i)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;


# direct methods
.method private constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Lcom/igexin/push/extension/distribution/gbd/a/c/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/i;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_1ba

    :cond_8
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_1b6

    const-string v6, "#"

    const-string v7, ","

    if-eqz v5, :cond_85

    :try_start_54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v6}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_ad
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_e0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    :cond_f4
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_102
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/h;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/h;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_128
    .catchall {:try_start_54 .. :try_end_128} :catchall_1b6

    const-string v9, ""

    if-eqz v8, :cond_12e

    move-object v8, v9

    goto :goto_13e

    :cond_12e
    :try_start_12e
    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/h;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/h;->a()Ljava/lang/String;

    move-result-object v8

    :goto_13e
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/h;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/h;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15f

    goto :goto_173

    :cond_15f
    iget-object v8, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v8}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/igexin/push/extension/distribution/gbd/b/h;

    invoke-virtual {v5}, Lcom/igexin/push/extension/distribution/gbd/b/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_173
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_102

    :cond_17a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18e

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_18e
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/i;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1b5
    .catchall {:try_start_12e .. :try_end_1b5} :catchall_1b6

    goto :goto_1ba

    :catchall_1b6
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1ba
    :goto_1ba
    return-void
.end method
