###### Class com.igexin.push.extension.distribution.gbd.a.b.s (com.igexin.push.extension.distribution.gbd.a.b.s)
.class public Lcom/igexin/push/extension/distribution/gbd/a/b/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/a/b/s;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/igexin/push/extension/distribution/gbd/a/b/s;
    .registers 2

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    if-nez v1, :cond_e

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/s;

    :cond_e
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a:Lcom/igexin/push/extension/distribution/gbd/a/b/s;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 18

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_3
    const-string v1, "GBD_TGA"

    const-string v2, "start t guard."

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_17

    const-string v0, "GBD_TGA"

    const-string v1, "start t Guard, format error."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13e

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_13c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_13c

    :cond_29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->b()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    if-nez v5, :cond_4f

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    :cond_4f
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    :goto_55
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_12d

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_63

    goto/16 :goto_129

    :cond_63
    const-string v7, "pkgname"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "appid"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "is_forcestart"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "GBD_TGA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "guard item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_d9

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_129

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-virtual {v8}, Lcom/igexin/push/extension/distribution/gbd/b/e;->c()I

    move-result v8

    if-nez v8, :cond_c6

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cb

    :cond_c6
    if-ne v8, v11, :cond_cb

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cb
    :goto_cb
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    :goto_d5
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_129

    :cond_d9
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_129

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/igexin/push/extension/distribution/gbd/b/e;

    if-eqz v12, :cond_e1

    invoke-virtual {v12}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lcom/igexin/push/extension/distribution/gbd/b/e;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12}, Lcom/igexin/push/extension/distribution/gbd/b/e;->c()I

    move-result v12

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e1

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e1

    if-nez v12, :cond_119

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    :cond_119
    if-ne v12, v11, :cond_11e

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11e
    :goto_11e
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->ao:Ljava/util/List;

    goto :goto_d5

    :cond_129
    :goto_129
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_55

    :cond_12d
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/a/b/d;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/a/b/j;->a(Ljava/util/List;)V
    :try_end_13b
    .catchall {:try_start_17 .. :try_end_13b} :catchall_13e

    goto :goto_142

    :cond_13c
    :goto_13c
    monitor-exit p0

    return-void

    :catchall_13e
    move-exception v0

    :try_start_13f
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_144

    :goto_142
    monitor-exit p0

    return-void

    :catchall_144
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized b()V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->ap:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->m:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_160

    const-string v0, "GBD_TGA"

    const-string v1, "upload gt list match time."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->g(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/a;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_157

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_157

    :cond_36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_43
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_17a

    if-eqz v2, :cond_b9

    :try_start_49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/distribution/gbd/b/e;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_43

    if-nez v2, :cond_64

    goto :goto_43

    :cond_64
    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/igexin/push/extension/distribution/gbd/b/e;->c()I

    move-result v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7d

    goto :goto_43

    :cond_7d
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "pkg"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appid"

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cid"

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "GBD_TGA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catchall {:try_start_49 .. :try_end_b3} :catchall_b4

    goto :goto_43

    :catchall_b4
    move-exception v2

    :try_start_b5
    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto :goto_43

    :cond_b9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_bd
    .catchall {:try_start_b5 .. :try_end_bd} :catchall_17a

    if-eqz v0, :cond_c1

    monitor-exit p0

    return-void

    :cond_c1
    :try_start_c1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appinfo"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/igexin/push/core/f;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "version"

    const-string v2, "GBD-1.10.3"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pkg"

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "sendMessage"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "6T5@S_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/igexin/push/core/f;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/i/am;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extraData"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/a/f;->a(Landroid/os/Bundle;)V

    const-string v0, "GBD_TGA"

    const-string v1, "sendMessage guard to server."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_160

    :cond_157
    :goto_157
    const-string v0, "GBD_TGA"

    const-string v1, "guardMap empty."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_c1 .. :try_end_15e} :catchall_17a

    monitor-exit p0

    return-void

    :cond_160
    :goto_160
    :try_start_160
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_17e

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_17e

    const-string v0, "GBD_TGA"

    const-string v1, "deal with the cached guard list."

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->g:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/igexin/push/extension/distribution/gbd/a/b/s;->a(Ljava/lang/Object;)V
    :try_end_179
    .catchall {:try_start_160 .. :try_end_179} :catchall_17a

    goto :goto_17e

    :catchall_17a
    move-exception v0

    :try_start_17b
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_17e
    .catchall {:try_start_17b .. :try_end_17e} :catchall_180

    :cond_17e
    :goto_17e
    monitor-exit p0

    return-void

    :catchall_180
    move-exception v0

    monitor-exit p0

    throw v0
.end method
