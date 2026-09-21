###### Class com.igexin.push.c.m (com.igexin.push.c.m)
.class public abstract Lcom/igexin/push/c/m;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:J

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/c/q;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/c/j;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/igexin/push/c/a;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/igexin/push/c/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/c/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/m;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/m;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    new-instance v0, Lcom/igexin/push/c/a;

    invoke-direct {v0}, Lcom/igexin/push/c/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    new-instance v0, Lcom/igexin/push/c/n;

    invoke-direct {v0, p0}, Lcom/igexin/push/c/n;-><init>(Lcom/igexin/push/c/m;)V

    iput-object v0, p0, Lcom/igexin/push/c/m;->h:Ljava/util/Comparator;

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->hasMultipleXfr()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-direct {p0, p1}, Lcom/igexin/push/c/m;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/igexin/push/c/m;->c(Ljava/lang/String;)V

    goto :goto_3d

    :cond_3a
    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    :goto_3d
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/igexin/push/c/j;
    .registers 6

    const-string v0, "domain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v1, Lcom/igexin/push/c/j;

    invoke-direct {v1}, Lcom/igexin/push/c/j;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/c/j;->a(Ljava/lang/String;)V

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/c/j;->a(I)V

    :cond_25
    const-string v0, "ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/push/c/j;->b(Ljava/lang/String;)V

    :cond_34
    const-string v0, "consumeTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/c/j;->a(J)V

    :cond_43
    const-string v0, "detectSuccessTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/c/j;->b(J)V

    :cond_52
    const-string v0, "isDomain"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/igexin/push/c/j;->a(Z)V

    :cond_61
    return-object v1
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    :try_start_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_1c
    :cond_1c
    return-object v0
.end method

.method private a()V
    .registers 9

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/push/c/m;->a:J

    invoke-direct {p0}, Lcom/igexin/push/c/m;->q()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "null"

    if-eqz v0, :cond_19

    sget-object v0, Lcom/igexin/push/core/f;->ar:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z

    goto :goto_25

    :cond_19
    sget-object v0, Lcom/igexin/push/core/f;->as:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z

    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/igexin/push/c/m;->o()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/igexin/push/c/j;

    invoke-static {v4}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/igexin/push/c/j;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_57

    invoke-direct {p0, v5}, Lcom/igexin/push/c/m;->a(Lcom/igexin/push/c/j;)V

    :cond_57
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_5b
    iget-object v1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v1, v2}, Lcom/igexin/push/c/a;->b(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private a(Lcom/igexin/push/c/j;)V
    .registers 6

    new-instance v0, Lcom/igexin/push/c/q;

    invoke-direct {v0}, Lcom/igexin/push/c/q;-><init>()V

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->b()Lcom/igexin/push/c/h;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/c/h;->a:Lcom/igexin/push/c/h;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lcom/igexin/push/c/q;->a(Z)V

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->c()Lcom/igexin/push/c/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/p;)V

    invoke-virtual {v0, p1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/j;)V

    iget-object v1, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_21
    iget-object v2, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_33

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1, v0, v3, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    return-void

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_a
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_bd

    :cond_1c
    const-string p1, "lastDetectTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_24
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/igexin/push/c/m;->a:J
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    nop

    :cond_2c
    :goto_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/igexin/push/c/m;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/push/c/f;->a:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_41

    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_41
    const-string p1, "list"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :try_start_49
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    nop

    :cond_4f
    :goto_4f
    if-eqz v0, :cond_b9

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_58

    goto :goto_b9

    :cond_58
    invoke-direct {p0, v0}, Lcom/igexin/push/c/m;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_66
    invoke-direct {p0}, Lcom/igexin/push/c/m;->o()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_9f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | db cache xfr != default, use default"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_9f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | db cache xfr == default, use cache"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/igexin/push/c/m;->b(Lorg/json/JSONArray;)V

    return-void

    :cond_b9
    :goto_b9
    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_bd
    :goto_bd
    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void
.end method

