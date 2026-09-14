###### Class com.igexin.push.core.a.f (com.igexin.push.core.a.f)
.class public Lcom/igexin/push/core/a/f;
.super Lcom/igexin/push/core/a/a;


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/igexin/push/core/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/igexin/push/core/a/f;


# direct methods
.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/igexin/push/core/a/a;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/j;

    invoke-direct {v1}, Lcom/igexin/push/core/a/j;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/l;

    invoke-direct {v1}, Lcom/igexin/push/core/a/l;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/p;

    invoke-direct {v1}, Lcom/igexin/push/core/a/p;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/t;

    invoke-direct {v1}, Lcom/igexin/push/core/a/t;-><init>()V

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/i;

    invoke-direct {v1}, Lcom/igexin/push/core/a/i;-><init>()V

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/e;

    invoke-direct {v1}, Lcom/igexin/push/core/a/e;-><init>()V

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    new-instance v1, Lcom/igexin/push/core/a/k;

    invoke-direct {v1}, Lcom/igexin/push/core/a/k;-><init>()V

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/a/f;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/a/f;->b:Lcom/igexin/push/core/a/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/a/f;

    invoke-direct {v0}, Lcom/igexin/push/core/a/f;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a/f;->b:Lcom/igexin/push/core/a/f;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/a/f;->b:Lcom/igexin/push/core/a/f;

    return-object v0
.end method

