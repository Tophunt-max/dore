###### Class com.igexin.push.core.c.c (com.igexin.push.core.c.c)
.class public Lcom/igexin/push/core/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/c;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    const-string v1, "gx_msg_sp"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    :cond_e
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 14

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x96

    if-ge v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_2a

    move-object v3, v5

    move-wide v1, v6

    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x19bfcc00

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_14

    :cond_3b
    if-nez v0, :cond_42

    if-eqz v3, :cond_42

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_42

    :catchall_42
    :cond_42
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 14

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "timestamp"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_34

    move-object v3, v5

    move-wide v1, v6

    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x19bfcc00

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_14

    :cond_45
    if-nez v0, :cond_4c

    if-eqz v3, :cond_4c

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4c

    :catchall_4c
    :cond_4c
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "taskIdList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v1

    :catchall_16
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3e

    if-eqz p2, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3e

    :cond_d
    sget-object v0, Lcom/igexin/push/core/c/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    invoke-virtual {p0}, Lcom/igexin/push/core/c/c;->b()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_1b
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_24

    invoke-direct {p0, v1}, Lcom/igexin/push/core/c/c;->b(Lorg/json/JSONObject;)V

    :cond_24
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "usfdl"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_39

    :catchall_39
    :try_start_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    :goto_3e
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_33

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/igexin/push/core/c/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sp task "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_33

    const/4 p1, 0x1

    return p1

    :catchall_33
    :cond_33
    :goto_33
    return v1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "usfdl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object v1

    :catchall_16
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_40

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_40

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    invoke-virtual {p0}, Lcom/igexin/push/core/c/c;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_19

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_19
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_22

    invoke-direct {p0, v1}, Lcom/igexin/push/core/c/c;->a(Lorg/json/JSONObject;)V

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "taskIdList"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3b

    :catchall_3b
    :try_start_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    :goto_40
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 11

    sget-object v0, Lcom/igexin/push/core/c/c;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    const-string v3, "usfdl"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_54

    if-eqz v3, :cond_16

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_56

    return-object v1

    :cond_16
    :try_start_16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    :cond_3b
    const-string v5, "timestamp"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_54

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-gez v8, :cond_1f

    goto :goto_37

    :cond_52
    :try_start_52
    monitor-exit v0

    return-object v3

    :catchall_54
    monitor-exit v0

    return-object v1

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gx_vendor_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_e

    :catchall_e
    return-void
.end method

.method public d()V
    .registers 5

    sget-object v0, Lcom/igexin/push/core/c/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usfdl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_15

    :catchall_15
    :cond_15
    :try_start_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public e()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    const-string v2, "gx_vendor_token"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    return-object v0
.end method

.method public f()V
    .registers 3

    const-string v0, "gx_vendor_token"

    :try_start_2
    iget-object v1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/igexin/push/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_16

    :catchall_16
    :cond_16
    return-void
.end method
