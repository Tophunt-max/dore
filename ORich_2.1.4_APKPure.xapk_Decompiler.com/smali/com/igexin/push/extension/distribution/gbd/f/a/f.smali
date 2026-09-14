###### Class com.igexin.push.extension.distribution.gbd.f.a.f (com.igexin.push.extension.distribution.gbd.f.a.f)
.class public Lcom/igexin/push/extension/distribution/gbd/f/a/f;
.super Lcom/igexin/push/extension/distribution/gbd/f/d;


# instance fields
.field n:I

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/List<",
            "Lcom/igexin/push/extension/distribution/gbd/b/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/f/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/f/d;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->a(Z)V

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->o:Ljava/util/List;

    iput p2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->n:I

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "action"

    const-string v2, "upload_BI"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BIType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cid"

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BIData"

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/igexin/b/a/b/f;->f([BI)[B

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->a([B)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gbdreportReq|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GBD_UBLP"

    invoke-static {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    :try_start_0
    new-instance p1, Lcom/igexin/push/extension/distribution/gbd/b/b;

    invoke-direct {p1}, Lcom/igexin/push/extension/distribution/gbd/b/b;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Z)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V

    const-string p1, "GBD_UBLP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestFailed doReport failed..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_35
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz v0, :cond_17

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/b/b;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/b/b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Z)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V

    :cond_17
    const-string v0, "GBD_UBLP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " exceptionHandler doReport error..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_40
    return-void
.end method

.method public a(Ljava/util/Map;[B)V
    .registers 5
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

    const-string p1, "result"

    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->o:Ljava/util/List;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_70

    const-string v0, "GBD_UBLP"

    if-eqz p2, :cond_5c

    :try_start_1c
    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    if-eqz p2, :cond_5c

    new-instance p2, Lcom/igexin/push/extension/distribution/gbd/b/b;

    invoke-direct {p2}, Lcom/igexin/push/extension/distribution/gbd/b/b;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->o:Ljava/util/List;

    invoke-virtual {p2, v1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Ljava/util/List;)V

    const-string v1, "ok"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "gbdreportRsp|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4e
    invoke-static {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_52
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/igexin/push/extension/distribution/gbd/b/b;->a(Z)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->d:Lcom/igexin/push/extension/distribution/gbd/f/c;

    invoke-interface {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/f/c;->a(Ljava/lang/Object;)V

    goto :goto_74

    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "send list = null type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/igexin/push/extension/distribution/gbd/f/a/f;->n:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6f
    .catchall {:try_start_1c .. :try_end_6f} :catchall_70

    goto :goto_4e

    :catchall_70
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_74
    :goto_74
    return-void
.end method
