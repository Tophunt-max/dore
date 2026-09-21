###### Class com.igexin.push.core.r (com.igexin.push.core.r)
.class public Lcom/igexin/push/core/r;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/core/r;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/core/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "goto"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "terminatetask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "startmyactivity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "startapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "wakeupsdk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "startweb"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "checkapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "enablelog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    const-string v1, "disablelog"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/igexin/push/core/a/a/a;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_df

    sget-object v0, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_df

    :cond_10
    sget-object v0, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    :cond_20
    :goto_20
    sget-object v0, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/core/a/a/a;

    return-object p1

    :cond_29
    const-string v0, "goto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/f;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/f;-><init>()V

    :goto_38
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_3c
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/g;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/g;-><init>()V

    goto :goto_38

    :cond_4c
    const-string v0, "terminatetask"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/k;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/k;-><init>()V

    goto :goto_38

    :cond_5c
    const-string v0, "startmyactivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/h;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/h;-><init>()V

    goto :goto_38

    :cond_6c
    const-string v0, "startapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/j;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/j;-><init>()V

    goto :goto_38

    :cond_7c
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/e;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/e;-><init>()V

    goto :goto_38

    :cond_8c
    const-string v0, "wakeupsdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/l;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/l;-><init>()V

    goto :goto_38

    :cond_9c
    const-string v0, "startweb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/i;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/i;-><init>()V

    goto :goto_38

    :cond_ac
    const-string v0, "checkapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/b;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/b;-><init>()V

    goto/16 :goto_38

    :cond_bd
    const-string v0, "enablelog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/d;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/d;-><init>()V

    goto/16 :goto_38

    :cond_ce
    const-string v0, "disablelog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Lcom/igexin/push/core/r;->b:Ljava/util/Map;

    new-instance v2, Lcom/igexin/push/core/a/a/c;

    invoke-direct {v2}, Lcom/igexin/push/core/a/a/c;-><init>()V

    goto/16 :goto_38

    :cond_df
    :goto_df
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a()Lcom/igexin/push/core/r;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/r;->a:Lcom/igexin/push/core/r;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/r;

    invoke-direct {v0}, Lcom/igexin/push/core/r;-><init>()V

    sput-object v0, Lcom/igexin/push/core/r;->a:Lcom/igexin/push/core/r;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/r;->a:Lcom/igexin/push/core/r;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object p1

    const-string v0, "taskid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "message"

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Z
    .registers 3

    :try_start_0
    const-string v0, "condition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "screenOn"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "ssid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "netConnected"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_30

    if-eqz p1, :cond_30

    :cond_2e
    const/4 p1, 0x0

    return p1

    :catch_30
    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V
    .registers 13

    const-string v0, "-"

    const-string v1, "duration"

    const-string v2, "expiredTime"

    const-string v3, "bssid"

    const-string v4, "netConnected"

    const-string v5, "ssid"

    const-string v6, "screenOn"

    const-string v7, "wifi"

    :try_start_10
    const-string v8, "condition"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startTime"

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "endTime"

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {v8, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a2
    invoke-virtual {p2, v8}, Lcom/igexin/push/core/bean/PushTaskBean;->setConditionMap(Ljava/util/Map;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a5} :catch_a5

    :catch_a5
    return-void
.end method

.method private g()Z
    .registers 14

    const-string v0, "cdnType"

    const-string v1, "status"

    sget-object v2, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11a

    sget-boolean v2, Lcom/igexin/push/core/f;->n:Z

    if-eqz v2, :cond_11a

    const/4 v2, 0x0

    :try_start_11
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v4

    const-string v5, "message"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v3, "0"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_ee

    :catch_2d
    :goto_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_ee

    const-string v3, "msgextra"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "info"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_f4

    :try_start_47
    new-instance v5, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    invoke-static {v4}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "id"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "appid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "messageid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "taskid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "appkey"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "action_chains"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v11

    invoke-virtual {v11, v8, v7}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v12}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v12, v6}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    if-eqz v3, :cond_a9

    invoke-virtual {v12, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setMsgExtra([B)V

    :cond_a9
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v12, v3}, Lcom/igexin/push/core/bean/PushTaskBean;->setCDNType(Z)V

    :cond_b6
    const-string v3, "condition"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c1

    invoke-direct {p0, v5, v12}, Lcom/igexin/push/core/r;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    :cond_c1
    if-eqz v10, :cond_e7

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_e7

    invoke-virtual {p0, v5, v12}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z

    move-result v3

    if-nez v3, :cond_e7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushMessageExecutor|load task from db parseActionChains result = false ####### "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_e7
    sget-object v3, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ec
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_ec} :catch_2d
    .catchall {:try_start_47 .. :try_end_ec} :catchall_f4

    goto/16 :goto_2d

    :cond_ee
    const/4 v0, 0x0

    :try_start_ef
    sput-boolean v0, Lcom/igexin/push/core/f;->n:Z
    :try_end_f1
    .catchall {:try_start_ef .. :try_end_f1} :catchall_f4

    if-eqz v2, :cond_11a

    goto :goto_10f

    :catchall_f4
    move-exception v0

    :try_start_f5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushMessageExecutor|checkPushMessageMapValue error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f5 .. :try_end_10d} :catchall_113

    if-eqz v2, :cond_11a

    :goto_10f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_11a

    :catchall_113
    move-exception v0

    if-eqz v2, :cond_119

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_119
    throw v0

    :cond_11a
    :goto_11a
    sget-object v0, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private h()V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    sget-object v2, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :catchall_3a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMessageExecutor|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .registers 7

    :try_start_0
    sget v0, Lcom/igexin/push/core/f;->aA:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_6b

    const/16 v1, 0x7d0

    const-string v2, "message"

    if-ge v0, v1, :cond_1d

    :try_start_8
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_6b

    :goto_16
    sget p1, Lcom/igexin/push/core/f;->aA:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/igexin/push/core/f;->aA:I

    goto :goto_6b

    :cond_1d
    const-string v0, "id IN (SELECT id from message where status IS NULL or status=1 or status=2 order by id asc limit 500)"

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/igexin/push/core/f;->aA:I

    sub-int/2addr v1, v0

    sput v1, Lcom/igexin/push/core/f;->aA:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id IN (SELECT id from message where status=0 order by id asc limit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/igexin/push/core/f;->aA:I

    sub-int/2addr v1, v0

    sput v1, Lcom/igexin/push/core/f;->aA:I

    :cond_5c
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p1
    :try_end_68
    .catchall {:try_start_8 .. :try_end_68} :catchall_6b

    if-eqz p1, :cond_6b

    goto :goto_16

    :catchall_6b
    :cond_6b
    :goto_6b
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 13

    const-string v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkgname"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "PushMessageExecutor do processActionExecuteBroadcast"

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v4, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PushMessageExecutor|discard own exec broadcast, taskid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_39
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EXEC_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "createtime"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x0

    :try_start_68
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v5

    const-string v6, "message"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v4, v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8d

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/r;->a(Landroid/content/ContentValues;)V
    :try_end_8d
    .catchall {:try_start_68 .. :try_end_8d} :catchall_90

    :cond_8d
    if-eqz v1, :cond_ae

    goto :goto_ab

    :catchall_90
    move-exception p1

    :try_start_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMessageExecutor|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_91 .. :try_end_a9} :catchall_af

    if-eqz v1, :cond_ae

    :goto_ab
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ae
    return-void

    :catchall_af
    move-exception p1

    if-eqz v1, :cond_b5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "messageid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    sget p2, Lcom/igexin/push/core/b;->i:I

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p3, "PushMessageExecutor start broadcastExecute"

    invoke-static {p3}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object p3, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-nez p3, :cond_a

    return-void

    :cond_a
    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.igexin.sdk.action.execute"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "taskid"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "messageid"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    const-string p2, "pkgname"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "messageid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "actionid"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    sget p2, Lcom/igexin/push/core/b;->j:I

    iput p2, p1, Landroid/os/Message;->what:I

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z
    .registers 13

    const-string v0, "PushMessageExecutor------parse pushmessage actionchain json start-------"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :try_start_b
    const-string v2, "action_chains"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_b6

    const-string v5, "type"

    if-ge v3, v4, :cond_6a

    :try_start_1b
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/extension/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v6, v4}, Lcom/igexin/push/extension/stub/IPushExtension;->isActionSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v5, 0x1

    goto :goto_48

    :cond_47
    const/4 v5, 0x0

    :goto_48
    if-nez v5, :cond_67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushMessageExecutor|extension not suport type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v5, Lcom/igexin/push/core/r;->c:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    return v2

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_6a
    const/4 v3, 0x0

    :goto_6b
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_cf

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b3

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/push/extension/a;->b()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v8, v4}, Lcom/igexin/push/extension/stub/IPushExtension;->parseAction(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v8

    if-eqz v8, :cond_8a

    :cond_9c
    if-nez v8, :cond_ad

    invoke-direct {p0, v6}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;)Lcom/igexin/push/core/a/a/a;

    move-result-object v6

    if-eqz v6, :cond_ad

    invoke-interface {v6, v4}, Lcom/igexin/push/core/a/a/a;->a(Lorg/json/JSONObject;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v8

    if-eqz v8, :cond_ad

    invoke-virtual {v8, v2}, Lcom/igexin/push/core/bean/BaseAction;->setSupportExt(Z)V

    :cond_ad
    if-nez v8, :cond_b0

    return v2

    :cond_b0
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_1b .. :try_end_b3} :catchall_b6

    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    :catchall_b6
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushMessageExecutor|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_cf
    invoke-virtual {p2, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setActionChains(Ljava/util/List;)V

    const-string p1, "PushMessageExecutor------parse pushmessage actionchain json end-------"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v1
.end method

.method public a(Lorg/json/JSONObject;[BZ)Z
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "extra_actionid"

    const-string v5, "cdnType"

    const-string v6, "messageid"

    const-string v7, "appid"

    const-string v8, "action"

    const-string v9, "|"

    const-string v10, "taskid"

    :try_start_16
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22f

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "pushmessage"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22f

    const-string v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "appkey"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "action_chains"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    move-object/from16 v16, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4d} :catch_231

    :try_start_4d
    const-string v1, "pushmessage|"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz v12, :cond_221

    if-eqz v8, :cond_221

    if-eqz v13, :cond_221

    if-eqz v14, :cond_221

    if-eqz v11, :cond_221

    sget-object v1, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_221

    new-instance v1, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-direct {v1}, Lcom/igexin/push/core/bean/PushTaskBean;-><init>()V

    invoke-virtual {v1, v12}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppid(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/igexin/push/core/bean/PushTaskBean;->setMessageId(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/igexin/push/core/bean/PushTaskBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/igexin/push/core/bean/PushTaskBean;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/igexin/push/core/bean/PushTaskBean;->setAppKey(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setCurrentActionid(I)V

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/igexin/push/core/bean/PushTaskBean;->setCDNType(Z)V

    :cond_a5
    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v4

    invoke-virtual {v4, v14, v13}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_f2

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v5

    const-string v8, "0"

    invoke-virtual {v5, v1, v8}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/igexin/push/util/a;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMessageExecutor|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in blacklist ###"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_d9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/igexin/push/util/a;->a(J)Z

    move-result v5

    if-eqz v5, :cond_e5

    const/4 v5, 0x1

    return v5

    :cond_e5
    const/4 v5, 0x1

    invoke-static/range {p1 .. p1}, Lcom/igexin/push/util/a;->a(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_f2

    const-string v0, "PushMessageExecutor|message have loop"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v5

    :cond_f2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CACHE_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "info"

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/b/b/a;->b([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v6, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v2, :cond_13e

    const-string v6, "msgextra"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/bean/PushTaskBean;->setMsgExtra([B)V

    :cond_13e
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_142} :catch_22b

    if-lez v2, :cond_153

    move-object/from16 v2, p0

    :try_start_146
    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)Z

    move-result v6

    if-nez v6, :cond_155

    const-string v0, "PushMessageExecutor parseActionChains result = false #######"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_151} :catch_229

    const/4 v1, 0x1

    return v1

    :cond_153
    move-object/from16 v2, p0

    :cond_155
    const-string v6, "condition"

    if-eqz v3, :cond_20d

    const/4 v3, 0x0

    :try_start_15a
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v17

    const-string v18, "message"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v14, v8, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v8

    invoke-virtual/range {v17 .. v22}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1fd

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PushMessageExecutor|taskid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", db cnt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1f6

    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b3

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v8

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v1, v7}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    :cond_1b3
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_1b7} :catch_20a
    .catchall {:try_start_15a .. :try_end_1b7} :catchall_203

    const-string v8, "status"

    if-eqz v7, :cond_1cd

    :try_start_1bb
    invoke-direct {v2, v0, v1}, Lcom/igexin/push/core/r;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    sget v7, Lcom/igexin/push/core/b;->p:I

    invoke-virtual {v1, v7}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    sget v7, Lcom/igexin/push/core/b;->p:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1c9
    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d9

    :cond_1cd
    sget v7, Lcom/igexin/push/core/b;->q:I

    invoke-virtual {v1, v7}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    sget v7, Lcom/igexin/push/core/b;->q:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1c9

    :goto_1d9
    invoke-virtual {v2, v5}, Lcom/igexin/push/core/r;->a(Landroid/content/ContentValues;)V

    sget-object v5, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    invoke-virtual/range {p0 .. p0}, Lcom/igexin/push/core/r;->e()V

    goto :goto_1fd

    :cond_1eb
    invoke-virtual {v2, v14, v13}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    sget-object v1, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v14, v13, v0, v1}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1f5} :catch_20a
    .catchall {:try_start_1bb .. :try_end_1f5} :catchall_203

    goto :goto_1fd

    :cond_1f6
    if-eqz v3, :cond_1fb

    :try_start_1f8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1fb
    const/4 v1, 0x1

    return v1

    :cond_1fd
    :goto_1fd
    if-eqz v3, :cond_24b

    :goto_1ff
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_24b

    :catchall_203
    move-exception v0

    if-eqz v3, :cond_209

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_209
    throw v0

    :catch_20a
    if-eqz v3, :cond_24b

    goto :goto_1ff

    :cond_20d
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_216

    invoke-direct {v2, v0, v1}, Lcom/igexin/push/core/r;->b(Lorg/json/JSONObject;Lcom/igexin/push/core/bean/PushTaskBean;)V

    :cond_216
    sget v0, Lcom/igexin/push/core/b;->q:I

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    sget-object v0, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24b

    :cond_221
    move-object/from16 v2, p0

    const-string v0, "PushMessageExecutor receieve error pushmessage +++++++++++++++++++"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_228} :catch_229

    goto :goto_24b

    :catch_229
    move-exception v0

    goto :goto_233

    :catch_22b
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_233

    :cond_22f
    move-object v2, v1

    goto :goto_24b

    :catch_231
    move-exception v0

    move-object v2, v1

    :goto_233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushMessageExecutor "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_24b
    :goto_24b
    const/4 v1, 0x1

    return v1
