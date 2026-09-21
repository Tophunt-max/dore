###### Class com.igexin.push.extension.distribution.gbd.a.b.o (com.igexin.push.extension.distribution.gbd.a.b.o)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->s:Ljava/util/Map;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->s:Ljava/util/Map;

    :cond_f
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->s:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->s:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    :cond_f
    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->at:Z

    if-nez v0, :cond_14

    return-void

    :cond_14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "t"

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "status"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p0, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    const-string p1, "look"

    invoke-virtual {p0, p1, v0}, Lcom/igexin/push/extension/distribution/gbd/e/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public static a(Ljava/util/Map;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    if-eqz p0, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    goto :goto_1e

    :cond_9
    const/4 v0, 0x1

    const/16 v0, 0x1388

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    new-instance v8, Lcom/igexin/push/extension/distribution/gbd/a/b/p;

    int-to-long v3, v0

    move-object v2, v8

    move-object v5, p0

    move v6, p2

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/igexin/push/extension/distribution/gbd/a/b/p;-><init>(JLjava/util/Map;II)V

    invoke-virtual {v1, v8}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    return-void

    :cond_1e
    :goto_1e
    const-string p0, "GBD_GTT"

    const-string p1, "Android version over 8.0, no check."

    invoke-static {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
