###### Class com.igexin.push.core.a.a.k (com.igexin.push.core.a.a.k)
.class public Lcom/igexin/push/core/a/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/a/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/config/j;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/core/a/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|del condition taskid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    const-string v1, "message"

    const-string v2, "taskid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    goto :goto_4f

    :catchall_31
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|del condition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_4f
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

    new-instance v3, Lcom/igexin/push/core/bean/n;

    invoke-direct {v3}, Lcom/igexin/push/core/bean/n;-><init>()V

    const-string v4, "terminatetask"

    invoke-virtual {v3, v4}, Lcom/igexin/push/core/bean/n;->setType(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/igexin/push/core/bean/n;->setActionId(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/igexin/push/core/bean/n;->setDoActionId(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/igexin/push/core/bean/n;->a(Ljava/lang/String;)V

    const-string v0, "force"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/igexin/push/core/bean/n;->a(Z)V
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
    .registers 16

    move-object v0, p2

    check-cast v0, Lcom/igexin/push/core/bean/n;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/n;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_96

    const/4 v3, 0x0

    :try_start_1a
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v7

    const-string v8, "message"

    const-string v6, "taskid"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/String;

    aput-object v1, v10, v4

    const/4 v11, 0x0

    const-string v12, "id ASC"

    invoke-virtual/range {v7 .. v12}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8c

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_50

    const-string v6, "messageid"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_4f
    .catchall {:try_start_1a .. :try_end_4f} :catchall_92

    goto :goto_52

    :cond_50
    const-string v6, ""

    :goto_52
    :try_start_52
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8c

    sget-object v7, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igexin/push/core/bean/PushTaskBean;

    if-eqz v6, :cond_65

    invoke-virtual {v6, v5}, Lcom/igexin/push/core/bean/PushTaskBean;->setStop(Z)V

    :cond_65
    new-array v6, v5, [Ljava/lang/String;

    aput-object v1, v6, v4

    invoke-direct {p0, v6}, Lcom/igexin/push/core/a/a/k;->a([Ljava/lang/String;)V

    sget-object v6, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    sget-object v6, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_83
    .catchall {:try_start_52 .. :try_end_83} :catchall_92

    :try_start_83
    sget-object v4, Lcom/igexin/push/core/f;->af:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_8a

    const/4 v4, 0x1

    goto :goto_8c

    :catchall_8a
    const/4 v4, 0x1

    goto :goto_93

    :cond_8c
    :goto_8c
    if-eqz v3, :cond_96

    :goto_8e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_96

    :catchall_92
    nop

    :goto_93
    if-eqz v3, :cond_96

    goto :goto_8e

    :cond_96
    :goto_96
    if-nez v4, :cond_b9

    :try_start_98
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/n;->b()Z

    move-result v0

    if-eqz v0, :cond_b9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/core/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | cancelAll()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_b7
    .catchall {:try_start_98 .. :try_end_b7} :catchall_b8

    goto :goto_b9

    :catchall_b8
    nop

    :cond_b9
    :goto_b9
    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d6

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/igexin/push/core/bean/BaseAction;->getDoActionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/igexin/push/core/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_d6
    return v5
.end method