.end method

.method public b(Landroid/content/Intent;)V
    .registers 10

    const-string v0, "taskid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "messageid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "accesstoken"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_27

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_27
    move-object v4, v6

    :goto_28
    const-string v5, "content"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_34
    const/4 v5, 0x0

    const-string v7, "notifID"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object v5, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz p1, :cond_4b

    :goto_47
    invoke-virtual {v5, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_60

    :cond_4b
    sget-object p1, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_60

    sget-object p1, Lcom/igexin/push/core/f;->ae:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_47

    :cond_60
    :goto_60
    sget-object p1, Lcom/igexin/push/core/f;->ao:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    goto :goto_73

    :cond_69
    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v4, v6}, Lcom/igexin/push/core/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/core/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_73
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "PushMessageExecutor do processActionExecute"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_37

    if-nez p1, :cond_a

    goto :goto_37

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/r;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/push/core/c;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    if-ne v0, v1, :cond_37

    const-string v0, "1"

    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_37

    :catchall_1e
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PushMessageExecutor|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public b()Z
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/core/f;->H:J

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-lez v9, :cond_1d

    sget-wide v2, Lcom/igexin/push/core/f;->H:J

    sub-long v2, v0, v2

    cmp-long v7, v2, v5

    if-lez v7, :cond_1b

    sput-wide v0, Lcom/igexin/push/core/f;->H:J

    return v4

    :cond_1b
    const/4 v0, 0x0

    return v0

    :cond_1d
    sub-long/2addr v0, v5

    sput-wide v0, Lcom/igexin/push/core/f;->H:J

    return v4
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/push/core/bean/PushTaskBean;

    const-string v5, "PushMessageExecutor|"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_c7

    const/4 v8, 0x0

    :try_start_1d
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v9

    invoke-virtual {v9}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v10

    const-string v11, "message"

    const-string v9, "taskid"

    const-string v12, "messageid"

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x2

    new-array v13, v9, [Ljava/lang/String;

    aput-object v0, v13, v7

    aput-object v1, v13, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_a0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-gtz v9, :cond_45

    goto :goto_a0

    :cond_45
    :goto_45
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_9a

    const-string v9, "info"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    const-string v10, "msgextra"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-static {v9}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v11

    invoke-virtual {v11, v9, v10, v7}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;[BZ)Z

    sget-object v9, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/igexin/push/core/bean/PushTaskBean;
    :try_end_90
    .catchall {:try_start_1d .. :try_end_90} :catchall_a6

    if-nez v9, :cond_98

    if-eqz v8, :cond_97

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_97
    return v7

    :cond_98
    move-object v4, v9

    goto :goto_45

    :cond_9a
    if-eqz v8, :cond_c7

    :goto_9c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_c7

    :cond_a0
    :goto_a0
    if-eqz v8, :cond_a5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a5
    return v7

    :catchall_a6
    move-exception v0

    :try_start_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_bd
    .catchall {:try_start_a7 .. :try_end_bd} :catchall_c0

    if-eqz v8, :cond_c7

    goto :goto_9c

    :catchall_c0
    move-exception v0

    if-eqz v8, :cond_c6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_c6
    throw v0

    :cond_c7
    :goto_c7
    invoke-virtual {v4}, Lcom/igexin/push/core/bean/PushTaskBean;->getExecuteTimes()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_ed

    :try_start_cf
    sget-object v0, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d4} :catch_d5

    goto :goto_ec

    :catch_d5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_ec
    return v6

    :cond_ed
    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Lcom/igexin/push/core/bean/PushTaskBean;->setExecuteTimes(I)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/igexin/push/core/a/f;->b(Lcom/igexin/push/core/bean/PushTaskBean;Ljava/lang/String;)V

    :try_start_f8
    invoke-virtual {v4, v2}, Lcom/igexin/push/core/bean/PushTaskBean;->getBaseAction(Ljava/lang/String;)Lcom/igexin/push/core/bean/BaseAction;

    move-result-object v0

    if-nez v0, :cond_ff

    return v7

    :cond_ff
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/BaseAction;->isSupportExt()Z

    move-result v1

    if-eqz v1, :cond_124

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/extension/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_111
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_124

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v2, v4, v0}, Lcom/igexin/push/extension/stub/IPushExtension;->executeAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z

    move-result v2

    if-eqz v2, :cond_111

    return v6

    :cond_124
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v1
    :try_end_128
    .catchall {:try_start_f8 .. :try_end_128} :catchall_13f

    move-object/from16 v2, p0

    :try_start_12a
    invoke-direct {v2, v1}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;)Lcom/igexin/push/core/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_13c

    invoke-virtual {v4}, Lcom/igexin/push/core/bean/PushTaskBean;->isStop()Z

    move-result v3

    if-eqz v3, :cond_137

    goto :goto_13c

    :cond_137
    invoke-interface {v1, v4, v0}, Lcom/igexin/push/core/a/a/a;->b(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Z

    move-result v0
    :try_end_13b
    .catchall {:try_start_12a .. :try_end_13b} :catchall_13d

    return v0

    :cond_13c
    :goto_13c
    return v7

    :catchall_13d
    move-exception v0

    goto :goto_142

    :catchall_13f
    move-exception v0

    move-object/from16 v2, p0

    :goto_142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v7
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/igexin/push/core/c;
    .registers 10

    sget-object v0, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/igexin/push/core/bean/PushTaskBean;

    if-nez p2, :cond_17

    sget-object p1, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    return-object p1

    :cond_17
    invoke-virtual {p2}, Lcom/igexin/push/core/bean/PushTaskBean;->getActionChains()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/core/bean/BaseAction;

    sget-object v4, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    if-nez v3, :cond_31

    return-object v4

    :cond_31
    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/extension/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/push/extension/stub/IPushExtension;

    invoke-interface {v4, p2, v3}, Lcom/igexin/push/extension/stub/IPushExtension;->prepareExecuteAction(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;

    move-result-object v4

    sget-object v6, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    if-eq v4, v6, :cond_3d

    :cond_51
    sget-object v5, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    if-ne v4, v5, :cond_69

    invoke-virtual {v3}, Lcom/igexin/push/core/bean/BaseAction;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;)Lcom/igexin/push/core/a/a/a;

    move-result-object v5

    if-nez v5, :cond_60

    return-object v4

    :cond_60
    invoke-interface {v5, p2, v3}, Lcom/igexin/push/core/a/a/a;->a(Lcom/igexin/push/core/bean/PushTaskBean;Lcom/igexin/push/core/bean/BaseAction;)Lcom/igexin/push/core/c;

    move-result-object v4

    sget-object v3, Lcom/igexin/push/core/c;->c:Lcom/igexin/push/core/c;

    if-ne v4, v3, :cond_69

    return-object v4

    :cond_69
    sget-object v3, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    if-ne v0, v3, :cond_6e

    move-object v0, v4

    :cond_6e
    sget-object v3, Lcom/igexin/push/core/c;->b:Lcom/igexin/push/core/c;

    if-ne v4, v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_75
    if-eqz v2, :cond_84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/igexin/push/core/f;->a(Ljava/lang/String;Ljava/lang/Integer;Z)Z

    move-result p1

    if-nez p1, :cond_84

    sget-object v0, Lcom/igexin/push/core/c;->a:Lcom/igexin/push/core/c;

    :cond_84
    return-object v0
.end method

.method public c()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createtime <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v2, v1, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/igexin/push/config/k;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "none"

    sget-object v1, Lcom/igexin/push/config/k;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_ad

    :cond_14
    sget-object v0, Lcom/igexin/push/config/k;->L:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/core/bean/PushTaskBean;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_58
    :goto_58
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_58

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v3}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_58

    :cond_7b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_88
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_99

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_99
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "taskid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_0 .. :try_end_ac} :catchall_ad

    nop

    :catchall_ad
    :cond_ad
    :goto_ad
    return-void