.method private b(Lorg/json/JSONArray;)V
    .registers 8

    const-string v0, "|initWithCacheData exception "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5c

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igexin/push/c/m;->a(Lorg/json/JSONObject;)Lcom/igexin/push/c/j;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-object v3, p0, Lcom/igexin/push/c/m;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_62

    goto :goto_2c

    :cond_22
    :try_start_22
    const-string v4, "domain"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/igexin/push/c/m;->d(Ljava/lang/String;)Lcom/igexin/push/c/j;

    move-result-object v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_37

    :goto_2c
    if-eqz v4, :cond_34

    :try_start_2e
    invoke-direct {p0, v4}, Lcom/igexin/push/c/m;->a(Lcom/igexin/push/c/j;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_37
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/c/m;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->a()V

    return-void

    :cond_5c
    iget-object p1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {p1, v1}, Lcom/igexin/push/c/a;->b(Ljava/util/List;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_61} :catch_62

    goto :goto_7e

    :catch_62
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_7e
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_10

    :catch_f
    nop

    :goto_10
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_73

    :cond_19
    const-string p1, "loginFailedlCnt"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :try_start_21
    iget-object v1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/igexin/push/c/a;->c:I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    nop

    :cond_2b
    :goto_2b
    const-string p1, "lastChange2BackupTime"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_33
    iget-object v1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/igexin/push/c/a;->d:J
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    nop

    :cond_3d
    :goto_3d
    const-string p1, "lastOfflineTime"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :try_start_45
    iget-object v1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/igexin/push/c/a;->e:J
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    nop

    :cond_4f
    :goto_4f
    const-string p1, "domainType"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    :try_start_57
    iget-object v1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/igexin/push/c/d;->a(I)Lcom/igexin/push/c/d;

    move-result-object p1

    iput-object p1, v1, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    iget-object p1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget-object p1, p1, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    sget-object v0, Lcom/igexin/push/c/d;->b:Lcom/igexin/push/c/d;

    if-ne p1, v0, :cond_73

    iget-object p1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget-object p1, p1, Lcom/igexin/push/c/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    :goto_73
    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/igexin/push/c/j;
    .registers 4

    new-instance v0, Lcom/igexin/push/c/j;

    invoke-direct {v0}, Lcom/igexin/push/c/j;-><init>()V

    invoke-static {p1}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/igexin/push/c/j;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/igexin/push/c/j;->a(I)V

    return-object v0
.end method

.method private o()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getDefaultXfrList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/c/m;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/m;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private q()Z
    .registers 3

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->b()Lcom/igexin/push/c/h;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/c/h;->b:Lcom/igexin/push/c/h;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/igexin/push/c/q;
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/push/c/q;

    monitor-exit v0

    return-object p1

    :cond_2d
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public abstract b()Lcom/igexin/push/c/h;
.end method

.method protected b(Lcom/igexin/push/c/j;)V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/c/m;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/m;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    iget-object p1, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {p1}, Lcom/igexin/push/c/a;->e()V

    return-void

    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public abstract c()Lcom/igexin/push/c/p;
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->k()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|startDetect detect = false, return !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|startDetect detect = true, start detect !!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->h()V

    return-void
.end method

.method public e()V
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/c/q;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/p;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/c/q;

    invoke-virtual {v2}, Lcom/igexin/push/c/q;->i()V

    goto :goto_d

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public f()V
    .registers 11

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->e()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->p()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->o()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v2, :cond_48

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v5, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    if-ge v6, v3, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igexin/push/c/q;

    invoke-virtual {v7}, Lcom/igexin/push/c/q;->j()V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_48
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a3

    new-instance v6, Lcom/igexin/push/c/j;

    invoke-direct {v6}, Lcom/igexin/push/c/j;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/igexin/push/c/j;->a(Ljava/lang/String;)V

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/igexin/push/c/j;->a(I)V

    if-ge v4, v2, :cond_9a

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/igexin/push/c/q;

    invoke-virtual {v7, v6}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/j;)V

    iget-object v8, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    :cond_9a
    invoke-direct {p0, v6}, Lcom/igexin/push/c/m;->a(Lcom/igexin/push/c/j;)V

    :goto_9d
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_a3
    iget-object v0, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, v5}, Lcom/igexin/push/c/a;->b(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :catchall_aa
    move-exception v0

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_d .. :try_end_ac} :catchall_aa

    throw v0
.end method

.method public g()V
    .registers 7

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->e()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->p()V

    invoke-direct {p0}, Lcom/igexin/push/c/m;->o()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/c/q;

    invoke-virtual {v3}, Lcom/igexin/push/c/q;->j()V

    goto :goto_17

    :cond_2d
    iget-object v2, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/igexin/push/c/j;

    invoke-direct {v3}, Lcom/igexin/push/c/j;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/igexin/push/c/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/igexin/push/c/j;->a(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0, v2}, Lcom/igexin/push/c/a;->b(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_67
    move-exception v0

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_d .. :try_end_69} :catchall_67

    throw v0
