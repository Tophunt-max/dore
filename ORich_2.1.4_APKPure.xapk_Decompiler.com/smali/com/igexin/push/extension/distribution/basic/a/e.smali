###### Class com.igexin.push.extension.distribution.basic.a.e (com.igexin.push.extension.distribution.basic.a.e)
.class public Lcom/igexin/push/extension/distribution/basic/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXT-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/extension/distribution/basic/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/basic/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|del condition taskid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    const-string v1, "message"

    const-string v2, "taskid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/extension/distribution/basic/e/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sget-object p1, Lcom/igexin/push/extension/distribution/basic/c/g;->t:Lcom/igexin/push/extension/distribution/basic/e/b;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/basic/e/b;->close()V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3b

    goto :goto_59

    :catchall_3b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|del condition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_59
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;
    .registers 7

    const-string v0, "taskid"

    const-string v1, "actionid"

    const-string v2, "do"

    :try_start_6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    new-instance v3, Lcom/igexin/push/extension/distribution/basic/b/d;

    invoke-direct {v3}, Lcom/igexin/push/extension/distribution/basic/b/d;-><init>()V

    const-string v4, "terminatetask"

    invoke-virtual {v3, v4}, Lcom/igexin/push/extension/distribution/basic/b/d;->setType(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/igexin/push/extension/distribution/basic/b/d;->setActionId(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/igexin/push/extension/distribution/basic/b/d;->setDoActionId(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/igexin/push/extension/distribution/basic/b/d;->a(Ljava/lang/String;)V

    const-string v0, "force"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/igexin/push/extension/distribution/basic/b/d;->a(Z)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_40} :catch_41

    return-object v3

    :catch_41
    :cond_41
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;
    .registers 3

    sget-object p1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    return-object p1
.end method

.method public b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z
    .registers 18

    move-object/from16 v0, p2

    check-cast v0, Lcom/igexin/push/extension/distribution/basic/b/d;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/d;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v1, :cond_b1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b1

    const/4 v7, 0x0

    :try_start_1f
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v9

    const-string v10, "message"

    const-string v8, "taskid"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v11

    new-array v12, v5, [Ljava/lang/String;

    aput-object v1, v12, v4

    const/4 v13, 0x0

    const-string v14, "id ASC"

    invoke-virtual/range {v9 .. v14}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_a6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_55

    const-string v8, "messageid"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v9

    invoke-virtual {v9, v1, v8}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_56

    :cond_55
    move-object v8, v6

    :goto_56
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a6

    sget-object v9, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/core/bean/PushTaskBean;

    if-eqz v8, :cond_a6

    invoke-virtual {v8, v5}, Lcom/igexin/push/core/bean/PushTaskBean;->setStop(Z)V
    :try_end_69
    .catchall {:try_start_1f .. :try_end_69} :catchall_ad

    move-object v9, p0

    :try_start_6a
    invoke-direct {p0, v1}, Lcom/igexin/push/extension/distribution/basic/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/igexin/push/core/bean/PushTaskBean;->getPerActionid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a7

    invoke-virtual {v8, v10}, Lcom/igexin/push/core/bean/PushTaskBean;->getBaseAction(Ljava/lang/String;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    sget-object v3, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    sget-object v3, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_a2
    .catchall {:try_start_6a .. :try_end_a2} :catchall_a4

    const/4 v4, 0x1

    goto :goto_a7

    :catchall_a4
    nop

    goto :goto_ae

    :cond_a6
    move-object v9, p0

    :cond_a7
    :goto_a7
    if-eqz v7, :cond_b2

    :goto_a9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_b2

    :catchall_ad
    move-object v9, p0

    :goto_ae
    if-eqz v7, :cond_b2

    goto :goto_a9

    :cond_b1
    move-object v9, p0

    :cond_b2
    :goto_b2
    if-nez v4, :cond_da

    :try_start_b4
    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/basic/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/extension/distribution/basic/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | cancelAll()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/basic/j/a;->c(Landroid/content/Context;)V
    :try_end_d8
    .catchall {:try_start_b4 .. :try_end_d8} :catchall_d9

    goto :goto_da

    :catchall_d9
    nop

    :cond_da
    :goto_da
    invoke-virtual/range {p2 .. p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f7
    return v5
.end method