.end method

.method public e()V
    .registers 22

    move-object/from16 v1, p0

    const-string v2, "netConnected"

    const-string v3, "startTime"

    const-string v4, "bssid"

    const-string v5, "ssid"

    const-string v6, "screenOn"

    const-string v7, "wifi"

    const-string v8, "endTime"

    const-string v9, "expiredTime"

    const-string v10, "PushMessageExecutor|"

    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/igexin/push/core/r;->g()Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const-string v0, "PushMessageExecutor--------checkConditionStatus start to read pushMessageMap data..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->ad:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_1ae

    if-eqz v0, :cond_1c5

    :try_start_30
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/PushTaskBean;

    const-string v13, ""

    if-eqz v0, :cond_188

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getStatus()I

    move-result v14

    sget v15, Lcom/igexin/push/core/b;->p:I

    if-ne v14, v15, :cond_188

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getTaskId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getConditionMap()Ljava/util/Map;

    move-result-object v15

    if-nez v15, :cond_59

    return-void

    :cond_59
    invoke-static {v14}, Lcom/igexin/push/util/a;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6a

    sget v13, Lcom/igexin/push/core/b;->r:I

    invoke-direct {v1, v13, v14, v12}, Lcom/igexin/push/core/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v12, Lcom/igexin/push/core/b;->q:I

    :goto_66
    invoke-virtual {v0, v12}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V

    goto :goto_2a

    :cond_6a
    invoke-interface {v15, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8e

    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v20, v16, v18

    if-gez v20, :cond_8e

    sget v13, Lcom/igexin/push/core/b;->r:I

    invoke-direct {v1, v13, v14, v12}, Lcom/igexin/push/core/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v12, Lcom/igexin/push/core/b;->q:I

    goto :goto_66

    :cond_8e
    invoke-interface {v15, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b2

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v20, v16, v18

    if-gez v20, :cond_b2

    sget v13, Lcom/igexin/push/core/b;->r:I

    invoke-direct {v1, v13, v14, v12}, Lcom/igexin/push/core/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v12, Lcom/igexin/push/core/b;->q:I

    goto :goto_66

    :cond_b2
    invoke-interface {v15, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d6

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_c2} :catch_192

    move-object/from16 v17, v7

    :try_start_c4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/igexin/push/util/a;->d()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cb} :catch_d3

    move-object/from16 v16, v8

    :try_start_cd
    sget v8, Lcom/igexin/push/core/f;->p:I

    if-eq v7, v8, :cond_da

    goto/16 :goto_18c

    :catch_d3
    move-exception v0

    goto/16 :goto_195

    :cond_d6
    move-object/from16 v17, v7

    move-object/from16 v16, v8

    :cond_da
    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f7

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/igexin/push/util/a;->e()V

    sget v8, Lcom/igexin/push/core/f;->q:I

    if-eq v7, v8, :cond_f7

    goto/16 :goto_18c

    :cond_f7
    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/igexin/push/core/r;->h()V

    sget-object v7, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    invoke-interface {v7, v13}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_111

    goto/16 :goto_18c

    :cond_111
    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_135

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_126

    goto :goto_18c

    :cond_126
    sget-object v8, Lcom/igexin/push/core/f;->ak:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_135

    goto :goto_18c

    :cond_135
    invoke-interface {v15, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_152

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v13, v7, v18

    if-lez v13, :cond_152

    goto :goto_18c

    :cond_152
    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_156} :catch_186

    if-eqz v7, :cond_16d

    :try_start_158
    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/igexin/push/util/a;->g()Z

    move-result v8
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_16a} :catch_18c

    if-eq v7, v8, :cond_16d

    goto :goto_18c

    :cond_16d
    :try_start_16d
    invoke-virtual {v0}, Lcom/igexin/push/core/bean/PushTaskBean;->getMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v14, v7}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/igexin/push/core/f;->a:Ljava/lang/String;

    sget-object v13, Lcom/igexin/push/core/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v14, v7, v8, v13}, Lcom/igexin/push/core/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v7, Lcom/igexin/push/core/b;->q:I

    invoke-direct {v1, v7, v14, v12}, Lcom/igexin/push/core/r;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget v7, Lcom/igexin/push/core/b;->q:I

    invoke-virtual {v0, v7}, Lcom/igexin/push/core/bean/PushTaskBean;->setStatus(I)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_185} :catch_186

    goto :goto_18c

    :catch_186
    move-exception v0

    goto :goto_197

    :cond_188
    move-object/from16 v17, v7

    move-object/from16 v16, v8

    :catch_18c
    :goto_18c
    move-object/from16 v8, v16

    move-object/from16 v7, v17

    goto/16 :goto_2a

    :catch_192
    move-exception v0

    move-object/from16 v17, v7

    :goto_195
    move-object/from16 v16, v8

    :goto_197
    :try_start_197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1ad} :catch_1ae

    goto :goto_18c

    :catch_1ae
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_1c5
    return-void