.end method

.method public h()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/m;->a:J

    iget-object v0, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/c/q;

    invoke-virtual {p0}, Lcom/igexin/push/c/m;->c()Lcom/igexin/push/c/p;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/p;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/c/q;

    invoke-virtual {v3}, Lcom/igexin/push/c/q;->f_()Lcom/igexin/push/c/j;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/push/c/q;

    invoke-virtual {v3}, Lcom/igexin/push/c/q;->f_()Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/c/j;->b()V

    :cond_45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/c/q;

    invoke-virtual {v2}, Lcom/igexin/push/c/q;->g_()V

    goto :goto_13

    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public declared-synchronized i()V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/push/c/m;->a:J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/igexin/push/c/m;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_76

    :try_start_14
    const-string v3, "lastDetectTime"

    iget-wide v4, p0, Lcom/igexin/push/c/m;->a:J

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "list"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/igexin/push/c/m;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/push/c/q;

    invoke-virtual {v4}, Lcom/igexin/push/c/q;->f_()Lcom/igexin/push/c/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/push/c/j;->h()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_49} :catch_4c
    .catchall {:try_start_14 .. :try_end_49} :catchall_4a

    goto :goto_2a

    :catchall_4a
    move-exception v0

    goto :goto_74

    :catch_4c
    :cond_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4a

    :try_start_4d
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_72

    invoke-direct {p0}, Lcom/igexin/push/c/m;->q()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z

    goto :goto_72

    :cond_66
    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z
    :try_end_72
    .catchall {:try_start_4d .. :try_end_72} :catchall_76

    :cond_72
    :goto_72
    monitor-exit p0

    return-void

    :goto_74
    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_4a

    :try_start_75
    throw v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected j()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    const-string v1, "null"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;Z)Z

    return-void
.end method

.method protected k()Z
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/igexin/push/c/m;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/push/c/f;->a:J

    const-wide/16 v4, 0x2

    mul-long v2, v2, v4

    const-wide/16 v4, 0xe10

    sub-long/2addr v2, v4

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|current time - last detect time > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/igexin/push/c/f;->a:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " s, detect = true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/c/k;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v4

    :cond_42
    sget-object v2, Lcom/igexin/push/c/k;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_71

    sget-wide v2, Lcom/igexin/push/c/f;->a:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/push/c/k;->c_()Lcom/igexin/push/c/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/push/c/k;->a(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/c/m;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|set next detect time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_71
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized l()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->f()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()V
    .registers 8

    const-class v0, Lcom/igexin/push/c/m;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/igexin/push/c/m;->i:Landroid/os/Handler;

    if-nez v1, :cond_1c

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetDetect-T"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/igexin/push/c/m;->i:Landroid/os/Handler;

    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_38

    iget-object v0, p0, Lcom/igexin/push/c/m;->i:Landroid/os/Handler;

    const-string v1, "detToken"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/igexin/push/c/m;->i:Landroid/os/Handler;

    new-instance v1, Lcom/igexin/push/c/o;

    invoke-direct {v1, p0}, Lcom/igexin/push/c/o;-><init>(Lcom/igexin/push/c/m;)V

    const-string v2, "detToken"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method protected declared-synchronized n()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_55

    :try_start_6
    const-string v1, "loginFailedlCnt"

    iget-object v2, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget v2, v2, Lcom/igexin/push/c/a;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastChange2BackupTime"

    iget-object v2, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget-wide v2, v2, Lcom/igexin/push/c/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "lastOfflineTime"

    iget-object v2, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget-wide v2, v2, Lcom/igexin/push/c/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "domainType"

    iget-object v2, p0, Lcom/igexin/push/c/m;->d:Lcom/igexin/push/c/a;

    iget-object v2, v2, Lcom/igexin/push/c/a;->a:Lcom/igexin/push/c/d;

    invoke-virtual {v2}, Lcom/igexin/push/c/d;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_55

    :catch_2e
    :try_start_2e
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_53

    invoke-direct {p0}, Lcom/igexin/push/c/m;->q()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/c/h;->a(Ljava/lang/String;Z)Z

    goto :goto_53

    :cond_47
    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/igexin/push/core/c/h;->a(Ljava/lang/String;Z)Z
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_55

    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method
