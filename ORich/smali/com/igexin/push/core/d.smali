###### Class com.igexin.push.core.d (com.igexin.push.core.d)
.class public Lcom/igexin/push/core/d;
.super Landroid/os/Handler;


# static fields
.field private static a:Ljava/lang/String; = "com.igexin.push.core.d"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .registers 5

    invoke-static {}, Lcom/igexin/push/d/c;->a()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/c;->b()V

    sget-boolean v0, Lcom/igexin/push/core/f;->l:Z

    if-nez v0, :cond_47

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide v2, 0x4062c00000000000L    # 150.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/core/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|userPresent, reConnectDelayTime = "

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

    :cond_47
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a(Landroid/content/Intent;)V

    goto/16 :goto_c3

    :cond_17
    sget-object v1, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_ONRESUME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/igexin/push/core/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|handle onresume ~~~"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a/f;->c()V

    goto/16 :goto_c3

    :cond_3e
    const-string v1, "com.igexin.action.initialize.slave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->b(Landroid/content/Intent;)V

    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object p1

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/igexin/assist/sdk/AssistPushManager;->turnOnPush(Landroid/content/Context;)V

    goto :goto_c3

    :cond_57
    const-string v1, "com.igexin.sdk.action.pushmanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->a(Landroid/os/Bundle;)V

    goto :goto_c3

    :cond_6d
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-direct {p0}, Lcom/igexin/push/core/d;->a()V

    goto :goto_c3

    :cond_79
    const-string v1, "com.igexin.action.notification.click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "broadcast_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_8c

    return-void

    :cond_8c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    const-string v1, "pre_doaction."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    sget-object v0, Lcom/igexin/push/core/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->c(Landroid/content/Intent;)V

    goto :goto_c3

    :cond_ab
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    const-string v1, "pre_burypoint."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    sget-object v0, Lcom/igexin/push/core/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_be
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c3
    :goto_c3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_10d

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->e:I

    if-ne v0, v1, :cond_1b

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    invoke-direct {p0, p1}, Lcom/igexin/push/core/d;->a(Landroid/content/Intent;)V

    goto/16 :goto_139

    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->f:I

    if-ne v0, v1, :cond_2e

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    :goto_29
    invoke-virtual {v0, p1}, Lcom/igexin/push/core/a/f;->c(Landroid/content/Intent;)V

    goto/16 :goto_139

    :cond_2e
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->g:I

    if-ne v0, v1, :cond_3d

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    goto :goto_29

    :cond_3d
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->i:I
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_11b

    const-string v2, "messageid"

    const-string v3, "taskid"

    if-ne v0, v1, :cond_5c

    :try_start_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/igexin/push/core/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_139

    :cond_5c
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->j:I

    if-ne v0, v1, :cond_9e

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|hand execute_action taskid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actionid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/igexin/push/core/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_139

    :cond_9e
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->m:I

    if-ne v0, v1, :cond_b1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/d/c;->a()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/d/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_139

    :cond_b1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->h:I

    if-ne v0, v1, :cond_b9

    goto/16 :goto_139

    :cond_b9
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->n:I

    if-ne v0, v1, :cond_d6

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/c/h;->d(Ljava/lang/String;)Z

    sget-boolean p1, Lcom/igexin/push/core/f;->l:Z

    if-eqz p1, :cond_139

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/a/f;->f()V

    goto :goto_139

    :cond_d6
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/igexin/push/core/b;->o:I

    if-ne v0, v1, :cond_139

    sget-boolean v0, Lcom/igexin/push/config/k;->T:Z

    if-eqz v0, :cond_10c

    const-string v0, "false"

    sget-object v1, Lcom/igexin/push/core/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    goto :goto_10c

    :cond_eb
    new-instance v0, Lcom/igexin/push/e/c/o;

    invoke-direct {v0}, Lcom/igexin/push/e/c/o;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/push/e/c/o;->c()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/igexin/push/e/c/o;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/igexin/push/e/c/o;->f:Ljava/lang/Object;

    new-instance p1, Lcom/igexin/push/core/a/i;

    invoke-direct {p1}, Lcom/igexin/push/core/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/a/i;->a(Ljava/lang/Object;)Z

    goto :goto_139

    :cond_10c
    :goto_10c
    return-void

    :cond_10d
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcom/igexin/push/core/b;->l:I

    if-ne p1, v0, :cond_139

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/r;->e()V
    :try_end_11a
    .catchall {:try_start_47 .. :try_end_11a} :catchall_11b

    goto :goto_139

    :catchall_11b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_139
    :goto_139
    return-void
.end method
