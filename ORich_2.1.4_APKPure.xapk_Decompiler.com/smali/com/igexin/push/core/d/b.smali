###### Class com.igexin.push.core.d.b (com.igexin.push.core.d.b)
.class public Lcom/igexin/push/core/d/b;
.super Lcom/igexin/push/g/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/igexin/push/e/c/a;

.field private i:Lcom/igexin/push/core/bean/PushTaskBean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/push/e/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/igexin/push/g/a/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/push/core/d/b;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/core/d/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/core/d/b;->h:Lcom/igexin/push/e/c/a;

    iput-object p3, p0, Lcom/igexin/push/core/d/b;->i:Lcom/igexin/push/core/bean/PushTaskBean;

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/d/b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/core/d/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/igexin/push/core/d/b;)Lcom/igexin/push/e/c/a;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/core/d/b;->h:Lcom/igexin/push/e/c/a;

    return-object p0
.end method

.method static synthetic c(Lcom/igexin/push/core/d/b;)Lcom/igexin/push/core/bean/PushTaskBean;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/core/d/b;->i:Lcom/igexin/push/core/bean/PushTaskBean;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/e/c/a;)V
    .registers 7

    new-instance v0, Lcom/igexin/push/e/c/c;

    invoke-direct {v0}, Lcom/igexin/push/e/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/e/c/c;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/push/e/c/c;->c:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/push/e/c/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/igexin/push/e/c/c;->a:I

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdnRetrieve|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/push/e/c/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_99

    invoke-static {}, Lcom/igexin/push/util/u;->a()J

    move-result-wide v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/push/core/d/d;

    invoke-direct {v3, p0, p1, p2}, Lcom/igexin/push/core/d/d;-><init>(Lcom/igexin/push/core/d/b;Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/e/c/a;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object p2, Lcom/igexin/push/core/f;->ag:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5

    iget-object p1, p0, Lcom/igexin/push/core/d/b;->h:Lcom/igexin/push/e/c/a;

    invoke-virtual {p1}, Lcom/igexin/push/e/c/a;->a()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1b

    invoke-static {}, Lcom/igexin/push/util/u;->a()J

    move-result-wide v0

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/igexin/push/core/d/c;

    invoke-direct {v2, p0}, Lcom/igexin/push/core/d/c;-><init>(Lcom/igexin/push/core/d/b;)V

    invoke-virtual {p1, v2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_22

    :cond_1b
    iget-object p1, p0, Lcom/igexin/push/core/d/b;->i:Lcom/igexin/push/core/bean/PushTaskBean;

    iget-object v0, p0, Lcom/igexin/push/core/d/b;->h:Lcom/igexin/push/e/c/a;

    invoke-virtual {p0, p1, v0}, Lcom/igexin/push/core/d/b;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/e/c/a;)V

    :goto_22
    return-void
.end method

.method public a([B)V
    .registers 7

    const-string v0, "extraData"

    if-eqz p1, :cond_62

    sget-object v1, Lcom/igexin/push/core/f;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/igexin/b/a/a/a;->c([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/b/f;->d([B)[B

    move-result-object p1

    if-eqz p1, :cond_5a

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/core/d/b;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/igexin/push/core/d/b;->a:Ljava/lang/String;

    const-string v2, "messageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "cdnType"

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    :try_start_31
    const-string v3, "action"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pushmessage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :cond_4d
    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v2}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;[BZ)Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_54} :catch_55

    goto :goto_62

    :catch_55
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    :cond_5a
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Get error CDNData, can not UnGzip it..."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    :goto_62
    return-void
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
