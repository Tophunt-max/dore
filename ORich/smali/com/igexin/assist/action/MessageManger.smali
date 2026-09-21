###### Class com.igexin.assist.action.MessageManger (com.igexin.assist.action.MessageManger)
.class public Lcom/igexin/assist/action/MessageManger;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/assist/action/MessageManger;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/assist/action/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/assist/action/MessageManger;-><init>()V

    return-void
.end method

.method private a(Lcom/igexin/assist/action/d;)Lcom/igexin/push/core/bean/PushTaskBean;
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v2}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/core/f;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    return-object v2
.end method

.method private a(Landroid/content/Context;)Ljava/lang/Class;
    .registers 4

    :try_start_0
    const-string v0, "uis"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/igexin/assist/action/d;)V
    .registers 6

    sget-object v0, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/igexin/assist/util/AssistUtils;->startGetuiService(Landroid/content/Context;)V

    :cond_b
    if-nez p2, :cond_e

    return-void

    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    sget v0, Lcom/igexin/push/core/b;->o:I

    iput v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->b()[B

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->b()[B

    move-result-object p2

    const-string v1, "payload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_39
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    sget-object v0, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "Assist_MessageManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "other token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0, p1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/igexin/push/core/c/c;->c(Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/igexin/push/core/c/h;->d(Ljava/lang/String;)Z

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_58

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a/f;->f()V

    goto :goto_58

    :cond_47
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    sget v0, Lcom/igexin/push/core/b;->n:I

    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z
    :try_end_58
    .catchall {:try_start_0 .. :try_end_58} :catchall_58

    :catchall_58
    :cond_58
    :goto_58
    return-void
.end method

.method static synthetic a(Lcom/igexin/assist/action/MessageManger;Landroid/content/Context;Lcom/igexin/assist/action/d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/igexin/assist/action/MessageManger;->a(Landroid/content/Context;Lcom/igexin/assist/action/d;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/assist/action/MessageManger;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/igexin/assist/action/MessageManger;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/assist/action/MessageManger;Lcom/igexin/assist/action/d;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/igexin/assist/action/MessageManger;->a(Lcom/igexin/assist/action/d;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/igexin/assist/action/d;Landroid/content/Context;)V
    .registers 12

    if-eqz p1, :cond_11e

    if-nez p2, :cond_6

    goto/16 :goto_11e

    :cond_6
    :try_start_6
    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0, p2}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10c

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/c;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/igexin/assist/action/MessageManger;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_11e

    const-string v1, ":"

    const/16 v2, 0x2711

    const-string v3, "action"

    if-eqz v0, :cond_71

    :try_start_28
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "transmit_data"

    new-instance v3, Lcom/igexin/sdk/message/GTTransmitMessage;

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->b()[B

    move-result-object v7

    invoke-direct {v3, v5, v6, v1, v7}, Lcom/igexin/sdk/message/GTTransmitMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p2, v4}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto/16 :goto_f3

    :cond_71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_81

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.igexin.sdk.action."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "taskid"

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "messageid"

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "payloadid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "packagename"

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payload"

    invoke-virtual {p1}, Lcom/igexin/assist/action/d;->b()[B

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/igexin/assist/action/MessageManger;->getBrandCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/igexin/assist/action/MessageManger;->feedbackPushMessage(Landroid/content/Context;Lcom/igexin/assist/action/d;Ljava/lang/String;)V

    goto :goto_11e

    :cond_10c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/igexin/assist/action/MessageManger;->getBrandCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11d
    .catchall {:try_start_28 .. :try_end_11d} :catchall_11e

    goto :goto_104

    :catchall_11e
    :cond_11e
    :goto_11e
    return-void
.end method

.method public static getInstance()Lcom/igexin/assist/action/MessageManger;
    .registers 1

    invoke-static {}, Lcom/igexin/assist/action/c;->a()Lcom/igexin/assist/action/MessageManger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMessage(Lcom/igexin/assist/MessageBean;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/assist/action/MessageManger;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/igexin/assist/action/b;

    invoke-direct {v1, p0, p1}, Lcom/igexin/assist/action/b;-><init>(Lcom/igexin/assist/action/MessageManger;Lcom/igexin/assist/MessageBean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public feedbackPushMessage(Landroid/content/Context;Lcom/igexin/assist/action/d;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/igexin/assist/action/MessageManger;->a(Lcom/igexin/assist/action/d;)Lcom/igexin/push/core/bean/PushTaskBean;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    goto :goto_56

    :cond_14
    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0, p1}, Lcom/igexin/push/core/c/c;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "messageid"

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "taskid"

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "multaid"

    invoke-virtual {p1, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/igexin/assist/action/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/igexin/push/core/c/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_56
    .catchall {:try_start_0 .. :try_end_56} :catchall_56

    :catchall_56
    :goto_56
    return-void
.end method

.method public getBrandCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