.method private a(Lcom/igexin/push/e/c/c;Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-static {}, Lcom/igexin/push/util/u;->a()J

    move-result-wide v0

    new-instance v2, Lcom/igexin/push/g/b/b;

    invoke-direct {v2, p2, p3, v0, v1}, Lcom/igexin/push/g/b/b;-><init>(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;J)V

    invoke-virtual {p1, v2}, Lcom/igexin/push/e/c/c;->a(Lcom/igexin/push/g/b/b;)V

    sget-object p2, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(J)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/igexin/push/util/a;->a(J)Z

    move-result p0

    return p0
.end method

.method private l()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/f/a;->i()V

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/r;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "CoreAction|network changed check condition status"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/r;->e()V

    :cond_21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Class;
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "CoreAction|onServiceInitialize ##"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_97

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/e;->a(Z)Z

    const-string v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1c
    const-string p1, ""

    :goto_1e
    sput-object p1, Lcom/igexin/push/core/f;->C:Ljava/lang/String;

    sput-boolean v1, Lcom/igexin/push/core/f;->m:Z

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_30

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a;->c()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/igexin/push/core/f;->m:Z

    :cond_30
    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_39

    return-void

    :cond_39
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_97

    sget-object p1, Lcom/igexin/push/core/f;->Y:Ljava/lang/String;

    if-eqz p1, :cond_97

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/b;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object p1

    if-eqz p1, :cond_97

    sget-object v0, Lcom/igexin/push/core/f;->Y:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/g;->a([BLjava/lang/String;Z)V

    goto :goto_97

    :cond_6f
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/igexin/push/core/f;->Y:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_97

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "del "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/igexin/push/core/f;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " success ~~~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/q;->a()Lcom/igexin/push/core/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/q;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 6

    new-instance v0, Lcom/igexin/push/e/c/c;

    invoke-direct {v0}, Lcom/igexin/push/e/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/e/c/c;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

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

    const-string v1, "CoreAction|cdnreceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "405"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ok"

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "action"

    const-string v2, "pushmessage_feedback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appid"

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appkey"

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "messageid"

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "taskid"

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "actionid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    nop

    :goto_56
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p3, Lcom/igexin/push/e/c/d;

    invoke-direct {p3}, Lcom/igexin/push/e/c/d;-><init>()V

    invoke-virtual {p3}, Lcom/igexin/push/e/c/d;->a()V

    long-to-int v0, v5

    iput v0, p3, Lcom/igexin/push/e/c/d;->a:I

    const-string v0, "17258000"

    iput-object v0, p3, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    iput-object v3, p3, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, p3, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/c/d;->a()Lcom/igexin/push/core/c/d;

    move-result-object v7

    if-eqz v7, :cond_80

    new-instance v8, Lcom/igexin/push/core/bean/i;

    const/4 v4, 0x3

    move-object v0, v8

    move-wide v1, v5

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-virtual {v7, v8}, Lcom/igexin/push/core/c/d;->a(Lcom/igexin/push/core/bean/i;)V

    :cond_80
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    :cond_a8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "feedback|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "action"

    const-string v2, "received"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_11

    :catch_11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/igexin/push/e/c/p;

    invoke-direct {v0}, Lcom/igexin/push/e/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/e/c/d;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/igexin/push/e/c/d;->a:I

    const-string v1, "17258000"

    iput-object v1, v0, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    sget-object p1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object p1, v0, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/e/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 5

    new-instance v0, Lcom/igexin/push/core/d/b;

    invoke-direct {v0, p1, p2, p3}, Lcom/igexin/push/core/d/b;-><init>(Ljava/lang/String;Lcom/igexin/push/e/c/a;Lcom/igexin/push/core/bean/PushTaskBean;)V

    new-instance p1, Lcom/igexin/push/g/a/a;

    invoke-direct {p1, v0}, Lcom/igexin/push/g/a/a;-><init>(Lcom/igexin/push/g/a/b;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void
.end method

.method a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v0}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/bean/PushTaskBean;->parse(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0, p2}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_25

    :catch_c
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CoreAction "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public a(Lcom/igexin/b/a/d/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/igexin/push/e/c/e;)Z
    .registers 5

    if-eqz p1, :cond_79

    sget-object v0, Lcom/igexin/push/core/a/f;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/igexin/push/e/c/e;->i:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/a/a;

    instance-of v1, p1, Lcom/igexin/push/e/c/j;

    if-nez v1, :cond_20

    instance-of v1, p1, Lcom/igexin/push/e/c/m;

    if-nez v1, :cond_20

    instance-of v1, p1, Lcom/igexin/push/e/c/n;

    if-nez v1, :cond_20

    instance-of v1, p1, Lcom/igexin/push/e/c/q;

    if-nez v1, :cond_20

    instance-of v1, p1, Lcom/igexin/push/e/c/h;

    if-eqz v1, :cond_50

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreAction|receive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resp ~~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/a/a/f;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/b/a/b/a/a/f;->a(Ljava/lang/String;)V

    :cond_50
    instance-of v1, p1, Lcom/igexin/push/e/c/m;

    if-nez v1, :cond_5c

    instance-of v1, p1, Lcom/igexin/push/e/c/n;

    if-nez v1, :cond_5c

    instance-of v1, p1, Lcom/igexin/push/e/c/q;

    if-eqz v1, :cond_6b

    :cond_5c
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/igexin/push/core/f;->D:J

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/c/a;->b()V

    :cond_6b
    if-eqz v0, :cond_70

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/a;->a(Ljava/lang/Object;)Z

    :cond_70
    invoke-static {}, Lcom/igexin/push/g/b/c;->i()Lcom/igexin/push/g/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/g/b/c;->j()V

    const/4 p1, 0x1

    return p1

    :cond_79
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    instance-of v1, p1, Lcom/igexin/push/e/c/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    check-cast p1, Lcom/igexin/push/e/c/e;

    invoke-virtual {v0, p1}, Lcom/igexin/push/f/a;->a(Lcom/igexin/push/e/c/e;)V

    goto :goto_40

    :cond_15
    instance-of v1, p1, Lcom/igexin/push/e/b/b;

    if-eqz v1, :cond_22

    const-string p1, "CoreAction|TcpExceptionNotify###"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igexin/push/f/a;->f()V

    goto :goto_40

    :cond_22
    instance-of p1, p1, Lcom/igexin/push/e/b/a;

    if-eqz p1, :cond_40

    const-string p1, "CoreAction|TcpDisconnectSuccessNotify ###"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_3d

    sput-boolean v2, Lcom/igexin/push/core/f;->l:Z

    const-string p1, "CoreAction|broadcast online state = offline"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a;->b()V

    :cond_3d
    invoke-virtual {v0}, Lcom/igexin/push/f/a;->g()V

    :cond_40
    :goto_40
    return v2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 5

    const-string v0, "CoreAction|send heart beat data ........"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "H-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/igexin/push/e/c/h;

    invoke-direct {v2}, Lcom/igexin/push/e/c/h;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;Z)I

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_4a

    const-string v0, "isSlave"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreAction|onServiceInitializeForSlave isSlave ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-nez v0, :cond_26

    return-void

    :cond_26
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/e;->a(Z)Z

    const-string v0, "op_app"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    :cond_3b
    const-string p1, ""

    :goto_3d
    sput-object p1, Lcom/igexin/push/core/f;->C:Ljava/lang/String;

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_4a

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a;->c()V

    :cond_4a
    return-void
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->isCDNType()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/a/f;->c(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    const-string v0, "ok"

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public c()V
    .registers 6

    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-nez v0, :cond_49

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    sget-wide v2, Lcom/igexin/push/config/k;->w:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_14

    sget-wide v0, Lcom/igexin/push/core/f;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_49

    :cond_14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreAction|screen on or onresume, reConnectDelayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/igexin/push/config/k;->w:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", resetDelay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    int-to-long v0, v0

    sput-wide v0, Lcom/igexin/push/core/f;->D:J

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/g/b/g;->j()V

    goto :goto_4e

    :cond_49
    const-string v0, "CoreAction|resetDelayTime, ignore ~~~~~"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_cb

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_cb

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    if-eqz p1, :cond_cb

    invoke-direct {p0}, Lcom/igexin/push/core/a/f;->l()V

    goto/16 :goto_cb

    :cond_21
    const-string v1, "com.igexin.sdk.action.execute"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/r;->a(Landroid/content/Intent;)V

    goto/16 :goto_cb

    :cond_32
    sget-object v1, Lcom/igexin/push/core/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/r;->b(Landroid/content/Intent;)V

    goto/16 :goto_cb

    :cond_43
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    sget p1, Lcom/igexin/push/config/k;->b:I

    if-eqz p1, :cond_cb

    invoke-static {}, Lcom/igexin/push/a/a/c;->c()Lcom/igexin/push/a/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/a/a/c;->d()V

    goto/16 :goto_cb

    :cond_58
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const/4 p1, 0x1

    sput p1, Lcom/igexin/push/core/f;->q:I

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/r;->b()Z

    move-result p1

    if-eqz p1, :cond_74

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/r;->e()V

    :cond_74
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_cb

    invoke-virtual {p0}, Lcom/igexin/push/core/a/f;->c()V

    goto :goto_cb

    :cond_7e
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 p1, 0x0

    sput p1, Lcom/igexin/push/core/f;->q:I

    goto :goto_cb

    :cond_8a
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-static {}, Lcom/igexin/push/d/c;->a()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/igexin/push/d/c;->a(Ljava/lang/String;)V

    goto :goto_cb

    :cond_9e
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-static {}, Lcom/igexin/push/d/c;->a()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/igexin/push/d/c;->b(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_a .. :try_end_b1} :catchall_b2

    goto :goto_cb

    :catchall_b2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreAction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_cb
    :goto_cb
    return-void
.end method

.method public c(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V
    .registers 11

    if-eqz p1, :cond_f4

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_f4

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "C-"

    if-eqz v2, :cond_65

    sget-object v2, Lcom/igexin/push/core/f;->ah:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/e/c/c;

    invoke-virtual {v2}, Lcom/igexin/push/e/c/c;->c()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_cc

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    invoke-virtual {v2}, Lcom/igexin/push/e/c/c;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/igexin/push/e/c/c;->a(I)V

    goto :goto_c9

    :cond_65
    new-instance v2, Lcom/igexin/push/e/c/c;

    invoke-direct {v2}, Lcom/igexin/push/e/c/c;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/igexin/push/e/c/c;->a()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FDB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ok"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/igexin/push/e/c/c;->c:Ljava/lang/Object;

    sget-object v6, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v6, v2, Lcom/igexin/push/e/c/c;->d:Ljava/lang/String;

    long-to-int v5, v4

    iput v5, v2, Lcom/igexin/push/e/c/c;->a:I

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    :goto_c9
    invoke-direct {p0, v2, p1, p2, v0}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/e/c/c;Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdnfeedback|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_f4
    :goto_f4
    return-void
.end method

.method d()V
    .registers 11

    const-string v0, "extraData"

    :try_start_2
    invoke-static {}, Lcom/igexin/push/core/c/d;->a()Lcom/igexin/push/core/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/c/d;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-lez v9, :cond_2a

    goto :goto_e

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/igexin/push/e/c/d;

    invoke-direct {v1}, Lcom/igexin/push/e/c/d;-><init>()V

    invoke-virtual {v1}, Lcom/igexin/push/e/c/d;->a()V

    long-to-int v4, v3

    iput v4, v1, Lcom/igexin/push/e/c/d;->a:I

    const-string v3, "17258000"

    iput-object v3, v1, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/igexin/push/util/j;->a([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/igexin/push/e/c/d;->f:Ljava/lang/Object;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5e
    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, v1, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "freshral|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/c/d;->a()Lcom/igexin/push/core/c/d;

    move-result-object v0

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/igexin/push/core/c/d;->a(JJ)Z

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I
    :try_end_ae
    .catchall {:try_start_2 .. :try_end_ae} :catchall_af

    goto :goto_c8

    :catchall_af
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreActionfreshRAL error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-void
.end method

.method e()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v3, "action"

    const-string v4, "request_deviceid"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_19} :catch_19

    :catch_19
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/e/c/d;

    invoke-direct {v3}, Lcom/igexin/push/e/c/d;-><init>()V

    invoke-virtual {v3}, Lcom/igexin/push/e/c/d;->a()V

    long-to-int v1, v0

    iput v1, v3, Lcom/igexin/push/e/c/d;->a:I

    const-string v0, "17258000"

    iput-object v0, v3, Lcom/igexin/push/e/c/d;->d:Ljava/lang/String;

    iput-object v2, v3, Lcom/igexin/push/e/c/d;->e:Ljava/lang/Object;

    sget-object v0, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    iput-object v0, v3, Lcom/igexin/push/e/c/d;->g:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/igexin/push/f/a;->a(Ljava/lang/String;Lcom/igexin/push/e/c/e;)I

    const-string v0, "CoreAction|deviceidReq"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->F:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_21

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/igexin/push/core/c/h;->b(I)Z

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/h;->h(J)Z

    :cond_21
    sget v0, Lcom/igexin/push/core/f;->az:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_3d

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    sget v1, Lcom/igexin/push/core/f;->az:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->b(I)Z

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/a/g;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/a/g;-><init>(Lcom/igexin/push/core/a/f;)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3d

    :catchall_3d
    :cond_3d
    return-void
.end method

.method public g()V
    .registers 14

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v4, "gtpush"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    if-nez v4, :cond_3d

    const-string v4, "unknowPacageName"

    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_44

    return-void

    :cond_44
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    return-void

    :cond_4b
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4e
    if-ge v7, v5, :cond_ce

    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v9, v3, v7

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    aget-object v9, v3, v7

    const-string v10, ".log"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xe

    if-le v8, v9, :cond_cb

    aget-object v9, v3, v7

    add-int/lit8 v10, v8, -0xf

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7f

    goto :goto_cb

    :cond_7f
    aget-object v9, v3, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :try_start_8d
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/32 v11, 0x5265c00

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x6

    cmp-long v12, v8, v10

    if-lez v12, :cond_cb

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_cb

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_cb} :catch_cb

    :catch_cb
    :cond_cb
    :goto_cb
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_ce
    return-void
.end method

.method public h()V
    .registers 1

    invoke-static {}, Lcom/igexin/push/util/a;->e()V

    return-void
.end method

.method public i()V
    .registers 9

    sget v0, Lcom/igexin/push/core/f;->aj:I

    add-int/lit8 v0, v0, -0x64

    if-gez v0, :cond_7

    const/4 v0, 0x0

    :cond_7
    sput v0, Lcom/igexin/push/core/f;->aj:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/igexin/push/core/f;->ai:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x36ee80

    cmp-long v7, v3, v5

    if-lez v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    :cond_40
    return-void
.end method

.method public j()V
    .registers 6

    sget-wide v0, Lcom/igexin/push/core/f;->N:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->a(Z)Z

    :cond_12
    return-void
.end method

.method public k()V
    .registers 5

    sget-boolean v0, Lcom/igexin/push/core/f;->aa:Z

    const/4 v1, 0x1

    if-nez v0, :cond_14

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/g/b/c;->i()Lcom/igexin/push/g/b/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->aa:Z

    :cond_14
    sget-boolean v0, Lcom/igexin/push/core/f;->ab:Z

    if-nez v0, :cond_26

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->ab:Z

    :cond_26
    sget-boolean v0, Lcom/igexin/push/core/f;->ac:Z

    if-nez v0, :cond_31

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->d()Lcom/igexin/push/g/b/a;

    :cond_31
    return-void
.end method
