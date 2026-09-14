###### Class com.igexin.push.core.a.q (com.igexin.push.core.a.q)
.class public Lcom/igexin/push/core/a/q;
.super Lcom/igexin/push/core/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .registers 7

    const-string v0, "action"

    const/4 v1, 0x1

    :try_start_3
    check-cast p1, Lcom/igexin/push/e/c/o;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pushmessage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/igexin/push/e/c/o;->f:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_25

    iget-object p1, p1, Lcom/igexin/push/e/c/o;->f:Ljava/lang/Object;

    check-cast p1, [B

    move-object v0, p1

    check-cast v0, [B

    :cond_25
    const-string p1, "taskid"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/igexin/push/core/f;->ag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object v2, Lcom/igexin/push/core/f;->ag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    sget-object v2, Lcom/igexin/push/core/f;->ag:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getui receive message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_a6

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/igexin/assist/sdk/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a6

    new-instance v2, Lcom/igexin/push/core/c/c;

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/c/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_86

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/c/c;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;[BZ)Z

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    const-string v0, "10"

    :goto_82
    invoke-virtual {p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_c7

    :cond_86
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/igexin/assist/action/MessageManger;->getInstance()Lcom/igexin/assist/action/MessageManger;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/igexin/assist/action/MessageManger;->getBrandCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_a6
    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;[BZ)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_ad} :catch_ae

    goto :goto_c7

    :catch_ae
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PushmessageAction|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_c7
    :goto_c7
    return v1
.end method
