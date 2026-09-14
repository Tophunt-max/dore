###### Class com.igexin.push.extension.distribution.gbd.a.c.j (com.igexin.push.extension.distribution.gbd.a.c.j)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/util/List;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->c:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->b:Ljava/util/List;

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->h(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_26
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_2a
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->i(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/j;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    goto :goto_26

    :catchall_37
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_3b
    return-void
.end method