.end method

.method public f()V
    .registers 11

    const-string v0, "taskid"

    const-string v1, "PushMessageExecutor|del condition"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/core/e;->i()Lcom/igexin/push/b/b;

    move-result-object v3

    const-string v5, "message"

    const-string v4, "status"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_a7

    :cond_24
    :goto_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    const-string v4, "info"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    const-string v5, "createtime"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_aa

    :try_start_3e
    new-instance v7, Lorg/json/JSONObject;

    new-instance v8, Ljava/lang/String;

    invoke-static {v4}, Lcom/igexin/b/b/a;->c([B)[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "condition"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-direct {p0, v7}, Lcom/igexin/push/core/r;->a(Lorg/json/JSONObject;)Z

    move-result v7

    if-nez v7, :cond_24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xf731400

    cmp-long v9, v7, v5

    if-lez v9, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PushMessageExecutor|del condition taskid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-string v5, "message"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v5, v6, v7}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_3e .. :try_end_8d} :catchall_8e

    goto :goto_24

    :catchall_8e
    move-exception v4

    :try_start_8f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_8f .. :try_end_a5} :catchall_aa

    goto/16 :goto_24

    :cond_a7
    if-eqz v2, :cond_c6

    goto :goto_c3

    :catchall_aa
    move-exception v0

    :try_start_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_c1
    .catchall {:try_start_ab .. :try_end_c1} :catchall_c7

    if-eqz v2, :cond_c6

    :goto_c3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c6
    return-void

    :catchall_c7
    move-exception v0

    if-eqz v2, :cond_cd

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_cd
    throw v0
.end method
