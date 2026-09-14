###### Class com.igexin.push.core.a (com.igexin.push.core.a)
.class public Lcom/igexin/push/core/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/core/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/a;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/a;->a:Lcom/igexin/push/core/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/a;

    invoke-direct {v0}, Lcom/igexin/push/core/a;-><init>()V

    sput-object v0, Lcom/igexin/push/core/a;->a:Lcom/igexin/push/core/a;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/a;->a:Lcom/igexin/push/core/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_10

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x2711

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "taskid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "messageid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "payloadid"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const-string p2, "packagename"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private d()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_10

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.igexin.sdk.action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Class;
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/s;->d(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .registers 8

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pid"

    const/16 v2, 0x2718

    const-string v3, "action"

    if-eqz v0, :cond_31

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_31
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_58

    const/16 v1, 0x2719

    const-string v2, "action"

    if-eqz v0, :cond_39

    :try_start_11
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x271a

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cmd_msg"

    new-instance v4, Lcom/igexin/sdk/message/SetTagCmdMessage;

    invoke-direct {v4, p1, p2, v1}, Lcom/igexin/sdk/message/SetTagCmdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p2, v3}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_71

    :cond_39
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sn"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_57
    .catchall {:try_start_11 .. :try_end_57} :catchall_58

    goto :goto_71

    :catchall_58
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broadcaster|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_71
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "startapp|broadcastPayload"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_12

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_28

    :cond_12
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v1, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/igexin/push/core/bean/PushTaskBean;

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Lcom/igexin/push/core/bean/PushTaskBean;->getMsgExtra()[B

    move-result-object v0

    :cond_28
    :goto_28
    if-eqz v0, :cond_98

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startapp|broadcast|payload = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object p4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_94

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_94

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v1, v2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x2711

    const-string v3, "action"

    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/igexin/sdk/message/GTTransmitMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3, v0}, Lcom/igexin/sdk/message/GTTransmitMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v3, "transmit_data"

    invoke-virtual {p4, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p4

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p4, v2, v1}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_94
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/igexin/push/core/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void

    :cond_98
    const-string p1, "startapp|broadcast|payload is empty!"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 20

    move-object v0, p1

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v1, :cond_6

    return-void

    :cond_6
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    move-object v2, p0

    invoke-virtual {p0, v1}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "action"

    if-eqz v1, :cond_4e

    sget-object v4, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    if-eqz v4, :cond_4e

    sget-object v4, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v5, 0x271a

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v5, Lcom/igexin/sdk/message/FeedbackCmdMessage;

    const/16 v12, 0x2716

    move-object v6, v5

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-direct/range {v6 .. v12}, Lcom/igexin/sdk/message/FeedbackCmdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    const-string v6, "cmd_msg"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v1

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v5, v4}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_4e
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/16 v5, 0x2716

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "appid"

    invoke-virtual {v4, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "taskid"

    move-object v3, p2

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "actionid"

    move-object/from16 v3, p3

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "result"

    move-object/from16 v3, p4

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "timestamp"

    move-wide/from16 v5, p5

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 7

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onlineState"

    const/16 v2, 0x2717

    const-string v3, "action"

    if-eqz v0, :cond_33

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v5, Lcom/igexin/push/core/f;->l:Z

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_33
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/igexin/push/core/f;->l:Z

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "action"

    const/16 v2, 0x271a

    if-eqz v0, :cond_37

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/igexin/sdk/message/BindAliasCmdMessage;

    invoke-direct {v1, p1, p2, v2}, Lcom/igexin/sdk/message/BindAliasCmdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "cmd_msg"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p2, v3}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_55

    :cond_37
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sn"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_55
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_3a

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x271b

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/igexin/sdk/message/GTNotificationMessage;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/igexin/sdk/message/GTNotificationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "notification_arrived"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3a
    return-void
.end method

.method public c()V
    .registers 7

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastClientId|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clientid"

    const/16 v2, 0x2712

    const-string v3, "action"

    if-eqz v0, :cond_61

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v5, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_61
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x271b

    const-string v2, "action"

    if-eqz v0, :cond_39

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x271a

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;

    invoke-direct {v2, p1, p2, v1}, Lcom/igexin/sdk/message/UnBindAliasCmdMessage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "cmd_msg"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p2, v3}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_57

    :cond_39
    invoke-direct {p0}, Lcom/igexin/push/core/a;->d()Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "sn"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_57
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/igexin/push/core/a;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_3a

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x271c

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/igexin/sdk/message/GTNotificationMessage;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/igexin/sdk/message/GTNotificationMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "notification_clicked"

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object p1

    sget-object p2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3a
    return-void
.end method
