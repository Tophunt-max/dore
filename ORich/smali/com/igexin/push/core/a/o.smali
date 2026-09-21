###### Class com.igexin.push.core.a.o (com.igexin.push.core.a.o)
.class Lcom/igexin/push/core/a/o;
.super Lcom/igexin/push/g/b;


# instance fields
.field final synthetic a:Lcom/igexin/push/core/a/l;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/core/a/o;->a:Lcom/igexin/push/core/a/l;

    invoke-direct {p0}, Lcom/igexin/push/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 8

    :try_start_0
    new-instance v0, Lcom/igexin/push/core/c/c;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoginResultAction|send unFeedback taskid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-string v3, "appid"

    sget-object v5, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appkey"

    sget-object v5, Lcom/igexin/push/core/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v3

    const-string v5, "multaid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/igexin/push/core/a/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_55
    invoke-virtual {v0}, Lcom/igexin/push/core/c/c;->d()V
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_59

    goto :goto_72

    :catchall_59
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginResultAction|feedbackMultiBrandPushMessage exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_72
    return-void
.end method
