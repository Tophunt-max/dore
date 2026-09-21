###### Class com.igexin.push.core.a.e (com.igexin.push.core.a.e)
.class public Lcom/igexin/push/core/a/e;
.super Lcom/igexin/push/core/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/igexin/push/e/c/a;)V
    .registers 8

    if-eqz p1, :cond_62

    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "\\@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    aget-object p1, p1, v2

    const-string v3, "\\|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v0

    aget-object p1, p1, v2

    if-eqz v1, :cond_62

    if-eqz v0, :cond_62

    if-eqz p1, :cond_62

    new-instance v3, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v3}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    sget-object v4, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Lcom/igexin/push/e/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V

    :cond_62
    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/e;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/igexin/push/core/a/a;->a(Lcom/igexin/b/a/d/e;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/igexin/push/e/c/a;

    if-eqz v0, :cond_5f

    check-cast p1, Lcom/igexin/push/e/c/a;

    iget-object v0, p1, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/igexin/push/e/c/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdnpushmessage|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-string v1, "RCV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/e/c/c;

    sget-object v1, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/igexin/push/e/c/c;->e()Lcom/igexin/push/g/b/b;

    move-result-object p1

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Lcom/igexin/push/g/b/b;->t()V

    goto :goto_5f

    :cond_54
    const-string v1, "CDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-direct {p0, v0, p1}, Lcom/igexin/push/core/a/e;->a(Ljava/lang/String;Lcom/igexin/push/e/c/a;)V

    :cond_5f
    :goto_5f
    const/4 p1, 0x1

    return p1
.end method
