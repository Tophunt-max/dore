###### Class com.igexin.push.core.d.g (com.igexin.push.core.d.g)
.class public Lcom/igexin/push/core/d/g;
.super Lcom/igexin/push/g/a/b;


# instance fields
.field public a:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BIZ)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/igexin/push/g/a/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/igexin/push/core/d/g;->g:Z

    iput-boolean p4, p0, Lcom/igexin/push/core/d/g;->g:Z

    iput p3, p0, Lcom/igexin/push/core/d/g;->h:I

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/core/d/g;->a([BI)V

    return-void
.end method

.method private a([BI)V
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "action"

    const-string v2, "upload_BI"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "BIType"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cid"

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "BIData"

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/igexin/b/a/b/f;->f([BI)[B

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/d/g;->b([B)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_38

    :catch_38
    return-void
.end method


# virtual methods
.method public a([B)V
    .registers 6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return-void

    :cond_20
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/igexin/push/core/d/g;->a:Z

    iget p1, p0, Lcom/igexin/push/core/d/g;->h:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2c

    invoke-static {}, Lcom/igexin/push/util/g;->g()V

    :cond_2c
    iget-boolean p1, p0, Lcom/igexin/push/core/d/g;->g:Z

    if-eqz p1, :cond_5e

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "type"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "bi"

    invoke-virtual {v1, v3, p1, v0, v2}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/igexin/push/core/c/h;->c(J)Z

    :cond_5e
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
